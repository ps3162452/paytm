package com.google.android.gms.internal.common;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes55.dex */
abstract class zzw extends zzj {
    final CharSequence zzb;
    final zzo zzc;
    final boolean zzd;
    int zze = 0;
    int zzf = Integer.MAX_VALUE;

    protected zzw(zzx zzxVar, CharSequence charSequence) {
        this.zzc = zzxVar.zza;
        this.zzd = zzxVar.zzb;
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.common.zzj
    @CheckForNull
    protected final /* bridge */ /* synthetic */ Object zza() {
        int length;
        int i;
        int i2 = this.zze;
        while (true) {
            int i3 = this.zze;
            if (i3 == -1) {
                zzb();
                return null;
            }
            int iZzd = zzd(i3);
            if (iZzd == -1) {
                length = this.zzb.length();
                this.zze = -1;
                i = -1;
            } else {
                int iZzc = zzc(iZzd);
                this.zze = iZzc;
                length = iZzd;
                i = iZzc;
            }
            if (i == i2) {
                int i4 = i + 1;
                this.zze = i4;
                if (i4 > this.zzb.length()) {
                    this.zze = -1;
                }
            } else {
                if (i2 < length) {
                    this.zzb.charAt(i2);
                }
                if (i2 < length) {
                    this.zzb.charAt(length - 1);
                }
                if (!this.zzd || i2 != length) {
                    break;
                }
                i2 = this.zze;
            }
        }
        int i5 = this.zzf;
        if (i5 == 1) {
            length = this.zzb.length();
            this.zze = -1;
            if (length > i2) {
                this.zzb.charAt(length - 1);
            }
        } else {
            this.zzf = i5 - 1;
        }
        return this.zzb.subSequence(i2, length).toString();
    }

    abstract int zzc(int i);

    abstract int zzd(int i);
}
