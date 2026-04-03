package com.google.firebase.database.core.persistence;

import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Context;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.UserWriteRecord;
import com.google.firebase.database.core.utilities.Clock;
import com.google.firebase.database.core.utilities.DefaultClock;
import com.google.firebase.database.core.view.CacheNode;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DefaultPersistenceManager implements PersistenceManager {
    static final boolean $assertionsDisabled = false;
    private final CachePolicy cachePolicy;
    private final LogWrapper logger;
    private long serverCacheUpdatesSinceLastPruneCheck;
    private final PersistenceStorageEngine storageLayer;
    private final TrackedQueryManager trackedQueryManager;

    public DefaultPersistenceManager(Context context, PersistenceStorageEngine persistenceStorageEngine, CachePolicy cachePolicy) {
        this(context, persistenceStorageEngine, cachePolicy, new DefaultClock());
    }

    public DefaultPersistenceManager(Context context, PersistenceStorageEngine persistenceStorageEngine, CachePolicy cachePolicy, Clock clock) {
        this.serverCacheUpdatesSinceLastPruneCheck = 0L;
        this.storageLayer = persistenceStorageEngine;
        LogWrapper logger = context.getLogger(NPStringFog.decode(new byte[]{103, 82, 67, 64, 10, 18, 67, 82, 95, 80, 6}, "7713ca", 8.3876826E8f));
        this.logger = logger;
        this.trackedQueryManager = new TrackedQueryManager(persistenceStorageEngine, logger, clock);
        this.cachePolicy = cachePolicy;
    }

    private void doPruneCheckAfterServerUpdate() {
        boolean z = true;
        long j = this.serverCacheUpdatesSinceLastPruneCheck + 1;
        this.serverCacheUpdatesSinceLastPruneCheck = j;
        if (this.cachePolicy.shouldCheckCacheSize(j)) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{98, 3, 0, 6, 93, 1, 84, 70, 17, 23, 64, 10, 85, 70, 2, 13, 80, 7, 91, 70, 21, 13, 71, 1, 67, 14, 14, 9, 81, 74}, "0fae5d", true), new Object[0]);
            }
            this.serverCacheUpdatesSinceLastPruneCheck = 0L;
            long jServerCacheEstimatedSizeInBytes = this.storageLayer.serverCacheEstimatedSizeInBytes();
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{117, 88, 85, 80, 84, 67, 69, 80, 76, 93, 11, 67}, "69681c", true) + jServerCacheEstimatedSizeInBytes, new Object[0]);
            }
            while (z && this.cachePolicy.shouldPrune(jServerCacheEstimatedSizeInBytes, this.trackedQueryManager.countOfPrunableQueries())) {
                PruneForest pruneForestPruneOldQueries = this.trackedQueryManager.pruneOldQueries(this.cachePolicy);
                if (pruneForestPruneOldQueries.prunesAnything()) {
                    this.storageLayer.pruneCache(Path.getEmptyPath(), pruneForestPruneOldQueries);
                } else {
                    z = false;
                }
                jServerCacheEstimatedSizeInBytes = this.storageLayer.serverCacheEstimatedSizeInBytes();
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{116, 85, 91, 81, 3, 18, 68, 93, 66, 92, 70, 83, 81, 64, 93, 75, 70, 66, 69, 65, 86, 92, 92, 18}, "7489f2", -1.282767E9f) + jServerCacheEstimatedSizeInBytes, new Object[0]);
                }
            }
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void applyUserWriteToServerCache(Path path, CompoundWrite compoundWrite) {
        for (Map.Entry<Path, Node> entry : compoundWrite) {
            applyUserWriteToServerCache(path.child(entry.getKey()), entry.getValue());
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void applyUserWriteToServerCache(Path path, Node node) {
        if (this.trackedQueryManager.hasActiveDefaultQuery(path)) {
            return;
        }
        this.storageLayer.overwriteServerCache(path, node);
        this.trackedQueryManager.ensureCompleteTrackedQuery(path);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public List<UserWriteRecord> loadUserWrites() {
        return this.storageLayer.loadUserWrites();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void removeAllUserWrites() {
        this.storageLayer.removeAllUserWrites();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void removeUserWrite(long j) {
        this.storageLayer.removeUserWrite(j);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public <T> T runInTransaction(Callable<T> callable) {
        this.storageLayer.beginTransaction();
        try {
            T tCall = callable.call();
            this.storageLayer.setTransactionSuccessful();
            return tCall;
        } finally {
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void saveUserMerge(Path path, CompoundWrite compoundWrite, long j) {
        this.storageLayer.saveUserMerge(path, compoundWrite, j);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void saveUserOverwrite(Path path, Node node, long j) {
        this.storageLayer.saveUserOverwrite(path, node, j);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public CacheNode serverCache(QuerySpec querySpec) {
        Set<ChildKey> knownCompleteChildren;
        boolean z;
        if (this.trackedQueryManager.isQueryComplete(querySpec)) {
            TrackedQuery trackedQueryFindTrackedQuery = this.trackedQueryManager.findTrackedQuery(querySpec);
            knownCompleteChildren = (querySpec.loadsAllData() || trackedQueryFindTrackedQuery == null || !trackedQueryFindTrackedQuery.complete) ? null : this.storageLayer.loadTrackedQueryKeys(trackedQueryFindTrackedQuery.id);
            z = true;
        } else {
            knownCompleteChildren = this.trackedQueryManager.getKnownCompleteChildren(querySpec.getPath());
            z = false;
        }
        Node nodeServerCache = this.storageLayer.serverCache(querySpec.getPath());
        if (knownCompleteChildren == null) {
            return new CacheNode(IndexedNode.from(nodeServerCache, querySpec.getIndex()), z, false);
        }
        Node nodeEmpty = EmptyNode.Empty();
        for (ChildKey childKey : knownCompleteChildren) {
            nodeEmpty = nodeEmpty.updateImmediateChild(childKey, nodeServerCache.getImmediateChild(childKey));
        }
        return new CacheNode(IndexedNode.from(nodeEmpty, querySpec.getIndex()), z, true);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryActive(QuerySpec querySpec) {
        this.trackedQueryManager.setQueryActive(querySpec);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryComplete(QuerySpec querySpec) {
        if (querySpec.loadsAllData()) {
            this.trackedQueryManager.setQueriesComplete(querySpec.getPath());
        } else {
            this.trackedQueryManager.setQueryCompleteIfExists(querySpec);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryInactive(QuerySpec querySpec) {
        this.trackedQueryManager.setQueryInactive(querySpec);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setTrackedQueryKeys(QuerySpec querySpec, Set<ChildKey> set) {
        this.storageLayer.saveTrackedQueryKeys(this.trackedQueryManager.findTrackedQuery(querySpec).id, set);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateServerCache(Path path, CompoundWrite compoundWrite) {
        this.storageLayer.mergeIntoServerCache(path, compoundWrite);
        doPruneCheckAfterServerUpdate();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateServerCache(QuerySpec querySpec, Node node) {
        if (querySpec.loadsAllData()) {
            this.storageLayer.overwriteServerCache(querySpec.getPath(), node);
        } else {
            this.storageLayer.mergeIntoServerCache(querySpec.getPath(), node);
        }
        setQueryComplete(querySpec);
        doPruneCheckAfterServerUpdate();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateTrackedQueryKeys(QuerySpec querySpec, Set<ChildKey> set, Set<ChildKey> set2) {
        this.storageLayer.updateTrackedQueryKeys(this.trackedQueryManager.findTrackedQuery(querySpec).id, set, set2);
    }
}
