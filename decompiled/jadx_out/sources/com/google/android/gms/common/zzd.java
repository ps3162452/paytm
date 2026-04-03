package com.google.android.gms.common;

/* JADX INFO: loaded from: classes55.dex */
public final class zzd {
    static int zza(int i) {
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = new int[]{1, 2, 3}[i2];
            if (i3 == 0) {
                throw null;
            }
            if (i3 - 1 == i) {
                return i3;
            }
        }
        return 1;
    }
}
