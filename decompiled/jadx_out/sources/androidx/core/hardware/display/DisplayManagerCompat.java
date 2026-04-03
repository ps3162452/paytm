package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = NPStringFog.decode(new byte[]{5, 95, 7, 22, 95, 93, 0, 31, 11, 5, 66, 80, 19, 80, 17, 1, 30, 80, 13, 66, 19, 8, 81, 77, 74, 82, 2, 16, 85, 83, 11, 67, 26, 74, 96, 102, 33, 98, 38, 42, 100, 117, 48, 120, 44, 42}, "d1cd04", 1.3705558E9f);
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap<>();
    private final Context mContext;

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    public static DisplayManagerCompat getInstance(Context context) {
        DisplayManagerCompat displayManagerCompat;
        WeakHashMap<Context, DisplayManagerCompat> weakHashMap = sInstances;
        synchronized (weakHashMap) {
            displayManagerCompat = weakHashMap.get(context);
            if (displayManagerCompat == null) {
                displayManagerCompat = new DisplayManagerCompat(context);
                weakHashMap.put(context, displayManagerCompat);
            }
        }
        return displayManagerCompat;
    }

    public Display getDisplay(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{93, 13, 18, 64, 85, 80, 64}, "9da091", true, false))).getDisplay(i);
        }
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{17, 8, 87, 84, 94, 21}, "fa901b", 1572531351L))).getDefaultDisplay();
        if (defaultDisplay.getDisplayId() != i) {
            return null;
        }
        return defaultDisplay;
    }

    public Display[] getDisplays() {
        return Build.VERSION.SDK_INT >= 17 ? ((DisplayManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{86, 13, 69, 70, 10, 2, 75}, "2d66fc", true, true))).getDisplays() : new Display[]{((WindowManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{64, 90, 13, 85, 13, 21}, "73c1bb", false))).getDefaultDisplay()};
    }

    public Display[] getDisplays(String str) {
        return Build.VERSION.SDK_INT >= 17 ? ((DisplayManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{83, 81, 22, 19, 91, 2, 78}, "78ec7c", -2.40040549E8d))).getDisplays(str) : str == null ? new Display[0] : new Display[]{((WindowManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{71, 92, 10, 87, 94, 71}, "05d310", false))).getDefaultDisplay()};
    }
}
