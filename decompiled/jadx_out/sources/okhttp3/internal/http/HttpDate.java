package okhttp3.internal.http;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import n.NPStringFog;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class HttpDate {
    public static final long MAX_DATE = 253402300799999L;
    private static final ThreadLocal<DateFormat> STANDARD_DATE_FORMAT = new ThreadLocal<DateFormat>() { // from class: okhttp3.internal.http.HttpDate.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(NPStringFog.decode(new byte[]{124, 36, 39, 28, 24, 84, 93, 65, 47, 125, 117, 16, 64, 24, 27, 73, 24, 120, 113, 91, 15, 93, 2, 67, 74, 65, 69, 119, 117, 100, 30}, "9ab080", 25396), Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(Util.UTC);
            return simpleDateFormat;
        }
    };
    private static final String[] BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS = {NPStringFog.decode(new byte[]{114, 112, 115, 21, 24, 84, 83, 21, 123, 116, 117, 16, 78, 76, 79, 64, 24, 120, 127, 15, 91, 84, 2, 67, 68, 21, 76, 67, 66}, "756980", 31789), NPStringFog.decode(new byte[]{39, 119, 35, 113, 26, 17, 6, 86, 75, 121, 123, 124, 79, 75, 31, 20, 126, 121, 88, 95, 11, 14, 69, 66, 66, 72, 28, 78}, "b2f461", -5.270808E8f), NPStringFog.decode(new byte[]{113, 125, 36, 25, 126, 127, 121, 24, 5, 25, 123, 122, 14, 85, 12, 3, 64, 65, 20, 65, 24, 64, 74}, "48a932", true), NPStringFog.decode(new byte[]{115, 117, 118, 29, 17, 6, 82, 29, 126, 124, 124, 79, 79, 73, 74, 72, 17, 42, 126, 10, 94, 92, 11, 17, 69, 16, 73}, "60311b", -28524628L), NPStringFog.decode(new byte[]{113, 125, 112, 24, 16, 82, 80, 21, 120, 121, 125, 27, 77, 65, 76, 77, 16, 126, 124, 21, 88, 89, 29, 69, 71, 24, 79}, "485406", false), NPStringFog.decode(new byte[]{124, 113, 118, 27, 24, 5, 93, 20, 126, 122, 117, 65, 64, 77, 19, 127, 112, 91, 84, 89, 9, 68, 75, 65, 67}, "94378a", false), NPStringFog.decode(new byte[]{125, 114, 32, 68, 92, 93, 21, 122, 40, 41, 21, 64, 65, 78, 28, 68, 112, 113, 2, 90, 8, 94, 75, 74, 24, 77}, "87ed89", false), NPStringFog.decode(new byte[]{118, 116, 124, 67, 0, 80, 19, 124, 116, 46, 68, 77, 74, 72, 64, 67, 44, 124, 9, 92, 84, 89, 23, 71, 19, 75}, "319cd4", true), NPStringFog.decode(new byte[]{39, 117, 113, 69, 80, 0, 79, 125, 121, 40, 25, 29, 27, 73, 77, 69, 124, 44, 79, 93, 89, 72, 71, 23, 66, 74}, "b04e4d", false), NPStringFog.decode(new byte[]{119, 112, 124, 67, 93, 2, 31, 120, 116, 46, 20, 31, 75, 21, 113, 43, 3, 11, 95, 15, 74, 16, 25, 28}, "259c9f", false, false), NPStringFog.decode(new byte[]{36, 33, 113, 25, 83, 83, 65, 41, 121, 116, 23, 78, 24, 68, 124, 113, 13, 90, 12, 94, 71, 74, 23, 77}, "ad4977", 7.56941E8f), NPStringFog.decode(new byte[]{113, 112, 32, 72, 6, 85, 25, 120, 40, 41, 79, 72, 77, 21, 45, 44, 88, 92, 89, 15, 22, 23, 66, 75}, "45edb1", 3.62323798E8d), NPStringFog.decode(new byte[]{33, 116, 118, 30, 86, 2, 73, 124, 126, 127, 31, 31, 29, 72, 74, 18, 122, 46, 94, 92, 94, 8, 65, 21, 68, 75}, "d1322f", 6.443684E8f), NPStringFog.decode(new byte[]{117, 114, 36, 30, 22, 87, 84, 26, 44, 127, 27, 74, 73, 78, 24, 18, 126, 123, 10, 90, 12, 8, 69, 64, 16, 77}, "07a263", false), NPStringFog.decode(new byte[]{39, 119, 36, 22, 47, 127, 47, 18, 5, 22, 27, 75, 27, 75, 65, 126, 42, 8, 15, 95, 91, 69, 17, 18, 24}, "b2a6b2", -1.456449475E9d)};
    private static final DateFormat[] BROWSER_COMPATIBLE_DATE_FORMATS = new DateFormat[BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS.length];

    private HttpDate() {
    }

    public static String format(Date date) {
        return STANDARD_DATE_FORMAT.get().format(date);
    }

    public static Date parse(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = STANDARD_DATE_FORMAT.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        synchronized (BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS) {
            int length = BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS.length;
            for (int i = 0; i < length; i++) {
                DateFormat simpleDateFormat = BROWSER_COMPATIBLE_DATE_FORMATS[i];
                if (simpleDateFormat == null) {
                    simpleDateFormat = new SimpleDateFormat(BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS[i], Locale.US);
                    simpleDateFormat.setTimeZone(Util.UTC);
                    BROWSER_COMPATIBLE_DATE_FORMATS[i] = simpleDateFormat;
                }
                parsePosition.setIndex(0);
                Date date2 = simpleDateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return date2;
                }
            }
            return null;
        }
    }
}
