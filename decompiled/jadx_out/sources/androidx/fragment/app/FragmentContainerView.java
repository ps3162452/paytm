package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public final class FragmentContainerView extends FrameLayout {
    private View.OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private ArrayList<View> mDisappearingFragmentChildren;
    private boolean mDrawDisappearingViewsFirst;
    private ArrayList<View> mTransitioningFragmentViews;

    public FragmentContainerView(Context context) {
        super(context);
        this.mDrawDisappearingViewsFirst = true;
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawDisappearingViewsFirst = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            String strDecode = NPStringFog.decode(new byte[]{87, 13, 84, 66, 65}, "4a512d", 15562);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                strDecode = NPStringFog.decode(new byte[]{3, 11, 86, 17, 9, 95, 6, 95, 92, 2, 11, 83}, "be2cf6", 29417);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{35, 69, 80, 2, 94, 92, 11, 67, 114, 10, 93, 77, 4, 94, 95, 0, 65, 111, 12, 82, 70, 69, 94, 76, 22, 67, 17, 7, 86, 25, 18, 94, 69, 13, 90, 87, 69, 86, 17, 35, 65, 88, 2, 90, 84, 11, 71, 120, 6, 67, 88, 19, 90, 77, 28, 23, 69, 10, 19, 76, 22, 82, 17}, "e71e39", 957441947L) + strDecode + NPStringFog.decode(new byte[]{15, 22}, "240740", true, false) + classAttribute + NPStringFog.decode(new byte[]{27}, "9e0973", 1.6102877E8f));
        }
    }

    FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        String str;
        super(context, attributeSet);
        this.mDrawDisappearingViewsFirst = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentFindFragmentById = fragmentManager.findFragmentById(id);
        if (classAttribute != null && fragmentFindFragmentById == null) {
            if (id <= 0) {
                if (string != null) {
                    str = NPStringFog.decode(new byte[]{66, 79, 89, 23, 13, 19, 22, 89, 87, 67}, "b80ce3", 16347) + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 23, 3, 95, 84, 85, 90, 17, 33, 87, 87, 68, 85, 12, 12, 93, 75, 102, 93, 0, 21, 24, 84, 69, 71, 17, 66, 80, 88, 70, 81, 69, 3, 86, 25, 81, 90, 1, 16, 87, 80, 84, 14, 12, 6, 24, 77, 95, 20, 4, 6, 92, 25, 118, 70, 4, 5, 85, 92, 94, 64, 69}, "4eb890", false) + classAttribute + str);
            }
            Fragment fragmentInstantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
            fragmentInstantiate.onInflate(context, attributeSet, (Bundle) null);
            fragmentManager.beginTransaction().setReorderingAllowed(true).add(this, fragmentInstantiate, string).commitNowAllowingStateLoss();
        }
        fragmentManager.onContainerAvailable(this);
    }

    private void addDisappearingFragmentView(View view) {
        ArrayList<View> arrayList = this.mTransitioningFragmentViews;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.mDisappearingFragmentChildren == null) {
            this.mDisappearingFragmentChildren = new ArrayList<>();
        }
        this.mDisappearingFragmentChildren.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.getViewFragment(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{53, 13, 84, 69, 17, 69, 2, 0, 85, 87, 6, 69, 23, 11, 17, 83, 66, 35, 17, 5, 86, 95, 7, 11, 23, 39, 94, 92, 22, 4, 10, 10, 84, 64, 52, 12, 6, 19, 17, 95, 23, 22, 23, 68, 83, 87, 66, 4, 16, 23, 94, 81, 11, 4, 23, 1, 85, 18, 21, 12, 23, 12, 17, 83, 66, 35, 17, 5, 86, 95, 7, 11, 23, 74, 17, 100, 11, 0, 20, 68}, "cd12be", false, false) + view + NPStringFog.decode(new byte[]{19, 90, 67, 70, 92, 87, 71, 19, 81, 21, 65, 87, 80, 90, 81, 18, 87, 92, 19, 68, 89, 18, 90, 24, 82, 19, 118, 20, 83, 95, 94, 86, 94, 18, 28}, "330f28", false, false));
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (FragmentManager.getViewFragment(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 11, 83, 70, 64, 69, 82, 6, 82, 84, 87, 69, 71, 13, 22, 80, 19, 35, 65, 3, 81, 92, 86, 11, 71, 33, 89, 95, 71, 4, 90, 12, 83, 67, 101, 12, 86, 21, 22, 92, 70, 22, 71, 66, 84, 84, 19, 4, 64, 17, 89, 82, 90, 4, 71, 7, 82, 17, 68, 12, 71, 10, 22, 80, 19, 35, 65, 3, 81, 92, 86, 11, 71, 76, 22, 103, 90, 0, 68, 66}, "3b613e", 2.6198078E8f) + view + NPStringFog.decode(new byte[]{22, 94, 21, 69, 86, 93, 66, 23, 7, 22, 75, 93, 85, 94, 7, 17, 93, 86, 22, 64, 15, 17, 80, 18, 87, 23, 32, 23, 89, 85, 91, 82, 8, 17, 22}, "67fe82", true));
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.mApplyWindowInsetsListener;
        WindowInsetsCompat windowInsetsCompat2 = onApplyWindowInsetsListener != null ? WindowInsetsCompat.toWindowInsetsCompat(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : ViewCompat.onApplyWindowInsets(this, windowInsetsCompat);
        if (!windowInsetsCompat2.isConsumed()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewCompat.dispatchApplyWindowInsets(getChildAt(i), windowInsetsCompat2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mDrawDisappearingViewsFirst && this.mDisappearingFragmentChildren != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mDisappearingFragmentChildren.size()) {
                    break;
                }
                super.drawChild(canvas, this.mDisappearingFragmentChildren.get(i2), getDrawingTime());
                i = i2 + 1;
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.mDrawDisappearingViewsFirst || (arrayList = this.mDisappearingFragmentChildren) == null || arrayList.size() <= 0 || !this.mDisappearingFragmentChildren.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.mTransitioningFragmentViews;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.mDisappearingFragmentChildren;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.mDrawDisappearingViewsFirst = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            addDisappearingFragmentView(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            addDisappearingFragmentView(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        addDisappearingFragmentView(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        addDisappearingFragmentView(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        addDisappearingFragmentView(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            addDisappearingFragmentView(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            addDisappearingFragmentView(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    void setDrawDisappearingViewsLast(boolean z) {
        this.mDrawDisappearingViewsFirst = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT >= 18) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{112, 20, 84, 95, 95, 82, 88, 18, 118, 87, 92, 67, 87, 15, 91, 93, 64, 97, 95, 3, 66, 24, 86, 88, 83, 21, 21, 86, 93, 67, 22, 21, 64, 72, 66, 88, 68, 18, 21, 116, 83, 78, 89, 19, 65, 24, 102, 69, 87, 8, 70, 81, 70, 94, 89, 8, 70, 24, 93, 69, 22, 7, 91, 81, 95, 86, 66, 3, 121, 89, 75, 88, 67, 18, 118, 80, 83, 89, 81, 3, 70, 5, 16, 67, 68, 19, 80, 26, 28}, "6f5827", true));
        }
        super.setLayoutTransition(layoutTransition);
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.mApplyWindowInsetsListener = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.mTransitioningFragmentViews == null) {
                this.mTransitioningFragmentViews = new ArrayList<>();
            }
            this.mTransitioningFragmentViews.add(view);
        }
        super.startViewTransition(view);
    }
}
