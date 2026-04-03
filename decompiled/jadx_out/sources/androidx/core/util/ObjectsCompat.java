package androidx.core.util;

import android.os.Build;
import androidx.core.graphics.ColorUtils$$ExternalSyntheticBackport0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class ObjectsCompat {
    private ObjectsCompat() {
    }

    public static boolean equals(Object obj, Object obj2) {
        return Build.VERSION.SDK_INT >= 19 ? ColorUtils$$ExternalSyntheticBackport0.m(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Arrays.hashCode(objArr) : Arrays.hashCode(objArr);
    }

    public static int hashCode(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static <T> T requireNonNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static <T> T requireNonNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static String toString(Object obj, String str) {
        return obj != null ? obj.toString() : str;
    }
}
