package androidx.core.text;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class TextUtilsCompat {
    private static final String ARAB_SCRIPT_SUBTAG = NPStringFog.decode(new byte[]{121, 64, 4, 85}, "82e73c", -25356);
    private static final String HEBR_SCRIPT_SUBTAG = NPStringFog.decode(new byte[]{121, 93, 1, 67}, "18c1bf", 1.5484686E9f);
    private static final Locale ROOT = new Locale("", "");

    private TextUtilsCompat() {
    }

    private static int getLayoutDirectionFromFirstChar(Locale locale) {
        switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
            case 1:
            case 2:
                return 1;
            default:
                return 0;
        }
    }

    public static int getLayoutDirectionFromLocale(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale != null && !locale.equals(ROOT)) {
            String strMaximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
            if (strMaximizeAndGetScript == null) {
                return getLayoutDirectionFromFirstChar(locale);
            }
            if (strMaximizeAndGetScript.equalsIgnoreCase(ARAB_SCRIPT_SUBTAG) || strMaximizeAndGetScript.equalsIgnoreCase(HEBR_SCRIPT_SUBTAG)) {
                return 1;
            }
        }
        return 0;
    }

    public static String htmlEncode(String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.htmlEncode(str);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\"':
                    sb.append(NPStringFog.decode(new byte[]{17, 23, 22, 91, 65, 93}, "7fc45f", -4.75443378E8d));
                    break;
                case '&':
                    sb.append(NPStringFog.decode(new byte[]{71, 82, 94, 65, 13}, "a33169", 5166));
                    break;
                case '\'':
                    sb.append(NPStringFog.decode(new byte[]{22, 19, 85, 90, 3}, "00fc8b", -2.4765094E8f));
                    break;
                case '<':
                    sb.append(NPStringFog.decode(new byte[]{22, 88, 77, 93}, "049f34", -6344));
                    break;
                case '>':
                    sb.append(NPStringFog.decode(new byte[]{21, 95, 18, 94}, "38fe7e", false, false));
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        return sb.toString();
    }
}
