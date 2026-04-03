package com.google.android.gms.internal.common;

import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzl extends zzk {
    private final char zza;

    zzl(char c) {
        this.zza = c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{117, 91, 5, 16, 121, 88, 66, 80, 12, 7, 70, 23, 95, 64, 76, 69}, "63db49", 613359148L));
        char c = this.zza;
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i = c;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = NPStringFog.decode(new byte[]{3, 4, 83, 7, 13, 7, 5, 2, 89, 13, 120, 112, 112, 113, 36, 114}, "35a492", false).charAt(i & 15);
            i >>= 4;
        }
        sb.append(String.copyValueOf(cArr));
        sb.append(NPStringFog.decode(new byte[]{30, 30}, "976418", 12008));
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.common.zzo
    public final boolean zza(char c) {
        return c == this.zza;
    }
}
