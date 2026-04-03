package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class ViewUtils {

    public interface OnApplyWindowInsetsListener {
        WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding);
    }

    public static class RelativePadding {
        public int bottom;
        public int end;
        public int start;
        public int top;

        public RelativePadding(int i, int i2, int i3, int i4) {
            this.start = i;
            this.top = i2;
            this.end = i3;
            this.bottom = i4;
        }

        public RelativePadding(RelativePadding relativePadding) {
            this.start = relativePadding.start;
            this.top = relativePadding.top;
            this.end = relativePadding.end;
            this.bottom = relativePadding.bottom;
        }

        public void applyToView(View view) {
            ViewCompat.setPaddingRelative(view, this.start, this.top, this.end, this.bottom);
        }
    }

    private ViewUtils() {
    }

    public static void addOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i, int i2) {
        doOnApplyWindowInsets(view, attributeSet, i, i2, null);
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i, int i2, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.Insets, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        doOnApplyWindowInsets(view, new OnApplyWindowInsetsListener(z, z2, z3, onApplyWindowInsetsListener) { // from class: com.google.android.material.internal.ViewUtils.2
            final OnApplyWindowInsetsListener val$listener;
            final boolean val$paddingBottomSystemWindowInsets;
            final boolean val$paddingLeftSystemWindowInsets;
            final boolean val$paddingRightSystemWindowInsets;

            {
                this.val$paddingBottomSystemWindowInsets = z;
                this.val$paddingLeftSystemWindowInsets = z2;
                this.val$paddingRightSystemWindowInsets = z3;
                this.val$listener = onApplyWindowInsetsListener;
            }

            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding) {
                if (this.val$paddingBottomSystemWindowInsets) {
                    relativePadding.bottom += windowInsetsCompat.getSystemWindowInsetBottom();
                }
                boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(view2);
                if (this.val$paddingLeftSystemWindowInsets) {
                    if (zIsLayoutRtl) {
                        relativePadding.end += windowInsetsCompat.getSystemWindowInsetLeft();
                    } else {
                        relativePadding.start += windowInsetsCompat.getSystemWindowInsetLeft();
                    }
                }
                if (this.val$paddingRightSystemWindowInsets) {
                    if (zIsLayoutRtl) {
                        relativePadding.start += windowInsetsCompat.getSystemWindowInsetRight();
                    } else {
                        relativePadding.end += windowInsetsCompat.getSystemWindowInsetRight();
                    }
                }
                relativePadding.applyToView(view2);
                OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = this.val$listener;
                return onApplyWindowInsetsListener2 != null ? onApplyWindowInsetsListener2.onApplyWindowInsets(view2, windowInsetsCompat, relativePadding) : windowInsetsCompat;
            }
        });
    }

    public static void doOnApplyWindowInsets(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new androidx.core.view.OnApplyWindowInsetsListener(onApplyWindowInsetsListener, new RelativePadding(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())) { // from class: com.google.android.material.internal.ViewUtils.3
            final RelativePadding val$initialPadding;
            final OnApplyWindowInsetsListener val$listener;

            {
                this.val$listener = onApplyWindowInsetsListener;
                this.val$initialPadding = relativePadding;
            }

            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.val$listener.onApplyWindowInsets(view2, windowInsetsCompat, new RelativePadding(this.val$initialPadding));
            }
        });
        requestApplyInsetsWhenAttached(view);
    }

    public static float dpToPx(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static Integer getBackgroundColor(View view) {
        if (view.getBackground() instanceof ColorDrawable) {
            return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
        }
        return null;
    }

    public static ViewGroup getContentView(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static ViewOverlayImpl getContentViewOverlay(View view) {
        return getOverlay(getContentView(view));
    }

    public static ViewOverlayImpl getOverlay(View view) {
        if (view == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? new ViewOverlayApi18(view) : ViewOverlayApi14.createFrom(view);
    }

    public static float getParentAbsoluteElevation(View view) {
        float elevation = 0.0f;
        ViewParent parent = view.getParent();
        while (true) {
            float f = elevation;
            if (!(parent instanceof View)) {
                return f;
            }
            elevation = ViewCompat.getElevation((View) parent) + f;
            parent = parent.getParent();
        }
    }

    public static boolean isLayoutRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
        }
    }

    public static void removeOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            removeOnGlobalLayoutListener(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void requestApplyInsetsWhenAttached(View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.ViewUtils.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    ViewCompat.requestApplyInsets(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    public static void requestFocusAndShowKeyboard(View view) {
        view.requestFocus();
        view.post(new Runnable(view) { // from class: com.google.android.material.internal.ViewUtils.1
            final View val$view;

            {
                this.val$view = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) this.val$view.getContext().getSystemService(NPStringFog.decode(new byte[]{95, 15, 70, 22, 67, 107, 91, 4, 66, 11, 88, 80}, "6a6c74", 1.0930349E9f))).showSoftInput(this.val$view, 1);
            }
        });
    }
}
