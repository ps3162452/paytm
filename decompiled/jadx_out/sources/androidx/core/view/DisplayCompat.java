package androidx.core.view;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class DisplayCompat {
    private static final int DISPLAY_SIZE_4K_HEIGHT = 2160;
    private static final int DISPLAY_SIZE_4K_WIDTH = 3840;

    static class Api17Impl {
        private Api17Impl() {
        }

        static void getRealSize(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static ModeCompat getMode(Context context, Display display) {
            Display.Mode mode = display.getMode();
            Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
            return (currentDisplaySizeFromWorkarounds == null || physicalSizeEquals(mode, currentDisplaySizeFromWorkarounds)) ? new ModeCompat(mode, true) : new ModeCompat(mode, currentDisplaySizeFromWorkarounds);
        }

        public static ModeCompat[] getSupportedModes(Context context, Display display) {
            Display.Mode[] supportedModes = display.getSupportedModes();
            ModeCompat[] modeCompatArr = new ModeCompat[supportedModes.length];
            Display.Mode mode = display.getMode();
            Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
            if (currentDisplaySizeFromWorkarounds == null || physicalSizeEquals(mode, currentDisplaySizeFromWorkarounds)) {
                for (int i = 0; i < supportedModes.length; i++) {
                    modeCompatArr[i] = new ModeCompat(supportedModes[i], physicalSizeEquals(supportedModes[i], mode));
                }
            } else {
                for (int i2 = 0; i2 < supportedModes.length; i2++) {
                    modeCompatArr[i2] = physicalSizeEquals(supportedModes[i2], mode) ? new ModeCompat(supportedModes[i2], currentDisplaySizeFromWorkarounds) : new ModeCompat(supportedModes[i2], false);
                }
            }
            return modeCompatArr;
        }

        static boolean isCurrentModeTheLargestMode(Display display) {
            Display.Mode mode = display.getMode();
            Display.Mode[] supportedModes = display.getSupportedModes();
            for (int i = 0; i < supportedModes.length; i++) {
                if (mode.getPhysicalHeight() < supportedModes[i].getPhysicalHeight() || mode.getPhysicalWidth() < supportedModes[i].getPhysicalWidth()) {
                    return false;
                }
            }
            return true;
        }

        static boolean physicalSizeEquals(Display.Mode mode, Point point) {
            return (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) || (mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x);
        }

        static boolean physicalSizeEquals(Display.Mode mode, Display.Mode mode2) {
            return mode.getPhysicalWidth() == mode2.getPhysicalWidth() && mode.getPhysicalHeight() == mode2.getPhysicalHeight();
        }
    }

    public static final class ModeCompat {
        private final boolean mIsNative;
        private final Display.Mode mMode;
        private final Point mPhysicalSize;

        ModeCompat(Point point) {
            Preconditions.checkNotNull(point, NPStringFog.decode(new byte[]{19, 94, 31, 71, 93, 91, 2, 90, 53, 93, 78, 93, 67, 11, 91, 20, 90, 77, 15, 90}, "c6f448", 1.559269E9f));
            this.mPhysicalSize = point;
            this.mMode = null;
            this.mIsNative = true;
        }

        ModeCompat(Display.Mode mode, Point point) {
            Preconditions.checkNotNull(mode, NPStringFog.decode(new byte[]{9, 11, 7, 82, 19, 89, 89, 68, 13, 66, 95, 8, 72, 68, 0, 86, 93, 67, 16, 68, 20, 69, 82, 20, 68, 5, 67, 89, 70, 8, 8, 68, 17, 82, 85, 1, 22, 1, 13, 84, 86}, "ddc73d", false));
            Preconditions.checkNotNull(point, NPStringFog.decode(new byte[]{68, 81, 29, 71, 91, 83, 85, 85, 55, 93, 72, 85, 20, 4, 89, 20, 92, 69, 88, 85}, "49d420", false, false));
            this.mPhysicalSize = point;
            this.mMode = mode;
            this.mIsNative = true;
        }

        ModeCompat(Display.Mode mode, boolean z) {
            Preconditions.checkNotNull(mode, NPStringFog.decode(new byte[]{88, 86, 6, 84, 25, 94, 8, 25, 12, 68, 85, 15, 25, 25, 1, 80, 87, 68, 65, 25, 21, 67, 88, 19, 21, 88, 66, 95, 76, 15, 89, 25, 16, 84, 95, 6, 71, 92, 12, 82, 92}, "59b19c", 1018636613L));
            this.mPhysicalSize = new Point(mode.getPhysicalWidth(), mode.getPhysicalHeight());
            this.mMode = mode;
            this.mIsNative = z;
        }

        public int getPhysicalHeight() {
            return this.mPhysicalSize.y;
        }

        public int getPhysicalWidth() {
            return this.mPhysicalSize.x;
        }

        @Deprecated
        public boolean isNative() {
            return this.mIsNative;
        }

        public Display.Mode toMode() {
            return this.mMode;
        }
    }

    private DisplayCompat() {
    }

    static Point getCurrentDisplaySizeFromWorkarounds(Context context, Display display) {
        Point physicalDisplaySizeFromSystemProperties = Build.VERSION.SDK_INT < 28 ? parsePhysicalDisplaySizeFromSystemProperties(NPStringFog.decode(new byte[]{68, 75, 18, 25, 92, 10, 68, 66, 13, 86, 65, 78, 68, 91, 27, 82}, "72a78c", false), display) : parsePhysicalDisplaySizeFromSystemProperties(NPStringFog.decode(new byte[]{20, 3, 11, 92, 89, 22, 76, 2, 12, 75, 70, 8, 3, 31, 72, 75, 95, 30, 7}, "bfe86d", -7.78184277E8d), display);
        if (physicalDisplaySizeFromSystemProperties != null) {
            return physicalDisplaySizeFromSystemProperties;
        }
        if (isSonyBravia4kTv(context) && isCurrentModeTheLargestMode(display)) {
            return new Point(DISPLAY_SIZE_4K_WIDTH, DISPLAY_SIZE_4K_HEIGHT);
        }
        return null;
    }

    private static Point getDisplaySize(Context context, Display display) {
        Point currentDisplaySizeFromWorkarounds = getCurrentDisplaySizeFromWorkarounds(context, display);
        if (currentDisplaySizeFromWorkarounds == null) {
            currentDisplaySizeFromWorkarounds = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                Api17Impl.getRealSize(display, currentDisplaySizeFromWorkarounds);
            } else {
                display.getSize(currentDisplaySizeFromWorkarounds);
            }
        }
        return currentDisplaySizeFromWorkarounds;
    }

    public static ModeCompat getMode(Context context, Display display) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getMode(context, display) : new ModeCompat(getDisplaySize(context, display));
    }

    public static ModeCompat[] getSupportedModes(Context context, Display display) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getSupportedModes(context, display) : new ModeCompat[]{getMode(context, display)};
    }

    private static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{84, 86, 6, 68, 91, 90, 81, 22, 13, 69, 26, 96, 76, 75, 22, 83, 89, 99, 71, 87, 18, 83, 70, 71, 92, 93, 17}, "58b643", 13497));
            return (String) cls.getMethod(NPStringFog.decode(new byte[]{84, 3, 70}, "3f2515", -1301416176L), String.class).invoke(cls, str);
        } catch (Exception e) {
            return null;
        }
    }

    static boolean isCurrentModeTheLargestMode(Display display) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.isCurrentModeTheLargestMode(display);
        }
        return true;
    }

    private static boolean isSonyBravia4kTv(Context context) {
        return isTv(context) && NPStringFog.decode(new byte[]{107, 93, 92, 65}, "822837", -1342393837L).equals(Build.MANUFACTURER) && Build.MODEL.startsWith(NPStringFog.decode(new byte[]{116, 97, 113, 50, 124, 121}, "630d58", true, true)) && context.getPackageManager().hasSystemFeature(NPStringFog.decode(new byte[]{85, 86, 92, 26, 17, 90, 88, 64, 31, 80, 22, 67, 24, 81, 80, 70, 6, 66, 87, 75, 84, 26, 18, 84, 88, 92, 93, 26, 19, 83, 94, 93}, "6914b5", 5329));
    }

    private static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService(NPStringFog.decode(new byte[]{69, 90, 84, 13, 80, 83}, "039b46", 3.636179E8f));
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    private static Point parseDisplaySize(String str) throws NumberFormatException {
        String[] strArrSplit = str.trim().split(NPStringFog.decode(new byte[]{30}, "fee957", 1.444759033E9d), -1);
        if (strArrSplit.length == 2) {
            int i = Integer.parseInt(strArrSplit[0]);
            int i2 = Integer.parseInt(strArrSplit[1]);
            if (i > 0 && i2 > 0) {
                return new Point(i, i2);
            }
        }
        throw new NumberFormatException();
    }

    private static Point parsePhysicalDisplaySizeFromSystemProperties(String str, Display display) {
        if (display.getDisplayId() != 0) {
            return null;
        }
        String systemProperty = getSystemProperty(str);
        if (TextUtils.isEmpty(systemProperty)) {
            return null;
        }
        try {
            return parseDisplaySize(systemProperty);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
