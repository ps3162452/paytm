package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class DeviceProperties {
    private static Boolean zza;
    private static Boolean zzb;
    private static Boolean zzc;
    private static Boolean zzd;
    private static Boolean zze;
    private static Boolean zzf;
    private static Boolean zzg;
    private static Boolean zzh;
    private static Boolean zzi;
    private static Boolean zzj;
    private static Boolean zzk;
    private static Boolean zzl;

    private DeviceProperties() {
    }

    public static boolean isAuto(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzi == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{81, 15, 93, 68, 93, 11, 84, 79, 81, 87, 64, 6, 71, 0, 75, 83, 28, 22, 73, 17, 92, 24, 83, 23, 68, 14, 84, 89, 70, 11, 70, 4}, "0a962b", -1.487039041E9d))) {
                z = true;
            }
            zzi = Boolean.valueOf(z);
        }
        return zzi.booleanValue();
    }

    public static boolean isBstar(Context context) {
        if (zzl == null) {
            zzl = Boolean.valueOf(PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{84, 94, 92, 75, 83, 86, 88, 86, 93, 0, 26, 88, 89, 85, 67, 10, 93, 93, 25, 65, 93, 4, 77, 23, 81, 84, 80, 17, 65, 75, 82, 31, 121, 53, 113, 102, 114, 105, 97, 32, 102, 112, 114, 127, 114, 32}, "711e49", true)));
        }
        return zzl.booleanValue();
    }

    public static boolean isLatchsky(Context context) {
        if (zzf == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{83, 95, 15, 74, 5, 9, 95, 87, 14, 1, 76, 7, 94, 84, 16, 11, 11, 2, 30, 86, 7, 5, 22, 19, 66, 85, 76, 23, 7, 20, 70, 89, 1, 1, 17, 57, 69, 64, 6, 5, 22, 3, 66}, "00bdbf", 267048783L)) && packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{91, 92, 72, 1, 11, 9, 95, 94, 3, 72, 23, 3, 74, 68, 15, 5, 1, 21}, "82ffdf", -1.980716518E9d))) {
                z = true;
            }
            zzf = Boolean.valueOf(z);
        }
        return zzf.booleanValue();
    }

    public static boolean isPhone(Context context) {
        if (zza == null) {
            boolean z = false;
            if (!isTablet(context) && !isWearable(context) && !zzb(context)) {
                if (zzh == null) {
                    zzh = Boolean.valueOf(context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{13, 67, 3, 26, 84, 12, 16, 94, 9, 93, 66, 9, 76, 80, 22, 87}, "b1d47d", -6.426945E8d)));
                }
                if (!zzh.booleanValue() && !isAuto(context) && !isTv(context)) {
                    if (zzk == null) {
                        zzk = Boolean.valueOf(context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{87, 10, 93, 23, 94, 89, 91, 2, 92, 92, 23, 87, 90, 1, 66, 86, 80, 82, 26, 3, 85, 88, 77, 67, 70, 0, 30, 120, 116, 119, 96, 44, 111, 124, 97, 102, 113, 55, 121, 124, 119, 117, 113}, "4e0996", -1.0970612E9f)));
                    }
                    if (!zzk.booleanValue() && !isBstar(context)) {
                        z = true;
                    }
                }
            }
            zza = Boolean.valueOf(z);
        }
        return zza.booleanValue();
    }

    public static boolean isSevenInchTablet(Context context) {
        return zzc(context.getResources());
    }

    public static boolean isSidewinder(Context context) {
        return zza(context);
    }

    public static boolean isTablet(Context context) {
        return isTablet(context.getResources());
    }

    public static boolean isTablet(Resources resources) {
        boolean z = true;
        if (resources == null) {
            return false;
        }
        if (zzb == null) {
            if ((resources.getConfiguration().screenLayout & 15) <= 3 && !zzc(resources)) {
                z = false;
            }
            zzb = Boolean.valueOf(z);
        }
        return zzb.booleanValue();
    }

    public static boolean isTv(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzj == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{91, 11, 84, 30, 2, 92, 87, 3, 85, 85, 75, 82, 86, 0, 75, 95, 12, 87, 22, 16, 79}, "8d90e3", 2.726099E8f)) && !packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{5, 93, 5, 70, 92, 88, 0, 29, 9, 85, 65, 85, 19, 82, 19, 81, 29, 69, 29, 67, 4, 26, 71, 84, 8, 86, 23, 93, 64, 88, 11, 93}, "d3a431", -2.0372908E9d)) && !packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{5, 8, 84, 20, 91, 15, 0, 72, 67, 9, 82, 18, 19, 7, 66, 3, 26, 10, 1, 7, 94, 4, 85, 5, 15}, "df0f4f", -1.915257529E9d))) {
                z = false;
            }
            zzj = Boolean.valueOf(z);
        }
        return zzj.booleanValue();
    }

    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return NPStringFog.decode(new byte[]{65, 69, 85, 20}, "460fe6", 2.0148419E9f).equals(Build.TYPE);
    }

    public static boolean isWearable(Context context) {
        return zzd(context.getPackageManager());
    }

    public static boolean isWearableWithoutPlayStore(Context context) {
        return (isWearable(context) && !PlatformVersion.isAtLeastN()) || (zza(context) && (!PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR()));
    }

    public static boolean zza(Context context) {
        if (zze == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{91, 95, 77, 86, 89, 92, 95, 93, 6}, "81c163", -2.142558652E9d))) {
                z = true;
            }
            zze = Boolean.valueOf(z);
        }
        return zze.booleanValue();
    }

    public static boolean zzb(Context context) {
        if (zzg == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{80, 90, 84, 71, 91, 81, 85, 26, 88, 84, 70, 92, 70, 85, 66, 80, 26, 76, 72, 68, 85, 27, 93, 87, 69}, "140548", false, false)) && !context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{87, 88, 2, 17, 9, 90, 82, 24, 14, 2, 20, 87, 65, 87, 20, 6, 72, 71, 79, 70, 3, 77, 3, 94, 84, 83, 2, 7, 3, 87}, "66fcf3", -180360377L))) {
                z = false;
            }
            zzg = Boolean.valueOf(z);
        }
        return zzg.booleanValue();
    }

    public static boolean zzc(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (zzc == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            zzc = Boolean.valueOf(z);
        }
        return zzc.booleanValue();
    }

    public static boolean zzd(PackageManager packageManager) {
        if (zzd == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastKitKatWatch() && packageManager.hasSystemFeature(NPStringFog.decode(new byte[]{80, 87, 87, 66, 89, 89, 85, 23, 91, 81, 68, 84, 70, 88, 65, 85, 24, 68, 72, 73, 86, 30, 65, 81, 69, 90, 91}, "193060", 1.3660084E9f))) {
                z = true;
            }
            zzd = Boolean.valueOf(z);
        }
        return zzd.booleanValue();
    }
}
