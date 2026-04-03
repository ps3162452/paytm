package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes3.dex */
final class ImmLeaksCleaner implements LifecycleEventObserver {
    private static final int INIT_FAILED = 2;
    private static final int INIT_SUCCESS = 1;
    private static final int NOT_INITIALIAZED = 0;
    private static Field sHField;
    private static Field sNextServedViewField;
    private static int sReflectedFieldsInitialized = 0;
    private static Field sServedViewField;
    private Activity mActivity;

    ImmLeaksCleaner(Activity activity) {
        this.mActivity = activity;
    }

    private static void initializeReflectiveFields() {
        try {
            sReflectedFieldsInitialized = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField(NPStringFog.decode(new byte[]{12, 55, 4, 20, 70, 7, 5, 50, 8, 3, 71}, "adaf0b", false, false));
            sServedViewField = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField(NPStringFog.decode(new byte[]{85, 122, 7, 79, 21, 48, 93, 70, 20, 82, 5, 53, 81, 81, 21}, "84b7ac", 1322688995L));
            sNextServedViewField = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField(NPStringFog.decode(new byte[]{15, 113}, "b9f957", -9.982904E8f));
            sHField = declaredField3;
            declaredField3.setAccessible(true);
            sReflectedFieldsInitialized = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        if (sReflectedFieldsInitialized == 0) {
            initializeReflectiveFields();
        }
        if (sReflectedFieldsInitialized == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.mActivity.getSystemService(NPStringFog.decode(new byte[]{92, 88, 21, 69, 71, 59, 88, 83, 17, 88, 92, 0}, "56e03d", 9.3237696E8f));
            try {
                Object obj = sHField.get(inputMethodManager);
                if (obj != null) {
                    synchronized (obj) {
                        try {
                            View view = (View) sServedViewField.get(inputMethodManager);
                            if (view != null) {
                                if (!view.isAttachedToWindow()) {
                                    try {
                                        sNextServedViewField.set(inputMethodManager, null);
                                        inputMethodManager.isActive();
                                    } catch (IllegalAccessException e) {
                                    }
                                }
                            }
                        } catch (ClassCastException e2) {
                        } catch (IllegalAccessException e3) {
                        }
                    }
                }
            } catch (IllegalAccessException e4) {
            }
        }
    }
}
