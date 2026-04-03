package com.google.android.gms.common;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzah;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class GooglePlayServicesUtilLight {
    static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;
    static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = NPStringFog.decode(new byte[]{2, 14, 93, 74, 4, 14, 14, 6, 92, 1, 77, 0, 15, 5, 66, 11, 10, 5, 79, 17, 92, 5, 26, 79, 6, 0, 93, 1, 16}, "aa0dca", 394830531L);

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = NPStringFog.decode(new byte[]{91, 86, 88, 72, 5, 87, 87, 94, 89, 3, 76, 89, 86, 93, 71, 9, 11, 92, 22, 94, 88, 21}, "895fb8", -1.9044434E9f);
    public static final String GOOGLE_PLAY_STORE_PACKAGE = NPStringFog.decode(new byte[]{86, 13, 89, 75, 82, 15, 81, 16, 91, 12, 87, 79, 67, 7, 90, 1, 90, 15, 82}, "5b4e3a", true);

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    private static boolean zzb = false;
    static boolean zza = false;

    @Deprecated
    static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    GooglePlayServicesUtilLight() {
    }

    @Deprecated
    public static void cancelAvailabilityErrorNotifications(Context context) {
        if (sCanceledAvailabilityNotification.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NPStringFog.decode(new byte[]{15, 9, 70, 93, 86, 92, 2, 7, 70, 93, 95, 91}, "af2405", -1422957220L));
            if (notificationManager != null) {
                notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
            }
        } catch (SecurityException e) {
            Log.d(NPStringFog.decode(new byte[]{37, 11, 88, 2, 93, 85, 50, 8, 86, 28, 98, 85, 16, 18, 94, 6, 84, 67, 55, 16, 94, 9}, "bd7e10", true, false), NPStringFog.decode(new byte[]{98, 23, 64, 66, 64, 0, 66, 17, 89, 92, 85, 69, 98, 7, 83, 71, 64, 12, 69, 27, 16, 119, 74, 6, 84, 18, 68, 91, 93, 11, 17, 71, 67, 18, 91, 11, 17, 1, 81, 92, 81, 0, 93, 35, 70, 83, 91, 9, 80, 0, 89, 94, 91, 17, 72, 39, 66, 64, 93, 23, 127, 13, 68, 91, 84, 12, 82, 3, 68, 91, 93, 11, 66, 76}, "1b022e", -738469879L), e);
        }
    }

    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @Deprecated
    public static void ensurePlayServicesAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i);
        if (iIsGooglePlayServicesAvailable != 0) {
            Intent errorResolutionIntent = GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(context, iIsGooglePlayServicesAvailable, NPStringFog.decode(new byte[]{93}, "837f4f", 1.10659864E8f));
            Log.e(NPStringFog.decode(new byte[]{119, 12, 90, 95, 92, 80, 96, 15, 84, 65, 99, 80, 66, 21, 92, 91, 85, 70, 101, 23, 92, 84}, "0c5805", true, true), NPStringFog.decode(new byte[]{116, 9, 90, 84, 90, 4, 99, 10, 84, 74, 101, 4, 65, 16, 92, 80, 83, 18, 19, 8, 90, 71, 22, 0, 69, 7, 92, 95, 87, 3, 95, 3, 21, 87, 67, 4, 19, 18, 90, 19, 83, 19, 65, 9, 71, 19}, "3f536a", -3773) + iIsGooglePlayServicesAvailable);
            if (errorResolutionIntent != null) {
                throw new GooglePlayServicesRepairableException(iIsGooglePlayServicesAvailable, NPStringFog.decode(new byte[]{114, 12, 94, 1, 89, 1, 21, 51, 93, 7, 76, 68, 102, 6, 67, 16, 92, 7, 80, 16, 17, 8, 90, 16, 21, 2, 71, 7, 92, 8, 84, 1, 93, 3}, "5c1f5d", false), errorResolutionIntent);
            }
            throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
        }
    }

    @Deprecated
    public static int getApkVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(NPStringFog.decode(new byte[]{112, 14, 11, 6, 89, 1, 103, 13, 5, 24, 102, 1, 69, 23, 13, 2, 80, 23, 98, 21, 13, 13}, "7ada5d", false, true), NPStringFog.decode(new byte[]{112, 87, 88, 87, 15, 80, 23, 104, 91, 81, 26, 21, 68, 93, 69, 70, 10, 86, 82, 75, 23, 89, 16, 21, 90, 81, 68, 67, 10, 91, 80, 22}, "7870c5", true));
            return 0;
        }
    }

    @Deprecated
    public static int getClientVersion(Context context) {
        Preconditions.checkState(true);
        return ClientLibraryUtils.getClientVersion(context, context.getPackageName());
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.zza(i);
    }

    @Deprecated
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, i, null);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext(GOOGLE_PLAY_SERVICES_PACKAGE, 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication(GOOGLE_PLAY_SERVICES_PACKAGE);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean honorsDebugCertificates(Context context) {
        try {
            if (!zza) {
                PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
                GoogleSignatureVerifier.getInstance(context);
                if (packageInfo == null || GoogleSignatureVerifier.zzb(packageInfo, false) || !GoogleSignatureVerifier.zzb(packageInfo, true)) {
                    zzb = false;
                } else {
                    zzb = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(NPStringFog.decode(new byte[]{37, 10, 10, 4, 93, 81, 50, 9, 4, 26, 98, 81, 16, 19, 12, 0, 84, 71, 55, 17, 12, 15}, "beec14", -29951), NPStringFog.decode(new byte[]{122, 85, 88, 89, 95, 71, 25, 82, 95, 89, 84, 19, 126, 91, 89, 80, 92, 86, 25, 100, 90, 86, 73, 19, 74, 81, 68, 65, 89, 80, 92, 71, 22, 71, 81, 80, 82, 85, 81, 82, 16, 93, 88, 89, 83, 25}, "946703", 1.495985E9f), e);
        } finally {
            zza = true;
        }
        return zzb || !DeviceProperties.isUserBuild();
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e(NPStringFog.decode(new byte[]{112, 13, 92, 94, 94, 83, 103, 14, 82, 64, 97, 83, 69, 20, 90, 90, 87, 69, 98, 22, 90, 85}, "7b3926", true), NPStringFog.decode(new byte[]{101, 89, 84, 22, 116, 87, 94, 86, 93, 83, 19, 104, 93, 80, 72, 22, 64, 93, 67, 71, 88, 85, 86, 75, 17, 67, 84, 69, 92, 77, 67, 82, 84, 69, 19, 79, 84, 67, 84, 22, 93, 87, 69, 17, 87, 89, 70, 86, 85, 31, 17, 117, 91, 93, 82, 90, 17, 79, 92, 77, 67, 17, 65, 68, 92, 82, 84, 82, 69, 22, 80, 87, 95, 87, 88, 81, 70, 74, 80, 69, 88, 89, 93, 24, 69, 94, 17, 83, 93, 75, 68, 67, 84, 22, 71, 80, 80, 69, 17, 66, 91, 93, 17, 67, 84, 69, 92, 77, 67, 82, 84, 69, 19, 89, 67, 84, 17, 95, 93, 91, 93, 68, 85, 83, 87, 22}, "111638", false));
        }
        if (!GOOGLE_PLAY_SERVICES_PACKAGE.equals(context.getPackageName()) && !zzc.get()) {
            int iZza = zzah.zza(context);
            if (iZza == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (iZza != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                throw new GooglePlayServicesIncorrectManifestValueException(iZza);
            }
        }
        boolean z = (DeviceProperties.isWearableWithoutPlayStore(context) || DeviceProperties.zzb(context)) ? false : true;
        Preconditions.checkArgument(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo(GOOGLE_PLAY_STORE_PACKAGE, 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w(NPStringFog.decode(new byte[]{114, 87, 95, 6, 94, 86, 101, 84, 81, 24, 97, 86, 71, 78, 89, 2, 87, 64, 96, 76, 89, 13}, "580a23", -167713473L), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{70, 71, 86, 65, 64, 80, 20, 80, 64, 16, 65, 81, 3, 21, 116, 95, 90, 94, 10, 80, 19, 96, 89, 88, 31, 21, 96, 68, 90, 75, 3, 25, 19, 82, 64, 77, 70, 92, 71, 16, 92, 74, 70, 88, 90, 67, 70, 80, 8, 82, 29}, "f53059", -28152)));
                return 9;
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
            GoogleSignatureVerifier.getInstance(context);
            if (!GoogleSignatureVerifier.zzb(packageInfo2, true)) {
                Log.w(NPStringFog.decode(new byte[]{115, 10, 14, 87, 8, 92, 100, 9, 0, 73, 55, 92, 70, 19, 8, 83, 1, 74, 97, 17, 8, 92}, "4ea0d9", 31477), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{67, 22, 86, 65, 68, 80, 17, 1, 64, 16, 118, 86, 12, 3, 95, 85, 17, 105, 15, 5, 74, 16, 66, 92, 17, 18, 90, 83, 84, 74, 79, 68, 81, 69, 69, 25, 23, 12, 86, 89, 67, 25, 16, 13, 84, 94, 80, 77, 22, 22, 86, 16, 88, 74, 67, 13, 93, 70, 80, 85, 10, 0, 29}, "cd3019", 3.4195094E8f)));
                return 9;
            }
            if (z) {
                Preconditions.checkNotNull(packageInfo);
                if (!GoogleSignatureVerifier.zzb(packageInfo, true)) {
                    Log.w(NPStringFog.decode(new byte[]{113, 14, 10, 95, 91, 84, 102, 13, 4, 65, 100, 84, 68, 23, 12, 91, 82, 66, 99, 21, 12, 84}, "6ae871", 26545), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{17, 74, 93, 71, 69, 90, 67, 93, 75, 22, 119, 92, 94, 95, 84, 83, 16, 99, 93, 89, 65, 22, 99, 71, 94, 74, 93, 26, 16, 81, 68, 76, 24, 95, 68, 64, 17, 75, 81, 81, 94, 82, 69, 77, 74, 83, 16, 90, 66, 24, 81, 88, 70, 82, 93, 81, 92, 24}, "188603", true, false)));
                    return 9;
                }
            }
            if (z && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                Log.w(NPStringFog.decode(new byte[]{127, 13, 14, 82, 94, 83, 104, 14, 0, 76, 97, 83, 74, 20, 8, 86, 87, 69, 109, 22, 8, 89}, "8ba526", true, false), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{21, 19, 93, 73, 23, 95, 71, 4, 75, 24, 37, 89, 90, 6, 84, 93, 66, 102, 89, 0, 65, 24, 49, 66, 90, 19, 93, 20, 66, 84, 64, 21, 24, 81, 22, 69, 21, 18, 81, 95, 12, 87, 65, 20, 74, 93, 66, 82, 90, 4, 75, 86, 69, 66, 21, 12, 89, 76, 1, 94, 21, 21, 80, 89, 22, 22, 90, 7, 24, 127, 13, 89, 82, 13, 93, 24, 50, 90, 84, 24, 24, 75, 7, 68, 67, 8, 91, 93, 17, 24}, "5a88b6", -25743)));
                return 9;
            }
            if (com.google.android.gms.common.util.zza.zza(packageInfo2.versionCode) >= com.google.android.gms.common.util.zza.zza(i)) {
                ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo = packageManager.getApplicationInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 0);
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.wtf(NPStringFog.decode(new byte[]{36, 10, 12, 82, 14, 0, 51, 9, 2, 76, 49, 0, 17, 19, 10, 86, 7, 22, 54, 17, 10, 89}, "cec5be", 1.977554382E9d), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{21, 22, 82, 20, 19, 94, 71, 1, 68, 69, 33, 88, 90, 3, 91, 0, 70, 103, 89, 5, 78, 69, 21, 82, 71, 18, 94, 6, 3, 68, 25, 68, 85, 16, 18, 23, 65, 12, 82, 28, 65, 69, 80, 68, 90, 12, 21, 68, 92, 10, 80, 69, 17, 95, 80, 10, 23, 2, 3, 67, 65, 13, 89, 2, 70, 86, 69, 20, 91, 12, 5, 86, 65, 13, 88, 11, 70, 94, 91, 2, 88, 75}, "5d7ef7", true)), e2);
                        return 1;
                    }
                }
                return !applicationInfo.enabled ? 3 : 0;
            }
            Log.w(NPStringFog.decode(new byte[]{37, 87, 88, 84, 15, 85, 50, 84, 86, 74, 48, 85, 16, 78, 94, 80, 6, 67, 55, 76, 94, 95}, "b873c0", true), NPStringFog.decode(new byte[]{113, 14, 89, 84, 10, 83, 22, 49, 90, 82, 31, 22, 69, 4, 68, 69, 15, 85, 83, 18, 22, 92, 19, 66, 22, 14, 80, 19, 2, 87, 66, 4, 22, 85, 9, 68, 22}, "6a63f6", true, true) + packageName + NPStringFog.decode(new byte[]{72, 24, 65, 48, 93, 21, 19, 81, 19, 7, 75, 68}, "f8ab8d", false, true) + i + NPStringFog.decode(new byte[]{67, 4, 20, 65, 17, 87, 12, 19, 15, 81, 17}, "cfa511", -4384) + packageInfo2.versionCode);
            return 2;
        } catch (PackageManager.NameNotFoundException e3) {
            Log.w(NPStringFog.decode(new byte[]{38, 89, 13, 80, 14, 6, 49, 90, 3, 78, 49, 6, 19, 64, 11, 84, 7, 16, 52, 66, 11, 91}, "a6b7bc", true), String.valueOf(packageName).concat(NPStringFog.decode(new byte[]{22, 20, 6, 16, 66, 88, 68, 3, 16, 65, 112, 94, 89, 1, 15, 4, 23, 97, 90, 7, 26, 65, 68, 84, 68, 16, 10, 2, 82, 66, 26, 70, 1, 20, 67, 17, 66, 14, 6, 24, 23, 80, 68, 3, 67, 12, 94, 66, 69, 15, 13, 6, 25}, "6fca71", 2.020384012E9d)));
            return 1;
        }
    }

    @Deprecated
    public static boolean isGooglePlayServicesUid(Context context, int i) {
        return UidVerifier.isGooglePlayServicesUid(context, i);
    }

    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zza(context, GOOGLE_PLAY_SERVICES_PACKAGE);
        }
        return false;
    }

    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(Context context, int i) {
        if (i == 9) {
            return zza(context, GOOGLE_PLAY_STORE_PACKAGE);
        }
        return false;
    }

    public static boolean isRestrictedUserProfile(Context context) {
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            Object systemService = context.getSystemService(NPStringFog.decode(new byte[]{16, 74, 4, 19}, "e9aaaa", -10323));
            Preconditions.checkNotNull(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && NPStringFog.decode(new byte[]{16, 74, 69, 84}, "d801d2", false).equals(applicationRestrictions.getString(NPStringFog.decode(new byte[]{70, 81, 75, 77, 65, 81, 87, 64, 93, 93, 108, 72, 70, 91, 94, 80, 95, 93}, "448938", 9.73110947E8d)))) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static boolean isSidewinderDevice(Context context) {
        return DeviceProperties.isSidewinder(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean uidHasPackageName(Context context, int i, String str) {
        return UidVerifier.uidHasPackageName(context, i, str);
    }

    static boolean zza(Context context, String str) {
        boolean zEquals = str.equals(GOOGLE_PLAY_SERVICES_PACKAGE);
        if (PlatformVersion.isAtLeastLollipop()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception e) {
                return false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            return zEquals ? applicationInfo.enabled : applicationInfo.enabled && !isRestrictedUserProfile(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }
}
