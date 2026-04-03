package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ICUCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{120, 116, 102, 123, 90, 9, 65, 86, 71}, "17385d", 9.461461E8f);
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT < 24) {
                try {
                    sAddLikelySubtagsMethod = Class.forName(NPStringFog.decode(new byte[]{94, 91, 0, 0, 86, 69, 87, 28, 11, 0, 76, 25, 123, 113, 55}, "22bc97", -2.111814495E9d)).getMethod(NPStringFog.decode(new byte[]{80, 81, 87, 120, 92, 89, 84, 89, 74, 103, 64, 80, 69, 84, 84, 71}, "153452", 5.1677E8f), Locale.class);
                    return;
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{88, 80, 90, 80, 95, 20, 81, 23, 81, 80, 69, 72, 125, 122, 109}, "49830f", -25510));
            if (cls != null) {
                sGetScriptMethod = cls.getMethod(NPStringFog.decode(new byte[]{86, 82, 77, 53, 87, 16, 88, 71, 77}, "179f4b", -8.112242E7f), String.class);
                sAddLikelySubtagsMethod = cls.getMethod(NPStringFog.decode(new byte[]{81, 93, 83, 117, 95, 82, 85, 85, 78, 106, 67, 91, 68, 88, 80, 74}, "097969", -4.6724656E8f), String.class);
            }
        } catch (Exception e2) {
            sGetScriptMethod = null;
            sAddLikelySubtagsMethod = null;
            Log.w(NPStringFog.decode(new byte[]{47, 37, 49, 34, 91, 90, 22, 7, 16}, "ffda47", true), e2);
        }
    }

    private ICUCompat() {
    }

    private static String addLikelySubtags(Locale locale) {
        String string = locale.toString();
        try {
            Method method = sAddLikelySubtagsMethod;
            if (method != null) {
                return (String) method.invoke(null, string);
            }
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
        }
        return string;
    }

    private static String getScript(String str) {
        try {
            Method method = sGetScriptMethod;
            if (method != null) {
                return (String) method.invoke(null, str);
            }
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
        }
        return null;
    }

    public static String maximizeAndGetScript(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT < 21) {
            String strAddLikelySubtags = addLikelySubtags(locale);
            if (strAddLikelySubtags != null) {
                return getScript(strAddLikelySubtags);
            }
            return null;
        }
        try {
            return ((Locale) sAddLikelySubtagsMethod.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
            return locale.getScript();
        }
    }
}
