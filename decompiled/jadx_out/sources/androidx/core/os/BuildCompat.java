package androidx.core.os;

import android.os.Build;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class BuildCompat {

    public @interface PrereleaseSdkCheck {
    }

    private BuildCompat() {
    }

    @Deprecated
    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Deprecated
    public static boolean isAtLeastNMR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    @Deprecated
    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @Deprecated
    public static boolean isAtLeastOMR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    @Deprecated
    public static boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    protected static boolean isAtLeastPreReleaseCodename(String str, String str2) {
        return !NPStringFog.decode(new byte[]{55, 35, 127}, "ef35e9", -1.819737917E9d).equals(str2) && str2.compareTo(str) >= 0;
    }

    @Deprecated
    public static boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @Deprecated
    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAtLeastS() {
        return Build.VERSION.SDK_INT >= 31 || isAtLeastPreReleaseCodename(NPStringFog.decode(new byte[]{107}, "83e557", -7955), Build.VERSION.CODENAME);
    }

    public static boolean isAtLeastT() {
        return isAtLeastPreReleaseCodename(NPStringFog.decode(new byte[]{53}, "a6fb00", -653875263L), Build.VERSION.CODENAME);
    }
}
