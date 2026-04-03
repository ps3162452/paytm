package com.google.android.material.color;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import com.google.android.material.R;
import com.google.android.material.color.DynamicColorsOptions;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class DynamicColors {
    private static final DeviceSupportCondition DEFAULT_DEVICE_SUPPORT_CONDITION;
    private static final Map<String, DeviceSupportCondition> DYNAMIC_COLOR_SUPPORTED_BRANDS;
    private static final Map<String, DeviceSupportCondition> DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS;
    private static final int[] DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE = {R.attr.dynamicColorThemeOverlay};
    private static final DeviceSupportCondition SAMSUNG_DEVICE_SUPPORT_CONDITION;
    private static final int USE_DEFAULT_THEME_OVERLAY = 0;

    private interface DeviceSupportCondition {
        boolean isSupported();
    }

    private static class DynamicColorsActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        private final DynamicColorsOptions dynamicColorsOptions;

        DynamicColorsActivityLifecycleCallbacks(DynamicColorsOptions dynamicColorsOptions) {
            this.dynamicColorsOptions = dynamicColorsOptions;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            DynamicColors.applyToActivityIfAvailable(activity, this.dynamicColorsOptions.getThemeOverlay(), this.dynamicColorsOptions.getPrecondition(), this.dynamicColorsOptions.getOnAppliedCallback());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public interface OnAppliedCallback {
        void onApplied(Activity activity);
    }

    public interface Precondition {
        boolean shouldApplyDynamicColors(Activity activity, int i);
    }

    static {
        DeviceSupportCondition deviceSupportCondition = new DeviceSupportCondition() { // from class: com.google.android.material.color.DynamicColors.1
            @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
            public boolean isSupported() {
                return true;
            }
        };
        DEFAULT_DEVICE_SUPPORT_CONDITION = deviceSupportCondition;
        DeviceSupportCondition deviceSupportCondition2 = new DeviceSupportCondition() { // from class: com.google.android.material.color.DynamicColors.2
            private Long version;

            @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
            public boolean isSupported() {
                if (this.version == null) {
                    try {
                        Method declaredMethod = Build.class.getDeclaredMethod(NPStringFog.decode(new byte[]{86, 1, 65, 125, 90, 88, 86}, "1d5156", -1.890383404E9d), String.class);
                        declaredMethod.setAccessible(true);
                        this.version = Long.valueOf(((Long) declaredMethod.invoke(null, NPStringFog.decode(new byte[]{22, 95, 25, 6, 71, 12, 8, 84, 25, 18, 87, 23, 23, 89, 88, 10, 28, 10, 10, 85, 66, 13}, "d07d2e", false, true))).longValue());
                    } catch (Exception e) {
                        this.version = -1L;
                    }
                }
                return this.version.longValue() >= 40100;
            }
        };
        SAMSUNG_DEVICE_SUPPORT_CONDITION = deviceSupportCondition2;
        HashMap map = new HashMap();
        map.put(NPStringFog.decode(new byte[]{5, 86, 88, 95, 10, 7}, "b978fb", false, false), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{88, 89, 2, 18, 6, 88, 95, 86, 7, 94}, "04f2a4", -1.669140594E9d), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{92, 12, 3, 95, 88, 88, 77}, "5be661", true), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{94, 87, 80, 81, 10, 12, 79, 25, 91, 87, 6, 12, 91, 80, 66, 65, 68, 9, 94, 84, 95, 76, 1, 1}, "7968de", true), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{91, 65, 6, 84}, "25c8bd", 2040), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{89, 24, 13, 85, 87, 23, 83}, "2ab62e", true), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{90, 82, 88, 12, 21, 87}, "676cc8", -1942953286L), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{14, 95, 3}, "b8f753", false), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{93, 10, 68, 87, 16, 12, 92, 4}, "0e08bc", true, false), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{8, 14, 17, 93, 81, 87, 1}, "fae589", -2.07133772E8d), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{12, 11, 82, 69, 90, 66, 16}, "ce7567", -359378823L), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{92, 68, 19, 10}, "34ce5b", 1.7578628E9f), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{68, 92, 84, 89, 11, 83}, "6955f6", 524955971L), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{71, 87, 87, 11, 93, 3, 86, 76, 71, 13, 82}, "585d1f", -22007), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{65, 2, 92, 22, 68, 12, 85}, "2c1e1b", -7.84322708E8d), deviceSupportCondition2);
        map.put(NPStringFog.decode(new byte[]{21, 88, 0, 65, 22}, "f0a3fb", true, true), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{23, 88, 87, 24}, "d79adc", -860), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{18, 5, 9}, "ffef8b", false), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{67, 0, 82, 90, 88}, "7e1471", 3.2069302E7f), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{21, 1, 80, 15, 9, 19, 12, 11, 81, 8, 10, 86, 65, 8, 90, 12, 15, 71, 4, 0}, "ad3af3", true), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{21, 89, 18, 88}, "c0d7ae", -8857), deviceSupportCondition);
        map.put(NPStringFog.decode(new byte[]{28, 90, 84, 12, 90, 15}, "d35c7f", -5.743623E8f), deviceSupportCondition);
        DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put(NPStringFog.decode(new byte[]{4, 75, 70, 65}, "e8324c", 1051599694L), deviceSupportCondition);
        map2.put(NPStringFog.decode(new byte[]{92, 13, 95}, "6d0139", 1.4522143E9f), deviceSupportCondition);
        DYNAMIC_COLOR_SUPPORTED_BRANDS = Collections.unmodifiableMap(map2);
    }

    private DynamicColors() {
    }

    @Deprecated
    public static void applyIfAvailable(Activity activity) {
        applyToActivityIfAvailable(activity);
    }

    @Deprecated
    public static void applyIfAvailable(Activity activity, int i) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyIfAvailable(Activity activity, Precondition precondition) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    public static void applyToActivitiesIfAvailable(Application application) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(Application application, int i) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(Application application, int i, Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).setPrecondition(precondition).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(Application application, Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    public static void applyToActivitiesIfAvailable(Application application, DynamicColorsOptions dynamicColorsOptions) {
        application.registerActivityLifecycleCallbacks(new DynamicColorsActivityLifecycleCallbacks(dynamicColorsOptions));
    }

    public static void applyToActivityIfAvailable(Activity activity) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void applyToActivityIfAvailable(Activity activity, int i, Precondition precondition, OnAppliedCallback onAppliedCallback) {
        if (isDynamicColorAvailable()) {
            if (i == 0) {
                i = getDefaultThemeOverlay(activity);
            }
            if (i == 0 || !precondition.shouldApplyDynamicColors(activity, i)) {
                return;
            }
            ThemeUtils.applyThemeOverlay(activity, i);
            onAppliedCallback.onApplied(activity);
        }
    }

    public static void applyToActivityIfAvailable(Activity activity, DynamicColorsOptions dynamicColorsOptions) {
        applyToActivityIfAvailable(activity, dynamicColorsOptions.getThemeOverlay(), dynamicColorsOptions.getPrecondition(), dynamicColorsOptions.getOnAppliedCallback());
    }

    private static int getDefaultThemeOverlay(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    public static boolean isDynamicColorAvailable() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        DeviceSupportCondition deviceSupportCondition = DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS.get(Build.MANUFACTURER.toLowerCase());
        if (deviceSupportCondition == null) {
            deviceSupportCondition = DYNAMIC_COLOR_SUPPORTED_BRANDS.get(Build.BRAND.toLowerCase());
        }
        return deviceSupportCondition != null && deviceSupportCondition.isSupported();
    }

    public static Context wrapContextIfAvailable(Context context) {
        return wrapContextIfAvailable(context, 0);
    }

    public static Context wrapContextIfAvailable(Context context, int i) {
        if (!isDynamicColorAvailable()) {
            return context;
        }
        if (i == 0) {
            i = getDefaultThemeOverlay(context);
        }
        return i != 0 ? new ContextThemeWrapper(context, i) : context;
    }
}
