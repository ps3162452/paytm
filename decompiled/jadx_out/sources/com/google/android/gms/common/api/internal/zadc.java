package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zadc {
    public static final Status zaa = new Status(8, NPStringFog.decode(new byte[]{100, 95, 93, 21, 1, 9, 94, 89, 93, 86, 22, 15, 95, 89, 24, 65, 13, 70, 119, 88, 87, 82, 14, 3, 16, 103, 84, 84, 27, 70, 67, 82, 74, 67, 11, 5, 85, 68, 24, 66, 3, 21, 16, 91, 87, 70, 22}, "0785bf", -1.5811744E9f));
    final Set zab = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zadb zac = new zadb(this);

    final void zaa(BasePendingResult basePendingResult) {
        this.zab.add(basePendingResult);
        basePendingResult.zan(this.zac);
    }

    public final void zab() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zab.toArray(new BasePendingResult[0])) {
            basePendingResult.zan(null);
            if (basePendingResult.zam()) {
                this.zab.remove(basePendingResult);
            }
        }
    }
}
