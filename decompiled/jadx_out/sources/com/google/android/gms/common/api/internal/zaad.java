package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaad {
    private final Map zaa = Collections.synchronizedMap(new WeakHashMap());
    private final Map zab = Collections.synchronizedMap(new WeakHashMap());

    private final void zah(boolean z, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.zaa) {
            map = new HashMap(this.zaa);
        }
        synchronized (this.zab) {
            map2 = new HashMap(this.zab);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    final void zac(BasePendingResult basePendingResult, boolean z) {
        this.zaa.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.addStatusListener(new zaab(this, basePendingResult));
    }

    final void zad(TaskCompletionSource taskCompletionSource, boolean z) {
        this.zab.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new zaac(this, taskCompletionSource));
    }

    final void zae(int i, String str) {
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{49, 90, 7, 17, 86, 90, 11, 92, 7, 82, 65, 92, 10, 92, 66, 69, 90, 21, 34, 93, 13, 86, 89, 80, 69, 98, 14, 80, 76, 21, 22, 87, 16, 71, 92, 86, 0, 65, 66, 70, 84, 70, 69, 94, 13, 66, 65}, "e2b155", true, false));
        if (i == 1) {
            sb.append(NPStringFog.decode(new byte[]{19, 84, 16, 6, 65, 22, 92, 16, 22, 6, 19, 20, 90, 83, 0, 67, 5, 11, 64, 83, 10, 13, 15, 7, 80, 68, 12, 12, 15, 76}, "30ecab", false));
        } else if (i == 3) {
            sb.append(NPStringFog.decode(new byte[]{16, 0, 71, 83, 68, 23, 95, 68, 86, 83, 5, 7, 16, 11, 80, 92, 1, 0, 68, 68, 87, 78, 7, 6, 64, 16, 91, 89, 10, 77}, "0d26dc", 21532));
        }
        if (str != null) {
            sb.append(NPStringFog.decode(new byte[]{16, 45, 84, 23, 18, 67, 66, 4, 84, 23, 9, 13, 16, 7, 90, 22, 70, 7, 89, 18, 86, 11, 8, 13, 85, 2, 65, 94, 70}, "0a5dfc", true));
            sb.append(str);
        }
        zah(true, new Status(20, sb.toString()));
    }

    public final void zaf() {
        zah(false, GoogleApiManager.zaa);
    }

    final boolean zag() {
        return (this.zaa.isEmpty() && this.zab.isEmpty()) ? false : true;
    }
}
