package com.google.android.gms.common.config;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class GservicesValue<T> {
    private static final Object zzc = new Object();
    protected final String zza;
    protected final Object zzb;
    private Object zzd = null;

    protected GservicesValue(String str, Object obj) {
        this.zza = str;
        this.zzb = obj;
    }

    @ResultIgnorabilityUnspecified
    public static boolean isInitialized() {
        synchronized (zzc) {
        }
        return false;
    }

    public static GservicesValue<Float> value(String str, Float f) {
        return new zzd(str, f);
    }

    public static GservicesValue<Integer> value(String str, Integer num) {
        return new zzc(str, num);
    }

    public static GservicesValue<Long> value(String str, Long l) {
        return new zzb(str, l);
    }

    public static GservicesValue<String> value(String str, String str2) {
        return new zze(str, str2);
    }

    public static GservicesValue<Boolean> value(String str, boolean z) {
        return new zza(str, Boolean.valueOf(z));
    }

    @ResultIgnorabilityUnspecified
    public final T get() {
        T t = (T) this.zzd;
        if (t == null) {
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
            Object obj = zzc;
            synchronized (obj) {
            }
            synchronized (obj) {
            }
            try {
                try {
                    t = (T) zza(this.zza);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                } catch (SecurityException e) {
                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        t = (T) zza(this.zza);
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    } finally {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    }
                }
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th;
            }
        }
        return t;
    }

    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    public void override(T t) {
        Log.w(NPStringFog.decode(new byte[]{37, 68, 83, 64, 69, 8, 1, 82, 69, 100, 82, 13, 23, 82}, "b7623a", true, false), NPStringFog.decode(new byte[]{33, 70, 93, 22, 18, 93, 5, 80, 75, 50, 5, 88, 19, 80, 22, 11, 18, 81, 20, 71, 81, 0, 1, 28, 79, 15, 24, 16, 1, 71, 18, 21, 75, 12, 11, 65, 10, 81, 24, 20, 22, 91, 4, 84, 90, 8, 29, 20, 5, 84, 84, 8, 68, 93, 8, 92, 76, 34, 11, 70, 50, 80, 75, 16, 23, 28, 79, 21, 94, 13, 22, 71, 18}, "f58dd4", true, false));
        this.zzd = t;
        Object obj = zzc;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    public void resetOverride() {
        this.zzd = null;
    }

    protected abstract Object zza(String str);
}
