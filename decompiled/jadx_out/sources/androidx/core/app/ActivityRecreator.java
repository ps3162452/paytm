package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
final class ActivityRecreator {
    protected static final Class<?> activityThreadClass;
    protected static final Field mainThreadField;
    protected static final Method performStopActivity2ParamsMethod;
    protected static final Method performStopActivity3ParamsMethod;
    protected static final Method requestRelaunchActivityMethod;
    protected static final Field tokenField;
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{120, 83, 70, 80, 79, 94, 77, 73, 96, 92, 90, 69, 92, 81, 70, 86, 75}, "902997", -1.64130468E8d);
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());

    private static final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {
        Object currentlyRecreatingToken;
        private Activity mActivity;
        private final int mRecreatingHashCode;
        private boolean mStarted = false;
        private boolean mDestroyed = false;
        private boolean mStopQueued = false;

        LifecycleCheckCallbacks(Activity activity) {
            this.mActivity = activity;
            this.mRecreatingHashCode = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.mActivity == activity) {
                this.mActivity = null;
                this.mDestroyed = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.mDestroyed || this.mStopQueued || this.mStarted || !ActivityRecreator.queueOnStopIfNecessary(this.currentlyRecreatingToken, this.mRecreatingHashCode, activity)) {
                return;
            }
            this.mStopQueued = true;
            this.currentlyRecreatingToken = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.mActivity == activity) {
                this.mStarted = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> activityThreadClass2 = getActivityThreadClass();
        activityThreadClass = activityThreadClass2;
        mainThreadField = getMainThreadField();
        tokenField = getTokenField();
        performStopActivity3ParamsMethod = getPerformStopActivity3Params(activityThreadClass2);
        performStopActivity2ParamsMethod = getPerformStopActivity2Params(activityThreadClass2);
        requestRelaunchActivityMethod = getRequestRelaunchActivityMethod(activityThreadClass2);
    }

    private ActivityRecreator() {
    }

    private static Class<?> getActivityThreadClass() {
        try {
            return Class.forName(NPStringFog.decode(new byte[]{4, 89, 92, 75, 93, 13, 1, 25, 89, 73, 66, 74, 36, 84, 76, 80, 68, 13, 17, 78, 108, 81, 64, 1, 4, 83}, "e7892d", 1.459235446E9d));
        } catch (Throwable th) {
            return null;
        }
    }

    private static Field getMainThreadField() {
        try {
            Field declaredField = Activity.class.getDeclaredField(NPStringFog.decode(new byte[]{90, 46, 89, 80, 91, 109, 95, 17, 93, 88, 81}, "7c8959", true));
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method getPerformStopActivity2Params(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(NPStringFog.decode(new byte[]{65, 4, 69, 3, 92, 19, 92, 50, 67, 10, 67, 32, 82, 21, 94, 19, 90, 21, 72}, "1a7e3a", -1.942188E9f), IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method getPerformStopActivity3Params(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(NPStringFog.decode(new byte[]{20, 82, 65, 95, 93, 17, 9, 100, 71, 86, 66, 34, 7, 67, 90, 79, 91, 23, 29}, "d7392c", true, true), IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method getRequestRelaunchActivityMethod(Class<?> cls) {
        if (!needsRelaunchCall() || cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(NPStringFog.decode(new byte[]{66, 92, 19, 65, 93, 21, 68, 107, 7, 88, 89, 19, 94, 90, 10, 117, 91, 18, 89, 79, 11, 64, 65}, "09b48f", false), IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Field getTokenField() {
        try {
            Field declaredField = Activity.class.getDeclaredField(NPStringFog.decode(new byte[]{93, 98, 86, 15, 86, 11}, "069d3e", -18755));
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean needsRelaunchCall() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    protected static boolean queueOnStopIfNecessary(Object obj, int i, Activity activity) {
        try {
            Object obj2 = tokenField.get(activity);
            if (obj2 != obj || activity.hashCode() != i) {
                return false;
            }
            mainHandler.postAtFrontOfQueue(new Runnable(mainThreadField.get(activity), obj2) { // from class: androidx.core.app.ActivityRecreator.3
                final Object val$activityThread;
                final Object val$token;

                {
                    this.val$activityThread = obj;
                    this.val$token = obj2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ActivityRecreator.performStopActivity3ParamsMethod != null) {
                            ActivityRecreator.performStopActivity3ParamsMethod.invoke(this.val$activityThread, this.val$token, false, NPStringFog.decode(new byte[]{35, 19, 20, 33, 13, 88, 18, 2, 16, 66, 16, 80, 1, 17, 1, 3, 22, 92, 13, 13}, "bcdbb5", true, true));
                        } else {
                            ActivityRecreator.performStopActivity2ParamsMethod.invoke(this.val$activityThread, this.val$token, false);
                        }
                    } catch (RuntimeException e) {
                        if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith(NPStringFog.decode(new byte[]{102, 8, 80, 86, 10, 82, 19, 18, 94, 20, 21, 67, 92, 22}, "3f14f7", 18338))) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        Log.e(NPStringFog.decode(new byte[]{115, 91, 67, 80, 69, 8, 70, 65, 101, 92, 80, 19, 87, 89, 67, 86, 65}, "28793a", true), NPStringFog.decode(new byte[]{116, 79, 85, 4, 64, 65, 88, 88, 88, 65, 71, 93, 88, 91, 83, 65, 89, 91, 71, 88, 93, 8, 94, 82, 17, 71, 83, 19, 86, 90, 67, 90, 101, 21, 95, 69, 112, 84, 66, 8, 70, 92, 69, 78}, "176a05", -1.958569137E9d), th);
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{114, 27, 84, 7, 64, 23, 94, 12, 89, 66, 71, 11, 94, 15, 82, 66, 86, 6, 67, 0, 95, 11, 94, 4, 23, 5, 94, 7, 92, 7, 23, 21, 86, 14, 69, 6, 68}, "7c7b0c", true), th);
            return false;
        }
    }

    static boolean recreate(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (needsRelaunchCall() && requestRelaunchActivityMethod == null) {
            return false;
        }
        if (performStopActivity2ParamsMethod == null && performStopActivity3ParamsMethod == null) {
            return false;
        }
        try {
            Object obj2 = tokenField.get(activity);
            if (obj2 != null && (obj = mainThreadField.get(activity)) != null) {
                Application application = activity.getApplication();
                LifecycleCheckCallbacks lifecycleCheckCallbacks = new LifecycleCheckCallbacks(activity);
                application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                Handler handler = mainHandler;
                handler.post(new Runnable(lifecycleCheckCallbacks, obj2) { // from class: androidx.core.app.ActivityRecreator.1
                    final LifecycleCheckCallbacks val$callbacks;
                    final Object val$token;

                    {
                        this.val$callbacks = lifecycleCheckCallbacks;
                        this.val$token = obj2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.val$callbacks.currentlyRecreatingToken = this.val$token;
                    }
                });
                try {
                    if (needsRelaunchCall()) {
                        requestRelaunchActivityMethod.invoke(obj, obj2, null, null, 0, false, null, null, false, false);
                    } else {
                        activity.recreate();
                    }
                    handler.post(new Runnable(application, lifecycleCheckCallbacks) { // from class: androidx.core.app.ActivityRecreator.2
                        final Application val$application;
                        final LifecycleCheckCallbacks val$callbacks;

                        {
                            this.val$application = application;
                            this.val$callbacks = lifecycleCheckCallbacks;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$application.unregisterActivityLifecycleCallbacks(this.val$callbacks);
                        }
                    });
                    return true;
                } catch (Throwable th) {
                    mainHandler.post(new Runnable(application, lifecycleCheckCallbacks) { // from class: androidx.core.app.ActivityRecreator.2
                        final Application val$application;
                        final LifecycleCheckCallbacks val$callbacks;

                        {
                            this.val$application = application;
                            this.val$callbacks = lifecycleCheckCallbacks;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$application.unregisterActivityLifecycleCallbacks(this.val$callbacks);
                        }
                    });
                    throw th;
                }
            }
            return false;
        } catch (Throwable th2) {
            return false;
        }
    }
}
