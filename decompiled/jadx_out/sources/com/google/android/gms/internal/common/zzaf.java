package com.google.android.gms.internal.common;

import java.util.List;
import javax.annotation.CheckForNull;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzaf extends zzag {
    final transient int zza;
    final transient int zzb;
    final zzag zzc;

    zzaf(zzag zzagVar, int i, int i2) {
        this.zzc = zzagVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzs.zza(i, this.zzb, NPStringFog.decode(new byte[]{94, 90, 5, 87, 78}, "74a266", false, true));
        return this.zzc.get(this.zza + i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzag, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzac
    @CheckForNull
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.common.zzag
    /* JADX INFO: renamed from: zzh */
    public final zzag subList(int i, int i2) {
        zzs.zzc(i, i2, this.zzb);
        zzag zzagVar = this.zzc;
        int i3 = this.zza;
        return zzagVar.subList(i + i3, i3 + i2);
    }
}
