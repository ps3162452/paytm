package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ViewParentCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{48, 10, 83, 21, 52, 89, 20, 6, 88, 22, 39, 87, 11, 19, 87, 22}, "fc6bd8", -101557340L);
    private static int[] sTempNestedScrollConsumed;

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] iArr = sTempNestedScrollConsumed;
        if (iArr == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{100, 80, 87, 67, 100, 2, 64, 92, 92, 64, 20}, "29244c", -981590804L) + viewParent + NPStringFog.decode(new byte[]{22, 80, 94, 85, 18, 25, 88, 91, 69, 16, 8, 84, 70, 88, 84, 93, 4, 87, 66, 20, 88, 94, 21, 92, 68, 82, 80, 83, 4, 25, 91, 81, 69, 88, 14, 93, 22, 91, 95, 126, 4, 74, 66, 81, 85, 118, 13, 80, 88, 83}, "6410a9", -3.20270893E8d), e);
            }
        } else if (viewParent instanceof NestedScrollingParent) {
            return ((NestedScrollingParent) viewParent).onNestedFling(view, f, f2, z);
        }
        return false;
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{48, 88, 4, 68, 52, 0, 20, 84, 15, 71, 68}, "f1a3da", 1.290895E9f) + viewParent + NPStringFog.decode(new byte[]{20, 81, 13, 86, 17, 65, 90, 90, 22, 19, 11, 12, 68, 89, 7, 94, 7, 15, 64, 21, 11, 93, 22, 4, 70, 83, 3, 80, 7, 65, 89, 80, 22, 91, 13, 5, 20, 90, 12, 125, 7, 18, 64, 80, 6, 99, 16, 4, 114, 89, 11, 93, 5}, "45b3ba", 1.9221732E9f), e);
            }
        } else if (viewParent instanceof NestedScrollingParent) {
            return ((NestedScrollingParent) viewParent).onNestedPreFling(view, f, f2);
        }
        return false;
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(viewParent, view, i, i2, iArr, 0);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onNestedPreScroll(view, i, i2, iArr);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{99, 10, 6, 17, 104, 81, 71, 6, 13, 18, 24}, "5ccf80", false, false) + viewParent + NPStringFog.decode(new byte[]{68, 83, 12, 92, 75, 65, 10, 88, 23, 25, 81, 12, 20, 91, 6, 84, 93, 15, 16, 23, 10, 87, 76, 4, 22, 81, 2, 90, 93, 65, 9, 82, 23, 81, 87, 5, 68, 88, 13, 119, 93, 18, 16, 82, 7, 105, 74, 4, 55, 84, 17, 86, 84, 13}, "d7c98a", true), e);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        onNestedScroll(viewParent, view, i, i2, i3, i4, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        onNestedScroll(viewParent, view, i, i2, i3, i4, i5, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onNestedScroll(view, i, i2, i3, i4);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{55, 94, 4, 19, 104, 81, 19, 82, 15, 16, 24}, "a7ad80", true) + viewParent + NPStringFog.decode(new byte[]{66, 81, 89, 3, 22, 25, 12, 90, 66, 70, 12, 84, 18, 89, 83, 11, 0, 87, 22, 21, 95, 8, 17, 92, 16, 83, 87, 5, 0, 25, 15, 80, 66, 14, 10, 93, 66, 90, 88, 40, 0, 74, 22, 80, 82, 53, 6, 75, 13, 89, 90}, "b56fe9", false, true), e);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
        onNestedScrollAccepted(viewParent, view, view2, i, 0);
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onNestedScrollAccepted(view, view2, i);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{111, 91, 87, 18, 101, 86, 75, 87, 92, 17, 21}, "922e57", false) + viewParent + NPStringFog.decode(new byte[]{23, 0, 91, 4, 21, 22, 89, 11, 64, 65, 15, 91, 71, 8, 81, 12, 3, 88, 67, 68, 93, 15, 18, 83, 69, 2, 85, 2, 3, 22, 90, 1, 64, 9, 9, 82, 23, 11, 90, 47, 3, 69, 67, 1, 80, 50, 5, 68, 88, 8, 88, 32, 5, 85, 82, 20, 64, 4, 2}, "7d4af6", -8.45185519E8d), e);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
        return onStartNestedScroll(viewParent, view, view2, i, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i, i2);
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    return viewParent.onStartNestedScroll(view, view2, i);
                } catch (AbstractMethodError e) {
                    Log.e(TAG, NPStringFog.decode(new byte[]{103, 11, 6, 17, 53, 7, 67, 7, 13, 18, 69}, "1bcfef", -3.18474E8f) + viewParent + NPStringFog.decode(new byte[]{19, 1, 14, 6, 17, 17, 93, 10, 21, 67, 11, 92, 67, 9, 4, 14, 7, 95, 71, 69, 8, 13, 22, 84, 65, 3, 0, 0, 7, 17, 94, 0, 21, 11, 13, 85, 19, 10, 15, 48, 22, 80, 65, 17, 47, 6, 17, 69, 86, 1, 50, 0, 16, 94, 95, 9}, "3eacb1", -29515), e);
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onStartNestedScroll(view, view2, i);
            }
        }
        return false;
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i);
            return;
        }
        if (i == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onStopNestedScroll(view);
                    return;
                }
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{111, 13, 84, 78, 98, 87, 75, 1, 95, 77, 18}, "9d1926", 29390) + viewParent + NPStringFog.decode(new byte[]{20, 87, 90, 93, 71, 67, 90, 92, 65, 24, 93, 14, 68, 95, 80, 85, 81, 13, 64, 19, 92, 86, 64, 6, 70, 85, 84, 91, 81, 67, 89, 86, 65, 80, 91, 7, 20, 92, 91, 107, 64, 12, 68, 125, 80, 75, 64, 6, 80, 96, 86, 74, 91, 15, 88}, "43584c", -1.1187867E8f), e);
            }
        }
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
