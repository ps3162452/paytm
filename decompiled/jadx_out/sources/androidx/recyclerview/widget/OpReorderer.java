package androidx.recyclerview.widget;

import androidx.recyclerview.widget.AdapterHelper;
import java.util.List;

/* JADX INFO: loaded from: classes42.dex */
class OpReorderer {
    final Callback mCallback;

    interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).cmd != 8) {
                z = true;
            } else {
                if (z2) {
                    return size;
                }
                z = z2;
            }
            size--;
            z2 = z;
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = updateOp.itemCount < updateOp2.positionStart ? -1 : 0;
        if (updateOp.positionStart < updateOp2.positionStart) {
            i3++;
        }
        if (updateOp2.positionStart <= updateOp.positionStart) {
            updateOp.positionStart += updateOp2.itemCount;
        }
        if (updateOp2.positionStart <= updateOp.itemCount) {
            updateOp.itemCount += updateOp2.itemCount;
        }
        updateOp2.positionStart = i3 + updateOp2.positionStart;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        switch (updateOp2.cmd) {
            case 1:
                swapMoveAdd(list, i, updateOp, i2, updateOp2);
                break;
            case 2:
                swapMoveRemove(list, i, updateOp, i2, updateOp2);
                break;
            case 4:
                swapMoveUpdate(list, i, updateOp, i2, updateOp2);
                break;
        }
    }

    void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void swapMoveRemove(java.util.List<androidx.recyclerview.widget.AdapterHelper.UpdateOp> r10, int r11, androidx.recyclerview.widget.AdapterHelper.UpdateOp r12, int r13, androidx.recyclerview.widget.AdapterHelper.UpdateOp r14) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.OpReorderer.swapMoveRemove(java.util.List, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void swapMoveUpdate(java.util.List<androidx.recyclerview.widget.AdapterHelper.UpdateOp> r7, int r8, androidx.recyclerview.widget.AdapterHelper.UpdateOp r9, int r10, androidx.recyclerview.widget.AdapterHelper.UpdateOp r11) {
        /*
            r6 = this;
            r1 = 0
            r5 = 4
            int r0 = r9.itemCount
            int r2 = r11.positionStart
            if (r0 >= r2) goto L30
            int r0 = r11.positionStart
            int r0 = r0 + (-1)
            r11.positionStart = r0
        Le:
            r0 = r1
        Lf:
            int r2 = r9.positionStart
            int r3 = r11.positionStart
            if (r2 > r3) goto L4b
            int r2 = r11.positionStart
            int r2 = r2 + 1
            r11.positionStart = r2
        L1b:
            r7.set(r10, r9)
            int r2 = r11.itemCount
            if (r2 <= 0) goto L70
            r7.set(r8, r11)
        L25:
            if (r0 == 0) goto L2a
            r7.add(r8, r0)
        L2a:
            if (r1 == 0) goto L2f
            r7.add(r8, r1)
        L2f:
            return
        L30:
            int r0 = r9.itemCount
            int r2 = r11.positionStart
            int r3 = r11.itemCount
            int r2 = r2 + r3
            if (r0 >= r2) goto Le
            int r0 = r11.itemCount
            int r0 = r0 + (-1)
            r11.itemCount = r0
            androidx.recyclerview.widget.OpReorderer$Callback r0 = r6.mCallback
            int r2 = r9.positionStart
            r3 = 1
            java.lang.Object r4 = r11.payload
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r0 = r0.obtainUpdateOp(r5, r2, r3, r4)
            goto Lf
        L4b:
            int r2 = r9.positionStart
            int r3 = r11.positionStart
            int r4 = r11.itemCount
            int r3 = r3 + r4
            if (r2 >= r3) goto L1b
            int r1 = r11.positionStart
            int r2 = r11.itemCount
            int r1 = r1 + r2
            int r2 = r9.positionStart
            int r2 = r1 - r2
            androidx.recyclerview.widget.OpReorderer$Callback r1 = r6.mCallback
            int r3 = r9.positionStart
            int r3 = r3 + 1
            java.lang.Object r4 = r11.payload
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r1 = r1.obtainUpdateOp(r5, r3, r2, r4)
            int r3 = r11.itemCount
            int r2 = r3 - r2
            r11.itemCount = r2
            goto L1b
        L70:
            r7.remove(r8)
            androidx.recyclerview.widget.OpReorderer$Callback r2 = r6.mCallback
            r2.recycleUpdateOp(r11)
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.OpReorderer.swapMoveUpdate(java.util.List, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp):void");
    }
}
