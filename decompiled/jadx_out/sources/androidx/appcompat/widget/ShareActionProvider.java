package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class ShareActionProvider extends ActionProvider {
    private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = NPStringFog.decode(new byte[]{23, 13, 4, 65, 6, 58, 12, 12, 22, 71, 12, 23, 29, 75, 29, 94, 15}, "dee3ce", -973468037L);
    final Context mContext;
    private int mMaxShownActivityCount;
    private ActivityChooserModel.OnChooseActivityListener mOnChooseActivityListener;
    private final ShareMenuItemOnMenuItemClickListener mOnMenuItemClickListener;
    OnShareTargetSelectedListener mOnShareTargetSelectedListener;
    String mShareHistoryFileName;

    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    private class ShareActivityChooserModelPolicy implements ActivityChooserModel.OnChooseActivityListener {
        final ShareActionProvider this$0;

        ShareActivityChooserModelPolicy(ShareActionProvider shareActionProvider) {
            this.this$0 = shareActionProvider;
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.OnChooseActivityListener
        public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
            if (this.this$0.mOnShareTargetSelectedListener == null) {
                return false;
            }
            this.this$0.mOnShareTargetSelectedListener.onShareTargetSelected(this.this$0, intent);
            return false;
        }
    }

    private class ShareMenuItemOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        final ShareActionProvider this$0;

        ShareMenuItemOnMenuItemClickListener(ShareActionProvider shareActionProvider) {
            this.this$0 = shareActionProvider;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent intentChooseActivity = ActivityChooserModel.get(this.this$0.mContext, this.this$0.mShareHistoryFileName).chooseActivity(menuItem.getItemId());
            if (intentChooseActivity == null) {
                return true;
            }
            String action = intentChooseActivity.getAction();
            if (NPStringFog.decode(new byte[]{5, 11, 81, 19, 12, 13, 0, 75, 92, 15, 23, 1, 10, 17, 27, 0, 0, 16, 13, 10, 91, 79, 48, 33, 42, 33}, "de5acd", 1775088436L).equals(action) || NPStringFog.decode(new byte[]{83, 12, 92, 74, 13, 13, 86, 76, 81, 86, 22, 1, 92, 22, 22, 89, 1, 16, 91, 13, 86, 22, 49, 33, 124, 38, 103, 117, 55, 40, 102, 43, 104, 116, 39}, "2b88bd", -682435565L).equals(action)) {
                this.this$0.updateIntent(intentChooseActivity);
            }
            this.this$0.mContext.startActivity(intentChooseActivity);
            return true;
        }
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.mMaxShownActivityCount = 4;
        this.mOnMenuItemClickListener = new ShareMenuItemOnMenuItemClickListener(this);
        this.mShareHistoryFileName = NPStringFog.decode(new byte[]{66, 94, 0, 23, 3, 109, 89, 95, 18, 17, 9, 64, 72, 24, 25, 8, 10}, "16aef2", 2.020165624E9d);
        this.mContext = context;
    }

    private void setActivityChooserPolicyIfNeeded() {
        if (this.mOnShareTargetSelectedListener == null) {
            return;
        }
        if (this.mOnChooseActivityListener == null) {
            this.mOnChooseActivityListener = new ShareActivityChooserModelPolicy(this);
        }
        ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setOnChooseActivityListener(this.mOnChooseActivityListener);
    }

    @Override // androidx.core.view.ActionProvider
    public boolean hasSubMenu() {
        return true;
    }

    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.mContext);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName));
        }
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(this.mContext, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(R.string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName);
        PackageManager packageManager = this.mContext.getPackageManager();
        int activityCount = activityChooserModel.getActivityCount();
        int iMin = Math.min(activityCount, this.mMaxShownActivityCount);
        for (int i = 0; i < iMin; i++) {
            ResolveInfo activity = activityChooserModel.getActivity(i);
            subMenu.add(0, i, i, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
        }
        if (iMin < activityCount) {
            SubMenu subMenuAddSubMenu = subMenu.addSubMenu(0, iMin, iMin, this.mContext.getString(R.string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < activityCount; i2++) {
                ResolveInfo activity2 = activityChooserModel.getActivity(i2);
                subMenuAddSubMenu.add(0, i2, i2, activity2.loadLabel(packageManager)).setIcon(activity2.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
            }
        }
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener onShareTargetSelectedListener) {
        this.mOnShareTargetSelectedListener = onShareTargetSelectedListener;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareHistoryFileName(String str) {
        this.mShareHistoryFileName = str;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (NPStringFog.decode(new byte[]{2, 88, 2, 68, 93, 12, 7, 24, 15, 88, 70, 0, 13, 66, 72, 87, 81, 17, 10, 89, 8, 24, 97, 32, 45, 114}, "c6f62e", 3.43772702E8d).equals(action) || NPStringFog.decode(new byte[]{89, 95, 85, 22, 88, 81, 92, 31, 88, 10, 67, 93, 86, 69, 31, 5, 84, 76, 81, 94, 95, 74, 100, 125, 118, 117, 110, 41, 98, 116, 108, 120, 97, 40, 114}, "811d78", 1.4616444E9f).equals(action)) {
                updateIntent(intent);
            }
        }
        ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setIntent(intent);
    }

    void updateIntent(Intent intent) {
        if (Build.VERSION.SDK_INT >= 21) {
            intent.addFlags(134742016);
        } else {
            intent.addFlags(524288);
        }
    }
}
