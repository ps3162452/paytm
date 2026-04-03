package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ActionProvider {
    private static final String TAG = NPStringFog.decode(new byte[]{39, 7, 17, 95, 10, 88, 54, 22, 10, 64, 12, 82, 3, 22, 77, 69, 16, 70, 22, 11, 23, 66, 76}, "fde6e6", -1.975219358E9d);
    private final Context mContext;
    private SubUiVisibilityListener mSubUiVisibilityListener;
    private VisibilityListener mVisibilityListener;

    public interface SubUiVisibilityListener {
        void onSubUiVisibilityChanged(boolean z);
    }

    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public ActionProvider(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItem menuItem) {
        return onCreateActionView();
    }

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public boolean overridesItemVisibility() {
        return false;
    }

    public void refreshVisibility() {
        if (this.mVisibilityListener == null || !overridesItemVisibility()) {
            return;
        }
        this.mVisibilityListener.onActionProviderVisibilityChanged(isVisible());
    }

    public void reset() {
        this.mVisibilityListener = null;
        this.mSubUiVisibilityListener = null;
    }

    public void setSubUiVisibilityListener(SubUiVisibilityListener subUiVisibilityListener) {
        this.mSubUiVisibilityListener = subUiVisibilityListener;
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        if (this.mVisibilityListener != null && visibilityListener != null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{74, 4, 67, 51, 94, 66, 80, 3, 94, 9, 94, 69, 64, 45, 94, 22, 67, 84, 87, 4, 69, 95, 23, 98, 92, 21, 67, 12, 89, 86, 25, 0, 23, 11, 82, 70, 25, 32, 84, 17, 94, 94, 87, 49, 69, 10, 65, 88, 93, 4, 69, 75, 97, 88, 74, 8, 85, 12, 91, 88, 77, 24, 123, 12, 68, 69, 92, 15, 82, 23, 23, 70, 81, 4, 89, 69, 88, 95, 92, 65, 94, 22, 23, 80, 85, 19, 82, 4, 83, 72, 25, 18, 82, 17, 25, 17, 120, 19, 82, 69, 78, 94, 76, 65, 69, 0, 66, 66, 80, 15, 80, 69, 67, 89, 80, 18, 23}, "9a7e71", true) + getClass().getSimpleName() + NPStringFog.decode(new byte[]{22, 15, 88, 70, 76, 3, 88, 5, 83, 21, 79, 10, 95, 10, 83, 21, 81, 22, 22, 15, 69, 21, 75, 22, 95, 10, 90, 21, 81, 12, 22, 19, 69, 80, 24, 17, 89, 11, 83, 66, 80, 7, 68, 3, 22, 80, 84, 17, 83, 89}, "6f658b", true));
        }
        this.mVisibilityListener = visibilityListener;
    }

    public void subUiVisibilityChanged(boolean z) {
        SubUiVisibilityListener subUiVisibilityListener = this.mSubUiVisibilityListener;
        if (subUiVisibilityListener != null) {
            subUiVisibilityListener.onSubUiVisibilityChanged(z);
        }
    }
}
