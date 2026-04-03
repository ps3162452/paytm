package me.dm7.barcodescanner.core;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class DisplayUtils {
    public static int getScreenOrientation(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService(NPStringFog.decode(new byte[]{18, 13, 12, 84, 87, 22}, "edb08a", -492585142L))).getDefaultDisplay();
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            return 3;
        }
        return defaultDisplay.getWidth() < defaultDisplay.getHeight() ? 1 : 2;
    }

    public static Point getScreenResolution(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService(NPStringFog.decode(new byte[]{19, 81, 90, 86, 12, 70}, "d842c1", -2.0527482E9f))).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 13) {
            defaultDisplay.getSize(point);
        } else {
            point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        }
        return point;
    }
}
