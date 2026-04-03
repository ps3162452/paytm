package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = NPStringFog.decode(new byte[]{116, 82, 67, 93, 88, 87, 119, 80, 69, 112, 69, 88, 66, 84, 69, 96, 88, 94, 82, 93, 82, 124, 116}, "517479", -4.8934794E8f);
    private static final int[] THEME_ATTRS = {R.attr.homeAsUpIndicator};

    static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        SetIndicatorInfo(Activity activity) {
            try {
                this.setHomeAsUpIndicator = android.app.ActionBar.class.getDeclaredMethod(NPStringFog.decode(new byte[]{64, 82, 18, 126, 94, 15, 86, 118, 21, 99, 65, 43, 93, 83, 15, 85, 80, 22, 92, 69}, "37f61b", true), Drawable.class);
                this.setHomeActionContentDescription = android.app.ActionBar.class.getDeclaredMethod(NPStringFog.decode(new byte[]{75, 80, 69, 122, 94, 88, 93, 116, 82, 70, 88, 90, 86, 118, 94, 92, 69, 80, 86, 65, 117, 87, 66, 86, 74, 92, 65, 70, 88, 90, 86}, "851215", 25395), Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View viewFindViewById = activity.findViewById(R.id.home);
                if (viewFindViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
                        if (childAt2 instanceof ImageView) {
                            this.upIndicatorView = (ImageView) childAt2;
                        }
                    }
                }
            }
        }
    }

    private ActionBarDrawerToggleHoneycomb() {
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    public static SetIndicatorInfo setActionBarDescription(SetIndicatorInfo setIndicatorInfo, Activity activity, int i) {
        if (setIndicatorInfo == null) {
            setIndicatorInfo = new SetIndicatorInfo(activity);
        }
        if (setIndicatorInfo.setHomeAsUpIndicator != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w(TAG, NPStringFog.decode(new byte[]{122, 94, 69, 94, 5, 90, 30, 69, 16, 65, 4, 64, 25, 82, 95, 92, 21, 81, 87, 69, 16, 86, 4, 71, 90, 67, 89, 66, 21, 93, 86, 95, 16, 68, 8, 85, 25, 123, 114, 31, 44, 102, 11, 17, 113, 98, 40}, "9102a4", true), e);
            }
        }
        return setIndicatorInfo;
    }

    public static SetIndicatorInfo setActionBarUpIndicator(Activity activity, Drawable drawable, int i) {
        SetIndicatorInfo setIndicatorInfo = new SetIndicatorInfo(activity);
        if (setIndicatorInfo.setHomeAsUpIndicator != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo.setHomeAsUpIndicator.invoke(actionBar, drawable);
                setIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w(TAG, NPStringFog.decode(new byte[]{116, 89, 23, 15, 87, 11, 16, 66, 66, 16, 86, 17, 23, 94, 13, 14, 86, 72, 86, 69, 79, 22, 67, 69, 94, 88, 6, 10, 80, 4, 67, 89, 16, 67, 69, 12, 86, 22, 40, 33, 30, 40, 101, 4, 66, 34, 99, 44}, "76bc3e", true), e);
            }
        } else if (setIndicatorInfo.upIndicatorView != null) {
            setIndicatorInfo.upIndicatorView.setImageDrawable(drawable);
        } else {
            Log.w(TAG, NPStringFog.decode(new byte[]{38, 95, 19, 89, 7, 88, 66, 68, 70, 70, 6, 66, 69, 88, 9, 88, 6, 27, 4, 67, 75, 64, 19, 22, 12, 94, 2, 92, 0, 87, 17, 95, 20}, "e0f5c6", 1.6163645E9f));
        }
        return setIndicatorInfo;
    }
}
