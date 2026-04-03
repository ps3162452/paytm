package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.ToolbarUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class BadgeUtils {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{36, 87, 85, 82, 0, 100, 18, 95, 93, 70}, "f615e1", -1.62593027E9d);
    public static final boolean USE_COMPAT_PARENT;

    static {
        USE_COMPAT_PARENT = Build.VERSION.SDK_INT < 18;
    }

    private BadgeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void attachBadgeContentDescription(BadgeDrawable badgeDrawable, View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat(badgeDrawable) { // from class: com.google.android.material.badge.BadgeUtils.3
                final BadgeDrawable val$badgeDrawable;

                {
                    this.val$badgeDrawable = badgeDrawable;
                }

                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(this.val$badgeDrawable.getContentDescription());
                }
            });
        } else {
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat(view.getAccessibilityDelegate(), badgeDrawable) { // from class: com.google.android.material.badge.BadgeUtils.2
                final BadgeDrawable val$badgeDrawable;

                {
                    this.val$badgeDrawable = badgeDrawable;
                }

                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(this.val$badgeDrawable.getContentDescription());
                }
            });
        }
    }

    public static void attachBadgeDrawable(BadgeDrawable badgeDrawable, View view) {
        attachBadgeDrawable(badgeDrawable, view, (FrameLayout) null);
    }

    public static void attachBadgeDrawable(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        setBadgeDrawableBounds(badgeDrawable, view, frameLayout);
        if (badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(badgeDrawable);
        } else {
            if (USE_COMPAT_PARENT) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{103, 71, 75, 81, 93, 87, 19, 65, 93, 24, 65, 85, 85, 80, 64, 93, 93, 83, 86, 21, 92, 77, 95, 92, 19, 86, 71, 75, 71, 95, 94, 119, 83, 92, 84, 85, 99, 84, 64, 93, 93, 68}, "352830", true));
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static void attachBadgeDrawable(BadgeDrawable badgeDrawable, Toolbar toolbar, int i) {
        attachBadgeDrawable(badgeDrawable, toolbar, i, null);
    }

    public static void attachBadgeDrawable(BadgeDrawable badgeDrawable, Toolbar toolbar, int i, FrameLayout frameLayout) {
        toolbar.post(new Runnable(toolbar, i, badgeDrawable, frameLayout) { // from class: com.google.android.material.badge.BadgeUtils.1
            final BadgeDrawable val$badgeDrawable;
            final FrameLayout val$customBadgeParent;
            final int val$menuItemId;
            final Toolbar val$toolbar;

            {
                this.val$toolbar = toolbar;
                this.val$menuItemId = i;
                this.val$badgeDrawable = badgeDrawable;
                this.val$customBadgeParent = frameLayout;
            }

            @Override // java.lang.Runnable
            public void run() {
                ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(this.val$toolbar, this.val$menuItemId);
                if (actionMenuItemView != null) {
                    BadgeUtils.setToolbarOffset(this.val$badgeDrawable, this.val$toolbar.getResources());
                    BadgeUtils.attachBadgeDrawable(this.val$badgeDrawable, actionMenuItemView, this.val$customBadgeParent);
                    BadgeUtils.attachBadgeContentDescription(this.val$badgeDrawable, actionMenuItemView);
                }
            }
        });
    }

    public static SparseArray<BadgeDrawable> createBadgeDrawablesFromSavedStates(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= parcelableSparseArray.size()) {
                return sparseArray;
            }
            int iKeyAt = parcelableSparseArray.keyAt(i2);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i2);
            if (state == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 88, 86, 86, 92, 39, 17, 88, 69, 80, 91, 15, 6, 30, 65, 17, 74, 2, 21, 92, 86, 98, 77, 2, 23, 92, 18, 82, 88, 13, 13, 86, 70, 17, 91, 6, 67, 87, 71, 93, 85}, "c9219c", 1.6758025E9f));
            }
            sparseArray.put(iKeyAt, BadgeDrawable.createFromSavedState(context, state));
            i = i2 + 1;
        }
    }

    public static ParcelableSparseArray createParcelableBadgeStates(SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= sparseArray.size()) {
                return parcelableSparseArray;
            }
            int iKeyAt = sparseArray.keyAt(i2);
            BadgeDrawable badgeDrawableValueAt = sparseArray.valueAt(i2);
            if (badgeDrawableValueAt == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{7, 87, 0, 3, 6, 125, 23, 87, 19, 5, 1, 85, 0, 22, 7, 5, 13, 87, 10, 66, 68, 6, 6, 25, 11, 67, 8, 8}, "e6ddc9", 902618692L));
            }
            parcelableSparseArray.put(iKeyAt, badgeDrawableValueAt.getSavedState());
            i = i2 + 1;
        }
    }

    private static void detachBadgeContentDescription(View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, null);
        } else {
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat(view.getAccessibilityDelegate()) { // from class: com.google.android.material.badge.BadgeUtils.4
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(null);
                }
            });
        }
    }

    public static void detachBadgeDrawable(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (USE_COMPAT_PARENT || badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void detachBadgeDrawable(BadgeDrawable badgeDrawable, Toolbar toolbar, int i) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(toolbar, i);
        if (actionMenuItemView == null) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{102, 70, 65, 80, 87, 95, 18, 64, 87, 25, 75, 93, 95, 91, 78, 92, 25, 90, 83, 80, 95, 92, 25, 94, 64, 91, 85, 25, 88, 24, 92, 65, 84, 85, 25, 85, 87, 90, 77, 112, 77, 93, 95, 98, 81, 92, 78, 2, 18}, "248998", -700024074L) + i);
            return;
        }
        removeToolbarOffset(badgeDrawable);
        detachBadgeDrawable(badgeDrawable, actionMenuItemView);
        detachBadgeContentDescription(actionMenuItemView);
    }

    static void removeToolbarOffset(BadgeDrawable badgeDrawable) {
        badgeDrawable.setAdditionalHorizontalOffset(0);
        badgeDrawable.setAdditionalVerticalOffset(0);
    }

    public static void setBadgeDrawableBounds(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.updateBadgeCoordinates(view, frameLayout);
    }

    static void setToolbarOffset(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.setAdditionalHorizontalOffset(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.setAdditionalVerticalOffset(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void updateBadgeBounds(Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }
}
