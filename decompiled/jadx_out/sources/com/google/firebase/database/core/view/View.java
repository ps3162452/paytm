package com.google.firebase.database.core.view;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.core.EventRegistration;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.WriteTreeRef;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.core.view.ViewProcessor;
import com.google.firebase.database.core.view.filter.IndexedFilter;
import com.google.firebase.database.core.view.filter.NodeFilter;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes57.dex */
public class View {
    static final boolean $assertionsDisabled = false;
    private final EventGenerator eventGenerator;
    private final List<EventRegistration> eventRegistrations;
    private final ViewProcessor processor;
    private final QuerySpec query;
    private ViewCache viewCache;

    public static class OperationResult {
        public final List<Change> changes;
        public final List<DataEvent> events;

        public OperationResult(List<DataEvent> list, List<Change> list2) {
            this.events = list;
            this.changes = list2;
        }
    }

    public View(QuerySpec querySpec, ViewCache viewCache) {
        this.query = querySpec;
        IndexedFilter indexedFilter = new IndexedFilter(querySpec.getIndex());
        NodeFilter nodeFilter = querySpec.getParams().getNodeFilter();
        this.processor = new ViewProcessor(nodeFilter);
        CacheNode serverCache = viewCache.getServerCache();
        CacheNode eventCache = viewCache.getEventCache();
        IndexedNode indexedNodeFrom = IndexedNode.from(EmptyNode.Empty(), querySpec.getIndex());
        IndexedNode indexedNodeUpdateFullNode = indexedFilter.updateFullNode(indexedNodeFrom, serverCache.getIndexedNode(), null);
        IndexedNode indexedNodeUpdateFullNode2 = nodeFilter.updateFullNode(indexedNodeFrom, eventCache.getIndexedNode(), null);
        this.viewCache = new ViewCache(new CacheNode(indexedNodeUpdateFullNode2, eventCache.isFullyInitialized(), nodeFilter.filtersNodes()), new CacheNode(indexedNodeUpdateFullNode, serverCache.isFullyInitialized(), indexedFilter.filtersNodes()));
        this.eventRegistrations = new ArrayList();
        this.eventGenerator = new EventGenerator(querySpec);
    }

    private List<DataEvent> generateEventsForChanges(List<Change> list, IndexedNode indexedNode, EventRegistration eventRegistration) {
        return this.eventGenerator.generateEventsForChanges(list, indexedNode, eventRegistration == null ? this.eventRegistrations : Arrays.asList(eventRegistration));
    }

    public void addEventRegistration(EventRegistration eventRegistration) {
        this.eventRegistrations.add(eventRegistration);
    }

    public OperationResult applyOperation(Operation operation, WriteTreeRef writeTreeRef, Node node) {
        if (operation.getType() != Operation.OperationType.Merge || operation.getSource().getQueryParams() != null) {
        }
        ViewProcessor.ProcessorResult processorResultApplyOperation = this.processor.applyOperation(this.viewCache, operation, writeTreeRef, node);
        this.viewCache = processorResultApplyOperation.viewCache;
        return new OperationResult(generateEventsForChanges(processorResultApplyOperation.changes, processorResultApplyOperation.viewCache.getEventCache().getIndexedNode(), null), processorResultApplyOperation.changes);
    }

    public Node getCompleteNode() {
        return this.viewCache.getCompleteEventSnap();
    }

    public Node getCompleteServerCache(Path path) {
        Node completeServerSnap = this.viewCache.getCompleteServerSnap();
        if (completeServerSnap == null || (!this.query.loadsAllData() && (path.isEmpty() || completeServerSnap.getImmediateChild(path.getFront()).isEmpty()))) {
            return null;
        }
        return completeServerSnap.getChild(path);
    }

    public Node getEventCache() {
        return this.viewCache.getEventCache().getNode();
    }

    List<EventRegistration> getEventRegistrations() {
        return this.eventRegistrations;
    }

    public List<DataEvent> getInitialEvents(EventRegistration eventRegistration) {
        CacheNode eventCache = this.viewCache.getEventCache();
        ArrayList arrayList = new ArrayList();
        for (NamedNode namedNode : eventCache.getNode()) {
            arrayList.add(Change.childAddedChange(namedNode.getName(), namedNode.getNode()));
        }
        if (eventCache.isFullyInitialized()) {
            arrayList.add(Change.valueChange(eventCache.getIndexedNode()));
        }
        return generateEventsForChanges(arrayList, eventCache.getIndexedNode(), eventRegistration);
    }

    public QuerySpec getQuery() {
        return this.query;
    }

    public Node getServerCache() {
        return this.viewCache.getServerCache().getNode();
    }

    public boolean isEmpty() {
        return this.eventRegistrations.isEmpty();
    }

    public List<Event> removeEventRegistration(EventRegistration eventRegistration, DatabaseError databaseError) {
        List<Event> listEmptyList;
        if (databaseError != null) {
            ArrayList arrayList = new ArrayList();
            Path path = this.query.getPath();
            Iterator<EventRegistration> it = this.eventRegistrations.iterator();
            while (it.hasNext()) {
                arrayList.add(new CancelEvent(it.next(), databaseError, path));
            }
            listEmptyList = arrayList;
        } else {
            listEmptyList = Collections.emptyList();
        }
        if (eventRegistration != null) {
            int i = 0;
            int i2 = -1;
            while (true) {
                if (i >= this.eventRegistrations.size()) {
                    i = i2;
                    break;
                }
                EventRegistration eventRegistration2 = this.eventRegistrations.get(i);
                if (eventRegistration2.isSameListener(eventRegistration)) {
                    if (eventRegistration2.isZombied()) {
                        break;
                    }
                    i2 = i;
                }
                i++;
            }
            if (i != -1) {
                EventRegistration eventRegistration3 = this.eventRegistrations.get(i);
                this.eventRegistrations.remove(i);
                eventRegistration3.zombify();
            }
        } else {
            Iterator<EventRegistration> it2 = this.eventRegistrations.iterator();
            while (it2.hasNext()) {
                it2.next().zombify();
            }
            this.eventRegistrations.clear();
        }
        return listEmptyList;
    }
}
