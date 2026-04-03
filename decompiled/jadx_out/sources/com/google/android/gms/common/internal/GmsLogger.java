package com.google.android.gms.common.internal;

import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class GmsLogger {
    private final String zza;
    private final String zzb;

    public GmsLogger(String str) {
        this(str, null);
    }

    public GmsLogger(String str, String str2) {
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{88, 14, 1, 19, 64, 84, 83, 65, 5, 82, 90, 91, 91, 21, 70, 81, 81, 21, 90, 20, 10, 95}, "4af345", 353112083L));
        Preconditions.checkArgument(str.length() <= 23, NPStringFog.decode(new byte[]{23, 80, 85, 69, 16, 20, 16, 19, 18, 12, 65, 17, 15, 94, 92, 2, 87, 67, 67, 69, 90, 4, 92, 17, 23, 89, 87, 69, 23, 85, 67, 82, 90, 4, 64, 80, 0, 69, 87, 23, 18, 92, 2, 73, 91, 8, 71, 92}, "c12e21", -2.145178272E9d), str, 23);
        this.zza = str;
        if (str2 == null || str2.length() <= 0) {
            this.zzb = null;
        } else {
            this.zzb = str2;
        }
    }

    private final String zza(String str) {
        String str2 = this.zzb;
        return str2 == null ? str : str2.concat(str);
    }

    private final String zzb(String str, Object... objArr) {
        String str2 = String.format(str, objArr);
        String str3 = this.zzb;
        return str3 == null ? str2 : str3.concat(str2);
    }

    public boolean canLog(int i) {
        return Log.isLoggable(this.zza, i);
    }

    public boolean canLogPii() {
        return false;
    }

    public void d(String str, String str2) {
        if (canLog(3)) {
            Log.d(str, zza(str2));
        }
    }

    public void d(String str, String str2, Throwable th) {
        if (canLog(3)) {
            Log.d(str, zza(str2), th);
        }
    }

    public void e(String str, String str2) {
        if (canLog(6)) {
            Log.e(str, zza(str2));
        }
    }

    public void e(String str, String str2, Throwable th) {
        if (canLog(6)) {
            Log.e(str, zza(str2), th);
        }
    }

    public void efmt(String str, String str2, Object... objArr) {
        if (canLog(6)) {
            Log.e(str, zzb(str2, objArr));
        }
    }

    public void i(String str, String str2) {
        if (canLog(4)) {
            Log.i(str, zza(str2));
        }
    }

    public void i(String str, String str2, Throwable th) {
        if (canLog(4)) {
            Log.i(str, zza(str2), th);
        }
    }

    public void pii(String str, String str2) {
    }

    public void pii(String str, String str2, Throwable th) {
    }

    public void v(String str, String str2) {
        if (canLog(2)) {
            Log.v(str, zza(str2));
        }
    }

    public void v(String str, String str2, Throwable th) {
        if (canLog(2)) {
            Log.v(str, zza(str2), th);
        }
    }

    public void w(String str, String str2) {
        if (canLog(5)) {
            Log.w(str, zza(str2));
        }
    }

    public void w(String str, String str2, Throwable th) {
        if (canLog(5)) {
            Log.w(str, zza(str2), th);
        }
    }

    public void wfmt(String str, String str2, Object... objArr) {
        if (canLog(5)) {
            Log.w(this.zza, zzb(str2, objArr));
        }
    }

    public void wtf(String str, String str2, Throwable th) {
        if (canLog(7)) {
            Log.e(str, zza(str2), th);
            Log.wtf(str, zza(str2), th);
        }
    }
}
