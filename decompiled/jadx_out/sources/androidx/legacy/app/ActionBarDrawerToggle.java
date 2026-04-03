package androidx.legacy.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes43.dex */
@Deprecated
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {
    private static final int ID_HOME = 16908332;
    private static final String TAG = NPStringFog.decode(new byte[]{112, 5, 68, 89, 92, 15, 115, 7, 66, 116, 65, 0, 70, 3, 66, 100, 92, 6, 86, 10, 85}, "1f003a", -18954);
    private static final int[] THEME_ATTRS = {R.attr.homeAsUpIndicator};
    private static final float TOGGLE_DRAWABLE_OFFSET = 0.33333334f;
    final Activity mActivity;
    private final Delegate mActivityImpl;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private boolean mHasCustomUpIndicator;
    private Drawable mHomeAsUpIndicator;
    private final int mOpenDrawerContentDescRes;
    private SetIndicatorInfo mSetIndicatorInfo;
    private SlideDrawable mSlider;

    @Deprecated
    public interface Delegate {
        @Nullable
        Drawable getThemeUpIndicator();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    @Deprecated
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    private static class SetIndicatorInfo {
        Method mSetHomeActionContentDescription;
        Method mSetHomeAsUpIndicator;
        ImageView mUpIndicatorView;

        SetIndicatorInfo(Activity activity) {
            try {
                this.mSetHomeAsUpIndicator = ActionBar.class.getDeclaredMethod(NPStringFog.decode(new byte[]{16, 6, 21, 126, 89, 93, 6, 34, 18, 99, 70, 121, 13, 7, 8, 85, 87, 68, 12, 17}, "cca660", -1.7589148E9f), Drawable.class);
                this.mSetHomeActionContentDescription = ActionBar.class.getDeclaredMethod(NPStringFog.decode(new byte[]{75, 85, 67, 112, 95, 15, 93, 113, 84, 76, 89, 13, 86, 115, 88, 86, 68, 7, 86, 68, 115, 93, 67, 1, 74, 89, 71, 76, 89, 13, 86}, "80780b", 1538325094L), Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View viewFindViewById = activity.findViewById(16908332);
                if (viewFindViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
                        if (childAt2 instanceof ImageView) {
                            this.mUpIndicatorView = (ImageView) childAt2;
                        }
                    }
                }
            }
        }
    }

    private class SlideDrawable extends InsetDrawable implements Drawable.Callback {
        private final boolean mHasMirroring;
        private float mOffset;
        private float mPosition;
        private final Rect mTmpRect;
        final ActionBarDrawerToggle this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        SlideDrawable(ActionBarDrawerToggle actionBarDrawerToggle, Drawable drawable) {
            super(drawable, 0);
            this.this$0 = actionBarDrawerToggle;
            this.mHasMirroring = Build.VERSION.SDK_INT > 18;
            this.mTmpRect = new Rect();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            copyBounds(this.mTmpRect);
            canvas.save();
            boolean z = ViewCompat.getLayoutDirection(this.this$0.mActivity.getWindow().getDecorView()) == 1;
            int i = z ? -1 : 1;
            int iWidth = this.mTmpRect.width();
            canvas.translate(i * (-this.mOffset) * iWidth * this.mPosition, 0.0f);
            if (z && !this.mHasMirroring) {
                canvas.translate(iWidth, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }

        public float getPosition() {
            return this.mPosition;
        }

        public void setOffset(float f) {
            this.mOffset = f;
            invalidateSelf();
        }

        public void setPosition(float f) {
            this.mPosition = f;
            invalidateSelf();
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this(activity, drawerLayout, !assumeMaterial(activity), i, i2, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, boolean z, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this.mDrawerIndicatorEnabled = true;
        this.mActivity = activity;
        if (activity instanceof DelegateProvider) {
            this.mActivityImpl = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.mActivityImpl = null;
        }
        this.mDrawerLayout = drawerLayout;
        this.mDrawerImageResource = i;
        this.mOpenDrawerContentDescRes = i2;
        this.mCloseDrawerContentDescRes = i3;
        this.mHomeAsUpIndicator = getThemeUpIndicator();
        this.mDrawerImage = ContextCompat.getDrawable(activity, i);
        this.mSlider = new SlideDrawable(this, this.mDrawerImage);
        this.mSlider.setOffset(z ? TOGGLE_DRAWABLE_OFFSET : 0.0f);
    }

    private static boolean assumeMaterial(Context context) {
        return context.getApplicationInfo().targetSdkVersion >= 21 && Build.VERSION.SDK_INT >= 21;
    }

    private Drawable getThemeUpIndicator() {
        if (this.mActivityImpl != null) {
            return this.mActivityImpl.getThemeUpIndicator();
        }
        if (Build.VERSION.SDK_INT < 18) {
            TypedArray typedArrayObtainStyledAttributes = this.mActivity.obtainStyledAttributes(THEME_ATTRS);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            return drawable;
        }
        ActionBar actionBar = this.mActivity.getActionBar();
        TypedArray typedArrayObtainStyledAttributes2 = (actionBar != null ? actionBar.getThemedContext() : this.mActivity).obtainStyledAttributes(null, THEME_ATTRS, R.attr.actionBarStyle, 0);
        Drawable drawable2 = typedArrayObtainStyledAttributes2.getDrawable(0);
        typedArrayObtainStyledAttributes2.recycle();
        return drawable2;
    }

    private void setActionBarDescription(int i) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarDescription(i);
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.mActivity.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
                return;
            }
            return;
        }
        if (this.mSetIndicatorInfo == null) {
            this.mSetIndicatorInfo = new SetIndicatorInfo(this.mActivity);
        }
        if (this.mSetIndicatorInfo.mSetHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar2 = this.mActivity.getActionBar();
                this.mSetIndicatorInfo.mSetHomeActionContentDescription.invoke(actionBar2, Integer.valueOf(i));
                actionBar2.setSubtitle(actionBar2.getSubtitle());
            } catch (Exception e) {
                Log.w(TAG, NPStringFog.decode(new byte[]{117, 11, 22, 91, 7, 88, 17, 16, 67, 68, 6, 66, 22, 7, 12, 89, 23, 83, 88, 16, 67, 83, 6, 69, 85, 22, 10, 71, 23, 95, 89, 10, 67, 65, 10, 87, 22, 46, 33, 26, 46, 100, 4, 68, 34, 103, 42}, "6dc7c6", 29134), e);
            }
        }
    }

    private void setActionBarUpIndicator(Drawable drawable, int i) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarUpIndicator(drawable, i);
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.mActivity.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
                return;
            }
            return;
        }
        if (this.mSetIndicatorInfo == null) {
            this.mSetIndicatorInfo = new SetIndicatorInfo(this.mActivity);
        }
        if (this.mSetIndicatorInfo.mSetHomeAsUpIndicator == null) {
            if (this.mSetIndicatorInfo.mUpIndicatorView != null) {
                this.mSetIndicatorInfo.mUpIndicatorView.setImageDrawable(drawable);
                return;
            } else {
                Log.w(TAG, NPStringFog.decode(new byte[]{118, 95, 64, 10, 80, 94, 18, 68, 21, 21, 81, 68, 21, 88, 90, 11, 81, 29, 84, 67, 24, 19, 68, 16, 92, 94, 81, 15, 87, 81, 65, 95, 71}, "505f40", 24187));
                return;
            }
        }
        try {
            ActionBar actionBar2 = this.mActivity.getActionBar();
            this.mSetIndicatorInfo.mSetHomeAsUpIndicator.invoke(actionBar2, drawable);
            this.mSetIndicatorInfo.mSetHomeActionContentDescription.invoke(actionBar2, Integer.valueOf(i));
        } catch (Exception e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{115, 9, 20, 90, 83, 90, 23, 18, 65, 69, 82, 64, 16, 14, 14, 91, 82, 25, 81, 21, 76, 67, 71, 20, 89, 8, 5, 95, 84, 85, 68, 9, 19, 22, 65, 93, 81, 70, 43, 116, 26, 121, 98, 84, 65, 119, 103, 125}, "0fa674", -2.4852088E8f), e);
        }
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.mDrawerIndicatorEnabled;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mHasCustomUpIndicator) {
            this.mHomeAsUpIndicator = getThemeUpIndicator();
        }
        this.mDrawerImage = ContextCompat.getDrawable(this.mActivity, this.mDrawerImageResource);
        syncState();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        this.mSlider.setPosition(0.0f);
        if (this.mDrawerIndicatorEnabled) {
            setActionBarDescription(this.mOpenDrawerContentDescRes);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        this.mSlider.setPosition(1.0f);
        if (this.mDrawerIndicatorEnabled) {
            setActionBarDescription(this.mCloseDrawerContentDescRes);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        float position = this.mSlider.getPosition();
        this.mSlider.setPosition(f > 0.5f ? Math.max(position, Math.max(0.0f, f - 0.5f) * 2.0f) : Math.min(position, f * 2.0f));
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.mDrawerIndicatorEnabled) {
            return false;
        }
        if (this.mDrawerLayout.isDrawerVisible(GravityCompat.START)) {
            this.mDrawerLayout.closeDrawer(GravityCompat.START);
        } else {
            this.mDrawerLayout.openDrawer(GravityCompat.START);
        }
        return true;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.mDrawerIndicatorEnabled) {
            if (z) {
                setActionBarUpIndicator(this.mSlider, this.mDrawerLayout.isDrawerOpen(GravityCompat.START) ? this.mCloseDrawerContentDescRes : this.mOpenDrawerContentDescRes);
            } else {
                setActionBarUpIndicator(this.mHomeAsUpIndicator, 0);
            }
            this.mDrawerIndicatorEnabled = z;
        }
    }

    public void setHomeAsUpIndicator(int i) {
        setHomeAsUpIndicator(i != 0 ? ContextCompat.getDrawable(this.mActivity, i) : null);
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.mHomeAsUpIndicator = getThemeUpIndicator();
            this.mHasCustomUpIndicator = false;
        } else {
            this.mHomeAsUpIndicator = drawable;
            this.mHasCustomUpIndicator = true;
        }
        if (this.mDrawerIndicatorEnabled) {
            return;
        }
        setActionBarUpIndicator(this.mHomeAsUpIndicator, 0);
    }

    public void syncState() {
        if (this.mDrawerLayout.isDrawerOpen(GravityCompat.START)) {
            this.mSlider.setPosition(1.0f);
        } else {
            this.mSlider.setPosition(0.0f);
        }
        if (this.mDrawerIndicatorEnabled) {
            setActionBarUpIndicator(this.mSlider, this.mDrawerLayout.isDrawerOpen(GravityCompat.START) ? this.mCloseDrawerContentDescRes : this.mOpenDrawerContentDescRes);
        }
    }
}
