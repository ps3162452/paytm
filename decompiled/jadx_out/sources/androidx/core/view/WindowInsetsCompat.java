package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.graphics.ColorUtils$$ExternalSyntheticBackport0;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class WindowInsetsCompat {
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = NPStringFog.decode(new byte[]{52, 11, 8, 80, 88, 70, 42, 12, 21, 81, 67, 66, 32, 13, 11, 68, 86, 69}, "cbf471", -476627774L);
    private final Impl mImpl;

    static class Api21ReflectionHolder {
        private static Field sContentInsets;
        private static boolean sReflectionSucceeded;
        private static Field sStableInsets;
        private static Field sViewAttachInfoField;

        static {
            try {
                Field declaredField = View.class.getDeclaredField(NPStringFog.decode(new byte[]{11, 35, 71, 69, 4, 90, 14, 43, 93, 87, 10}, "fb31e9", 8.549583E8f));
                sViewAttachInfoField = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{81, 10, 0, 74, 94, 89, 84, 74, 18, 81, 84, 71, 30, 50, 13, 93, 70, 20, 113, 16, 16, 89, 82, 88, 121, 10, 2, 87}, "0dd810", 621040688L));
                Field declaredField2 = cls.getDeclaredField(NPStringFog.decode(new byte[]{93, 100, 68, 84, 81, 93, 85, 126, 94, 70, 86, 69, 67}, "070531", 4.72867346E8d));
                sStableInsets = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField(NPStringFog.decode(new byte[]{91, 34, 12, 89, 22, 81, 88, 21, 42, 89, 17, 81, 66, 18}, "6ac7b4", 307610685L));
                sContentInsets = declaredField3;
                declaredField3.setAccessible(true);
                sReflectionSucceeded = true;
            } catch (ReflectiveOperationException e) {
                Log.w(NPStringFog.decode(new byte[]{97, 93, 13, 87, 12, 71, 127, 90, 16, 86, 23, 67, 117, 91, 14, 67, 2, 68}, "64c3c0", 299879568L), NPStringFog.decode(new byte[]{119, 82, 15, 8, 83, 6, 17, 71, 9, 68, 81, 7, 69, 19, 16, 13, 69, 11, 83, 95, 3, 68, 95, 12, 66, 86, 18, 23, 22, 4, 67, 92, 11, 68, 119, 22, 69, 82, 5, 12, 127, 12, 87, 92, 70}, "13fd6b", -2.141145254E9d) + e.getMessage(), e);
            }
        }

        private Api21ReflectionHolder() {
        }

        public static WindowInsetsCompat getRootWindowInsets(View view) {
            if (!sReflectionSucceeded || !view.isAttachedToWindow()) {
                return null;
            }
            try {
                Object obj = sViewAttachInfoField.get(view.getRootView());
                if (obj != null) {
                    Rect rect = (Rect) sStableInsets.get(obj);
                    Rect rect2 = (Rect) sContentInsets.get(obj);
                    if (rect != null && rect2 != null) {
                        WindowInsetsCompat windowInsetsCompatBuild = new Builder().setStableInsets(Insets.of(rect)).setSystemWindowInsets(Insets.of(rect2)).build();
                        windowInsetsCompatBuild.setRootWindowInsets(windowInsetsCompatBuild);
                        windowInsetsCompatBuild.copyRootViewBounds(view.getRootView());
                        return windowInsetsCompatBuild;
                    }
                }
            } catch (IllegalAccessException e) {
                Log.w(NPStringFog.decode(new byte[]{100, 11, 88, 87, 91, 21, 122, 12, 69, 86, 64, 17, 112, 13, 91, 67, 85, 22}, "3b634b", -2.2833958E8f), NPStringFog.decode(new byte[]{34, 0, 81, 90, 82, 87, 68, 21, 87, 22, 80, 86, 16, 65, 81, 88, 68, 86, 16, 18, 24, 80, 69, 92, 9, 65, 121, 66, 67, 82, 7, 9, 113, 88, 81, 92, 74, 65}, "da8673", -1.38342301E9d) + e.getMessage(), e);
            }
            return null;
        }
    }

    public static final class Builder {
        private final BuilderImpl mImpl;

        public Builder() {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mImpl = new BuilderImpl30();
                return;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.mImpl = new BuilderImpl29();
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.mImpl = new BuilderImpl20();
            } else {
                this.mImpl = new BuilderImpl();
            }
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mImpl = new BuilderImpl30(windowInsetsCompat);
                return;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.mImpl = new BuilderImpl29(windowInsetsCompat);
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.mImpl = new BuilderImpl20(windowInsetsCompat);
            } else {
                this.mImpl = new BuilderImpl(windowInsetsCompat);
            }
        }

        public WindowInsetsCompat build() {
            return this.mImpl.build();
        }

        public Builder setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
            this.mImpl.setDisplayCutout(displayCutoutCompat);
            return this;
        }

        public Builder setInsets(int i, Insets insets) {
            this.mImpl.setInsets(i, insets);
            return this;
        }

        public Builder setInsetsIgnoringVisibility(int i, Insets insets) {
            this.mImpl.setInsetsIgnoringVisibility(i, insets);
            return this;
        }

        @Deprecated
        public Builder setMandatorySystemGestureInsets(Insets insets) {
            this.mImpl.setMandatorySystemGestureInsets(insets);
            return this;
        }

        @Deprecated
        public Builder setStableInsets(Insets insets) {
            this.mImpl.setStableInsets(insets);
            return this;
        }

        @Deprecated
        public Builder setSystemGestureInsets(Insets insets) {
            this.mImpl.setSystemGestureInsets(insets);
            return this;
        }

        @Deprecated
        public Builder setSystemWindowInsets(Insets insets) {
            this.mImpl.setSystemWindowInsets(insets);
            return this;
        }

        @Deprecated
        public Builder setTappableElementInsets(Insets insets) {
            this.mImpl.setTappableElementInsets(insets);
            return this;
        }

        public Builder setVisible(int i, boolean z) {
            this.mImpl.setVisible(i, z);
            return this;
        }
    }

    private static class BuilderImpl {
        private final WindowInsetsCompat mInsets;
        Insets[] mInsetsTypeMask;

        BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        BuilderImpl(WindowInsetsCompat windowInsetsCompat) {
            this.mInsets = windowInsetsCompat;
        }

        protected final void applyInsetTypes() {
            Insets[] insetsArr = this.mInsetsTypeMask;
            if (insetsArr != null) {
                Insets insets = insetsArr[Type.indexOf(1)];
                Insets insets2 = this.mInsetsTypeMask[Type.indexOf(2)];
                if (insets2 == null) {
                    insets2 = this.mInsets.getInsets(2);
                }
                if (insets == null) {
                    insets = this.mInsets.getInsets(1);
                }
                setSystemWindowInsets(Insets.max(insets, insets2));
                Insets insets3 = this.mInsetsTypeMask[Type.indexOf(16)];
                if (insets3 != null) {
                    setSystemGestureInsets(insets3);
                }
                Insets insets4 = this.mInsetsTypeMask[Type.indexOf(32)];
                if (insets4 != null) {
                    setMandatorySystemGestureInsets(insets4);
                }
                Insets insets5 = this.mInsetsTypeMask[Type.indexOf(64)];
                if (insets5 != null) {
                    setTappableElementInsets(insets5);
                }
            }
        }

        WindowInsetsCompat build() {
            applyInsetTypes();
            return this.mInsets;
        }

        void setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
        }

        void setInsets(int i, Insets insets) {
            if (this.mInsetsTypeMask == null) {
                this.mInsetsTypeMask = new Insets[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.mInsetsTypeMask[Type.indexOf(i2)] = insets;
                }
            }
        }

        void setInsetsIgnoringVisibility(int i, Insets insets) {
            if (i == 8) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 6, 88, 11, 20, 95, 11, 6, 22, 18, 15, 69, 12, 3, 95, 8, 15, 66, 28, 65, 95, 10, 21, 83, 17, 65, 88, 11, 18, 22, 4, 23, 87, 13, 10, 87, 7, 13, 83, 68, 0, 89, 23, 65, 127, 41, 35}, "ea6df6", -1.16566364E8d));
            }
        }

        void setMandatorySystemGestureInsets(Insets insets) {
        }

        void setStableInsets(Insets insets) {
        }

        void setSystemGestureInsets(Insets insets) {
        }

        void setSystemWindowInsets(Insets insets) {
        }

        void setTappableElementInsets(Insets insets) {
        }

        void setVisible(int i, boolean z) {
        }
    }

    private static class BuilderImpl20 extends BuilderImpl {
        private static Constructor<WindowInsets> sConstructor;
        private static Field sConsumedField;
        private WindowInsets mPlatformInsets;
        private Insets mStableInsets;
        private static boolean sConsumedFieldFetched = false;
        private static boolean sConstructorFetched = false;

        BuilderImpl20() {
            this.mPlatformInsets = createWindowInsetsInstance();
        }

        BuilderImpl20(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.mPlatformInsets = windowInsetsCompat.toWindowInsets();
        }

        private static WindowInsets createWindowInsetsInstance() {
            if (!sConsumedFieldFetched) {
                try {
                    sConsumedField = WindowInsets.class.getDeclaredField(NPStringFog.decode(new byte[]{37, 44, 124, 53, 103, 46, 35, 39}, "fc2f2c", -9.54802991E8d));
                } catch (ReflectiveOperationException e) {
                    Log.i(NPStringFog.decode(new byte[]{49, 95, 15, 81, 10, 21, 47, 88, 18, 80, 17, 17, 37, 89, 12, 69, 4, 22}, "f6a5eb", false, false), NPStringFog.decode(new byte[]{119, 87, 71, 94, 84, 17, 90, 87, 70, 18, 66, 84, 64, 74, 91, 87, 70, 84, 20, 111, 91, 92, 84, 94, 67, 113, 92, 65, 85, 69, 71, 22, 113, 125, 126, 98, 97, 117, 119, 118, 16, 87, 93, 93, 94, 86}, "482201", 13844), e);
                }
                sConsumedFieldFetched = true;
            }
            Field field = sConsumedField;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i(NPStringFog.decode(new byte[]{100, 15, 91, 86, 95, 20, 122, 8, 70, 87, 68, 16, 112, 9, 88, 66, 81, 23}, "3f520c", -3.4359898E8f), NPStringFog.decode(new byte[]{37, 87, 16, 10, 2, 67, 8, 87, 17, 70, 1, 6, 18, 24, 19, 7, 10, 22, 3, 24, 3, 20, 9, 14, 70, 111, 12, 8, 2, 12, 17, 113, 11, 21, 3, 23, 21, 22, 38, 41, 40, 48, 51, 117, 32, 34, 70, 5, 15, 93, 9, 2}, "f8effc", 27409), e2);
                }
            }
            if (!sConstructorFetched) {
                try {
                    sConstructor = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i(NPStringFog.decode(new byte[]{51, 15, 13, 82, 14, 20, 45, 8, 16, 83, 21, 16, 39, 9, 14, 70, 0, 23}, "dfc6ac", 15128), NPStringFog.decode(new byte[]{113, 91, 69, 15, 86, 24, 92, 91, 68, 67, 64, 93, 70, 70, 89, 6, 68, 93, 18, 99, 89, 13, 86, 87, 69, 125, 94, 16, 87, 76, 65, 28, 98, 6, 81, 76, 27, 20, 83, 12, 92, 75, 70, 70, 69, 0, 70, 87, 64}, "240c28", 26129), e3);
                }
                sConstructorFetched = true;
            }
            Constructor<WindowInsets> constructor = sConstructor;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i(NPStringFog.decode(new byte[]{101, 88, 89, 83, 87, 22, 123, 95, 68, 82, 76, 18, 113, 94, 90, 71, 89, 21}, "21778a", -1.1743848E9f), NPStringFog.decode(new byte[]{114, 88, 68, 91, 84, 19, 95, 88, 69, 23, 89, 93, 71, 88, 90, 82, 16, 100, 88, 89, 85, 88, 71, 122, 95, 68, 84, 67, 67, 27, 99, 82, 82, 67, 25, 19, 82, 88, 95, 68, 68, 65, 68, 84, 69, 88, 66}, "171703", true), e4);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        WindowInsetsCompat build() {
            applyInsetTypes();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets);
            windowInsetsCompat.setOverriddenInsets(this.mInsetsTypeMask);
            windowInsetsCompat.setStableInsets(this.mStableInsets);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setStableInsets(Insets insets) {
            this.mStableInsets = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setSystemWindowInsets(Insets insets) {
            WindowInsets windowInsets = this.mPlatformInsets;
            if (windowInsets != null) {
                this.mPlatformInsets = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
            }
        }
    }

    private static class BuilderImpl29 extends BuilderImpl {
        final WindowInsets.Builder mPlatBuilder;

        BuilderImpl29() {
            this.mPlatBuilder = new WindowInsets.Builder();
        }

        BuilderImpl29(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            this.mPlatBuilder = windowInsets != null ? new WindowInsets.Builder(windowInsets) : new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        WindowInsetsCompat build() {
            applyInsetTypes();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.mPlatBuilder.build());
            windowInsetsCompat.setOverriddenInsets(this.mInsetsTypeMask);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
            this.mPlatBuilder.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.unwrap() : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setMandatorySystemGestureInsets(Insets insets) {
            this.mPlatBuilder.setMandatorySystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setStableInsets(Insets insets) {
            this.mPlatBuilder.setStableInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setSystemGestureInsets(Insets insets) {
            this.mPlatBuilder.setSystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setSystemWindowInsets(Insets insets) {
            this.mPlatBuilder.setSystemWindowInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setTappableElementInsets(Insets insets) {
            this.mPlatBuilder.setTappableElementInsets(insets.toPlatformInsets());
        }
    }

    private static class BuilderImpl30 extends BuilderImpl29 {
        BuilderImpl30() {
        }

        BuilderImpl30(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setInsets(int i, Insets insets) {
            this.mPlatBuilder.setInsets(TypeImpl30.toPlatformType(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setInsetsIgnoringVisibility(int i, Insets insets) {
            this.mPlatBuilder.setInsetsIgnoringVisibility(TypeImpl30.toPlatformType(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void setVisible(int i, boolean z) {
            this.mPlatBuilder.setVisible(TypeImpl30.toPlatformType(i), z);
        }
    }

    private static class Impl {
        static final WindowInsetsCompat CONSUMED = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();
        final WindowInsetsCompat mHost;

        Impl(WindowInsetsCompat windowInsetsCompat) {
            this.mHost = windowInsetsCompat;
        }

        WindowInsetsCompat consumeDisplayCutout() {
            return this.mHost;
        }

        WindowInsetsCompat consumeStableInsets() {
            return this.mHost;
        }

        WindowInsetsCompat consumeSystemWindowInsets() {
            return this.mHost;
        }

        void copyRootViewBounds(View view) {
        }

        void copyWindowDataInto(WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            return isRound() == impl.isRound() && isConsumed() == impl.isConsumed() && ObjectsCompat.equals(getSystemWindowInsets(), impl.getSystemWindowInsets()) && ObjectsCompat.equals(getStableInsets(), impl.getStableInsets()) && ObjectsCompat.equals(getDisplayCutout(), impl.getDisplayCutout());
        }

        DisplayCutoutCompat getDisplayCutout() {
            return null;
        }

        Insets getInsets(int i) {
            return Insets.NONE;
        }

        Insets getInsetsIgnoringVisibility(int i) {
            if ((i & 8) == 0) {
                return Insets.NONE;
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 8, 84, 83, 14, 86, 16, 18, 90, 17, 19, 70, 85, 20, 76, 17, 22, 91, 85, 70, 88, 80, 26, 90, 93, 19, 88, 17, 11, 93, 67, 3, 65, 66, 66, 85, 95, 20, 21, 120, 47, 118}, "0f51b3", -21352));
        }

        Insets getMandatorySystemGestureInsets() {
            return getSystemWindowInsets();
        }

        Insets getStableInsets() {
            return Insets.NONE;
        }

        Insets getSystemGestureInsets() {
            return getSystemWindowInsets();
        }

        Insets getSystemWindowInsets() {
            return Insets.NONE;
        }

        Insets getTappableElementInsets() {
            return getSystemWindowInsets();
        }

        public int hashCode() {
            return ObjectsCompat.hash(Boolean.valueOf(isRound()), Boolean.valueOf(isConsumed()), getSystemWindowInsets(), getStableInsets(), getDisplayCutout());
        }

        WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            return CONSUMED;
        }

        boolean isConsumed() {
            return false;
        }

        boolean isRound() {
            return false;
        }

        boolean isVisible(int i) {
            return true;
        }

        public void setOverriddenInsets(Insets[] insetsArr) {
        }

        void setRootViewData(Insets insets) {
        }

        void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        }

        public void setStableInsets(Insets insets) {
        }
    }

    private static class Impl20 extends Impl {
        private static Class<?> sAttachInfoClass;
        private static Field sAttachInfoField;
        private static Method sGetViewRootImplMethod;
        private static Field sVisibleInsetsField;
        private static boolean sVisibleRectReflectionFetched = false;
        private Insets[] mOverriddenInsets;
        final WindowInsets mPlatformInsets;
        Insets mRootViewVisibleInsets;
        private WindowInsetsCompat mRootWindowInsets;
        private Insets mSystemWindowInsets;

        Impl20(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.mSystemWindowInsets = null;
            this.mPlatformInsets = windowInsets;
        }

        Impl20(WindowInsetsCompat windowInsetsCompat, Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.mPlatformInsets));
        }

        private Insets getInsets(int i, boolean z) {
            Insets insetsMax = Insets.NONE;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    insetsMax = Insets.max(insetsMax, getInsetsForType(i2, z));
                }
            }
            return insetsMax;
        }

        private Insets getRootStableInsets() {
            WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
            return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : Insets.NONE;
        }

        private Insets getVisibleInsets(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{94, 1, 69, 103, 8, 65, 80, 6, 93, 84, 40, 92, 74, 1, 69, 66, 73, 27, 25, 23, 89, 94, 20, 94, 93, 68, 95, 94, 21, 18, 91, 1, 17, 82, 0, 94, 85, 1, 85, 17, 14, 92, 25, 37, 97, 120, 65, 12, 4, 68, 2, 1, 79, 18, 108, 23, 84, 17, 54, 91, 87, 0, 94, 70, 40, 92, 74, 1, 69, 66, 79, 91, 74, 50, 88, 66, 8, 80, 85, 1, 25, 24, 65, 91, 87, 23, 69, 84, 0, 86, 23}, "9d11a2", false));
            }
            if (!sVisibleRectReflectionFetched) {
                loadReflectionField();
            }
            Method method = sGetViewRootImplMethod;
            if (method == null || sAttachInfoClass == null || sVisibleInsetsField == null) {
                return null;
            }
            try {
                Object objInvoke = method.invoke(view, new Object[0]);
                if (objInvoke == null) {
                    Log.w(NPStringFog.decode(new byte[]{100, 8, 12, 86, 89, 70, 122, 15, 17, 87, 66, 66, 112, 14, 15, 66, 87, 69}, "3ab261", true, true), NPStringFog.decode(new byte[]{115, 83, 90, 10, 6, 84, 21, 70, 92, 70, 4, 85, 65, 18, 69, 15, 16, 89, 87, 94, 86, 70, 10, 94, 70, 87, 71, 21, 77, 16, 82, 87, 71, 48, 10, 85, 66, 96, 92, 9, 23, 121, 88, 66, 95, 78, 74, 16, 71, 87, 71, 19, 17, 94, 80, 86, 19, 8, 22, 92, 89, 18, 85, 20, 12, 93, 21, 70, 91, 3, 67, 64, 71, 93, 69, 15, 7, 85, 81, 18, 69, 15, 6, 71, 27, 18, 103, 14, 10, 67, 21, 95, 86, 7, 13, 67, 21, 70, 91, 7, 23, 16, 65, 90, 86, 70, 21, 89, 80, 69, 19, 15, 16, 16, 80, 91, 71, 14, 6, 66, 21, 92, 92, 18, 67, 81, 65, 70, 82, 5, 11, 85, 81, 18, 92, 20, 67, 68, 93, 87, 19, 11, 6, 68, 93, 93, 87, 70, 11, 81, 70, 18, 81, 3, 6, 94, 21, 93, 69, 3, 17, 66, 92, 86, 87, 3, 13}, "523fc0", -1.1717347E9f), new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) sVisibleInsetsField.get(sAttachInfoField.get(objInvoke));
                return rect != null ? Insets.of(rect) : null;
            } catch (ReflectiveOperationException e) {
                Log.e(NPStringFog.decode(new byte[]{53, 95, 93, 85, 89, 20, 43, 88, 64, 84, 66, 16, 33, 89, 94, 65, 87, 23}, "b6316c", 22930), NPStringFog.decode(new byte[]{115, 85, 8, 85, 6, 92, 21, 64, 14, 25, 4, 93, 65, 20, 23, 80, 16, 81, 87, 88, 4, 25, 10, 86, 70, 81, 21, 74, 77, 24, 29, 102, 4, 95, 15, 93, 86, 64, 8, 86, 13, 24, 80, 70, 19, 86, 17, 17, 27, 20}, "54a9c8", -7.873591E8f) + e.getMessage(), e);
                return null;
            }
        }

        private static void loadReflectionField() {
            try {
                sGetViewRootImplMethod = View.class.getDeclaredMethod(NPStringFog.decode(new byte[]{81, 93, 70, 102, 90, 1, 65, 106, 93, 95, 71, 45, 91, 72, 94}, "68203d", -7.54433083E8d), new Class[0]);
                Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{80, 89, 6, 19, 14, 90, 85, 25, 20, 8, 4, 68, 31, 97, 11, 4, 22, 23, 112, 67, 22, 0, 2, 91, 120, 89, 4, 14}, "17baa3", -2036));
                sAttachInfoClass = cls;
                sVisibleInsetsField = cls.getDeclaredField(NPStringFog.decode(new byte[]{93, 102, 94, 64, 15, 7, 92, 85, 126, 93, 21, 0, 68, 67}, "0073fe", true));
                sAttachInfoField = Class.forName(NPStringFog.decode(new byte[]{7, 91, 7, 66, 95, 95, 2, 27, 21, 89, 85, 65, 72, 99, 10, 85, 71, 100, 9, 90, 23, 121, 93, 70, 10}, "f5c006", 1.2650669E9f)).getDeclaredField(NPStringFog.decode(new byte[]{14, 121, 66, 64, 7, 2, 11, 113, 88, 82, 9}, "c864fa", 24359));
                sVisibleInsetsField.setAccessible(true);
                sAttachInfoField.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e(NPStringFog.decode(new byte[]{110, 91, 92, 85, 92, 78, 112, 92, 65, 84, 71, 74, 122, 93, 95, 65, 82, 77}, "922139", -4237), NPStringFog.decode(new byte[]{118, 89, 92, 90, 80, 86, 16, 76, 90, 22, 82, 87, 68, 24, 67, 95, 70, 91, 82, 84, 80, 22, 92, 92, 67, 93, 65, 69, 27, 18, 24, 106, 80, 80, 89, 87, 83, 76, 92, 89, 91, 18, 85, 74, 71, 89, 71, 27, 30, 24}, "085652", false, true) + e.getMessage(), e);
            }
            sVisibleRectReflectionFetched = true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void copyRootViewBounds(View view) {
            Insets visibleInsets = getVisibleInsets(view);
            if (visibleInsets == null) {
                visibleInsets = Insets.NONE;
            }
            setRootViewData(visibleInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void copyWindowDataInto(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.setRootWindowInsets(this.mRootWindowInsets);
            windowInsetsCompat.setRootViewData(this.mRootViewVisibleInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return ColorUtils$$ExternalSyntheticBackport0.m(this.mRootViewVisibleInsets, ((Impl20) obj).mRootViewVisibleInsets);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets getInsets(int i) {
            return getInsets(i, false);
        }

        protected Insets getInsetsForType(int i, boolean z) {
            Insets stableInsets;
            switch (i) {
                case 1:
                    return z ? Insets.of(0, Math.max(getRootStableInsets().top, getSystemWindowInsets().top), 0, 0) : Insets.of(0, getSystemWindowInsets().top, 0, 0);
                case 2:
                    if (z) {
                        Insets rootStableInsets = getRootStableInsets();
                        Insets stableInsets2 = getStableInsets();
                        return Insets.of(Math.max(rootStableInsets.left, stableInsets2.left), 0, Math.max(rootStableInsets.right, stableInsets2.right), Math.max(rootStableInsets.bottom, stableInsets2.bottom));
                    }
                    Insets systemWindowInsets = getSystemWindowInsets();
                    WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
                    stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                    int i2 = systemWindowInsets.bottom;
                    return Insets.of(systemWindowInsets.left, 0, systemWindowInsets.right, stableInsets != null ? Math.min(i2, stableInsets.bottom) : i2);
                case 8:
                    Insets[] insetsArr = this.mOverriddenInsets;
                    stableInsets = insetsArr != null ? insetsArr[Type.indexOf(8)] : null;
                    if (stableInsets != null) {
                        return stableInsets;
                    }
                    Insets systemWindowInsets2 = getSystemWindowInsets();
                    Insets rootStableInsets2 = getRootStableInsets();
                    if (systemWindowInsets2.bottom > rootStableInsets2.bottom) {
                        return Insets.of(0, 0, 0, systemWindowInsets2.bottom);
                    }
                    Insets insets = this.mRootViewVisibleInsets;
                    return (insets == null || insets.equals(Insets.NONE) || this.mRootViewVisibleInsets.bottom <= rootStableInsets2.bottom) ? Insets.NONE : Insets.of(0, 0, 0, this.mRootViewVisibleInsets.bottom);
                case 16:
                    return getSystemGestureInsets();
                case 32:
                    return getMandatorySystemGestureInsets();
                case 64:
                    return getTappableElementInsets();
                case 128:
                    WindowInsetsCompat windowInsetsCompat2 = this.mRootWindowInsets;
                    DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : getDisplayCutout();
                    return displayCutout != null ? Insets.of(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : Insets.NONE;
                default:
                    return Insets.NONE;
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets getInsetsIgnoringVisibility(int i) {
            return getInsets(i, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        final Insets getSystemWindowInsets() {
            if (this.mSystemWindowInsets == null) {
                this.mSystemWindowInsets = Insets.of(this.mPlatformInsets.getSystemWindowInsetLeft(), this.mPlatformInsets.getSystemWindowInsetTop(), this.mPlatformInsets.getSystemWindowInsetRight(), this.mPlatformInsets.getSystemWindowInsetBottom());
            }
            return this.mSystemWindowInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets));
            builder.setSystemWindowInsets(WindowInsetsCompat.insetInsets(getSystemWindowInsets(), i, i2, i3, i4));
            builder.setStableInsets(WindowInsetsCompat.insetInsets(getStableInsets(), i, i2, i3, i4));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean isRound() {
            return this.mPlatformInsets.isRound();
        }

        protected boolean isTypeVisible(int i) {
            switch (i) {
                case 1:
                case 2:
                case 8:
                case 128:
                    return !getInsetsForType(i, false).equals(Insets.NONE);
                case 4:
                    return false;
                default:
                    return true;
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean isVisible(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0 && !isTypeVisible(i2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void setOverriddenInsets(Insets[] insetsArr) {
            this.mOverriddenInsets = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void setRootViewData(Insets insets) {
            this.mRootViewVisibleInsets = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
            this.mRootWindowInsets = windowInsetsCompat;
        }
    }

    private static class Impl21 extends Impl20 {
        private Insets mStableInsets;

        Impl21(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.mStableInsets = null;
        }

        Impl21(WindowInsetsCompat windowInsetsCompat, Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.mStableInsets = null;
            this.mStableInsets = impl21.mStableInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        WindowInsetsCompat consumeStableInsets() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        WindowInsetsCompat consumeSystemWindowInsets() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        final Insets getStableInsets() {
            if (this.mStableInsets == null) {
                this.mStableInsets = Insets.of(this.mPlatformInsets.getStableInsetLeft(), this.mPlatformInsets.getStableInsetTop(), this.mPlatformInsets.getStableInsetRight(), this.mPlatformInsets.getStableInsetBottom());
            }
            return this.mStableInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean isConsumed() {
            return this.mPlatformInsets.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void setStableInsets(Insets insets) {
            this.mStableInsets = insets;
        }
    }

    private static class Impl28 extends Impl21 {
        Impl28(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        Impl28(WindowInsetsCompat windowInsetsCompat, Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        WindowInsetsCompat consumeDisplayCutout() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            return ColorUtils$$ExternalSyntheticBackport0.m(this.mPlatformInsets, impl28.mPlatformInsets) && ColorUtils$$ExternalSyntheticBackport0.m(this.mRootViewVisibleInsets, impl28.mRootViewVisibleInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        DisplayCutoutCompat getDisplayCutout() {
            return DisplayCutoutCompat.wrap(this.mPlatformInsets.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.mPlatformInsets.hashCode();
        }
    }

    private static class Impl29 extends Impl28 {
        private Insets mMandatorySystemGestureInsets;
        private Insets mSystemGestureInsets;
        private Insets mTappableElementInsets;

        Impl29(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.mSystemGestureInsets = null;
            this.mMandatorySystemGestureInsets = null;
            this.mTappableElementInsets = null;
        }

        Impl29(WindowInsetsCompat windowInsetsCompat, Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.mSystemGestureInsets = null;
            this.mMandatorySystemGestureInsets = null;
            this.mTappableElementInsets = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        Insets getMandatorySystemGestureInsets() {
            if (this.mMandatorySystemGestureInsets == null) {
                this.mMandatorySystemGestureInsets = Insets.toCompatInsets(this.mPlatformInsets.getMandatorySystemGestureInsets());
            }
            return this.mMandatorySystemGestureInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        Insets getSystemGestureInsets() {
            if (this.mSystemGestureInsets == null) {
                this.mSystemGestureInsets = Insets.toCompatInsets(this.mPlatformInsets.getSystemGestureInsets());
            }
            return this.mSystemGestureInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        Insets getTappableElementInsets() {
            if (this.mTappableElementInsets == null) {
                this.mTappableElementInsets = Insets.toCompatInsets(this.mPlatformInsets.getTappableElementInsets());
            }
            return this.mTappableElementInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public void setStableInsets(Insets insets) {
        }
    }

    private static class Impl30 extends Impl29 {
        static final WindowInsetsCompat CONSUMED = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        Impl30(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        Impl30(WindowInsetsCompat windowInsetsCompat, Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        final void copyRootViewBounds(View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets getInsets(int i) {
            return Insets.toCompatInsets(this.mPlatformInsets.getInsets(TypeImpl30.toPlatformType(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets getInsetsIgnoringVisibility(int i) {
            return Insets.toCompatInsets(this.mPlatformInsets.getInsetsIgnoringVisibility(TypeImpl30.toPlatformType(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean isVisible(int i) {
            return this.mPlatformInsets.isVisible(TypeImpl30.toPlatformType(i));
        }
    }

    public static final class Type {
        static final int CAPTION_BAR = 4;
        static final int DISPLAY_CUTOUT = 128;
        static final int FIRST = 1;
        static final int IME = 8;
        static final int LAST = 256;
        static final int MANDATORY_SYSTEM_GESTURES = 32;
        static final int NAVIGATION_BARS = 2;
        static final int SIZE = 9;
        static final int STATUS_BARS = 1;
        static final int SYSTEM_GESTURES = 16;
        static final int TAPPABLE_ELEMENT = 64;
        static final int WINDOW_DECOR = 256;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsType {
        }

        private Type() {
        }

        static int all() {
            return -1;
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        static int indexOf(int i) {
            switch (i) {
                case 1:
                    return 0;
                case 2:
                    return 1;
                case 4:
                    return 2;
                case 8:
                    return 3;
                case 16:
                    return 4;
                case 32:
                    return 5;
                case 64:
                    return 6;
                case 128:
                    return 7;
                case 256:
                    return 8;
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{68, 31, 20, 87, 18, 13, 85, 3, 0, 65, 18, 23, 95, 70, 6, 87, 18, 93, 13, 70, 34, 123, 96, 48, 100, 70, 5, 92, 86, 67, 12, 91, 68, 126, 115, 48, 100, 74, 68, 70, 75, 19, 85, 91}, "0fd22c", -628710652L) + i);
            }
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 7;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    private static final class TypeImpl30 {
        private TypeImpl30() {
        }

        static int toPlatformType(int i) {
            int iStatusBars = 0;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    switch (i2) {
                        case 1:
                            iStatusBars |= WindowInsets.Type.statusBars();
                            break;
                        case 2:
                            iStatusBars |= WindowInsets.Type.navigationBars();
                            break;
                        case 4:
                            iStatusBars |= WindowInsets.Type.captionBar();
                            break;
                        case 8:
                            iStatusBars |= WindowInsets.Type.ime();
                            break;
                        case 16:
                            iStatusBars |= WindowInsets.Type.systemGestures();
                            break;
                        case 32:
                            iStatusBars |= WindowInsets.Type.mandatorySystemGestures();
                            break;
                        case 64:
                            iStatusBars |= WindowInsets.Type.tappableElement();
                            break;
                        case 128:
                            iStatusBars |= WindowInsets.Type.displayCutout();
                            break;
                    }
                }
            }
            return iStatusBars;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = Impl30.CONSUMED;
        } else {
            CONSUMED = Impl.CONSUMED;
        }
    }

    private WindowInsetsCompat(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(this, windowInsets);
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mImpl = new Impl29(this, windowInsets);
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.mImpl = new Impl28(this, windowInsets);
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.mImpl = new Impl21(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.mImpl = new Impl20(this, windowInsets);
        } else {
            this.mImpl = new Impl(this);
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            this.mImpl = new Impl(this);
            return;
        }
        Impl impl = windowInsetsCompat.mImpl;
        if (Build.VERSION.SDK_INT >= 30 && (impl instanceof Impl30)) {
            this.mImpl = new Impl30(this, (Impl30) impl);
        } else if (Build.VERSION.SDK_INT >= 29 && (impl instanceof Impl29)) {
            this.mImpl = new Impl29(this, (Impl29) impl);
        } else if (Build.VERSION.SDK_INT >= 28 && (impl instanceof Impl28)) {
            this.mImpl = new Impl28(this, (Impl28) impl);
        } else if (Build.VERSION.SDK_INT >= 21 && (impl instanceof Impl21)) {
            this.mImpl = new Impl21(this, (Impl21) impl);
        } else if (Build.VERSION.SDK_INT < 20 || !(impl instanceof Impl20)) {
            this.mImpl = new Impl(this);
        } else {
            this.mImpl = new Impl20(this, (Impl20) impl);
        }
        impl.copyWindowDataInto(this);
    }

    static Insets insetInsets(Insets insets, int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, insets.left - i);
        int iMax2 = Math.max(0, insets.top - i2);
        int iMax3 = Math.max(0, insets.right - i3);
        int iMax4 = Math.max(0, insets.bottom - i4);
        return (iMax == i && iMax2 == i2 && iMax3 == i3 && iMax4 == i4) ? insets : Insets.of(iMax, iMax2, iMax3, iMax4);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets, View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.checkNotNull(windowInsets));
        if (view != null && ViewCompat.isAttachedToWindow(view)) {
            windowInsetsCompat.setRootWindowInsets(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mImpl.consumeDisplayCutout();
    }

    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.mImpl.consumeStableInsets();
    }

    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mImpl.consumeSystemWindowInsets();
    }

    void copyRootViewBounds(View view) {
        this.mImpl.copyRootViewBounds(view);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.equals(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    public DisplayCutoutCompat getDisplayCutout() {
        return this.mImpl.getDisplayCutout();
    }

    public Insets getInsets(int i) {
        return this.mImpl.getInsets(i);
    }

    public Insets getInsetsIgnoringVisibility(int i) {
        return this.mImpl.getInsetsIgnoringVisibility(i);
    }

    @Deprecated
    public Insets getMandatorySystemGestureInsets() {
        return this.mImpl.getMandatorySystemGestureInsets();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.mImpl.getStableInsets().bottom;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.mImpl.getStableInsets().left;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.mImpl.getStableInsets().right;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.mImpl.getStableInsets().top;
    }

    @Deprecated
    public Insets getStableInsets() {
        return this.mImpl.getStableInsets();
    }

    @Deprecated
    public Insets getSystemGestureInsets() {
        return this.mImpl.getSystemGestureInsets();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.mImpl.getSystemWindowInsets().bottom;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.mImpl.getSystemWindowInsets().left;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.mImpl.getSystemWindowInsets().right;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.mImpl.getSystemWindowInsets().top;
    }

    @Deprecated
    public Insets getSystemWindowInsets() {
        return this.mImpl.getSystemWindowInsets();
    }

    @Deprecated
    public Insets getTappableElementInsets() {
        return this.mImpl.getTappableElementInsets();
    }

    public boolean hasInsets() {
        return (getInsets(Type.all()).equals(Insets.NONE) && getInsetsIgnoringVisibility(Type.all() ^ Type.ime()).equals(Insets.NONE) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.mImpl.getStableInsets().equals(Insets.NONE);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.mImpl.getSystemWindowInsets().equals(Insets.NONE);
    }

    public int hashCode() {
        Impl impl = this.mImpl;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    public WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
        return this.mImpl.inset(i, i2, i3, i4);
    }

    public WindowInsetsCompat inset(Insets insets) {
        return inset(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean isConsumed() {
        return this.mImpl.isConsumed();
    }

    public boolean isRound() {
        return this.mImpl.isRound();
    }

    public boolean isVisible(int i) {
        return this.mImpl.isVisible(i);
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        return new Builder(this).setSystemWindowInsets(Insets.of(i, i2, i3, i4)).build();
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new Builder(this).setSystemWindowInsets(Insets.of(rect)).build();
    }

    void setOverriddenInsets(Insets[] insetsArr) {
        this.mImpl.setOverriddenInsets(insetsArr);
    }

    void setRootViewData(Insets insets) {
        this.mImpl.setRootViewData(insets);
    }

    void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.setRootWindowInsets(windowInsetsCompat);
    }

    void setStableInsets(Insets insets) {
        this.mImpl.setStableInsets(insets);
    }

    public WindowInsets toWindowInsets() {
        Impl impl = this.mImpl;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).mPlatformInsets;
        }
        return null;
    }
}
