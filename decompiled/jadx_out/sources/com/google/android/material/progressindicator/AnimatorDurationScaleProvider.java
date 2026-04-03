package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class AnimatorDurationScaleProvider {
    private static float defaultSystemAnimatorDurationScale = 1.0f;

    public static void setDefaultSystemAnimatorDurationScale(float f) {
        defaultSystemAnimatorDurationScale = f;
    }

    public float getSystemAnimatorDurationScale(ContentResolver contentResolver) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(contentResolver, NPStringFog.decode(new byte[]{88, 15, 15, 11, 83, 67, 86, 19, 57, 2, 71, 69, 88, 21, 15, 9, 92, 104, 74, 2, 7, 10, 87}, "9aff27", -24427), 1.0f) : Build.VERSION.SDK_INT == 16 ? Settings.System.getFloat(contentResolver, NPStringFog.decode(new byte[]{4, 10, 95, 11, 0, 17, 10, 22, 105, 2, 20, 23, 4, 16, 95, 9, 15, 58, 22, 7, 87, 10, 4}, "ed6fae", false, false), 1.0f) : defaultSystemAnimatorDurationScale;
    }
}
