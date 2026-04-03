package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabw;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.api.internal.zacc;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zae;
import com.google.android.gms.internal.base.zao;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms.*", allowlistAnnotations = {com.google.android.gms.internal.base.zad.class, zae.class}, explanation = "Sub classing of GMS Core's APIs are restricted to GMS Core client libs and testing fakes.", link = "go/gmscore-restrictedinheritance")
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    private String zac;
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = NPStringFog.decode(new byte[]{90, 90, 88, 25, 95, 93, 86, 82, 89, 82, 22, 83, 87, 81, 71, 88, 81, 86, 23, 82, 88, 68}, "955782", true, false);
    private static final Object zaa = new Object();
    private static final GoogleApiAvailability zab = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    public static GoogleApiAvailability getInstance() {
        return zab;
    }

    public static final Task zai(HasApiKey hasApiKey, HasApiKey... hasApiKeyArr) {
        Preconditions.checkNotNull(hasApiKey, NPStringFog.decode(new byte[]{106, 3, 21, 23, 3, 16, 76, 3, 0, 66, 39, 51, 113, 70, 9, 23, 21, 23, 24, 8, 11, 22, 70, 1, 93, 70, 10, 23, 10, 15, 22}, "8fdbfc", 709));
        for (HasApiKey hasApiKey2 : hasApiKeyArr) {
            Preconditions.checkNotNull(hasApiKey2, NPStringFog.decode(new byte[]{55, 84, 19, 76, 1, 23, 17, 84, 6, 25, 37, 52, 44, 17, 15, 76, 23, 16, 69, 95, 13, 77, 68, 6, 0, 17, 12, 76, 8, 8, 75}, "e1b9dd", 621707933L));
        }
        ArrayList arrayList = new ArrayList(hasApiKeyArr.length + 1);
        arrayList.add(hasApiKey);
        arrayList.addAll(Arrays.asList(hasApiKeyArr));
        return GoogleApiManager.zaj().zam(arrayList);
    }

    public Task<Void> checkApiAvailability(GoogleApi<?> googleApi, GoogleApi<?>... googleApiArr) {
        return zai(googleApi, googleApiArr).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.common.zab
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                int i = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                return Tasks.forResult(null);
            }
        });
    }

    public Task<Void> checkApiAvailability(HasApiKey<?> hasApiKey, HasApiKey<?>... hasApiKeyArr) {
        return zai(hasApiKey, hasApiKeyArr).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.common.zaa
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                int i = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                return Tasks.forResult(null);
            }
        });
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int getClientVersion(Context context) {
        return super.getClientVersion(context);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, (DialogInterface.OnCancelListener) null);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zaa(activity, i, zag.zab(activity, getErrorResolutionIntent(activity, i, NPStringFog.decode(new byte[]{81}, "581284", -8.917682E8f)), i2), onCancelListener, null);
    }

    public Dialog getErrorDialog(Fragment fragment, int i, int i2) {
        return getErrorDialog(fragment, i, i2, (DialogInterface.OnCancelListener) null);
    }

    public Dialog getErrorDialog(Fragment fragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zaa(fragment.requireContext(), i, zag.zac(fragment, getErrorResolutionIntent(fragment.requireContext(), i, NPStringFog.decode(new byte[]{83}, "79aa12", true)), i2), onCancelListener, null);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        return super.getErrorResolutionIntent(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ResultIgnorabilityUnspecified
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int isGooglePlayServicesAvailable(Context context, int i) {
        return super.isGooglePlayServicesAvailable(context, i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public Task<Void> makeGooglePlayServicesAvailable(Activity activity) {
        int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Preconditions.checkMainThread(NPStringFog.decode(new byte[]{9, 3, 90, 4, 116, 14, 11, 5, 93, 4, 99, 13, 5, 27, 98, 4, 65, 23, 13, 1, 84, 18, 114, 23, 5, 11, 93, 0, 81, 13, 1, 66, 92, 20, 64, 21, 68, 0, 84, 65, 80, 0, 8, 14, 84, 5, 19, 7, 22, 13, 92, 65, 71, 9, 1, 66, 92, 0, 90, 15, 68, 22, 89, 19, 86, 0, 0}, "db1a3a", false));
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity, i);
        if (iIsGooglePlayServicesAvailable == 0) {
            return Tasks.forResult(null);
        }
        zacc zaccVarZaa = zacc.zaa(activity);
        zaccVarZaa.zah(new ConnectionResult(iIsGooglePlayServicesAvailable, null), 0);
        return zaccVarZaa.zad();
    }

    public void setDefaultNotificationChannelId(Context context, String str) {
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkNotNull(((NotificationManager) Preconditions.checkNotNull(context.getSystemService(NPStringFog.decode(new byte[]{88, 86, 67, 8, 87, 95, 85, 88, 67, 8, 94, 88}, "697a16", -1.4919487E9f)))).getNotificationChannel(str));
        }
        synchronized (zaa) {
            this.zac = str;
        }
    }

    @ResultIgnorabilityUnspecified
    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, (DialogInterface.OnCancelListener) null);
    }

    @ResultIgnorabilityUnspecified
    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zad(activity, errorDialog, NPStringFog.decode(new byte[]{34, 12, 10, 81, 8, 7, 53, 15, 4, 79, 55, 7, 23, 21, 12, 85, 1, 17, 32, 17, 23, 89, 22, 38, 12, 2, 9, 89, 3}, "ece6db", -2.1357574E9f), onCancelListener);
        return true;
    }

    public boolean showErrorDialogFragment(Activity activity, int i, ActivityResultLauncher<IntentSenderRequest> activityResultLauncher, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogZaa = zaa(activity, i, null, onCancelListener, new zac(this, activity, i, activityResultLauncher));
        if (dialogZaa == null) {
            return false;
        }
        zad(activity, dialogZaa, NPStringFog.decode(new byte[]{127, 89, 13, 81, 84, 84, 104, 90, 3, 79, 107, 84, 74, 64, 11, 85, 93, 66, 125, 68, 16, 89, 74, 117, 81, 87, 14, 89, 95}, "86b681", 690798391L), onCancelListener);
        return true;
    }

    public void showErrorNotification(Context context, int i) {
        zae(context, i, null, getErrorResolutionPendingIntent(context, i, 0, NPStringFog.decode(new byte[]{95}, "1a7235", 16293)));
    }

    public void showErrorNotification(Context context, ConnectionResult connectionResult) {
        zae(context, connectionResult.getErrorCode(), null, getErrorResolutionPendingIntent(context, connectionResult));
    }

    final Dialog zaa(Context context, int i, zag zagVar, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnClickListener onClickListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = NPStringFog.decode(new byte[]{108, 95, 6, 92, 81, 74, 124, 94, 2, 93, 91, 3, 22, 118, 15, 84, 70, 16}, "87c14d", -1.834096556E9d).equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.zac.zad(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strZac = com.google.android.gms.common.internal.zac.zac(context, i);
        if (strZac != null) {
            if (zagVar != null) {
                onClickListener = zagVar;
            }
            builder.setPositiveButton(strZac, onClickListener);
        }
        String strZag = com.google.android.gms.common.internal.zac.zag(context, i);
        if (strZag != null) {
            builder.setTitle(strZag);
        }
        Log.w(NPStringFog.decode(new byte[]{112, 93, 89, 2, 15, 3, 118, 66, 95, 36, 21, 7, 94, 94, 87, 7, 10, 10, 94, 70, 79}, "726ecf", -1.2811499E8f), String.format(NPStringFog.decode(new byte[]{119, 23, 93, 85, 18, 8, 90, 2, 24, 80, 15, 0, 88, 10, 95, 20, 0, 14, 70, 69, 127, 91, 9, 6, 88, 0, 24, 100, 10, 0, 77, 69, 75, 81, 20, 23, 93, 6, 93, 71, 70, 0, 66, 4, 81, 88, 7, 3, 93, 9, 81, 64, 31, 65, 93, 22, 75, 65, 3, 79, 20, 38, 87, 90, 8, 4, 87, 17, 81, 91, 8, 51, 81, 22, 77, 88, 18, 92, 17, 22}, "4e84fa", false, true), Integer.valueOf(i)), new IllegalArgumentException());
        return builder.create();
    }

    public final Dialog zab(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, android.R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.zac.zad(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        zad(activity, alertDialogCreate, NPStringFog.decode(new byte[]{33, 9, 12, 83, 90, 87, 54, 10, 2, 77, 101, 87, 20, 16, 10, 87, 83, 65, 51, 22, 7, 85, 66, 91, 8, 1, 39, 93, 87, 94, 9, 1}, "ffc462", -1.6781039E9f), onCancelListener);
        return alertDialogCreate;
    }

    @ResultIgnorabilityUnspecified
    public final zabx zac(Context context, zabw zabwVar) {
        IntentFilter intentFilter = new IntentFilter(NPStringFog.decode(new byte[]{85, 92, 7, 75, 9, 12, 80, 28, 10, 87, 18, 0, 90, 70, 77, 88, 5, 17, 93, 93, 13, 23, 54, 36, 119, 121, 34, 126, 35, 58, 117, 118, 39, 124, 34}, "42c9fe", -1330691821L));
        intentFilter.addDataScheme(NPStringFog.decode(new byte[]{21, 2, 1, 9, 4, 2, 0}, "ecbbee", 1934939093L));
        zabx zabxVar = new zabx(zabwVar);
        zao.zaa(context, zabxVar, intentFilter);
        zabxVar.zaa(context);
        if (isUninstalledAppPossiblyUpdating(context, GOOGLE_PLAY_SERVICES_PACKAGE)) {
            return zabxVar;
        }
        zabwVar.zaa();
        zabxVar.zab();
        return null;
    }

    final void zad(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError e) {
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    final void zae(Context context, int i, String str, PendingIntent pendingIntent) {
        String strDecode;
        int i2;
        Log.w(NPStringFog.decode(new byte[]{116, 14, 94, 1, 91, 7, 114, 17, 88, 39, 65, 3, 90, 13, 80, 4, 94, 14, 90, 21, 72}, "3a1f7b", 2.119052629E9d), String.format(NPStringFog.decode(new byte[]{114, 127, 97, 66, 82, 95, 71, 87, 18, 35, 97, 121, 21, 115, 68, 3, 88, 92, 84, 80, 91, 14, 88, 68, 76, 28, 18, 33, 94, 94, 91, 87, 81, 22, 88, 95, 91, 96, 87, 17, 68, 92, 65, 15, 23, 17, 29, 16, 65, 83, 85, 95, 20, 67}, "522b10", -6.04841941E8d), Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            zaf(context);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w(NPStringFog.decode(new byte[]{117, 10, 90, 6, 84, 3, 115, 21, 92, 32, 78, 7, 91, 9, 84, 3, 81, 10, 91, 17, 76}, "2e5a8f", -1.6945207E9f), NPStringFog.decode(new byte[]{120, 89, 70, 17, 11, 13, 82, 16, 71, 7, 17, 12, 89, 69, 65, 11, 13, 13, 21, 86, 90, 16, 66, 32, 90, 94, 91, 7, 1, 23, 92, 95, 91, 48, 7, 16, 64, 92, 65, 76, 48, 38, 102, 127, 121, 55, 54, 42, 122, 126, 106, 48, 39, 50, 96, 121, 103, 39, 38, 77, 21, 115, 84, 14, 14, 67, 114, 95, 90, 5, 14, 6, 116, 64, 92, 35, 20, 2, 92, 92, 84, 0, 11, 15, 92, 68, 76, 65, 17, 11, 90, 71, 112, 16, 16, 12, 71, 126, 90, 22, 11, 5, 92, 83, 84, 22, 11, 12, 91, 24, 118, 13, 12, 23, 80, 72, 65, 78, 66, 32, 90, 94, 91, 7, 1, 23, 92, 95, 91, 48, 7, 16, 64, 92, 65, 75, 66, 10, 91, 67, 65, 7, 3, 7, 27}, "505bbc", -20104));
                return;
            }
            return;
        }
        String strZaf = com.google.android.gms.common.internal.zac.zaf(context, i);
        String strZae = com.google.android.gms.common.internal.zac.zae(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) Preconditions.checkNotNull(context.getSystemService(NPStringFog.decode(new byte[]{92, 91, 23, 95, 85, 90, 81, 85, 23, 95, 92, 93}, "24c633", 1699741395L)));
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(strZaf).setStyle(new NotificationCompat.BigTextStyle().bigText(strZae));
        if (DeviceProperties.isWearable(context)) {
            Preconditions.checkState(PlatformVersion.isAtLeastKitKatWatch());
            style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
            if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                style.addAction(com.google.android.gms.base.R.drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R.string.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(android.R.drawable.stat_sys_warning).setTicker(resources.getString(com.google.android.gms.base.R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(strZae);
        }
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkState(PlatformVersion.isAtLeastO());
            synchronized (zaa) {
                strDecode = this.zac;
            }
            if (strDecode == null) {
                strDecode = NPStringFog.decode(new byte[]{90, 86, 8, 30, 85, 88, 86, 94, 9, 85, 28, 86, 87, 93, 23, 95, 91, 83, 23, 94, 8, 67, 28, 86, 79, 88, 12, 92, 83, 85, 80, 85, 12, 68, 75}, "99e027", -1913078212L);
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel(NPStringFog.decode(new byte[]{2, 86, 12, 77, 6, 12, 14, 94, 13, 6, 79, 2, 15, 93, 19, 12, 8, 7, 79, 94, 12, 16, 79, 2, 23, 88, 8, 15, 0, 1, 8, 85, 8, 23, 24}, "a9acac", -17113));
                String strZab = com.google.android.gms.common.internal.zac.zab(context);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel(NPStringFog.decode(new byte[]{7, 11, 84, 76, 2, 11, 11, 3, 85, 7, 75, 5, 10, 0, 75, 13, 12, 0, 74, 3, 84, 17, 75, 5, 18, 5, 80, 14, 4, 6, 13, 8, 80, 22, 28}, "dd9bed", 20784), strZab, 4));
                } else if (!strZab.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(strZab);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            style.setChannelId(strDecode);
        }
        Notification notificationBuild = style.build();
        switch (i) {
            case 1:
            case 2:
            case 3:
                GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
                i2 = 10436;
                break;
            default:
                i2 = 39789;
                break;
        }
        notificationManager.notify(i2, notificationBuild);
    }

    final void zaf(Context context) {
        new zad(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    @ResultIgnorabilityUnspecified
    public final boolean zag(Activity activity, LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogZaa = zaa(activity, i, zag.zad(lifecycleFragment, getErrorResolutionIntent(activity, i, NPStringFog.decode(new byte[]{86}, "25b5e4", 2.1366847E9f)), 2), onCancelListener, null);
        if (dialogZaa == null) {
            return false;
        }
        zad(activity, dialogZaa, NPStringFog.decode(new byte[]{114, 90, 86, 3, 84, 92, 101, 89, 88, 29, 107, 92, 71, 67, 80, 7, 93, 74, 112, 71, 75, 11, 74, 125, 92, 84, 85, 11, 95}, "559d89", -1.1991332E8f), onCancelListener);
        return true;
    }

    public final boolean zah(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent;
        if (InstantApps.isInstantApp(context) || (errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult)) == null) {
            return false;
        }
        zae(context, connectionResult.getErrorCode(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.zaa(context, errorResolutionPendingIntent, i, true), zap.zaa | 134217728));
        return true;
    }
}
