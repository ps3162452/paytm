package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
abstract class zza extends zzc {
    public final int zza;
    public final Bundle zzb;
    final BaseGmsClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected zza(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, true);
        this.zzc = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    protected final /* bridge */ /* synthetic */ void zza(Object obj) {
        if (this.zza != 0) {
            this.zzc.zzp(1, null);
            Bundle bundle = this.zzb;
            zzb(new ConnectionResult(this.zza, bundle != null ? (PendingIntent) bundle.getParcelable(NPStringFog.decode(new byte[]{64, 86, 88, 83, 81, 8, 87, 122, 88, 67, 93, 8, 68}, "03678f", true)) : null));
        } else {
            if (zzd()) {
                return;
            }
            this.zzc.zzp(1, null);
            zzb(new ConnectionResult(8, null));
        }
    }

    protected abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    protected final void zzc() {
    }

    protected abstract boolean zzd();
}
