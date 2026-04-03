package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.zag;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class GooglePlayServicesUtil extends GooglePlayServicesUtilLight {
    public static final String GMS_ERROR_DIALOG = NPStringFog.decode(new byte[]{119, 93, 87, 1, 9, 87, 96, 94, 89, 31, 54, 87, 66, 68, 81, 5, 0, 65, 117, 64, 74, 9, 23, 118, 89, 83, 84, 9, 2}, "028fe2", 25121);

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = NPStringFog.decode(new byte[]{7, 12, 92, 22, 94, 91, 11, 4, 93, 93, 23, 85, 10, 7, 67, 87, 80, 80, 74, 4, 92, 75}, "dc1894", 1.044206528E9d);
    public static final String GOOGLE_PLAY_STORE_PACKAGE = NPStringFog.decode(new byte[]{7, 9, 84, 76, 87, 95, 0, 20, 86, 11, 82, 31, 18, 3, 87, 6, 95, 95, 3}, "df9b61", false, false);

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        return GoogleApiAvailability.getInstance().getErrorDialog(activity, i, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GooglePlayServicesUtilLight.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    public static Context getRemoteContext(Context context) {
        return GooglePlayServicesUtilLight.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return GooglePlayServicesUtilLight.getRemoteResource(context);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    @ResultIgnorabilityUnspecified
    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        int i3 = true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i) ? 18 : i;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (fragment == null) {
            return googleApiAvailability.showErrorDialogFragment(activity, i3, i2, onCancelListener);
        }
        Dialog dialogZaa = googleApiAvailability.zaa(activity, i3, zag.zac(fragment, GoogleApiAvailability.getInstance().getErrorResolutionIntent(activity, i3, NPStringFog.decode(new byte[]{5}, "afb99b", -3.6369914E8f)), i2), onCancelListener, null);
        if (dialogZaa == null) {
            return false;
        }
        googleApiAvailability.zad(activity, dialogZaa, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i) || GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i)) {
            googleApiAvailability.zaf(context);
        } else {
            googleApiAvailability.showErrorNotification(context, i);
        }
    }
}
