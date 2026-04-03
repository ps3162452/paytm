package com.google.android.material.internal;

import android.os.Build;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class ManufacturerUtils {
    private static final String LGE = NPStringFog.decode(new byte[]{9, 83, 7}, "e4b373", -1.985208E9f);
    private static final String MEIZU = NPStringFog.decode(new byte[]{88, 93, 91, 25, 19}, "582cff", 9585);
    private static final String SAMSUNG = NPStringFog.decode(new byte[]{22, 87, 14, 23, 20, 8, 2}, "e6cdaf", -1.686107016E9d);

    private ManufacturerUtils() {
    }

    public static boolean isDateInputKeyboardMissingSeparatorCharacters() {
        return isLGEDevice() || isSamsungDevice();
    }

    public static boolean isLGEDevice() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(LGE);
    }

    public static boolean isMeizuDevice() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(MEIZU);
    }

    public static boolean isSamsungDevice() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(SAMSUNG);
    }
}
