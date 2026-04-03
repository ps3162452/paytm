package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutInflaterCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{124, 4, 26, 95, 64, 77, 121, 11, 5, 92, 84, 77, 85, 23, 32, 95, 88, 73, 81, 17, 43, 115}, "0ec059", -4.0519296E8f);
    private static boolean sCheckedField;
    private static Field sLayoutInflaterFactory2Field;

    static class Factory2Wrapper implements LayoutInflater.Factory2 {
        final LayoutInflaterFactory mDelegateFactory;

        Factory2Wrapper(LayoutInflaterFactory layoutInflaterFactory) {
            this.mDelegateFactory = layoutInflaterFactory;
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mDelegateFactory.onCreateView(view, str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mDelegateFactory.onCreateView(null, str, context, attributeSet);
        }

        public String toString() {
            return getClass().getName() + NPStringFog.decode(new byte[]{26}, "aa9168", false) + this.mDelegateFactory + NPStringFog.decode(new byte[]{73}, "4f90e1", -2646);
        }
    }

    private LayoutInflaterCompat() {
    }

    private static void forceSetFactory2(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!sCheckedField) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField(NPStringFog.decode(new byte[]{91, 39, 84, 87, 21, 13, 68, 24, 7}, "6a54ab", 1.461521092E9d));
                sLayoutInflaterFactory2Field = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{4, 88, 75, 6, 86, 107, 7, 67, 127, 4, 80, 76, 13, 69, 64, 87, 19, 123, 13, 66, 85, 1, 19, 86, 13, 67, 25, 3, 90, 86, 6, 23, 95, 12, 86, 84, 6, 23, 30, 8, 117, 89, 1, 67, 86, 23, 74, 10, 69, 23, 86, 11, 19, 91, 14, 86, 74, 22, 19}, "b79e38", 1719) + LayoutInflater.class.getName() + NPStringFog.decode(new byte[]{10, 22, 94, 86, 4, 89, 80, 66, 94, 87, 12, 21, 92, 87, 78, 24, 10, 84, 71, 83, 23, 77, 12, 80, 73, 70, 82, 91, 22, 80, 85, 22, 69, 93, 17, 64, 93, 66, 68, 22}, "1678b5", -7.0968297E8d), e);
            }
            sCheckedField = true;
        }
        Field field = sLayoutInflaterFactory2Field;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, NPStringFog.decode(new byte[]{81, 9, 66, 90, 1, 106, 82, 18, 118, 88, 7, 77, 88, 20, 73, 11, 68, 90, 88, 19, 92, 93, 68, 87, 88, 18, 16, 74, 1, 77, 23, 18, 88, 92, 68, 127, 86, 5, 68, 86, 22, 64, 5, 70, 95, 87, 68, 117, 86, 31, 95, 76, 16, 112, 89, 0, 92, 88, 16, 92, 69, 70}, "7f09d9", false) + layoutInflater + NPStringFog.decode(new byte[]{11, 16, 92, 92, 85, 92, 81, 68, 92, 93, 93, 16, 93, 81, 76, 18, 91, 81, 70, 85, 21, 71, 93, 85, 72, 64, 80, 81, 71, 85, 84, 16, 71, 87, 64, 69, 92, 68, 70, 28}, "005230", -4.93684001E8d), e2);
            }
        }
    }

    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof Factory2Wrapper) {
            return ((Factory2Wrapper) factory).mDelegateFactory;
        }
        return null;
    }

    @Deprecated
    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        if (Build.VERSION.SDK_INT >= 21) {
            layoutInflater.setFactory2(layoutInflaterFactory != null ? new Factory2Wrapper(layoutInflaterFactory) : null);
            return;
        }
        Factory2Wrapper factory2Wrapper = layoutInflaterFactory != null ? new Factory2Wrapper(layoutInflaterFactory) : null;
        layoutInflater.setFactory2(factory2Wrapper);
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater.Factory2) {
            forceSetFactory2(layoutInflater, (LayoutInflater.Factory2) factory);
        } else {
            forceSetFactory2(layoutInflater, factory2Wrapper);
        }
    }

    public static void setFactory2(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                forceSetFactory2(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                forceSetFactory2(layoutInflater, factory2);
            }
        }
    }
}
