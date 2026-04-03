package com.google.gson.internal.bind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public class ISO8601Utils {
    private static final String UTC_ID = NPStringFog.decode(new byte[]{99, 103, 118}, "635142", true, true);
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(NPStringFog.decode(new byte[]{99, 50, 112}, "6f3251", false));

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        int length = NPStringFog.decode(new byte[]{28, 76, 74, 76, 29, 117, 40, 24, 87, 81, 100, 80, 13, 15, 94, 88, 10, 75, 22}, "e53508", -4.451351E8f).length();
        StringBuilder sb = new StringBuilder((z ? NPStringFog.decode(new byte[]{25, 69, 71, 71}, "764485", 4968).length() : 0) + length + (timeZone.getRawOffset() == 0 ? NPStringFog.decode(new byte[]{108}, "68acfa", -2829).length() : NPStringFog.decode(new byte[]{74, 95, 92, 11, 93, 94}, "a74103", -3.336774E8d).length()));
        padInt(sb, gregorianCalendar.get(1), NPStringFog.decode(new byte[]{29, 29, 79, 65}, "dd688a", -5.14362319E8d).length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, NPStringFog.decode(new byte[]{125, 125}, "009381", true).length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), NPStringFog.decode(new byte[]{1, 84}, "e05811", 763105149L).length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), NPStringFog.decode(new byte[]{81, 10}, "9baf00", 22417).length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), NPStringFog.decode(new byte[]{85, 85}, "88f579", false).length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), NPStringFog.decode(new byte[]{21, 75}, "f8985b", false).length());
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), NPStringFog.decode(new byte[]{65, 75, 16}, "28c117", 137).length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int iAbs = Math.abs((offset / 60000) / 60);
            int iAbs2 = Math.abs((offset / 60000) % 60);
            sb.append(offset < 0 ? '-' : '+');
            padInt(sb, iAbs, NPStringFog.decode(new byte[]{88, 92}, "047ff1", true, false).length());
            sb.append(':');
            padInt(sb, iAbs2, NPStringFog.decode(new byte[]{9, 94}, "d303c0", -159583818L).length());
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String string = Integer.toString(i);
        for (int length = i2 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r14, java.text.ParsePosition r15) throws java.text.ParseException {
        /*
            Method dump skipped, instruction units count: 915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4 = 0;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i3 = i + 1;
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                throw new NumberFormatException(NPStringFog.decode(new byte[]{125, 93, 21, 89, 92, 80, 80, 19, 13, 77, 93, 91, 81, 65, 89, 24}, "43c809", false) + str.substring(i, i2));
            }
            i4 = -iDigit;
        } else {
            i3 = i;
        }
        while (i3 < i2) {
            int iDigit2 = Character.digit(str.charAt(i3), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException(NPStringFog.decode(new byte[]{120, 15, 69, 80, 92, 13, 85, 65, 93, 68, 93, 6, 84, 19, 9, 17}, "1a310d", true) + str.substring(i, i2));
            }
            i4 = (i4 * 10) - iDigit2;
            i3++;
        }
        return -i4;
    }
}
