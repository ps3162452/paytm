package com.google.firebase.database.core;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.collection.LLRBNode;
import com.google.firebase.database.connection.CompoundHash;
import com.google.firebase.database.connection.ListenHashProvider;
import com.google.firebase.database.core.operation.AckUserWrite;
import com.google.firebase.database.core.operation.ListenComplete;
import com.google.firebase.database.core.operation.Merge;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.core.operation.OperationSource;
import com.google.firebase.database.core.operation.Overwrite;
import com.google.firebase.database.core.persistence.PersistenceManager;
import com.google.firebase.database.core.utilities.Clock;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.NodeSizeEstimator;
import com.google.firebase.database.core.utilities.Pair;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.CacheNode;
import com.google.firebase.database.core.view.Change;
import com.google.firebase.database.core.view.DataEvent;
import com.google.firebase.database.core.view.Event;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.core.view.View;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.RangeMerge;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class SyncTree {
    static final boolean $assertionsDisabled = false;
    private static final long SIZE_THRESHOLD_FOR_COMPOUND_HASH = 1024;
    private final ListenProvider listenProvider;
    private final LogWrapper logger;
    private final PersistenceManager persistenceManager;
    private long nextQueryTag = 1;
    private ImmutableTree<SyncPoint> syncPointTree = ImmutableTree.emptyInstance();
    private final WriteTree pendingWriteTree = new WriteTree();
    private final Map<Tag, QuerySpec> tagToQueryMap = new HashMap();
    private final Map<QuerySpec, Tag> queryToTagMap = new HashMap();
    private final Set<QuerySpec> keepSyncedQueries = new HashSet();

    public interface CompletionListener {
        List<? extends Event> onListenComplete(DatabaseError databaseError);
    }

    private static class KeepSyncedEventRegistration extends EventRegistration {
        private QuerySpec spec;

        public KeepSyncedEventRegistration(QuerySpec querySpec) {
            this.spec = querySpec;
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public EventRegistration clone(QuerySpec querySpec) {
            return new KeepSyncedEventRegistration(querySpec);
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public DataEvent createEvent(Change change, QuerySpec querySpec) {
            return null;
        }

        public boolean equals(Object obj) {
            return (obj instanceof KeepSyncedEventRegistration) && ((KeepSyncedEventRegistration) obj).spec.equals(this.spec);
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public void fireCancelEvent(DatabaseError databaseError) {
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public void fireEvent(DataEvent dataEvent) {
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public QuerySpec getQuerySpec() {
            return this.spec;
        }

        public int hashCode() {
            return this.spec.hashCode();
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public boolean isSameListener(EventRegistration eventRegistration) {
            return eventRegistration instanceof KeepSyncedEventRegistration;
        }

        @Override // com.google.firebase.database.core.EventRegistration
        public boolean respondsTo(Event.EventType eventType) {
            return false;
        }
    }

    private class ListenContainer implements ListenHashProvider, CompletionListener {
        private final Tag tag;
        final SyncTree this$0;
        private final View view;

        public ListenContainer(SyncTree syncTree, View view) {
            this.this$0 = syncTree;
            this.view = view;
            this.tag = syncTree.tagForQuery(view.getQuery());
        }

        @Override // com.google.firebase.database.connection.ListenHashProvider
        public CompoundHash getCompoundHash() {
            com.google.firebase.database.snapshot.CompoundHash compoundHashFromNode = com.google.firebase.database.snapshot.CompoundHash.fromNode(this.view.getServerCache());
            List<Path> posts = compoundHashFromNode.getPosts();
            ArrayList arrayList = new ArrayList(posts.size());
            Iterator<Path> it = posts.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().asList());
            }
            return new CompoundHash(arrayList, compoundHashFromNode.getHashes());
        }

        @Override // com.google.firebase.database.connection.ListenHashProvider
        public String getSimpleHash() {
            return this.view.getServerCache().getHash();
        }

        @Override // com.google.firebase.database.core.SyncTree.CompletionListener
        public List<? extends Event> onListenComplete(DatabaseError databaseError) {
            if (databaseError != null) {
                this.this$0.logger.warn(NPStringFog.decode(new byte[]{116, 89, 75, 16, 81, 95, 24, 81, 76, 68}, "808d41", false, true) + this.view.getQuery().getPath() + NPStringFog.decode(new byte[]{19, 95, 86, 11, 95, 92, 87, 3, 23}, "397b39", false) + databaseError.toString());
                return this.this$0.removeAllEventRegistrations(this.view.getQuery(), databaseError);
            }
            QuerySpec query = this.view.getQuery();
            Tag tag = this.tag;
            return tag != null ? this.this$0.applyTaggedListenComplete(tag) : this.this$0.applyListenComplete(query.getPath());
        }

        @Override // com.google.firebase.database.connection.ListenHashProvider
        public boolean shouldIncludeCompoundHash() {
            return NodeSizeEstimator.estimateSerializedNodeSize(this.view.getServerCache()) > SyncTree.SIZE_THRESHOLD_FOR_COMPOUND_HASH;
        }
    }

    public interface ListenProvider {
        void startListening(QuerySpec querySpec, Tag tag, ListenHashProvider listenHashProvider, CompletionListener completionListener);

        void stopListening(QuerySpec querySpec, Tag tag);
    }

    public SyncTree(Context context, PersistenceManager persistenceManager, ListenProvider listenProvider) {
        this.listenProvider = listenProvider;
        this.persistenceManager = persistenceManager;
        this.logger = context.getLogger(NPStringFog.decode(new byte[]{54, 31, 87, 5, 109, 65, 0, 3}, "ef9f93", -1.3592572E9f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Event> applyOperationDescendantsHelper(Operation operation, ImmutableTree<SyncPoint> immutableTree, Node node, WriteTreeRef writeTreeRef) {
        SyncPoint value = immutableTree.getValue();
        Node completeServerCache = (node != null || value == null) ? node : value.getCompleteServerCache(Path.getEmptyPath());
        ArrayList arrayList = new ArrayList();
        immutableTree.getChildren().inOrderTraversal(new LLRBNode.NodeVisitor<ChildKey, ImmutableTree<SyncPoint>>(this, completeServerCache, writeTreeRef, operation, arrayList) { // from class: com.google.firebase.database.core.SyncTree.14
            final SyncTree this$0;
            final List val$events;
            final Operation val$operation;
            final Node val$resolvedServerCache;
            final WriteTreeRef val$writesCache;

            {
                this.this$0 = this;
                this.val$resolvedServerCache = completeServerCache;
                this.val$writesCache = writeTreeRef;
                this.val$operation = operation;
                this.val$events = arrayList;
            }

            @Override // com.google.firebase.database.collection.LLRBNode.NodeVisitor
            public void visitEntry(ChildKey childKey, ImmutableTree<SyncPoint> immutableTree2) {
                Node node2 = this.val$resolvedServerCache;
                Node immediateChild = node2 != null ? node2.getImmediateChild(childKey) : null;
                WriteTreeRef writeTreeRefChild = this.val$writesCache.child(childKey);
                Operation operationOperationForChild = this.val$operation.operationForChild(childKey);
                if (operationOperationForChild != null) {
                    this.val$events.addAll(this.this$0.applyOperationDescendantsHelper(operationOperationForChild, immutableTree2, immediateChild, writeTreeRefChild));
                }
            }
        });
        if (value != null) {
            arrayList.addAll(value.applyOperation(operation, writeTreeRef, completeServerCache));
        }
        return arrayList;
    }

    private List<Event> applyOperationHelper(Operation operation, ImmutableTree<SyncPoint> immutableTree, Node node, WriteTreeRef writeTreeRef) {
        if (operation.getPath().isEmpty()) {
            return applyOperationDescendantsHelper(operation, immutableTree, node, writeTreeRef);
        }
        SyncPoint value = immutableTree.getValue();
        if (node == null && value != null) {
            node = value.getCompleteServerCache(Path.getEmptyPath());
        }
        ArrayList arrayList = new ArrayList();
        ChildKey front = operation.getPath().getFront();
        Operation operationOperationForChild = operation.operationForChild(front);
        ImmutableTree<SyncPoint> immutableTree2 = immutableTree.getChildren().get(front);
        if (immutableTree2 != null && operationOperationForChild != null) {
            arrayList.addAll(applyOperationHelper(operationOperationForChild, immutableTree2, node != null ? node.getImmediateChild(front) : null, writeTreeRef.child(front)));
        }
        if (value != null) {
            arrayList.addAll(value.applyOperation(operation, writeTreeRef, node));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Event> applyOperationToSyncPoints(Operation operation) {
        return applyOperationHelper(operation, this.syncPointTree, null, this.pendingWriteTree.childWrites(Path.getEmptyPath()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<? extends Event> applyTaggedOperation(QuerySpec querySpec, Operation operation) {
        Path path = querySpec.getPath();
        return this.syncPointTree.get(path).applyOperation(operation, this.pendingWriteTree.childWrites(path), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<View> collectDistinctViewsForSubTree(ImmutableTree<SyncPoint> immutableTree) {
        ArrayList arrayList = new ArrayList();
        collectDistinctViewsForSubTree(immutableTree, arrayList);
        return arrayList;
    }

    private void collectDistinctViewsForSubTree(ImmutableTree<SyncPoint> immutableTree, List<View> list) {
        SyncPoint value = immutableTree.getValue();
        if (value != null && value.hasCompleteView()) {
            list.add(value.getCompleteView());
            return;
        }
        if (value != null) {
            list.addAll(value.getQueryViews());
        }
        Iterator<Map.Entry<ChildKey, ImmutableTree<SyncPoint>>> it = immutableTree.getChildren().iterator();
        while (it.hasNext()) {
            collectDistinctViewsForSubTree(it.next().getValue(), list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Tag getNextQueryTag() {
        long j = this.nextQueryTag;
        this.nextQueryTag = 1 + j;
        return new Tag(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QuerySpec queryForListening(QuerySpec querySpec) {
        return (!querySpec.loadsAllData() || querySpec.isDefault()) ? querySpec : QuerySpec.defaultQueryAtPath(querySpec.getPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QuerySpec queryForTag(Tag tag) {
        return this.tagToQueryMap.get(tag);
    }

    private List<Event> removeEventRegistration(QuerySpec querySpec, EventRegistration eventRegistration, DatabaseError databaseError) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<Event>>(this, querySpec, eventRegistration, databaseError) { // from class: com.google.firebase.database.core.SyncTree.12
            static final boolean $assertionsDisabled = false;
            final SyncTree this$0;
            final DatabaseError val$cancelError;
            final EventRegistration val$eventRegistration;
            final QuerySpec val$query;

            {
                this.this$0 = this;
                this.val$query = querySpec;
                this.val$eventRegistration = eventRegistration;
                this.val$cancelError = databaseError;
            }

            @Override // java.util.concurrent.Callable
            public List<Event> call() {
                boolean z;
                Path path = this.val$query.getPath();
                SyncPoint syncPoint = (SyncPoint) this.this$0.syncPointTree.get(path);
                List<Event> arrayList = new ArrayList<>();
                if (syncPoint != null && (this.val$query.isDefault() || syncPoint.viewExistsForQuery(this.val$query))) {
                    Pair<List<QuerySpec>, List<Event>> pairRemoveEventRegistration = syncPoint.removeEventRegistration(this.val$query, this.val$eventRegistration, this.val$cancelError);
                    if (syncPoint.isEmpty()) {
                        SyncTree syncTree = this.this$0;
                        syncTree.syncPointTree = syncTree.syncPointTree.remove(path);
                    }
                    List<QuerySpec> first = pairRemoveEventRegistration.getFirst();
                    arrayList = pairRemoveEventRegistration.getSecond();
                    boolean z2 = false;
                    for (QuerySpec querySpec2 : first) {
                        this.this$0.persistenceManager.setQueryInactive(this.val$query);
                        z2 = !z2 ? querySpec2.loadsAllData() : true;
                    }
                    ImmutableTree immutableTree = this.this$0.syncPointTree;
                    boolean z3 = immutableTree.getValue() != null && ((SyncPoint) immutableTree.getValue()).hasCompleteView();
                    Iterator<ChildKey> it = path.iterator();
                    ImmutableTree child = immutableTree;
                    while (true) {
                        z = z3;
                        if (!it.hasNext()) {
                            break;
                        }
                        child = child.getChild(it.next());
                        z3 = z || (child.getValue() != null && ((SyncPoint) child.getValue()).hasCompleteView());
                        if (z3) {
                            z = z3;
                            break;
                        }
                        if (child.isEmpty()) {
                            z = z3;
                            break;
                        }
                    }
                    if (z2 && !z) {
                        ImmutableTree immutableTreeSubtree = this.this$0.syncPointTree.subtree(path);
                        if (!immutableTreeSubtree.isEmpty()) {
                            for (View view : this.this$0.collectDistinctViewsForSubTree(immutableTreeSubtree)) {
                                ListenContainer listenContainer = new ListenContainer(this.this$0, view);
                                this.this$0.listenProvider.startListening(this.this$0.queryForListening(view.getQuery()), listenContainer.tag, listenContainer, listenContainer);
                            }
                        }
                    }
                    if (!z && !first.isEmpty() && this.val$cancelError == null) {
                        if (z2) {
                            this.this$0.listenProvider.stopListening(this.this$0.queryForListening(this.val$query), null);
                        } else {
                            for (QuerySpec querySpec3 : first) {
                                this.this$0.listenProvider.stopListening(this.this$0.queryForListening(querySpec3), this.this$0.tagForQuery(querySpec3));
                            }
                        }
                    }
                    this.this$0.removeTags(first);
                }
                return arrayList;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTags(List<QuerySpec> list) {
        for (QuerySpec querySpec : list) {
            if (!querySpec.loadsAllData()) {
                Tag tagTagForQuery = tagForQuery(querySpec);
                this.queryToTagMap.remove(querySpec);
                this.tagToQueryMap.remove(tagTagForQuery);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupListener(QuerySpec querySpec, View view) {
        Path path = querySpec.getPath();
        Tag tagTagForQuery = tagForQuery(querySpec);
        ListenContainer listenContainer = new ListenContainer(this, view);
        this.listenProvider.startListening(queryForListening(querySpec), tagTagForQuery, listenContainer, listenContainer);
        ImmutableTree<SyncPoint> immutableTreeSubtree = this.syncPointTree.subtree(path);
        if (tagTagForQuery != null) {
            return;
        }
        immutableTreeSubtree.foreach(new ImmutableTree.TreeVisitor<SyncPoint, Void>(this) { // from class: com.google.firebase.database.core.SyncTree.13
            final SyncTree this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public Void onNodeValue(Path path2, SyncPoint syncPoint, Void r8) {
                if (!path2.isEmpty() && syncPoint.hasCompleteView()) {
                    QuerySpec query = syncPoint.getCompleteView().getQuery();
                    this.this$0.listenProvider.stopListening(this.this$0.queryForListening(query), this.this$0.tagForQuery(query));
                    return null;
                }
                Iterator<View> it = syncPoint.getQueryViews().iterator();
                while (it.hasNext()) {
                    QuerySpec query2 = it.next().getQuery();
                    this.this$0.listenProvider.stopListening(this.this$0.queryForListening(query2), this.this$0.tagForQuery(query2));
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Tag tagForQuery(QuerySpec querySpec) {
        return this.queryToTagMap.get(querySpec);
    }

    public List<? extends Event> ackUserWrite(long j, boolean z, boolean z2, Clock clock) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, z2, j, z, clock) { // from class: com.google.firebase.database.core.SyncTree.3
            final SyncTree this$0;
            final boolean val$persist;
            final boolean val$revert;
            final Clock val$serverClock;
            final long val$writeId;

            {
                this.this$0 = this;
                this.val$persist = z2;
                this.val$writeId = j;
                this.val$revert = z;
                this.val$serverClock = clock;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                ImmutableTree immutableTree;
                if (this.val$persist) {
                    this.this$0.persistenceManager.removeUserWrite(this.val$writeId);
                }
                UserWriteRecord write = this.this$0.pendingWriteTree.getWrite(this.val$writeId);
                boolean zRemoveWrite = this.this$0.pendingWriteTree.removeWrite(this.val$writeId);
                if (write.isVisible() && !this.val$revert) {
                    Map<String, Object> mapGenerateServerValues = ServerValues.generateServerValues(this.val$serverClock);
                    if (write.isOverwrite()) {
                        this.this$0.persistenceManager.applyUserWriteToServerCache(write.getPath(), ServerValues.resolveDeferredValueSnapshot(write.getOverwrite(), this.this$0, write.getPath(), mapGenerateServerValues));
                    } else {
                        this.this$0.persistenceManager.applyUserWriteToServerCache(write.getPath(), ServerValues.resolveDeferredValueMerge(write.getMerge(), this.this$0, write.getPath(), mapGenerateServerValues));
                    }
                }
                if (!zRemoveWrite) {
                    return Collections.emptyList();
                }
                ImmutableTree immutableTreeEmptyInstance = ImmutableTree.emptyInstance();
                if (!write.isOverwrite()) {
                    Iterator<Map.Entry<Path, Node>> it = write.getMerge().iterator();
                    while (true) {
                        immutableTree = immutableTreeEmptyInstance;
                        if (!it.hasNext()) {
                            break;
                        }
                        immutableTreeEmptyInstance = immutableTree.set(it.next().getKey(), true);
                    }
                } else {
                    immutableTree = immutableTreeEmptyInstance.set(Path.getEmptyPath(), true);
                }
                return this.this$0.applyOperationToSyncPoints(new AckUserWrite(write.getPath(), immutableTree, this.val$revert));
            }
        });
    }

    public List<? extends Event> addEventRegistration(EventRegistration eventRegistration) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, eventRegistration) { // from class: com.google.firebase.database.core.SyncTree.11
            static final boolean $assertionsDisabled = false;
            final SyncTree this$0;
            final EventRegistration val$eventRegistration;

            {
                this.this$0 = this;
                this.val$eventRegistration = eventRegistration;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                boolean z;
                Node completeServerCache;
                SyncPoint syncPoint;
                Node nodeUpdateImmediateChild;
                CacheNode cacheNode;
                Node completeServerCache2;
                boolean z2;
                Node node;
                QuerySpec querySpec = this.val$eventRegistration.getQuerySpec();
                Path path = querySpec.getPath();
                Node completeServerCache3 = null;
                Path pathPopFront = path;
                ImmutableTree child = this.this$0.syncPointTree;
                boolean z3 = false;
                while (!child.isEmpty()) {
                    SyncPoint syncPoint2 = (SyncPoint) child.getValue();
                    if (syncPoint2 != null) {
                        if (completeServerCache3 == null) {
                            completeServerCache3 = syncPoint2.getCompleteServerCache(pathPopFront);
                        }
                        z2 = z3 || syncPoint2.hasCompleteView();
                        node = completeServerCache3;
                    } else {
                        z2 = z3;
                        node = completeServerCache3;
                    }
                    child = child.getChild(pathPopFront.isEmpty() ? ChildKey.fromString("") : pathPopFront.getFront());
                    pathPopFront = pathPopFront.popFront();
                    completeServerCache3 = node;
                    z3 = z2;
                }
                SyncPoint syncPoint3 = (SyncPoint) this.this$0.syncPointTree.get(path);
                if (syncPoint3 == null) {
                    SyncPoint syncPoint4 = new SyncPoint(this.this$0.persistenceManager);
                    SyncTree syncTree = this.this$0;
                    syncTree.syncPointTree = syncTree.syncPointTree.set(path, syncPoint4);
                    z = z3;
                    completeServerCache = completeServerCache3;
                    syncPoint = syncPoint4;
                } else {
                    boolean z4 = z3 || syncPoint3.hasCompleteView();
                    if (completeServerCache3 != null) {
                        z = z4;
                        completeServerCache = completeServerCache3;
                        syncPoint = syncPoint3;
                    } else {
                        z = z4;
                        completeServerCache = syncPoint3.getCompleteServerCache(Path.getEmptyPath());
                        syncPoint = syncPoint3;
                    }
                }
                this.this$0.persistenceManager.setQueryActive(querySpec);
                if (completeServerCache != null) {
                    cacheNode = new CacheNode(IndexedNode.from(completeServerCache, querySpec.getIndex()), true, false);
                } else {
                    CacheNode cacheNodeServerCache = this.this$0.persistenceManager.serverCache(querySpec);
                    if (cacheNodeServerCache.isFullyInitialized()) {
                        cacheNode = cacheNodeServerCache;
                    } else {
                        Node nodeEmpty = EmptyNode.Empty();
                        Iterator it = this.this$0.syncPointTree.subtree(path).getChildren().iterator();
                        while (true) {
                            nodeUpdateImmediateChild = nodeEmpty;
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            SyncPoint syncPoint5 = (SyncPoint) ((ImmutableTree) entry.getValue()).getValue();
                            if (syncPoint5 != null && (completeServerCache2 = syncPoint5.getCompleteServerCache(Path.getEmptyPath())) != null) {
                                nodeUpdateImmediateChild = nodeUpdateImmediateChild.updateImmediateChild((ChildKey) entry.getKey(), completeServerCache2);
                            }
                            nodeEmpty = nodeUpdateImmediateChild;
                        }
                        Node nodeUpdateImmediateChild2 = nodeUpdateImmediateChild;
                        for (NamedNode namedNode : cacheNodeServerCache.getNode()) {
                            nodeUpdateImmediateChild2 = !nodeUpdateImmediateChild2.hasChild(namedNode.getName()) ? nodeUpdateImmediateChild2.updateImmediateChild(namedNode.getName(), namedNode.getNode()) : nodeUpdateImmediateChild2;
                        }
                        cacheNode = new CacheNode(IndexedNode.from(nodeUpdateImmediateChild2, querySpec.getIndex()), false, false);
                    }
                }
                boolean zViewExistsForQuery = syncPoint.viewExistsForQuery(querySpec);
                if (!zViewExistsForQuery && !querySpec.loadsAllData()) {
                    Tag nextQueryTag = this.this$0.getNextQueryTag();
                    this.this$0.queryToTagMap.put(querySpec, nextQueryTag);
                    this.this$0.tagToQueryMap.put(nextQueryTag, querySpec);
                }
                List<DataEvent> listAddEventRegistration = syncPoint.addEventRegistration(this.val$eventRegistration, this.this$0.pendingWriteTree.childWrites(path), cacheNode);
                if (!zViewExistsForQuery && !z) {
                    this.this$0.setupListener(querySpec, syncPoint.viewForQuery(querySpec));
                }
                return listAddEventRegistration;
            }
        });
    }

    public List<? extends Event> applyListenComplete(Path path) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, path) { // from class: com.google.firebase.database.core.SyncTree.7
            final SyncTree this$0;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                this.this$0.persistenceManager.setQueryComplete(QuerySpec.defaultQueryAtPath(this.val$path));
                return this.this$0.applyOperationToSyncPoints(new ListenComplete(OperationSource.SERVER, this.val$path));
            }
        });
    }

    public List<? extends Event> applyServerMerge(Path path, Map<Path, Node> map) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, map, path) { // from class: com.google.firebase.database.core.SyncTree.6
            final SyncTree this$0;
            final Map val$changedChildren;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$changedChildren = map;
                this.val$path = path;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                CompoundWrite compoundWriteFromPathMerge = CompoundWrite.fromPathMerge(this.val$changedChildren);
                this.this$0.persistenceManager.updateServerCache(this.val$path, compoundWriteFromPathMerge);
                return this.this$0.applyOperationToSyncPoints(new Merge(OperationSource.SERVER, this.val$path, compoundWriteFromPathMerge));
            }
        });
    }

    public List<? extends Event> applyServerOverwrite(Path path, Node node) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, path, node) { // from class: com.google.firebase.database.core.SyncTree.5
            final SyncTree this$0;
            final Node val$newData;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$newData = node;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                this.this$0.persistenceManager.updateServerCache(QuerySpec.defaultQueryAtPath(this.val$path), this.val$newData);
                return this.this$0.applyOperationToSyncPoints(new Overwrite(OperationSource.SERVER, this.val$path, this.val$newData));
            }
        });
    }

    public List<? extends Event> applyServerRangeMerges(Path path, List<RangeMerge> list) {
        View completeView;
        SyncPoint syncPoint = this.syncPointTree.get(path);
        if (syncPoint != null && (completeView = syncPoint.getCompleteView()) != null) {
            Node serverCache = completeView.getServerCache();
            Iterator<RangeMerge> it = list.iterator();
            while (true) {
                Node node = serverCache;
                if (!it.hasNext()) {
                    return applyServerOverwrite(path, node);
                }
                serverCache = it.next().applyTo(node);
            }
        }
        return Collections.emptyList();
    }

    public List<? extends Event> applyTaggedListenComplete(Tag tag) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, tag) { // from class: com.google.firebase.database.core.SyncTree.8
            final SyncTree this$0;
            final Tag val$tag;

            {
                this.this$0 = this;
                this.val$tag = tag;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                QuerySpec querySpecQueryForTag = this.this$0.queryForTag(this.val$tag);
                if (querySpecQueryForTag == null) {
                    return Collections.emptyList();
                }
                this.this$0.persistenceManager.setQueryComplete(querySpecQueryForTag);
                return this.this$0.applyTaggedOperation(querySpecQueryForTag, new ListenComplete(OperationSource.forServerTaggedQuery(querySpecQueryForTag.getParams()), Path.getEmptyPath()));
            }
        });
    }

    public List<? extends Event> applyTaggedQueryMerge(Path path, Map<Path, Node> map, Tag tag) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, tag, path, map) { // from class: com.google.firebase.database.core.SyncTree.10
            final SyncTree this$0;
            final Map val$changedChildren;
            final Path val$path;
            final Tag val$tag;

            {
                this.this$0 = this;
                this.val$tag = tag;
                this.val$path = path;
                this.val$changedChildren = map;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                QuerySpec querySpecQueryForTag = this.this$0.queryForTag(this.val$tag);
                if (querySpecQueryForTag == null) {
                    return Collections.emptyList();
                }
                Path relative = Path.getRelative(querySpecQueryForTag.getPath(), this.val$path);
                CompoundWrite compoundWriteFromPathMerge = CompoundWrite.fromPathMerge(this.val$changedChildren);
                this.this$0.persistenceManager.updateServerCache(this.val$path, compoundWriteFromPathMerge);
                return this.this$0.applyTaggedOperation(querySpecQueryForTag, new Merge(OperationSource.forServerTaggedQuery(querySpecQueryForTag.getParams()), relative, compoundWriteFromPathMerge));
            }
        });
    }

    public List<? extends Event> applyTaggedQueryOverwrite(Path path, Node node, Tag tag) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, tag, path, node) { // from class: com.google.firebase.database.core.SyncTree.9
            final SyncTree this$0;
            final Path val$path;
            final Node val$snap;
            final Tag val$tag;

            {
                this.this$0 = this;
                this.val$tag = tag;
                this.val$path = path;
                this.val$snap = node;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                QuerySpec querySpecQueryForTag = this.this$0.queryForTag(this.val$tag);
                if (querySpecQueryForTag == null) {
                    return Collections.emptyList();
                }
                Path relative = Path.getRelative(querySpecQueryForTag.getPath(), this.val$path);
                this.this$0.persistenceManager.updateServerCache(relative.isEmpty() ? querySpecQueryForTag : QuerySpec.defaultQueryAtPath(this.val$path), this.val$snap);
                return this.this$0.applyTaggedOperation(querySpecQueryForTag, new Overwrite(OperationSource.forServerTaggedQuery(querySpecQueryForTag.getParams()), relative, this.val$snap));
            }
        });
    }

    public List<? extends Event> applyTaggedRangeMerges(Path path, List<RangeMerge> list, Tag tag) {
        QuerySpec querySpecQueryForTag = queryForTag(tag);
        if (querySpecQueryForTag == null) {
            return Collections.emptyList();
        }
        Node serverCache = this.syncPointTree.get(querySpecQueryForTag.getPath()).viewForQuery(querySpecQueryForTag).getServerCache();
        Iterator<RangeMerge> it = list.iterator();
        while (true) {
            Node node = serverCache;
            if (!it.hasNext()) {
                return applyTaggedQueryOverwrite(path, node, tag);
            }
            serverCache = it.next().applyTo(node);
        }
    }

    public List<? extends Event> applyUserMerge(Path path, CompoundWrite compoundWrite, CompoundWrite compoundWrite2, long j, boolean z) {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, z, path, compoundWrite, j, compoundWrite2) { // from class: com.google.firebase.database.core.SyncTree.2
            final SyncTree this$0;
            final CompoundWrite val$children;
            final Path val$path;
            final boolean val$persist;
            final CompoundWrite val$unresolvedChildren;
            final long val$writeId;

            {
                this.this$0 = this;
                this.val$persist = z;
                this.val$path = path;
                this.val$unresolvedChildren = compoundWrite;
                this.val$writeId = j;
                this.val$children = compoundWrite2;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() throws Exception {
                if (this.val$persist) {
                    this.this$0.persistenceManager.saveUserMerge(this.val$path, this.val$unresolvedChildren, this.val$writeId);
                }
                this.this$0.pendingWriteTree.addMerge(this.val$path, this.val$children, Long.valueOf(this.val$writeId));
                return this.this$0.applyOperationToSyncPoints(new Merge(OperationSource.USER, this.val$path, this.val$children));
            }
        });
    }

    public List<? extends Event> applyUserOverwrite(Path path, Node node, Node node2, long j, boolean z, boolean z2) {
        Utilities.hardAssert(z || !z2, NPStringFog.decode(new byte[]{53, 6, 68, 18, 88, 9, 23, 15, 0, 15, 23, 18, 66, 1, 1, 65, 64, 3, 16, 16, 13, 18, 68, 15, 12, 4, 68, 15, 95, 8, 79, 21, 13, 18, 89, 4, 14, 6, 68, 22, 66, 15, 22, 6, 23, 79}, "bcda0f", 1607185615L));
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this, z2, path, node, j, node2, z) { // from class: com.google.firebase.database.core.SyncTree.1
            final SyncTree this$0;
            final Node val$newData;
            final Node val$newDataUnresolved;
            final Path val$path;
            final boolean val$persist;
            final boolean val$visible;
            final long val$writeId;

            {
                this.this$0 = this;
                this.val$persist = z2;
                this.val$path = path;
                this.val$newDataUnresolved = node;
                this.val$writeId = j;
                this.val$newData = node2;
                this.val$visible = z;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() {
                if (this.val$persist) {
                    this.this$0.persistenceManager.saveUserOverwrite(this.val$path, this.val$newDataUnresolved, this.val$writeId);
                }
                this.this$0.pendingWriteTree.addOverwrite(this.val$path, this.val$newData, Long.valueOf(this.val$writeId), this.val$visible);
                return !this.val$visible ? Collections.emptyList() : this.this$0.applyOperationToSyncPoints(new Overwrite(OperationSource.USER, this.val$path, this.val$newData));
            }
        });
    }

    public Node calcCompleteEventCache(Path path, List<Long> list) {
        Node completeServerCache;
        ImmutableTree<SyncPoint> immutableTree = this.syncPointTree;
        immutableTree.getValue();
        Path emptyPath = Path.getEmptyPath();
        ImmutableTree<SyncPoint> child = immutableTree;
        Node node = null;
        Path path2 = path;
        while (true) {
            ChildKey front = path2.getFront();
            Path pathPopFront = path2.popFront();
            emptyPath = emptyPath.child(front);
            Path relative = Path.getRelative(emptyPath, path);
            child = front != null ? child.getChild(front) : ImmutableTree.emptyInstance();
            SyncPoint value = child.getValue();
            completeServerCache = value != null ? value.getCompleteServerCache(relative) : node;
            if (pathPopFront.isEmpty() || completeServerCache != null) {
                break;
            }
            node = completeServerCache;
            path2 = pathPopFront;
        }
        return this.pendingWriteTree.calcCompleteEventCache(path, completeServerCache, list, true);
    }

    ImmutableTree<SyncPoint> getSyncPointTree() {
        return this.syncPointTree;
    }

    public boolean isEmpty() {
        return this.syncPointTree.isEmpty();
    }

    public void keepSynced(QuerySpec querySpec, boolean z) {
        if (z && !this.keepSyncedQueries.contains(querySpec)) {
            addEventRegistration(new KeepSyncedEventRegistration(querySpec));
            this.keepSyncedQueries.add(querySpec);
        } else {
            if (z || !this.keepSyncedQueries.contains(querySpec)) {
                return;
            }
            removeEventRegistration(new KeepSyncedEventRegistration(querySpec));
            this.keepSyncedQueries.remove(querySpec);
        }
    }

    public List<Event> removeAllEventRegistrations(QuerySpec querySpec, DatabaseError databaseError) {
        return removeEventRegistration(querySpec, null, databaseError);
    }

    public List<? extends Event> removeAllWrites() {
        return (List) this.persistenceManager.runInTransaction(new Callable<List<? extends Event>>(this) { // from class: com.google.firebase.database.core.SyncTree.4
            final SyncTree this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.concurrent.Callable
            public List<? extends Event> call() throws Exception {
                this.this$0.persistenceManager.removeAllUserWrites();
                if (this.this$0.pendingWriteTree.purgeAllWrites().isEmpty()) {
                    return Collections.emptyList();
                }
                return this.this$0.applyOperationToSyncPoints(new AckUserWrite(Path.getEmptyPath(), new ImmutableTree(true), true));
            }
        });
    }

    public List<Event> removeEventRegistration(EventRegistration eventRegistration) {
        return removeEventRegistration(eventRegistration.getQuerySpec(), eventRegistration, null);
    }
}
