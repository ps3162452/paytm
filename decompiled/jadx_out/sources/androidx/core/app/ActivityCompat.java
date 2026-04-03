package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.DragEvent;
import android.view.View;
import androidx.core.app.SharedElementCallback;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.os.BuildCompat;
import androidx.core.view.DragAndDropPermissionsCompat;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class ActivityCompat extends ContextCompat {
    private static PermissionCompatDelegate sDelegate;

    static class Api30Impl {
        private Api30Impl() {
        }

        static void setLocusContext(Activity activity, LocusIdCompat locusIdCompat, Bundle bundle) {
            activity.setLocusContext(locusIdCompat == null ? null : locusIdCompat.toLocusId(), bundle);
        }
    }

    static class Api31Impl {
        private Api31Impl() {
        }

        static boolean isLaunchedFromBubble(Activity activity) {
            return activity.isLaunchedFromBubble();
        }
    }

    public interface OnRequestPermissionsResultCallback {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    public interface PermissionCompatDelegate {
        boolean onActivityResult(Activity activity, int i, int i2, Intent intent);

        boolean requestPermissions(Activity activity, String[] strArr, int i);
    }

    public interface RequestPermissionsRequestCodeValidator {
        void validateRequestPermissionsRequestCode(int i);
    }

    private static class SharedElementCallback21Impl extends android.app.SharedElementCallback {
        private final SharedElementCallback mCallback;

        SharedElementCallback21Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementsArrived(List<String> list, List<View> list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.mCallback.onSharedElementsArrived(list, list2, new SharedElementCallback.OnSharedElementsReadyListener(this, onSharedElementsReadyListener) { // from class: androidx.core.app.ActivityCompat.SharedElementCallback21Impl.1
                final SharedElementCallback21Impl this$0;
                final SharedElementCallback.OnSharedElementsReadyListener val$listener;

                {
                    this.this$0 = this;
                    this.val$listener = onSharedElementsReadyListener;
                }

                @Override // androidx.core.app.SharedElementCallback.OnSharedElementsReadyListener
                public void onSharedElementsReady() {
                    this.val$listener.onSharedElementsReady();
                }
            });
        }
    }

    protected ActivityCompat() {
    }

    public static void finishAffinity(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void finishAfterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static PermissionCompatDelegate getPermissionCompatDelegate() {
        return sDelegate;
    }

    public static Uri getReferrer(Activity activity) {
        if (Build.VERSION.SDK_INT >= 22) {
            return activity.getReferrer();
        }
        Intent intent = activity.getIntent();
        Uri uri = (Uri) intent.getParcelableExtra(NPStringFog.decode(new byte[]{86, 89, 80, 22, 10, 90, 83, 25, 93, 10, 17, 86, 89, 67, 26, 1, 29, 71, 69, 86, 26, 54, 32, 117, 114, 101, 102, 33, 55}, "774de3", -2.120324E9f));
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra(NPStringFog.decode(new byte[]{80, 13, 1, 65, 12, 13, 85, 77, 12, 93, 23, 1, 95, 23, 75, 86, 27, 16, 67, 2, 75, 97, 38, 34, 116, 49, 55, 118, 49, 59, 127, 34, 40, 118}, "1ce3cd", -1.514801854E9d));
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        return null;
    }

    @Deprecated
    public static boolean invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    public static boolean isLaunchedFromBubble(Activity activity) {
        if (BuildCompat.isAtLeastS()) {
            return Api31Impl.isLaunchedFromBubble(activity);
        }
        if (Build.VERSION.SDK_INT == 30) {
            return (activity.getDisplay() == null || activity.getDisplay().getDisplayId() == 0) ? false : true;
        }
        if (Build.VERSION.SDK_INT == 29) {
            return (activity.getWindowManager().getDefaultDisplay() == null || activity.getWindowManager().getDefaultDisplay().getDisplayId() == 0) ? false : true;
        }
        return false;
    }

    public static void postponeEnterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void recreate(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (Build.VERSION.SDK_INT <= 23) {
            new Handler(activity.getMainLooper()).post(new Runnable(activity) { // from class: androidx.core.app.ActivityCompat.2
                final Activity val$activity;

                {
                    this.val$activity = activity;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.val$activity.isFinishing() || ActivityRecreator.recreate(this.val$activity)) {
                        return;
                    }
                    this.val$activity.recreate();
                }
            });
        } else {
            if (ActivityRecreator.recreate(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    public static DragAndDropPermissionsCompat requestDragAndDropPermissions(Activity activity, DragEvent dragEvent) {
        return DragAndDropPermissionsCompat.request(activity, dragEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void requestPermissions(Activity activity, String[] strArr, int i) {
        PermissionCompatDelegate permissionCompatDelegate = sDelegate;
        if (permissionCompatDelegate == null || !permissionCompatDelegate.requestPermissions(activity, strArr, i)) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 84, 23, 14, 13, 16, 70, 88, 10, 13, 68, 17, 80, 64, 16, 6, 23, 23, 21, 87, 10, 17, 68, 19, 80, 67, 8, 10, 23, 16, 92, 94, 11, 16, 68}, "51ecdc", true, true) + Arrays.toString(strArr) + NPStringFog.decode(new byte[]{66, 88, 65, 22, 76, 22, 12, 90, 64, 69, 91, 89, 12, 65, 85, 12, 86, 22, 12, 64, 88, 9, 24, 89, 16, 21, 81, 8, 72, 66, 27, 21, 66, 4, 84, 67, 7, 70}, "b54e86", -2.0996272E8f));
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof RequestPermissionsRequestCodeValidator) {
                    ((RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (activity instanceof OnRequestPermissionsResultCallback) {
                new Handler(Looper.getMainLooper()).post(new Runnable(strArr, activity, i) { // from class: androidx.core.app.ActivityCompat.1
                    final Activity val$activity;
                    final String[] val$permissions;
                    final int val$requestCode;

                    {
                        this.val$permissions = strArr;
                        this.val$activity = activity;
                        this.val$requestCode = i;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        int[] iArr = new int[this.val$permissions.length];
                        PackageManager packageManager = this.val$activity.getPackageManager();
                        String packageName = this.val$activity.getPackageName();
                        int length = this.val$permissions.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            iArr[i2] = packageManager.checkPermission(this.val$permissions[i2], packageName);
                        }
                        ((OnRequestPermissionsResultCallback) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissions, iArr);
                    }
                });
            }
        }
    }

    public static <T extends View> T requireViewById(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) activity.requireViewById(i);
        }
        T t = (T) activity.findViewById(i);
        if (t == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 39, 65, 80, 87, 80, 66, 67, 15, 91, 76, 21, 67, 6, 7, 81, 74, 80, 95, 0, 4, 20, 89, 21, 103, 10, 4, 67, 24, 92, 95, 16, 8, 80, 93, 21, 69, 11, 8, 71, 24, 116, 82, 23, 8, 66, 81, 65, 72}, "1ca485", true));
        }
        return t;
    }

    public static void setEnterSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(sharedElementCallback != null ? new SharedElementCallback21Impl(sharedElementCallback) : null);
        }
    }

    public static void setExitSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(sharedElementCallback != null ? new SharedElementCallback21Impl(sharedElementCallback) : null);
        }
    }

    public static void setLocusContext(Activity activity, LocusIdCompat locusIdCompat, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setLocusContext(activity, locusIdCompat, bundle);
        }
    }

    public static void setPermissionCompatDelegate(PermissionCompatDelegate permissionCompatDelegate) {
        sDelegate = permissionCompatDelegate;
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void startActivityForResult(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void startPostponedEnterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
