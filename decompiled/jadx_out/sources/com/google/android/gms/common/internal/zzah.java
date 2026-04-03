package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzah {
    private static final Object zza = new Object();
    private static boolean zzb;
    private static String zzc;
    private static int zzd;

    public static int zza(Context context) {
        zzc(context);
        return zzd;
    }

    public static String zzb(Context context) {
        zzc(context);
        return zzc;
    }

    private static void zzc(Context context) {
        synchronized (zza) {
            if (zzb) {
                return;
            }
            zzb = true;
            try {
                Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle == null) {
                    return;
                }
                zzc = bundle.getString(NPStringFog.decode(new byte[]{7, 91, 90, 23, 81, 94, 11, 83, 91, 92, 24, 80, 20, 68, 25, 80, 82}, "d47961", false, false));
                zzd = bundle.getInt(NPStringFog.decode(new byte[]{87, 14, 84, 77, 85, 91, 91, 6, 85, 6, 28, 85, 90, 5, 75, 12, 91, 80, 26, 6, 84, 16, 28, 66, 81, 19, 74, 10, 93, 90}, "4a9c24", false, true));
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf(NPStringFog.decode(new byte[]{116, 82, 21, 0, 87, 7, 77, 86, 55, 0, 95, 19, 92, 101, 4, 0, 87, 3, 75}, "97aa3f", -1420825557L), NPStringFog.decode(new byte[]{98, 94, 90, 16, 24, 66, 94, 89, 70, 15, 92, 17, 88, 83, 69, 6, 74, 17, 94, 87, 67, 19, 93, 95, 24}, "663c81", 23845), e);
            }
        }
    }
}
