package androidx.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;

    private AccessibilityServiceInfoCompat() {
    }

    public static String capabilityToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{38, 119, 104, 117, 123, 42, 41, 127, 108, 109, 102, 32, 36, 120, 103, 102, 124, 55, 55, 127, 125, 98, 124, 60, 50, 127, 118, 112, 118, 52, 58, 117, 119, 122, 109, 38, 43, 98}, "e6849c", true);
            case 2:
                return NPStringFog.decode(new byte[]{115, 118, 53, 114, 33, 45, 124, 126, 49, 106, 60, 39, 113, 121, 58, 97, 38, 53, 101, 114, 54, 103, 60, 48, 127, 98, 38, 123, 60, 33, 104, 103, 41, 124, 49, 37, 100, 126, 42, 125}, "07e3cd", -32036);
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                return NPStringFog.decode(new byte[]{100, 122, 120, 122, 41, 99, 127}, "1434f4", -6.0322406E8f);
            case 4:
                return NPStringFog.decode(new byte[]{117, 32, 52, 120, 114, 113, 122, 40, 48, 96, 111, 123, 119, 47, 59, 107, 117, 105, 99, 36, 55, 109, 111, 125, 120, 41, 37, 119, 115, 125, 114, 62, 51, 124, 114, 103, 119, 34, 39, 124, 99, 107, 127, 35, 45, 117, 121, 108, 111}, "6ad908", -4316);
            case 8:
                return NPStringFog.decode(new byte[]{39, 119, 97, 113, 35, 127, 40, 127, 101, 105, 62, 117, 37, 120, 110, 118, 40, 122, 48, 115, 99, 111, 42, 115, 61, 105, 116, 102, 36, 120, 48, 101}, "d610a6", -9.359183E8f);
        }
    }

    public static String feedbackTypeToString(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{111}, "4aaf25", -12096));
        while (i > 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            i &= iNumberOfTrailingZeros ^ (-1);
            if (sb.length() > 1) {
                sb.append(NPStringFog.decode(new byte[]{25, 21}, "5518f4", 1.88771497E9d));
            }
            switch (iNumberOfTrailingZeros) {
                case 1:
                    sb.append(NPStringFog.decode(new byte[]{36, 35, 35, 39, 112, 115, 33, 45, 57, 48, 98, 125, 41, 35, 40}, "bffc22", 3326520.0d));
                    break;
                case 2:
                    sb.append(NPStringFog.decode(new byte[]{32, 113, 117, 117, 36, 112, 37, 127, 111, 121, 39, 97, 50, 125, 115}, "f401f1", true));
                    break;
                case 4:
                    sb.append(NPStringFog.decode(new byte[]{117, 112, 113, 112, 112, 120, 112, 126, 107, 117, 103, 125, 122, 119, 120, 113}, "354429", -1.164468924E9d));
                    break;
                case 8:
                    sb.append(NPStringFog.decode(new byte[]{35, 33, 124, 33, 33, 119, 38, 47, 102, 51, 42, 101, 48, 37, 117}, "ed9ec6", -1834393192L));
                    break;
                case 16:
                    sb.append(NPStringFog.decode(new byte[]{39, 36, 125, 34, 33, 118, 34, 42, 103, 33, 38, 121, 36, 51, 113, 37}, "aa8fc7", 6.78060926E8d));
                    break;
            }
        }
        sb.append(NPStringFog.decode(new byte[]{105}, "41f4b8", -14683));
        return sb.toString();
    }

    public static String flagToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{114, 114, 127, 34, 49, 42, 98}, "679cdf", false, false);
            case 2:
                return NPStringFog.decode(new byte[]{37, 120, 116, 35, 102, 112, 45, 119, 121, 49, 125, 124, 60, 122, 122, 48, 102, 112, 46, 100, 122, 54, 109, 120, 45, 96, 106, 50, 112, 124, 52, 103}, "c45d99", 16350);
            case 4:
                return NPStringFog.decode(new byte[]{35, 47, 116, 35, 108, 51, 32, 50, 96, 33, 96, 53, 58, 55, 122, 49, 112, 41, 58, 38, 109, 52, 127, 46, 55, 34, 97, 45, 124, 47, 58, 46, 122, 32, 118}, "ec5d3a", -2973);
            case 8:
                return NPStringFog.decode(new byte[]{37, 117, 114, 38, 57, 100, 38, 104, 102, 36, 53, 98, 60, 124, 125, 41, 39, 120, 32, 124, 119, 62, 49, 115, 33, 102, 114, 34, 37, 115, 48, 106, 122, 35, 47, 122, 42, 109, 106}, "c93af6", 985767701L);
            case 16:
                return NPStringFog.decode(new byte[]{117, 120, 118, 112, 109, 54, 118, 100, 120, 101, 102, 59, 101, 125, 114, 96, 109, 45, 119, 103}, "34772d", -1.640851527E9d);
            case 32:
                return NPStringFog.decode(new byte[]{127, 121, 37, 126, 106, 106, 124, 100, 49, 124, 102, 108, 102, 115, 45, 117, 97, 125, 107, 106, 47, 124, 108, 103, 124, 99, 33, 119, 97, 107}, "95d958", -8.81733273E8d);
            default:
                return null;
        }
    }

    public static int getCapabilities(AccessibilityServiceInfo accessibilityServiceInfo) {
        return Build.VERSION.SDK_INT >= 18 ? accessibilityServiceInfo.getCapabilities() : accessibilityServiceInfo.getCanRetrieveWindowContent() ? 1 : 0;
    }

    public static String loadDescription(AccessibilityServiceInfo accessibilityServiceInfo, PackageManager packageManager) {
        return Build.VERSION.SDK_INT >= 16 ? accessibilityServiceInfo.loadDescription(packageManager) : accessibilityServiceInfo.getDescription();
    }
}
