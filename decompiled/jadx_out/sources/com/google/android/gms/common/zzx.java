package com.google.android.gms.common;

import android.util.Log;
import com.google.errorprone.annotations.CheckReturnValue;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@CheckReturnValue
class zzx {
    private static final zzx zze = new zzx(true, 3, 1, null, null);
    final boolean zza;

    @Nullable
    final String zzb;

    @Nullable
    final Throwable zzc;
    final int zzd;

    private zzx(boolean z, int i, int i2, @Nullable String str, @Nullable Throwable th) {
        this.zza = z;
        this.zzd = i;
        this.zzb = str;
        this.zzc = th;
    }

    @Deprecated
    static zzx zzb() {
        return zze;
    }

    static zzx zzc(String str) {
        return new zzx(false, 1, 5, str, null);
    }

    static zzx zzd(String str, Throwable th) {
        return new zzx(false, 1, 5, str, th);
    }

    static zzx zzf(int i) {
        return new zzx(true, i, 1, null, null);
    }

    static zzx zzg(int i, int i2, String str, @Nullable Throwable th) {
        return new zzx(false, i, i2, str, th);
    }

    @Nullable
    String zza() {
        return this.zzb;
    }

    final void zze() {
        if (this.zza || !Log.isLoggable(NPStringFog.decode(new byte[]{114, 13, 14, 82, 85, 85, 118, 7, 19, 65, 80, 86, 92, 1, 0, 65, 92, 67, 103, 17, 13, 65}, "5ba590", 21736), 3)) {
            return;
        }
        if (this.zzc != null) {
            Log.d(NPStringFog.decode(new byte[]{112, 90, 89, 80, 15, 0, 116, 80, 68, 67, 10, 3, 94, 86, 87, 67, 6, 22, 101, 70, 90, 67}, "7567ce", 25052), zza(), this.zzc);
        } else {
            Log.d(NPStringFog.decode(new byte[]{116, 13, 89, 83, 92, 4, 112, 7, 68, 64, 89, 7, 90, 1, 87, 64, 85, 18, 97, 17, 90, 64}, "3b640a", -2017845009L), zza());
        }
    }
}
