package com.google.firebase.database.core.persistence;

import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.UserWriteRecord;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.CacheNode;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class NoopPersistenceManager implements PersistenceManager {
    private static final String TAG = NPStringFog.decode(new byte[]{40, 12, 87, 18, 49, 80, 20, 16, 81, 17, 21, 80, 8, 0, 93, 47, 0, 91, 7, 4, 93, 16}, "fc8ba5", 1.9528087E9f);
    private boolean insideTransaction = false;

    private void verifyInsideTransaction() {
        Utilities.hardAssert(this.insideTransaction, NPStringFog.decode(new byte[]{101, 67, 4, 87, 68, 7, 82, 69, 12, 86, 89, 70, 84, 73, 21, 92, 84, 18, 84, 85, 69, 77, 88, 70, 80, 93, 23, 92, 86, 2, 72, 17, 7, 92, 23, 15, 95, 17, 21, 75, 88, 1, 67, 84, 22, 74, 25}, "11e97f", -7.237773E7f));
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void applyUserWriteToServerCache(Path path, CompoundWrite compoundWrite) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void applyUserWriteToServerCache(Path path, Node node) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public List<UserWriteRecord> loadUserWrites() {
        return Collections.emptyList();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void removeAllUserWrites() {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void removeUserWrite(long j) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public <T> T runInTransaction(Callable<T> callable) {
        Utilities.hardAssert(!this.insideTransaction, NPStringFog.decode(new byte[]{67, 66, 88, 40, 12, 50, 67, 86, 88, 18, 3, 5, 69, 94, 89, 15, 66, 5, 80, 91, 90, 4, 6, 70, 70, 95, 83, 15, 66, 7, 95, 23, 83, 25, 11, 21, 69, 94, 88, 6, 66, 18, 67, 86, 88, 18, 3, 5, 69, 94, 89, 15, 66, 15, 66, 23, 87, 13, 16, 3, 80, 83, 79, 65, 11, 8, 17, 71, 68, 14, 5, 20, 84, 68, 69, 79}, "176abf", 19415));
        this.insideTransaction = true;
        try {
            return callable.call();
        } finally {
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void saveUserMerge(Path path, CompoundWrite compoundWrite, long j) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void saveUserOverwrite(Path path, Node node, long j) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public CacheNode serverCache(QuerySpec querySpec) {
        return new CacheNode(IndexedNode.from(EmptyNode.Empty(), querySpec.getIndex()), false, false);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryActive(QuerySpec querySpec) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryComplete(QuerySpec querySpec) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setQueryInactive(QuerySpec querySpec) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void setTrackedQueryKeys(QuerySpec querySpec, Set<ChildKey> set) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateServerCache(Path path, CompoundWrite compoundWrite) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateServerCache(QuerySpec querySpec, Node node) {
        verifyInsideTransaction();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceManager
    public void updateTrackedQueryKeys(QuerySpec querySpec, Set<ChildKey> set, Set<ChildKey> set2) {
        verifyInsideTransaction();
    }
}
