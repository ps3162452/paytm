package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public class PreJava9DateFormatProvider {
    private static String getDateFormatPattern(int i) {
        switch (i) {
            case 0:
                return NPStringFog.decode(new byte[]{38, 116, 112, 112, 29, 18, 46, 124, 120, 120, 17, 86, 79, 17, 76}, "c15512", -3930);
            case 1:
                return NPStringFog.decode(new byte[]{122, 116, 40, 126, 20, 5, 27, 25, 28}, "79e34a", true, true);
            case 2:
                return NPStringFog.decode(new byte[]{47, 44, 47, 68, 93, 24, 66, 24}, "babd94", 8.9973926E8f);
            case 3:
                return NPStringFog.decode(new byte[]{117, 23, 84, 76, 72, 64}, "880c19", 23115);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{52, 89, 89, 89, 12, 67, 15, 23, 118, 86, 23, 81, 39, 88, 64, 90, 2, 64, 65, 68, 70, 78, 15, 81, 91, 23}, "a727c4", -1994980421L) + i);
        }
    }

    private static String getDatePartOfDateTimePattern(int i) {
        switch (i) {
            case 0:
                return NPStringFog.decode(new byte[]{39, 118, 124, 35, 79, 23, 47, 126, 116, 43, 67, 83, 78, 19, 64, 31, 26, 78}, "b39fc7", -4818);
            case 1:
                return NPStringFog.decode(new byte[]{125, 122, 44, 126, 18, 84, 28, 23, 24, 74, 75, 73}, "07a320", true, true);
            case 2:
                return NPStringFog.decode(new byte[]{125, 44, 47, 16, 93, 73, 16, 24, 27, 73, 64}, "0ab09e", 1616361411L);
            case 3:
                return NPStringFog.decode(new byte[]{40, 27, 80, 30, 31, 76}, "e441f5", -1.876969945E9d);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 13, 93, 13, 93, 22, 13, 67, 114, 2, 70, 4, 37, 12, 68, 14, 83, 21, 67, 16, 66, 26, 94, 4, 89, 67}, "cc6c2a", true) + i);
        }
    }

    private static String getTimePartOfDateTimePattern(int i) {
        switch (i) {
            case 0:
            case 1:
                return NPStringFog.decode(new byte[]{88, 2, 12, 8, 9, 64, 67, 24, 0, 69, 73}, "08ae33", 9.212459E8f);
            case 2:
                return NPStringFog.decode(new byte[]{94, 88, 85, 89, 15, 18, 69, 66, 89}, "6b845a", -24814);
            case 3:
                return NPStringFog.decode(new byte[]{80, 13, 94, 90, 69, 7}, "8737ef", 1.136075E9f);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 13, 93, 87, 10, 64, 11, 67, 114, 88, 17, 82, 35, 12, 68, 84, 4, 67, 69, 16, 66, 64, 9, 82, 95, 67}, "ec69e7", false) + i);
        }
    }

    public static DateFormat getUSDateFormat(int i) {
        return new SimpleDateFormat(getDateFormatPattern(i), Locale.US);
    }

    public static DateFormat getUSDateTimeFormat(int i, int i2) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i) + " " + getTimePartOfDateTimePattern(i2), Locale.US);
    }
}
