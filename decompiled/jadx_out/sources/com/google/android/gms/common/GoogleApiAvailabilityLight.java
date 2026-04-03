package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class GoogleApiAvailabilityLight {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = NPStringFog.decode(new byte[]{83, 12, 91, 31, 94, 14, 95, 4, 90, 84, 23, 0, 94, 7, 68, 94, 80, 5, 30, 4, 91, 66}, "0c619a", 679986410L);
    public static final String GOOGLE_PLAY_STORE_PACKAGE = NPStringFog.decode(new byte[]{83, 95, 94, 24, 3, 95, 84, 66, 92, 95, 6, 31, 70, 85, 93, 82, 11, 95, 87}, "0036b1", true, false);
    static final String TRACKING_SOURCE_DIALOG = NPStringFog.decode(new byte[]{83}, "7561bb", true, false);
    static final String TRACKING_SOURCE_NOTIFICATION = NPStringFog.decode(new byte[]{13}, "cb3dba", 2.066638E9f);
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final GoogleApiAvailabilityLight zza = new GoogleApiAvailabilityLight();

    GoogleApiAvailabilityLight() {
    }

    public static GoogleApiAvailabilityLight getInstance() {
        return zza;
    }

    public void cancelAvailabilityErrorNotifications(Context context) {
        GooglePlayServicesUtilLight.cancelAvailabilityErrorNotifications(context);
    }

    public int getApkVersion(Context context) {
        return GooglePlayServicesUtilLight.getApkVersion(context);
    }

    public int getClientVersion(Context context) {
        return GooglePlayServicesUtilLight.getClientVersion(context);
    }

    @Deprecated
    public Intent getErrorResolutionIntent(int i) {
        return getErrorResolutionIntent(null, i, null);
    }

    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        switch (i) {
            case 1:
            case 2:
                if (context != null && DeviceProperties.isWearableWithoutPlayStore(context)) {
                    Intent intent = new Intent(NPStringFog.decode(new byte[]{7, 86, 84, 29, 84, 11, 11, 94, 85, 86, 29, 5, 10, 93, 75, 92, 90, 0, 74, 90, 85, 92, 80, 15, 19, 86, 75, 88, 29, 12, 11, 84, 92, 29, 102, 52, 32, 120, 109, 118, 108, 37, 42, 125, 107, 124, 122, 32, 59, 110, 124, 114, 97, 59, 37, 122, 109, 122, 124, 42}, "d9933d", -1479667890L));
                    intent.setPackage(NPStringFog.decode(new byte[]{5, 89, 91, 26, 95, 13, 9, 81, 90, 81, 22, 3, 8, 82, 68, 91, 81, 6, 72, 65, 83, 85, 74, 3, 4, 90, 83, 26, 89, 18, 22}, "f6648b", -1.8054835E9f));
                    return intent;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(NPStringFog.decode(new byte[]{83, 90, 9, 16, 87, 102}, "49fb29", -22065));
                sb.append(GOOGLE_PLAY_SERVICES_VERSION_CODE);
                sb.append(NPStringFog.decode(new byte[]{75}, "f4b748", -1650587483L));
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                }
                sb.append(NPStringFog.decode(new byte[]{31}, "2fe7ae", 458795268L));
                if (context != null) {
                    sb.append(context.getPackageName());
                }
                sb.append(NPStringFog.decode(new byte[]{20}, "937cd7", false));
                if (context != null) {
                    try {
                        sb.append(Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionCode);
                        break;
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                String string = sb.toString();
                Intent intent2 = new Intent(NPStringFog.decode(new byte[]{7, 94, 82, 70, 11, 81, 2, 30, 95, 90, 16, 93, 8, 68, 24, 85, 7, 76, 15, 95, 88, 26, 50, 113, 35, 103}, "f064d8", false, true));
                Uri.Builder builderAppendQueryParameter = Uri.parse(NPStringFog.decode(new byte[]{91, 89, 67, 88, 80, 66, 12, 23, 30, 87, 80, 66, 87, 81, 93, 64}, "681356", false)).buildUpon().appendQueryParameter(NPStringFog.decode(new byte[]{80, 92}, "98b876", -25966), GOOGLE_PLAY_SERVICES_PACKAGE);
                if (!TextUtils.isEmpty(string)) {
                    builderAppendQueryParameter.appendQueryParameter(NPStringFog.decode(new byte[]{70, 90, 2, 84, 69, 85, 95, 94, 13, 80, 81}, "69c954", true, false), string);
                }
                intent2.setData(builderAppendQueryParameter.build());
                intent2.setPackage(GOOGLE_PLAY_STORE_PACKAGE);
                intent2.addFlags(524288);
                return intent2;
            case 3:
                Uri uriFromParts = Uri.fromParts(NPStringFog.decode(new byte[]{72, 3, 83, 83, 84, 5, 93}, "8b085b", -941029925L), GOOGLE_PLAY_SERVICES_PACKAGE, null);
                Intent intent3 = new Intent(NPStringFog.decode(new byte[]{0, 86, 93, 70, 13, 11, 5, 22, 74, 81, 22, 22, 8, 86, 94, 71, 76, 35, 49, 104, 117, 125, 33, 35, 53, 113, 118, 122, 61, 38, 36, 108, 120, 125, 46, 49, 62, 107, 124, 96, 54, 43, 47, 127, 106}, "a894bb", -1.660772163E9d));
                intent3.setData(uriFromParts);
                return intent3;
            default:
                return null;
        }
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return getErrorResolutionPendingIntent(context, i, i2, null);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2, String str) {
        Intent errorResolutionIntent = getErrorResolutionIntent(context, i, str);
        if (errorResolutionIntent == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, errorResolutionIntent, com.google.android.gms.internal.common.zzd.zza | 134217728);
    }

    public String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    @ResultIgnorabilityUnspecified
    public int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public int isGooglePlayServicesAvailable(Context context, int i) {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, iIsGooglePlayServicesAvailable)) {
            return 18;
        }
        return iIsGooglePlayServicesAvailable;
    }

    public boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i);
    }

    public boolean isPlayStorePossiblyUpdating(Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i);
    }

    public boolean isUninstalledAppPossiblyUpdating(Context context, String str) {
        return GooglePlayServicesUtilLight.zza(context, str);
    }

    public boolean isUserResolvableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    public void verifyGooglePlayServicesIsAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context, i);
    }
}
