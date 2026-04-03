package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityWindowInfo;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private Object mInfo;

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public static AccessibilityWindowInfoCompat obtain() {
        if (Build.VERSION.SDK_INT >= 21) {
            return wrapNonNullInstance(AccessibilityWindowInfo.obtain());
        }
        return null;
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (Build.VERSION.SDK_INT < 21 || accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(AccessibilityWindowInfo.obtain((AccessibilityWindowInfo) accessibilityWindowInfoCompat.mInfo));
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{53, 58, 103, 113, 102, 117, 49, 51, 123, 125, 122, 117, 53, 42, 120, 122}, "ac7494", -2.0953266E9f);
            case 2:
                return NPStringFog.decode(new byte[]{97, 58, 96, 112, 61, 40, 123, 51, 101, 97, 61, 44, 112, 55, 120, 122, 38}, "5c05ba", true);
            case 3:
                return NPStringFog.decode(new byte[]{99, 104, 98, 117, 58, 54, 110, 98, 102, 117, 40}, "7120ee", 1.5095425E9f);
            case 4:
                return NPStringFog.decode(new byte[]{96, 60, 97, 32, 107, 113, 119, 38, 116, 54, 103, 121, 118, 44, 125, 44, 96, 105, 107, 42, 103, 32, 102, 124, 117, 60}, "4e1e40", -1.4476867E8f);
            default:
                return NPStringFog.decode(new byte[]{93, 96, 118, 124, 125, 125, 54, 123, 6}, "a58732", -3.1474445E8f);
        }
    }

    static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityWindowInfoCompat)) {
            AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
            Object obj2 = this.mInfo;
            return obj2 == null ? accessibilityWindowInfoCompat.mInfo == null : obj2.equals(accessibilityWindowInfoCompat.mInfo);
        }
        return false;
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getAnchor());
        }
        return null;
    }

    public void getBoundsInScreen(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.mInfo).getBoundsInScreen(rect);
        }
    }

    public AccessibilityWindowInfoCompat getChild(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getChild(i));
        }
        return null;
    }

    public int getChildCount() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).getChildCount();
        }
        return 0;
    }

    public int getId() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).getId();
        }
        return -1;
    }

    public int getLayer() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).getLayer();
        }
        return -1;
    }

    public AccessibilityWindowInfoCompat getParent() {
        if (Build.VERSION.SDK_INT >= 21) {
            return wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getParent());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getRoot() {
        if (Build.VERSION.SDK_INT >= 21) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getRoot());
        }
        return null;
    }

    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((AccessibilityWindowInfo) this.mInfo).getTitle();
        }
        return null;
    }

    public int getType() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).getType();
        }
        return -1;
    }

    public int hashCode() {
        Object obj = this.mInfo;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).isAccessibilityFocused();
        }
        return true;
    }

    public boolean isActive() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).isActive();
        }
        return true;
    }

    public boolean isFocused() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.mInfo).isFocused();
        }
        return true;
    }

    public void recycle() {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.mInfo).recycle();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append(NPStringFog.decode(new byte[]{114, 84, 6, 7, 71, 17, 90, 85, 12, 14, 93, 22, 74, 96, 12, 12, 80, 13, 68, 126, 11, 4, 91, 57}, "37eb4b", -26307));
        sb.append(NPStringFog.decode(new byte[]{80, 81, 14}, "953f27", -1.2277032E9f));
        sb.append(getId());
        sb.append(NPStringFog.decode(new byte[]{25, 24, 67, 78, 19, 84, 8}, "5877c1", -2728));
        sb.append(typeToString(getType()));
        sb.append(NPStringFog.decode(new byte[]{29, 67, 92, 87, 24, 93, 67, 94}, "1c06a8", -4723));
        sb.append(getLayer());
        sb.append(NPStringFog.decode(new byte[]{29, 20, 82, 90, 17, 91, 85, 71, 13}, "1405d5", false, true));
        sb.append(rect);
        sb.append(NPStringFog.decode(new byte[]{20, 19, 81, 89, 7, 19, 75, 86, 83, 11}, "8376df", true, true));
        sb.append(isFocused());
        sb.append(NPStringFog.decode(new byte[]{78, 24, 82, 84, 18, 80, 20, 93, 14}, "b837f9", -6895548.0d));
        sb.append(isActive());
        sb.append(NPStringFog.decode(new byte[]{27, 23, 80, 86, 21, 50, 86, 69, 93, 89, 18, 95}, "7787fb", -1279719379L));
        sb.append(getParent() != null);
        sb.append(NPStringFog.decode(new byte[]{31, 19, 91, 5, 71, 33, 91, 90, 95, 0, 70, 7, 93, 14}, "333d4b", false));
        sb.append(getChildCount() > 0);
        sb.append(']');
        return sb.toString();
    }
}
