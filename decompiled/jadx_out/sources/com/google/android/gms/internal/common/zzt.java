package com.google.android.gms.internal.common;

import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzt extends zzw {
    final zzu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzt(zzu zzuVar, zzx zzxVar, CharSequence charSequence) {
        super(zzxVar, charSequence);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int zzd(int i) {
        zzo zzoVar = this.zza.zza;
        CharSequence charSequence = this.zzb;
        int length = charSequence.length();
        zzs.zzb(i, length, NPStringFog.decode(new byte[]{93, 91, 93, 3, 74}, "459f27", 489518823L));
        for (int i2 = i; i2 < length; i2++) {
            if (zzoVar.zza(charSequence.charAt(i2))) {
                return i2;
            }
        }
        return -1;
    }
}
