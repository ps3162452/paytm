package org.apache.http.impl.cookie;

import java.util.Date;
import java.util.TimeZone;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class DateUtils {
    public static final String PATTERN_ASCTIME = NPStringFog.decode(new byte[]{117, 112, 115, 65, 125, 120, 125, 21, 82, 65, 120, 125, 10, 88, 91, 91, 67, 70, 16, 76, 79, 24, 73}, "056a05", true, false);
    public static final String PATTERN_RFC1036 = NPStringFog.decode(new byte[]{124, 118, 33, 118, 72, 22, 93, 87, 73, 126, 41, 123, 20, 74, 29, 19, 44, 126, 3, 94, 9, 9, 23, 69, 25, 73, 30, 73}, "93d3d6", true);
    public static final String PATTERN_RFC1123 = NPStringFog.decode(new byte[]{33, 39, 117, 31, 67, 5, 0, 66, 125, 126, 46, 65, 29, 27, 73, 74, 67, 41, 44, 88, 93, 94, 89, 18, 23, 66, 74, 73, 25}, "db03ca", true);
    public static final TimeZone GMT = null;

    DateUtils() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 68, 86, 24}, "b81499", true, false));
    }

    public static String formatDate(Date date) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 19, 86, 69}, "95f4d0", true, true));
    }

    public static String formatDate(Date date, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 22, 3, 68}, "bfcae9", 977551664L));
    }

    public static Date parseDate(String str) throws DateParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 66, 0, 17}, "3c7b0d", 671584345L));
    }

    public static Date parseDate(String str, String[] strArr) throws DateParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 69, 83, 18}, "970133", false, true));
    }

    public static Date parseDate(String str, String[] strArr, Date date) throws DateParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 22, 7, 18}, "9cce38", 3.93956514E8d));
    }
}
