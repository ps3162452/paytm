package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.os.UserManagerCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.concurrent.Executors;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class PackageManagerCompat {
    public static final String ACTION_PERMISSION_REVOCATION_SETTINGS = NPStringFog.decode(new byte[]{89, 10, 6, 68, 14, 90, 92, 74, 11, 88, 21, 86, 86, 16, 76, 87, 2, 71, 81, 11, 12, 24, 32, 102, 108, 43, 61, 100, 36, 101, 119, 47, 39, 105, 49, 118, 106, 41, 43, 101, 50, 122, 119, 42, 49}, "8db6a3", false, false);
    public static final String LOG_TAG = NPStringFog.decode(new byte[]{51, 81, 5, 92, 88, 4, 6, 125, 7, 89, 88, 4, 6, 66, 37, 88, 84, 19, 2, 68}, "c0f79c", -1.7697869E8f);

    private static class Api30Impl {
        private Api30Impl() {
        }

        static boolean areUnusedAppRestrictionsEnabled(Context context) {
            return !context.getPackageManager().isAutoRevokeWhitelisted();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UnusedAppRestrictionsStatus {
    }

    private PackageManagerCompat() {
    }

    public static boolean areUnusedAppRestrictionsAvailable(PackageManager packageManager) {
        boolean z = Build.VERSION.SDK_INT >= 30;
        boolean z2 = Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 30;
        boolean z3 = getPermissionRevocationVerifierApp(packageManager) != null;
        if (z) {
            return true;
        }
        return z2 && z3;
    }

    public static String getPermissionRevocationVerifierApp(PackageManager packageManager) {
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(new Intent(ACTION_PERMISSION_REVOCATION_SETTINGS).setData(Uri.fromParts(NPStringFog.decode(new byte[]{20, 83, 80, 13, 83, 5, 1}, "d23f2b", 1.5131992E9f), NPStringFog.decode(new byte[]{84, 92, 12, 29, 0, 64, 86, 94, 17, 95, 0}, "73a3e8", -17383), null)), 0).iterator();
        String str = null;
        while (it.hasNext()) {
            String str2 = it.next().activityInfo.packageName;
            if (packageManager.checkPermission(NPStringFog.decode(new byte[]{7, 90, 92, 20, 14, 95, 2, 26, 72, 3, 19, 91, 15, 71, 75, 15, 14, 88, 72, 100, 121, 37, 42, 119, 33, 113, 103, 48, 36, 100, 47, 114, 113, 37, 32, 98, 47, 123, 118, 57, 32, 113, 35, 122, 108}, "f48fa6", 7655), str2) == 0) {
                if (str != null) {
                    break;
                }
                str = str2;
            }
        }
        return str;
    }

    public static ListenableFuture<Integer> getUnusedAppRestrictionsStatus(Context context) {
        ResolvableFuture<Integer> resolvableFutureCreate = ResolvableFuture.create();
        if (!UserManagerCompat.isUserUnlocked(context)) {
            resolvableFutureCreate.set(0);
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{108, 21, 4, 65, 65, 91, 74, 70, 8, 93, 65, 94, 86, 5, 10, 86, 5, 18, 93, 15, 19, 86, 2, 70, 25, 4, 14, 92, 21, 18, 84, 9, 5, 86}, "9fa3a2", false));
            return resolvableFutureCreate;
        }
        if (!areUnusedAppRestrictionsAvailable(context.getPackageManager())) {
            resolvableFutureCreate.set(1);
            return resolvableFutureCreate;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        if (i < 30) {
            resolvableFutureCreate.set(0);
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{55, 88, 67, 94, 84, 21, 67, 106, 117, 114, 17, 23, 6, 75, 66, 80, 94, 15, 67, 91, 84, 85, 94, 22, 67, 120, 97, 112, 17, 82, 83}, "c9191a", false));
            return resolvableFutureCreate;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            if (Api30Impl.areUnusedAppRestrictionsEnabled(context)) {
                resolvableFutureCreate.set(Integer.valueOf(i >= 31 ? 5 : 4));
            } else {
                resolvableFutureCreate.set(2);
            }
            return resolvableFutureCreate;
        }
        if (Build.VERSION.SDK_INT == 30) {
            resolvableFutureCreate.set(Integer.valueOf(Api30Impl.areUnusedAppRestrictionsEnabled(context) ? 4 : 2));
            return resolvableFutureCreate;
        }
        final UnusedAppRestrictionsBackportServiceConnection unusedAppRestrictionsBackportServiceConnection = new UnusedAppRestrictionsBackportServiceConnection(context);
        unusedAppRestrictionsBackportServiceConnection.getClass();
        resolvableFutureCreate.addListener(new Runnable(unusedAppRestrictionsBackportServiceConnection) { // from class: androidx.core.content.PackageManagerCompat$$ExternalSyntheticLambda0
            public final UnusedAppRestrictionsBackportServiceConnection f$0;

            {
                this.f$0 = unusedAppRestrictionsBackportServiceConnection;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.disconnectFromService();
            }
        }, Executors.newSingleThreadExecutor());
        unusedAppRestrictionsBackportServiceConnection.connectAndFetchResult(resolvableFutureCreate);
        return resolvableFutureCreate;
    }
}
