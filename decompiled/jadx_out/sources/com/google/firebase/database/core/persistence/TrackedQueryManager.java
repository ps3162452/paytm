package com.google.firebase.database.core.persistence;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.Clock;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.Predicate;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.QueryParams;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class TrackedQueryManager {
    static final boolean $assertionsDisabled = false;
    private final Clock clock;
    private long currentQueryId;
    private final LogWrapper logger;
    private final PersistenceStorageEngine storageLayer;
    private ImmutableTree<Map<QueryParams, TrackedQuery>> trackedQueryTree = new ImmutableTree<>(null);
    private static final Predicate<Map<QueryParams, TrackedQuery>> HAS_DEFAULT_COMPLETE_PREDICATE = new Predicate<Map<QueryParams, TrackedQuery>>() { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.1
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(Map<QueryParams, TrackedQuery> map) {
            TrackedQuery trackedQuery = map.get(QueryParams.DEFAULT_PARAMS);
            return trackedQuery != null && trackedQuery.complete;
        }
    };
    private static final Predicate<Map<QueryParams, TrackedQuery>> HAS_ACTIVE_DEFAULT_PREDICATE = new Predicate<Map<QueryParams, TrackedQuery>>() { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.2
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(Map<QueryParams, TrackedQuery> map) {
            TrackedQuery trackedQuery = map.get(QueryParams.DEFAULT_PARAMS);
            return trackedQuery != null && trackedQuery.active;
        }
    };
    private static final Predicate<TrackedQuery> IS_QUERY_PRUNABLE_PREDICATE = new Predicate<TrackedQuery>() { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.3
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(TrackedQuery trackedQuery) {
            return !trackedQuery.active;
        }
    };
    private static final Predicate<TrackedQuery> IS_QUERY_UNPRUNABLE_PREDICATE = new Predicate<TrackedQuery>() { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.4
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(TrackedQuery trackedQuery) {
            return !TrackedQueryManager.IS_QUERY_PRUNABLE_PREDICATE.evaluate(trackedQuery);
        }
    };

    public TrackedQueryManager(PersistenceStorageEngine persistenceStorageEngine, LogWrapper logWrapper, Clock clock) {
        this.currentQueryId = 0L;
        this.storageLayer = persistenceStorageEngine;
        this.logger = logWrapper;
        this.clock = clock;
        resetPreviouslyActiveTrackedQueries();
        for (TrackedQuery trackedQuery : persistenceStorageEngine.loadTrackedQueries()) {
            this.currentQueryId = Math.max(trackedQuery.id + 1, this.currentQueryId);
            cacheTrackedQuery(trackedQuery);
        }
    }

    private static void assertValidTrackedQuery(QuerySpec querySpec) {
        Utilities.hardAssert(!querySpec.loadsAllData() || querySpec.isDefault(), NPStringFog.decode(new byte[]{39, 4, 90, 21, 64, 19, 12, 4, 66, 87, 20, 71, 22, 4, 87, 89, 81, 87, 68, 11, 91, 92, 25, 87, 1, 3, 85, 71, 88, 71, 68, 20, 65, 87, 70, 74, 68, 17, 92, 83, 64, 19, 8, 10, 85, 86, 71, 19, 5, 9, 88, 18, 80, 82, 16, 4}, "de4243", false));
    }

    private void cacheTrackedQuery(TrackedQuery trackedQuery) {
        Map<QueryParams, TrackedQuery> map;
        assertValidTrackedQuery(trackedQuery.querySpec);
        Map<QueryParams, TrackedQuery> map2 = this.trackedQueryTree.get(trackedQuery.querySpec.getPath());
        if (map2 == null) {
            HashMap map3 = new HashMap();
            this.trackedQueryTree = this.trackedQueryTree.set(trackedQuery.querySpec.getPath(), map3);
            map = map3;
        } else {
            map = map2;
        }
        TrackedQuery trackedQuery2 = map.get(trackedQuery.querySpec.getParams());
        Utilities.hardAssert(trackedQuery2 == null || trackedQuery2.id == trackedQuery.id);
        map.put(trackedQuery.querySpec.getParams(), trackedQuery);
    }

    private static long calculateCountToPrune(CachePolicy cachePolicy, long j) {
        return j - Math.min((long) Math.floor((1.0f - cachePolicy.getPercentOfQueriesToPruneAtOnce()) * j), cachePolicy.getMaxNumberOfQueriesToKeep());
    }

    private Set<Long> filteredQueryIdsAtPath(Path path) {
        HashSet hashSet = new HashSet();
        Map<QueryParams, TrackedQuery> map = this.trackedQueryTree.get(path);
        if (map != null) {
            for (TrackedQuery trackedQuery : map.values()) {
                if (!trackedQuery.querySpec.loadsAllData()) {
                    hashSet.add(Long.valueOf(trackedQuery.id));
                }
            }
        }
        return hashSet;
    }

    private List<TrackedQuery> getQueriesMatching(Predicate<TrackedQuery> predicate) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Path, Map<QueryParams, TrackedQuery>>> it = this.trackedQueryTree.iterator();
        while (it.hasNext()) {
            for (TrackedQuery trackedQuery : it.next().getValue().values()) {
                if (predicate.evaluate(trackedQuery)) {
                    arrayList.add(trackedQuery);
                }
            }
        }
        return arrayList;
    }

    private boolean includedInDefaultCompleteQuery(Path path) {
        return this.trackedQueryTree.findRootMostMatchingPath(path, HAS_DEFAULT_COMPLETE_PREDICATE) != null;
    }

    private static QuerySpec normalizeQuery(QuerySpec querySpec) {
        return querySpec.loadsAllData() ? QuerySpec.defaultQueryAtPath(querySpec.getPath()) : querySpec;
    }

    private void resetPreviouslyActiveTrackedQueries() {
        try {
            this.storageLayer.beginTransaction();
            this.storageLayer.resetPreviouslyActiveTrackedQueries(this.clock.millis());
            this.storageLayer.setTransactionSuccessful();
        } finally {
            this.storageLayer.endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTrackedQuery(TrackedQuery trackedQuery) {
        cacheTrackedQuery(trackedQuery);
        this.storageLayer.saveTrackedQuery(trackedQuery);
    }

    private void setQueryActiveFlag(QuerySpec querySpec, boolean z) {
        TrackedQuery trackedQuery;
        QuerySpec querySpecNormalizeQuery = normalizeQuery(querySpec);
        TrackedQuery trackedQueryFindTrackedQuery = findTrackedQuery(querySpecNormalizeQuery);
        long jMillis = this.clock.millis();
        if (trackedQueryFindTrackedQuery != null) {
            trackedQuery = trackedQueryFindTrackedQuery.updateLastUse(jMillis).setActiveState(z);
        } else {
            long j = this.currentQueryId;
            this.currentQueryId = 1 + j;
            trackedQuery = new TrackedQuery(j, querySpecNormalizeQuery, jMillis, false, z);
        }
        saveTrackedQuery(trackedQuery);
    }

    public long countOfPrunableQueries() {
        return getQueriesMatching(IS_QUERY_PRUNABLE_PREDICATE).size();
    }

    public void ensureCompleteTrackedQuery(Path path) {
        TrackedQuery complete;
        if (includedInDefaultCompleteQuery(path)) {
            return;
        }
        QuerySpec querySpecDefaultQueryAtPath = QuerySpec.defaultQueryAtPath(path);
        TrackedQuery trackedQueryFindTrackedQuery = findTrackedQuery(querySpecDefaultQueryAtPath);
        if (trackedQueryFindTrackedQuery == null) {
            long j = this.currentQueryId;
            this.currentQueryId = 1 + j;
            complete = new TrackedQuery(j, querySpecDefaultQueryAtPath, this.clock.millis(), true, false);
        } else {
            complete = trackedQueryFindTrackedQuery.setComplete();
        }
        saveTrackedQuery(complete);
    }

    public TrackedQuery findTrackedQuery(QuerySpec querySpec) {
        QuerySpec querySpecNormalizeQuery = normalizeQuery(querySpec);
        Map<QueryParams, TrackedQuery> map = this.trackedQueryTree.get(querySpecNormalizeQuery.getPath());
        if (map != null) {
            return map.get(querySpecNormalizeQuery.getParams());
        }
        return null;
    }

    public Set<ChildKey> getKnownCompleteChildren(Path path) {
        HashSet hashSet = new HashSet();
        Set<Long> setFilteredQueryIdsAtPath = filteredQueryIdsAtPath(path);
        if (!setFilteredQueryIdsAtPath.isEmpty()) {
            hashSet.addAll(this.storageLayer.loadTrackedQueryKeys(setFilteredQueryIdsAtPath));
        }
        for (Map.Entry<ChildKey, ImmutableTree<Map<QueryParams, TrackedQuery>>> entry : this.trackedQueryTree.subtree(path).getChildren()) {
            ChildKey key = entry.getKey();
            ImmutableTree<Map<QueryParams, TrackedQuery>> value = entry.getValue();
            if (value.getValue() != null && HAS_DEFAULT_COMPLETE_PREDICATE.evaluate(value.getValue())) {
                hashSet.add(key);
            }
        }
        return hashSet;
    }

    public boolean hasActiveDefaultQuery(Path path) {
        return this.trackedQueryTree.rootMostValueMatching(path, HAS_ACTIVE_DEFAULT_PREDICATE) != null;
    }

    public boolean isQueryComplete(QuerySpec querySpec) {
        if (includedInDefaultCompleteQuery(querySpec.getPath())) {
            return true;
        }
        if (querySpec.loadsAllData()) {
            return false;
        }
        Map<QueryParams, TrackedQuery> map = this.trackedQueryTree.get(querySpec.getPath());
        return map != null && map.containsKey(querySpec.getParams()) && map.get(querySpec.getParams()).complete;
    }

    public PruneForest pruneOldQueries(CachePolicy cachePolicy) {
        List<TrackedQuery> queriesMatching = getQueriesMatching(IS_QUERY_PRUNABLE_PREDICATE);
        long jCalculateCountToPrune = calculateCountToPrune(cachePolicy, queriesMatching.size());
        PruneForest pruneForest = new PruneForest();
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{105, 69, 68, 93, 8, 86, 94, 23, 94, 95, 5, 24, 72, 66, 84, 65, 8, 93, 74, 25, 17, 19, 49, 74, 76, 89, 80, 81, 13, 93, 3, 23}, "9713a8", 22235) + queriesMatching.size() + NPStringFog.decode(new byte[]{66, 113, 90, 67, 87, 22, 66, 70, 90, 22, 73, 16, 23, 92, 80, 12, 25}, "b2569b", false, false) + jCalculateCountToPrune, new Object[0]);
        }
        Collections.sort(queriesMatching, new Comparator<TrackedQuery>(this) { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.6
            final TrackedQueryManager this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.Comparator
            public int compare(TrackedQuery trackedQuery, TrackedQuery trackedQuery2) {
                return Utilities.compareLongs(trackedQuery.lastUse, trackedQuery2.lastUse);
            }
        });
        for (int i = 0; i < jCalculateCountToPrune; i++) {
            TrackedQuery trackedQuery = queriesMatching.get(i);
            pruneForest = pruneForest.prune(trackedQuery.querySpec.getPath());
            removeTrackedQuery(trackedQuery.querySpec);
        }
        int i2 = (int) jCalculateCountToPrune;
        PruneForest pruneForestKeep = pruneForest;
        while (true) {
            int i3 = i2;
            if (i3 >= queriesMatching.size()) {
                break;
            }
            pruneForestKeep = pruneForestKeep.keep(queriesMatching.get(i3).querySpec.getPath());
            i2 = i3 + 1;
        }
        List<TrackedQuery> queriesMatching2 = getQueriesMatching(IS_QUERY_UNPRUNABLE_PREDICATE);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{49, 8, 65, 65, 71, 11, 5, 4, 93, 86, 18, 20, 17, 3, 67, 90, 87, 22, 94, 70}, "df132e", 8.540883E8f) + queriesMatching2.size(), new Object[0]);
        }
        Iterator<TrackedQuery> it = queriesMatching2.iterator();
        while (it.hasNext()) {
            pruneForestKeep = pruneForestKeep.keep(it.next().querySpec.getPath());
        }
        return pruneForestKeep;
    }

    public void removeTrackedQuery(QuerySpec querySpec) {
        QuerySpec querySpecNormalizeQuery = normalizeQuery(querySpec);
        this.storageLayer.deleteTrackedQuery(findTrackedQuery(querySpecNormalizeQuery).id);
        Map<QueryParams, TrackedQuery> map = this.trackedQueryTree.get(querySpecNormalizeQuery.getPath());
        map.remove(querySpecNormalizeQuery.getParams());
        if (map.isEmpty()) {
            this.trackedQueryTree = this.trackedQueryTree.remove(querySpecNormalizeQuery.getPath());
        }
    }

    public void setQueriesComplete(Path path) {
        this.trackedQueryTree.subtree(path).foreach(new ImmutableTree.TreeVisitor<Map<QueryParams, TrackedQuery>, Void>(this) { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.5
            final TrackedQueryManager this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public Void onNodeValue(Path path2, Map<QueryParams, TrackedQuery> map, Void r6) {
                Iterator<Map.Entry<QueryParams, TrackedQuery>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    TrackedQuery value = it.next().getValue();
                    if (!value.complete) {
                        this.this$0.saveTrackedQuery(value.setComplete());
                    }
                }
                return null;
            }
        });
    }

    public void setQueryActive(QuerySpec querySpec) {
        setQueryActiveFlag(querySpec, true);
    }

    public void setQueryCompleteIfExists(QuerySpec querySpec) {
        TrackedQuery trackedQueryFindTrackedQuery = findTrackedQuery(normalizeQuery(querySpec));
        if (trackedQueryFindTrackedQuery == null || trackedQueryFindTrackedQuery.complete) {
            return;
        }
        saveTrackedQuery(trackedQueryFindTrackedQuery.setComplete());
    }

    public void setQueryInactive(QuerySpec querySpec) {
        setQueryActiveFlag(querySpec, false);
    }

    void verifyCache() {
        List<TrackedQuery> listLoadTrackedQueries = this.storageLayer.loadTrackedQueries();
        ArrayList arrayList = new ArrayList();
        this.trackedQueryTree.foreach(new ImmutableTree.TreeVisitor<Map<QueryParams, TrackedQuery>, Void>(this, arrayList) { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.7
            final TrackedQueryManager this$0;
            final List val$trackedQueries;

            {
                this.this$0 = this;
                this.val$trackedQueries = arrayList;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public Void onNodeValue(Path path, Map<QueryParams, TrackedQuery> map, Void r6) {
                Iterator<TrackedQuery> it = map.values().iterator();
                while (it.hasNext()) {
                    this.val$trackedQueries.add(it.next());
                }
                return null;
            }
        });
        Collections.sort(arrayList, new Comparator<TrackedQuery>(this) { // from class: com.google.firebase.database.core.persistence.TrackedQueryManager.8
            final TrackedQueryManager this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.Comparator
            public int compare(TrackedQuery trackedQuery, TrackedQuery trackedQuery2) {
                return Utilities.compareLongs(trackedQuery.id, trackedQuery2.id);
            }
        });
        Utilities.hardAssert(listLoadTrackedQueries.equals(arrayList), NPStringFog.decode(new byte[]{50, 68, 5, 81, 93, 6, 2, 22, 21, 71, 83, 17, 15, 83, 23, 18, 89, 22, 18, 22, 11, 84, 22, 16, 31, 88, 7, 28, 22, 67, 50, 68, 5, 81, 93, 6, 2, 22, 21, 71, 83, 17, 15, 83, 23, 8, 22}, "f6d26c", 1131496795L) + arrayList + NPStringFog.decode(new byte[]{24, 103, 66, 95, 20, 6, 92, 20, 71, 69, 3, 17, 81, 81, 69, 10, 70}, "8460fc", -18440) + listLoadTrackedQueries);
    }
}
