package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzd extends zzac {
    private BaseGmsClient zza;
    private final int zzb;

    public zzd(BaseGmsClient baseGmsClient, int i) {
        this.zza = baseGmsClient;
        this.zzb = i;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) {
        Preconditions.checkNotNull(this.zza, NPStringFog.decode(new byte[]{9, 8, 105, 14, 67, 16, 47, 8, 80, 21, 115, 11, 11, 22, 85, 4, 68, 1, 70, 5, 88, 15, 16, 6, 3, 70, 90, 0, 92, 8, 3, 2, 25, 14, 94, 8, 31, 70, 86, 15, 83, 1, 70, 22, 92, 19, 16, 7, 7, 10, 85, 65, 68, 11, 70, 1, 92, 21, 98, 1, 11, 9, 77, 4, 99, 1, 20, 16, 80, 2, 85}, "ff9a0d", -1440075609L));
        this.zza.onPostInitHandler(i, iBinder, bundle, this.zzb);
        this.zza = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i, Bundle bundle) {
        Log.wtf(NPStringFog.decode(new byte[]{116, 95, 74, 33, 8, 95, 86, 92, 77}, "329bd6", 2.082556313E9d), NPStringFog.decode(new byte[]{70, 93, 82, 93, 93, 71, 81, 92, 17, 92, 81, 65, 70, 93, 82, 89, 64, 84, 80, 24, 94, 86, 117, 82, 87, 87, 68, 86, 64, 103, 85, 84, 88, 92, 85, 69, 93, 87, 95, 123, 91, 92, 68, 84, 84, 76, 81, 17, 87, 89, 93, 84, 86, 80, 87, 83, 29, 24, 93, 86, 90, 87, 67, 81, 90, 86}, "481841", false), new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i, IBinder iBinder, zzk zzkVar) {
        BaseGmsClient baseGmsClient = this.zza;
        Preconditions.checkNotNull(baseGmsClient, NPStringFog.decode(new byte[]{10, 15, 51, 88, 21, 68, 44, 15, 10, 67, 37, 95, 8, 17, 15, 82, 18, 85, 50, 8, 23, 95, 37, 95, 11, 15, 6, 84, 18, 89, 10, 15, 42, 89, 0, 95, 69, 2, 2, 89, 70, 82, 0, 65, 0, 86, 10, 92, 0, 5, 67, 88, 8, 92, 28, 65, 12, 89, 5, 85, 69, 17, 6, 69, 70, 83, 4, 13, 15, 23, 18, 95, 2, 4, 23, 101, 3, 93, 10, 21, 6, 100, 3, 66, 19, 8, 0, 82}, "eac7f0", -1.348579129E9d));
        Preconditions.checkNotNull(zzkVar);
        BaseGmsClient.zzj(baseGmsClient, zzkVar);
        onPostInitComplete(i, iBinder, zzkVar.zza);
    }
}
