package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class InstantApps {
    private static Context zza;
    private static Boolean zzb;

    public static boolean isInstantApp(Context context) {
        boolean zBooleanValue;
        Boolean bool;
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = zza;
                if (context2 == null || (bool = zzb) == null || context2 != applicationContext) {
                    zzb = null;
                    if (PlatformVersion.isAtLeastO()) {
                        zzb = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass(NPStringFog.decode(new byte[]{7, 13, 95, 75, 95, 10, 11, 5, 94, 0, 22, 4, 10, 6, 64, 10, 81, 1, 74, 11, 92, 22, 76, 4, 10, 22, 83, 21, 72, 22, 74, 17, 71, 21, 93, 23, 18, 11, 65, 10, 74, 75, 45, 12, 65, 17, 89, 11, 16, 35, 66, 21, 75, 55, 17, 12, 70, 12, 85, 0}, "db2e8e", -913544056L));
                            zzb = true;
                        } catch (ClassNotFoundException e) {
                            zzb = false;
                        }
                    }
                    zza = applicationContext;
                    zBooleanValue = zzb.booleanValue();
                } else {
                    zBooleanValue = bool.booleanValue();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }
}
