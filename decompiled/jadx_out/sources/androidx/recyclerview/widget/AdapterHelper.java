package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
final class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = NPStringFog.decode(new byte[]{36, 42, 48}, "ebd9c4", 8536);
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    static final class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        UpdateOp(int i, int i2, int i3, Object obj) {
            this.cmd = i;
            this.positionStart = i2;
            this.itemCount = i3;
            this.payload = obj;
        }

        String cmdToString() {
            switch (this.cmd) {
                case 1:
                    return NPStringFog.decode(new byte[]{7, 7, 81}, "fc536d", -1.996844563E9d);
                case 2:
                    return NPStringFog.decode(new byte[]{17, 91}, "c685d8", 27746);
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    return NPStringFog.decode(new byte[]{91, 9}, "d62a0a", 1.608954E9f);
                case 4:
                    return NPStringFog.decode(new byte[]{69, 72}, "085030", false);
                case 8:
                    return NPStringFog.decode(new byte[]{11, 19}, "fec6b1", 5.1276902E8f);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateOp)) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            if (this.cmd != updateOp.cmd) {
                return false;
            }
            if (this.cmd == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount == updateOp.itemCount && this.positionStart == updateOp.positionStart) {
                return this.payload != null ? this.payload.equals(updateOp.payload) : updateOp.payload == null;
            }
            return false;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + NPStringFog.decode(new byte[]{105}, "2fef9c", 1258) + cmdToString() + NPStringFog.decode(new byte[]{74, 18, 88}, "fab180", 549889064L) + this.positionStart + NPStringFog.decode(new byte[]{82, 95}, "1e0e77", -972754658L) + this.itemCount + NPStringFog.decode(new byte[]{20, 21, 91}, "8ea20a", 1.163944562E9d) + this.payload + NPStringFog.decode(new byte[]{57}, "dee322", -5513);
        }
    }

    AdapterHelper(Callback callback) {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean z) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z;
        this.mOpReorderer = new OpReorderer(this);
    }

    private void applyAdd(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyMove(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyRemove(UpdateOp updateOp) {
        boolean z;
        int i;
        int i2 = updateOp.positionStart;
        int i3 = updateOp.positionStart + updateOp.itemCount;
        byte b = -1;
        int i4 = updateOp.positionStart;
        int i5 = 0;
        while (i4 < i3) {
            if (this.mCallback.findViewHolder(i4) != null || canFindInPreLayout(i4)) {
                if (b == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i2, i5, null));
                    z = true;
                } else {
                    z = false;
                }
                b = 1;
            } else {
                if (b == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i2, i5, null));
                    z = true;
                } else {
                    z = false;
                }
                b = 0;
            }
            if (z) {
                i3 -= i5;
                i4 -= i5;
                i = 1;
            } else {
                i = i5 + 1;
            }
            i4++;
            i5 = i;
        }
        if (i5 != updateOp.itemCount) {
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(2, i2, i5, null);
        }
        if (b == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private void applyUpdate(UpdateOp updateOp) {
        byte b;
        int i;
        int i2 = updateOp.positionStart;
        int i3 = updateOp.positionStart;
        int i4 = updateOp.itemCount;
        byte b2 = -1;
        int i5 = updateOp.positionStart;
        int i6 = 0;
        while (true) {
            b = b2;
            i = i2;
            if (i5 >= i3 + i4) {
                break;
            }
            if (this.mCallback.findViewHolder(i5) != null || canFindInPreLayout(i5)) {
                if (b == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i, i6, updateOp.payload));
                    i = i5;
                    i6 = 0;
                }
                i2 = i;
                b2 = 1;
            } else {
                if (b == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i, i6, updateOp.payload));
                    i = i5;
                    i6 = 0;
                }
                i2 = i;
                b2 = 0;
            }
            i6++;
            i5++;
        }
        if (i6 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(4, i, i6, obj);
        }
        if (b == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private boolean canFindInPreLayout(int i) {
        int size = this.mPostponedList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.mPostponedList.get(i2);
            if (updateOp.cmd == 8) {
                if (findPositionOffset(updateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            } else if (updateOp.cmd == 1) {
                int i3 = updateOp.positionStart;
                int i4 = updateOp.itemCount;
                for (int i5 = updateOp.positionStart; i5 < i3 + i4; i5++) {
                    if (findPositionOffset(i5, i2 + 1) == i) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int i;
        boolean z;
        if (updateOp.cmd == 1 || updateOp.cmd == 8) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{64, 88, 87, 70, 13, 84, 19, 94, 87, 71, 65, 84, 90, 67, 72, 82, 21, 83, 91, 16, 89, 87, 5, 16, 92, 66, 24, 94, 14, 70, 86, 16, 94, 92, 19, 16, 67, 66, 93, 19, 13, 81, 74, 95, 77, 71}, "3083a0", -5.90026953E8d));
        }
        int iUpdatePositionWithPostponed = updatePositionWithPostponed(updateOp.positionStart, updateOp.cmd);
        int i2 = updateOp.positionStart;
        switch (updateOp.cmd) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{90, 19, 22, 22, 89, 11, 64, 15, 82, 69, 83, 1, 21, 17, 83, 8, 94, 18, 80, 67, 89, 23, 17, 17, 69, 7, 87, 17, 84, 74}, "5c6e1d", 23696) + updateOp);
            case 4:
                i = 1;
                break;
        }
        int i3 = 1;
        int i4 = iUpdatePositionWithPostponed;
        int i5 = i2;
        for (int i6 = 1; i6 < updateOp.itemCount; i6++) {
            int iUpdatePositionWithPostponed2 = updatePositionWithPostponed(updateOp.positionStart + (i * i6), updateOp.cmd);
            switch (updateOp.cmd) {
                case 2:
                    z = iUpdatePositionWithPostponed2 == i4;
                    break;
                case 3:
                    z = false;
                    break;
                case 4:
                    z = iUpdatePositionWithPostponed2 == i4 + 1;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                i3++;
            } else {
                UpdateOp updateOpObtainUpdateOp = obtainUpdateOp(updateOp.cmd, i4, i3, updateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(updateOpObtainUpdateOp, i5);
                recycleUpdateOp(updateOpObtainUpdateOp);
                if (updateOp.cmd == 4) {
                    i5 += i3;
                }
                i3 = 1;
                i4 = iUpdatePositionWithPostponed2;
            }
        }
        Object obj = updateOp.payload;
        recycleUpdateOp(updateOp);
        if (i3 > 0) {
            UpdateOp updateOpObtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, i4, i3, obj);
            dispatchFirstPassAndUpdateViewHolders(updateOpObtainUpdateOp2, i5);
            recycleUpdateOp(updateOpObtainUpdateOp2);
        }
    }

    private void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        switch (updateOp.cmd) {
            case 1:
                this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
                return;
            case 2:
                this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(updateOp.positionStart, updateOp.itemCount);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 89, 83, 91, 93, 68, 10, 23, 77, 69, 86, 82, 16, 82, 24, 90, 66, 19, 16, 78, 72, 80, 18, 85, 11, 69, 24}, "d78523", true) + updateOp);
            case 4:
                this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                return;
            case 8:
                this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int updatePositionWithPostponed(int r9, int r10) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AdapterHelper.updatePositionWithPostponed(int, int):int");
    }

    AdapterHelper addUpdateOp(UpdateOp... updateOpArr) {
        Collections.addAll(this.mPendingUpdates, updateOpArr);
        return this;
    }

    public int applyPendingUpdatesToPosition(int i) {
        int i2;
        int size = this.mPendingUpdates.size();
        int i3 = i;
        int i4 = 0;
        while (i4 < size) {
            UpdateOp updateOp = this.mPendingUpdates.get(i4);
            switch (updateOp.cmd) {
                case 1:
                    if (updateOp.positionStart <= i3) {
                        i2 = updateOp.itemCount + i3;
                    }
                    i4++;
                    i3 = i2;
                    break;
                case 2:
                    if (updateOp.positionStart <= i3) {
                        if (updateOp.positionStart + updateOp.itemCount > i3) {
                            return -1;
                        }
                        i2 = i3 - updateOp.itemCount;
                    }
                    i4++;
                    i3 = i2;
                    break;
                case 8:
                    if (updateOp.positionStart == i3) {
                        i2 = updateOp.itemCount;
                    } else {
                        if (updateOp.positionStart < i3) {
                            i3--;
                        }
                        if (updateOp.itemCount <= i3) {
                            i2 = i3 + 1;
                        }
                    }
                    i4++;
                    i3 = i2;
                    break;
                default:
                    i2 = i3;
                    continue;
                    i4++;
                    i3 = i2;
                    break;
            }
            i2 = i3;
            i4++;
            i3 = i2;
        }
        return i3;
    }

    void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            switch (updateOp.cmd) {
                case 1:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
                    break;
                case 2:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
                    break;
                case 4:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                    break;
                case 8:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int i) {
        this.mCallback.onDispatchFirstPass(updateOp);
        switch (updateOp.cmd) {
            case 2:
                this.mCallback.offsetPositionsForRemovingInvisible(i, updateOp.itemCount);
                return;
            case 3:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{91, 95, 88, 78, 70, 71, 81, 92, 91, 65, 3, 21, 85, 95, 80, 23, 19, 69, 80, 80, 64, 82, 70, 90, 68, 66, 20, 84, 7, 91, 20, 83, 81, 23, 2, 92, 71, 65, 85, 67, 5, 93, 81, 85, 20, 94, 8, 21, 82, 88, 70, 68, 18, 21, 68, 80, 71, 68}, "4147f5", -1714105953L));
            case 4:
                this.mCallback.markViewHoldersUpdated(i, updateOp.itemCount, updateOp.payload);
                return;
        }
    }

    int findPositionOffset(int i) {
        return findPositionOffset(i, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004e A[PHI: r1
      0x004e: PHI (r1v3 int) = (r1v1 int), (r1v1 int), (r1v5 int) binds: [B:17:0x0030, B:26:0x0048, B:14:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int findPositionOffset(int r6, int r7) {
        /*
            r5 = this;
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r0 = r5.mPostponedList
            int r2 = r0.size()
            r1 = r6
        L7:
            if (r7 >= r2) goto L3f
            java.util.ArrayList<androidx.recyclerview.widget.AdapterHelper$UpdateOp> r0 = r5.mPostponedList
            java.lang.Object r0 = r0.get(r7)
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r0 = (androidx.recyclerview.widget.AdapterHelper.UpdateOp) r0
            int r3 = r0.cmd
            r4 = 8
            if (r3 != r4) goto L2e
            int r3 = r0.positionStart
            if (r3 != r1) goto L21
            int r0 = r0.itemCount
        L1d:
            int r7 = r7 + 1
            r1 = r0
            goto L7
        L21:
            int r3 = r0.positionStart
            if (r3 >= r1) goto L27
            int r1 = r1 + (-1)
        L27:
            int r0 = r0.itemCount
            if (r0 > r1) goto L4e
            int r0 = r1 + 1
            goto L1d
        L2e:
            int r3 = r0.positionStart
            if (r3 > r1) goto L4e
            int r3 = r0.cmd
            r4 = 2
            if (r3 != r4) goto L45
            int r3 = r0.positionStart
            int r4 = r0.itemCount
            int r3 = r3 + r4
            if (r1 >= r3) goto L40
            r1 = -1
        L3f:
            return r1
        L40:
            int r0 = r0.itemCount
            int r0 = r1 - r0
            goto L1d
        L45:
            int r3 = r0.cmd
            r4 = 1
            if (r3 != r4) goto L4e
            int r0 = r0.itemCount
            int r0 = r0 + r1
            goto L1d
        L4e:
            r0 = r1
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AdapterHelper.findPositionOffset(int, int):int");
    }

    boolean hasAnyUpdateTypes(int i) {
        return (this.mExistingUpdateTypes & i) != 0;
    }

    boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        UpdateOp updateOpAcquire = this.mUpdateOpPool.acquire();
        if (updateOpAcquire == null) {
            return new UpdateOp(i, i2, i3, obj);
        }
        updateOpAcquire.cmd = i;
        updateOpAcquire.positionStart = i2;
        updateOpAcquire.itemCount = i3;
        updateOpAcquire.payload = obj;
        return updateOpAcquire;
    }

    boolean onItemRangeChanged(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i, i2, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeInserted(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i, i2, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeMoved(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{40, 92, 18, 13, 8, 82, 69, 94, 11, 22, 3, 21, 17, 91, 5, 10, 70, 4, 69, 90, 16, 1, 11, 21, 12, 64, 68, 10, 9, 65, 69, 64, 17, 20, 22, 90, 23, 71, 1, 0, 70, 76, 0, 71}, "e3ddf5", 2.0021889E9f));
        }
        this.mPendingUpdates.add(obtainUpdateOp(8, i, i2, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeRemoved(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i, i2, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            switch (updateOp.cmd) {
                case 1:
                    applyAdd(updateOp);
                    break;
                case 2:
                    applyRemove(updateOp);
                    break;
                case 4:
                    applyUpdate(updateOp);
                    break;
                case 8:
                    applyMove(updateOp);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        updateOp.payload = null;
        this.mUpdateOpPool.release(updateOp);
    }

    void recycleUpdateOpsAndClearList(List<UpdateOp> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp(list.get(i));
        }
        list.clear();
    }

    void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }
}
