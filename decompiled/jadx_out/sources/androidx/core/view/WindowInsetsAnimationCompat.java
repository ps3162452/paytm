package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.core.R;
import androidx.core.graphics.ColorUtils$$ExternalSyntheticBackport0;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = NPStringFog.decode(new byte[]{111, 89, 12, 0, 94, 22, 113, 94, 17, 1, 69, 18, 121, 94, 11, 9, 114, 14, 85, 64, 3, 16}, "80bd1a", false, true);
    private Impl mImpl;

    public static final class BoundsCompat {
        private final Insets mLowerBound;
        private final Insets mUpperBound;

        private BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.mLowerBound = Impl30.getLowerBounds(bounds);
            this.mUpperBound = Impl30.getHigherBounds(bounds);
        }

        public BoundsCompat(Insets insets, Insets insets2) {
            this.mLowerBound = insets;
            this.mUpperBound = insets2;
        }

        public static BoundsCompat toBoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        public Insets getLowerBound() {
            return this.mLowerBound;
        }

        public Insets getUpperBound() {
            return this.mUpperBound;
        }

        public BoundsCompat inset(Insets insets) {
            return new BoundsCompat(WindowInsetsCompat.insetInsets(this.mLowerBound, insets.left, insets.top, insets.right, insets.bottom), WindowInsetsCompat.insetInsets(this.mUpperBound, insets.left, insets.top, insets.right, insets.bottom));
        }

        public WindowInsetsAnimation.Bounds toBounds() {
            return Impl30.createPlatformBounds(this);
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{117, 90, 65, 95, 84, 65, 76, 89, 91, 70, 85, 64, 10}, "754102", 519784807L) + this.mLowerBound + NPStringFog.decode(new byte[]{67, 19, 72, 19, 3, 66, 94}, "cf8cf0", -2.0257454E9f) + this.mUpperBound + NPStringFog.decode(new byte[]{68}, "98ac53", -1.7933492E9f);
        }
    }

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsets mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DispatchMode {
        }

        public Callback(int i) {
            this.mDispatchMode = i;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list);

        public BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    private static class Impl {
        private float mAlpha;
        private final long mDurationMillis;
        private float mFraction;
        private final Interpolator mInterpolator;
        private final int mTypeMask;

        Impl(int i, Interpolator interpolator, long j) {
            this.mTypeMask = i;
            this.mInterpolator = interpolator;
            this.mDurationMillis = j;
        }

        public float getAlpha() {
            return this.mAlpha;
        }

        public long getDurationMillis() {
            return this.mDurationMillis;
        }

        public float getFraction() {
            return this.mFraction;
        }

        public float getInterpolatedFraction() {
            Interpolator interpolator = this.mInterpolator;
            return interpolator != null ? interpolator.getInterpolation(this.mFraction) : this.mFraction;
        }

        public Interpolator getInterpolator() {
            return this.mInterpolator;
        }

        public int getTypeMask() {
            return this.mTypeMask;
        }

        public void setAlpha(float f) {
            this.mAlpha = f;
        }

        public void setFraction(float f) {
            this.mFraction = f;
        }
    }

    private static class Impl21 extends Impl {

        private static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {
            private static final int COMPAT_ANIMATION_DURATION = 160;
            final Callback mCallback;
            private WindowInsetsCompat mLastInsets;

            Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                this.mCallback = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.mLastInsets = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int iBuildAnimationMask;
                if (!view.isLaidOut()) {
                    this.mLastInsets = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return Impl21.forwardToViewIfNeeded(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.mLastInsets == null) {
                    this.mLastInsets = ViewCompat.getRootWindowInsets(view);
                }
                if (this.mLastInsets == null) {
                    this.mLastInsets = windowInsetsCompat;
                    return Impl21.forwardToViewIfNeeded(view, windowInsets);
                }
                Callback callback = Impl21.getCallback(view);
                if ((callback == null || !ColorUtils$$ExternalSyntheticBackport0.m(callback.mDispachedInsets, windowInsets)) && (iBuildAnimationMask = Impl21.buildAnimationMask(windowInsetsCompat, this.mLastInsets)) != 0) {
                    WindowInsetsCompat windowInsetsCompat2 = this.mLastInsets;
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(iBuildAnimationMask, new DecelerateInterpolator(), 160L);
                    windowInsetsAnimationCompat.setFraction(0.0f);
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                    BoundsCompat boundsCompatComputeAnimationBounds = Impl21.computeAnimationBounds(windowInsetsCompat, windowInsetsCompat2, iBuildAnimationMask);
                    Impl21.dispatchOnPrepare(view, windowInsetsAnimationCompat, windowInsets, false);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this, windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat2, iBuildAnimationMask, view) { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                        final Impl21OnApplyWindowInsetsListener this$0;
                        final WindowInsetsAnimationCompat val$anim;
                        final int val$animationMask;
                        final WindowInsetsCompat val$startingInsets;
                        final WindowInsetsCompat val$targetInsets;
                        final View val$v;

                        {
                            this.this$0 = this;
                            this.val$anim = windowInsetsAnimationCompat;
                            this.val$targetInsets = windowInsetsCompat;
                            this.val$startingInsets = windowInsetsCompat2;
                            this.val$animationMask = iBuildAnimationMask;
                            this.val$v = view;
                        }

                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.val$anim.setFraction(valueAnimator.getAnimatedFraction());
                            Impl21.dispatchOnProgress(this.val$v, Impl21.interpolateInsets(this.val$targetInsets, this.val$startingInsets, this.val$anim.getInterpolatedFraction(), this.val$animationMask), Collections.singletonList(this.val$anim));
                        }
                    });
                    duration.addListener(new AnimatorListenerAdapter(this, windowInsetsAnimationCompat, view) { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                        final Impl21OnApplyWindowInsetsListener this$0;
                        final WindowInsetsAnimationCompat val$anim;
                        final View val$v;

                        {
                            this.this$0 = this;
                            this.val$anim = windowInsetsAnimationCompat;
                            this.val$v = view;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.val$anim.setFraction(1.0f);
                            Impl21.dispatchOnEnd(this.val$v, this.val$anim);
                        }
                    });
                    OneShotPreDrawListener.add(view, new Runnable(this, view, windowInsetsAnimationCompat, boundsCompatComputeAnimationBounds, duration) { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                        final Impl21OnApplyWindowInsetsListener this$0;
                        final WindowInsetsAnimationCompat val$anim;
                        final BoundsCompat val$animationBounds;
                        final ValueAnimator val$animator;
                        final View val$v;

                        {
                            this.this$0 = this;
                            this.val$v = view;
                            this.val$anim = windowInsetsAnimationCompat;
                            this.val$animationBounds = boundsCompatComputeAnimationBounds;
                            this.val$animator = duration;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Impl21.dispatchOnStart(this.val$v, this.val$anim, this.val$animationBounds);
                            this.val$animator.start();
                        }
                    });
                    this.mLastInsets = windowInsetsCompat;
                    return Impl21.forwardToViewIfNeeded(view, windowInsets);
                }
                return Impl21.forwardToViewIfNeeded(view, windowInsets);
            }
        }

        Impl21(int i, Interpolator interpolator, long j) {
            super(i, interpolator, j);
        }

        static int buildAnimationMask(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2) {
            int i = 0;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if (!windowInsetsCompat.getInsets(i2).equals(windowInsetsCompat2.getInsets(i2))) {
                    i |= i2;
                }
            }
            return i;
        }

        static BoundsCompat computeAnimationBounds(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i) {
            Insets insets = windowInsetsCompat.getInsets(i);
            Insets insets2 = windowInsetsCompat2.getInsets(i);
            return new BoundsCompat(Insets.of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom)), Insets.of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom)));
        }

        private static View.OnApplyWindowInsetsListener createProxyListener(View view, Callback callback) {
            return new Impl21OnApplyWindowInsetsListener(view, callback);
        }

        static void dispatchOnEnd(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.onEnd(windowInsetsAnimationCompat);
                if (callback.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnEnd(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        static void dispatchOnPrepare(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.mDispachedInsets = windowInsets;
                if (!z) {
                    callback.onPrepare(windowInsetsAnimationCompat);
                    z = callback.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnPrepare(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsets, z);
                }
            }
        }

        static void dispatchOnProgress(View view, WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
            Callback callback = getCallback(view);
            if (callback != null) {
                windowInsetsCompat = callback.onProgress(windowInsetsCompat, list);
                if (callback.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnProgress(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        static void dispatchOnStart(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callback.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnStart(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        static WindowInsets forwardToViewIfNeeded(View view, WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        static Callback getCallback(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).mCallback;
            }
            return null;
        }

        static WindowInsetsCompat interpolateInsets(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f, int i) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) == 0) {
                    builder.setInsets(i2, windowInsetsCompat.getInsets(i2));
                } else {
                    Insets insets = windowInsetsCompat.getInsets(i2);
                    Insets insets2 = windowInsetsCompat2.getInsets(i2);
                    double d = (insets.left - insets2.left) * (1.0f - f);
                    Double.isNaN(d);
                    double d2 = (insets.top - insets2.top) * (1.0f - f);
                    Double.isNaN(d2);
                    int i3 = (int) (d2 + 0.5d);
                    double d3 = (insets.right - insets2.right) * (1.0f - f);
                    Double.isNaN(d3);
                    double d4 = (insets.bottom - insets2.bottom) * (1.0f - f);
                    Double.isNaN(d4);
                    builder.setInsets(i2, WindowInsetsCompat.insetInsets(insets, (int) (d + 0.5d), i3, (int) (d3 + 0.5d), (int) (d4 + 0.5d)));
                }
            }
            return builder.build();
        }

        static void setCallback(View view, Callback callback) {
            Object tag = view.getTag(R.id.tag_on_apply_window_listener);
            if (callback == null) {
                view.setTag(R.id.tag_window_insets_animation_callback, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListenerCreateProxyListener = createProxyListener(view, callback);
            view.setTag(R.id.tag_window_insets_animation_callback, onApplyWindowInsetsListenerCreateProxyListener);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListenerCreateProxyListener);
            }
        }
    }

    private static class Impl30 extends Impl {
        private final WindowInsetsAnimation mWrapped;

        private static class ProxyCallback extends WindowInsetsAnimation.Callback {
            private final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> mAnimations;
            private final Callback mCompat;
            private List<WindowInsetsAnimationCompat> mRORunningAnimations;
            private ArrayList<WindowInsetsAnimationCompat> mTmpRunningAnimations;

            ProxyCallback(Callback callback) {
                super(callback.getDispatchMode());
                this.mAnimations = new HashMap<>();
                this.mCompat = callback;
            }

            private WindowInsetsAnimationCompat getWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.mAnimations.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.toWindowInsetsAnimationCompat(windowInsetsAnimation);
                this.mAnimations.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.onEnd(getWindowInsetsAnimationCompat(windowInsetsAnimation));
                this.mAnimations.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.onPrepare(getWindowInsetsAnimationCompat(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
                ArrayList<WindowInsetsAnimationCompat> arrayList = this.mTmpRunningAnimations;
                if (arrayList == null) {
                    ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
                    this.mTmpRunningAnimations = arrayList2;
                    this.mRORunningAnimations = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = list.get(size);
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = getWindowInsetsAnimationCompat(windowInsetsAnimation);
                    windowInsetsAnimationCompat.setFraction(windowInsetsAnimation.getFraction());
                    this.mTmpRunningAnimations.add(windowInsetsAnimationCompat);
                }
                return this.mCompat.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.mRORunningAnimations).toWindowInsets();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.mCompat.onStart(getWindowInsetsAnimationCompat(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        Impl30(int i, Interpolator interpolator, long j) {
            this(new WindowInsetsAnimation(i, interpolator, j));
        }

        Impl30(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.mWrapped = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds createPlatformBounds(BoundsCompat boundsCompat) {
            return new WindowInsetsAnimation.Bounds(boundsCompat.getLowerBound().toPlatformInsets(), boundsCompat.getUpperBound().toPlatformInsets());
        }

        public static Insets getHigherBounds(WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getUpperBound());
        }

        public static Insets getLowerBounds(WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getLowerBound());
        }

        public static void setCallback(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new ProxyCallback(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public long getDurationMillis() {
            return this.mWrapped.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public float getFraction() {
            return this.mWrapped.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public float getInterpolatedFraction() {
            return this.mWrapped.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public Interpolator getInterpolator() {
            return this.mWrapped.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public int getTypeMask() {
            return this.mWrapped.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public void setFraction(float f) {
            this.mWrapped.setFraction(f);
        }
    }

    public WindowInsetsAnimationCompat(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(i, interpolator, j);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.mImpl = new Impl21(i, interpolator, j);
        } else {
            this.mImpl = new Impl(0, interpolator, j);
        }
    }

    private WindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(windowInsetsAnimation);
        }
    }

    static void setCallback(View view, Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            Impl30.setCallback(view, callback);
        } else if (Build.VERSION.SDK_INT >= 21) {
            Impl21.setCallback(view, callback);
        }
    }

    static WindowInsetsAnimationCompat toWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    public float getAlpha() {
        return this.mImpl.getAlpha();
    }

    public long getDurationMillis() {
        return this.mImpl.getDurationMillis();
    }

    public float getFraction() {
        return this.mImpl.getFraction();
    }

    public float getInterpolatedFraction() {
        return this.mImpl.getInterpolatedFraction();
    }

    public Interpolator getInterpolator() {
        return this.mImpl.getInterpolator();
    }

    public int getTypeMask() {
        return this.mImpl.getTypeMask();
    }

    public void setAlpha(float f) {
        this.mImpl.setAlpha(f);
    }

    public void setFraction(float f) {
        this.mImpl.setFraction(f);
    }
}
