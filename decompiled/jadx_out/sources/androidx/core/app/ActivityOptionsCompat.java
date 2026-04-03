package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.core.util.Pair;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = NPStringFog.decode(new byte[]{80, 15, 92, 16, 86, 90, 85, 79, 89, 1, 77, 90, 71, 8, 76, 27, 23, 70, 66, 0, 95, 7, 102, 71, 88, 12, 93}, "1a8b93", 1.736604871E9d);
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = NPStringFog.decode(new byte[]{84, 11, 81, 67, 14, 95, 81, 75, 64, 66, 0, 81, 80, 58, 65, 88, 12, 83, 106, 21, 84, 82, 10, 87, 82, 0, 70}, "5e51a6", 1.3500547E9f);

    private static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {
        private final ActivityOptions mActivityOptions;

        ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.mActivityOptions = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Rect getLaunchBounds() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return this.mActivityOptions.getLaunchBounds();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.mActivityOptions.requestUsageTimeReport(pendingIntent);
            }
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public ActivityOptionsCompat setLaunchBounds(Rect rect) {
            return Build.VERSION.SDK_INT < 24 ? this : new ActivityOptionsCompatImpl(this.mActivityOptions.setLaunchBounds(rect));
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.mActivityOptions.toBundle();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsCompatImpl) {
                this.mActivityOptions.update(((ActivityOptionsCompatImpl) activityOptionsCompat).mActivityOptions);
            }
        }
    }

    protected ActivityOptionsCompat() {
    }

    public static ActivityOptionsCompat makeBasic() {
        return Build.VERSION.SDK_INT >= 23 ? new ActivityOptionsCompatImpl(ActivityOptions.makeBasic()) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeClipRevealAnimation(View view, int i, int i2, int i3, int i4) {
        return Build.VERSION.SDK_INT >= 23 ? new ActivityOptionsCompatImpl(ActivityOptions.makeClipRevealAnimation(view, i, i2, i3, i4)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int i, int i2) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(context, i, i2)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int i, int i2, int i3, int i4) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsCompatImpl(ActivityOptions.makeScaleUpAnimation(view, i, i2, i3, i4)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String str) {
        return Build.VERSION.SDK_INT >= 21 ? new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, view, str)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String>... pairArr) {
        if (Build.VERSION.SDK_INT < 21) {
            return new ActivityOptionsCompat();
        }
        android.util.Pair[] pairArr2 = null;
        if (pairArr != null) {
            android.util.Pair[] pairArr3 = new android.util.Pair[pairArr.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= pairArr.length) {
                    break;
                }
                pairArr3[i2] = android.util.Pair.create(pairArr[i2].first, pairArr[i2].second);
                i = i2 + 1;
            }
            pairArr2 = pairArr3;
        }
        return new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr2));
    }

    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        return Build.VERSION.SDK_INT >= 21 ? new ActivityOptionsCompatImpl(ActivityOptions.makeTaskLaunchBehind()) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i, int i2) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsCompatImpl(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i, i2)) : new ActivityOptionsCompat();
    }

    public Rect getLaunchBounds() {
        return null;
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
    }

    public ActivityOptionsCompat setLaunchBounds(Rect rect) {
        return this;
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }
}
