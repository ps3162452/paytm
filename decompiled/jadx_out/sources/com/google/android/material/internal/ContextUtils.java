package com.google.android.material.internal;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes37.dex */
public class ContextUtils {
    public static Activity getActivity(Context context) {
        for (Context baseContext = context; baseContext instanceof ContextWrapper; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
        }
        return null;
    }
}
