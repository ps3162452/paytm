package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class NavUtils {
    public static final String PARENT_ACTIVITY = NPStringFog.decode(new byte[]{88, 13, 2, 70, 10, 12, 93, 77, 21, 65, 21, 21, 86, 17, 18, 26, 53, 36, 107, 38, 40, 96, 58, 36, 122, 55, 47, 98, 44, 49, 96}, "9cf4ee", true);
    private static final String TAG = NPStringFog.decode(new byte[]{124, 89, 78, 99, 21, 13, 94, 75}, "2886ad", -1.6958885E9f);

    private NavUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.content.Intent] */
    public static Intent getParentActivityIntent(Activity activity) {
        Intent parentActivityIntent;
        if (Build.VERSION.SDK_INT >= 16 && (parentActivityIntent = activity.getParentActivityIntent()) != null) {
            return parentActivityIntent;
        }
        String parentActivityName = getParentActivityName(activity);
        if (parentActivityName == 0) {
            return null;
        }
        ComponentName componentName = new ComponentName(activity, (String) parentActivityName);
        try {
            parentActivityName = getParentActivityName(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            return parentActivityName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{87, 3, 68, 104, 87, 71, 85, 8, 68, 121, 85, 65, 89, 16, 89, 76, 79, 124, 94, 18, 85, 86, 66, 15, 16, 4, 81, 92, 22, 69, 81, 20, 85, 86, 66, 116, 83, 18, 89, 78, 95, 65, 73, 40, 81, 85, 83, 21, 23}, "0f0865", 5461) + parentActivityName + NPStringFog.decode(new byte[]{67, 22, 80, 8, 67, 91, 5, 88, 80, 0, 6, 69, 16}, "d69fc6", 16855));
            return null;
        }
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, componentName);
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), parentActivityName);
        return getParentActivityName(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> cls) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, new ComponentName(context, cls));
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(context, parentActivityName);
        return getParentActivityName(context, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
    }

    public static String getParentActivityName(Activity activity) {
        try {
            return getParentActivityName(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String getParentActivityName(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        String str;
        int i = 640;
        PackageManager packageManager = context.getPackageManager();
        if (Build.VERSION.SDK_INT >= 24) {
        }
        if (Build.VERSION.SDK_INT >= 29) {
            i = 269222528;
        } else if (Build.VERSION.SDK_INT >= 24) {
            i = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i);
        if (Build.VERSION.SDK_INT >= 16 && (str = activityInfo.parentActivityName) != null) {
            return str;
        }
        if (activityInfo.metaData != null && (string = activityInfo.metaData.getString(PARENT_ACTIVITY)) != null) {
            if (string.charAt(0) != '.') {
                return string;
            }
            return context.getPackageName() + string;
        }
        return null;
    }

    public static void navigateUpFromSameTask(Activity activity) {
        Intent parentActivityIntent = getParentActivityIntent(activity);
        if (parentActivityIntent != null) {
            navigateUpTo(activity, parentActivityIntent);
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 86, 76, 10, 23, 10, 66, 76, 24}, "658cac", -1.0846117E9f) + activity.getClass().getSimpleName() + NPStringFog.decode(new byte[]{18, 6, 11, 93, 67, 22, 92, 13, 16, 24, 88, 87, 68, 7, 68, 89, 16, 70, 83, 16, 1, 86, 68, 22, 83, 1, 16, 81, 70, 95, 70, 27, 68, 86, 81, 91, 87, 66, 23, 72, 85, 85, 91, 4, 13, 93, 84, 24, 18, 74, 32, 81, 84, 22, 75, 13, 17, 24, 86, 89, 64, 5, 1, 76, 16, 66, 93, 66, 5, 92, 84, 22, 70, 10, 1, 24, 81, 88, 86, 16, 11, 81, 84, 24, 65, 23, 20, 72, 95, 68, 70, 76, 52, 121, 98, 115, 124, 54, 59, 121, 115, 98, 123, 52, 45, 108, 105, 22, 14, 15, 1, 76, 81, 27, 86, 3, 16, 89, 14, 22, 18, 7, 8, 93, 93, 83, 92, 22, 68, 81, 94, 22, 75, 13, 17, 74, 16, 91, 83, 12, 13, 94, 85, 69, 70, 93, 77}, "2bd806", 1308));
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.navigateUpTo(intent);
            return;
        }
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return activity.shouldUpRecreateTask(intent);
        }
        String action = activity.getIntent().getAction();
        return (action == null || action.equals(NPStringFog.decode(new byte[]{87, 15, 83, 17, 95, 93, 82, 79, 94, 13, 68, 81, 88, 21, 25, 2, 83, 64, 95, 14, 89, 77, 125, 117, 127, 47}, "6a7c04", 1.112521769E9d))) ? false : true;
    }
}
