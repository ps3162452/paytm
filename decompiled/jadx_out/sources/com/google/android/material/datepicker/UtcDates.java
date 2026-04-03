package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.icu.text.DateFormat;
import com.google.android.material.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class UtcDates {
    static final String UTC = NPStringFog.decode(new byte[]{97, 100, 112}, "4030b4", false, false);
    static AtomicReference<TimeSource> timeSourceRef = new AtomicReference<>();

    private UtcDates() {
    }

    static long canonicalYearMonthDay(long j) {
        Calendar utcCalendar = getUtcCalendar();
        utcCalendar.setTimeInMillis(j);
        return getDayCopy(utcCalendar).getTimeInMillis();
    }

    private static int findCharactersInDateFormatPattern(String str, String str2, int i, int i2) {
        int i3 = i2;
        while (i3 >= 0 && i3 < str.length() && str2.indexOf(str.charAt(i3)) == -1) {
            if (str.charAt(i3) == '\'') {
                i3 += i;
                while (i3 >= 0 && i3 < str.length() && str.charAt(i3) != '\'') {
                    i3 += i;
                }
            }
            i3 += i;
        }
        return i3;
    }

    static DateFormat getAbbrMonthDayFormat(Locale locale) {
        return getAndroidFormat(NPStringFog.decode(new byte[]{120, 122, 125, 5}, "570a69", true), locale);
    }

    static DateFormat getAbbrMonthWeekdayDayFormat(Locale locale) {
        return getAndroidFormat(NPStringFog.decode(new byte[]{41, 47, 41, 38, 5}, "dbdcaa", true, false), locale);
    }

    private static DateFormat getAndroidFormat(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(getUtcAndroidTimeZone());
        return instanceForSkeleton;
    }

    static Calendar getDayCopy(Calendar calendar) {
        Calendar utcCalendarOf = getUtcCalendarOf(calendar);
        Calendar utcCalendar = getUtcCalendar();
        utcCalendar.set(utcCalendarOf.get(1), utcCalendarOf.get(2), utcCalendarOf.get(5));
        return utcCalendar;
    }

    private static java.text.DateFormat getFormat(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(getTimeZone());
        return dateInstance;
    }

    static java.text.DateFormat getFullFormat() {
        return getFullFormat(Locale.getDefault());
    }

    static java.text.DateFormat getFullFormat(Locale locale) {
        return getFormat(0, locale);
    }

    static java.text.DateFormat getMediumFormat() {
        return getMediumFormat(Locale.getDefault());
    }

    static java.text.DateFormat getMediumFormat(Locale locale) {
        return getFormat(2, locale);
    }

    static java.text.DateFormat getMediumNoYear() {
        return getMediumNoYear(Locale.getDefault());
    }

    static java.text.DateFormat getMediumNoYear(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) getMediumFormat(locale);
        simpleDateFormat.applyPattern(removeYearFromDateFormatPattern(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    static SimpleDateFormat getSimpleFormat(String str) {
        return getSimpleFormat(str, Locale.getDefault());
    }

    private static SimpleDateFormat getSimpleFormat(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(getTimeZone());
        return simpleDateFormat;
    }

    static SimpleDateFormat getTextInputFormat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toPattern().replaceAll(NPStringFog.decode(new byte[]{56, 74, 26}, "d9186f", -846687134L), ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(getTimeZone());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    static String getTextInputHint(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R.string.mtrl_picker_text_input_day_abbr);
        if (pattern.replaceAll(NPStringFog.decode(new byte[]{61, 58, 64, 106}, "fd977d", false), "").length() == 1) {
            pattern = pattern.replace(NPStringFog.decode(new byte[]{28}, "e11ec9", false), NPStringFog.decode(new byte[]{29, 74, 65, 77}, "d38491", -1766536222L));
        }
        return pattern.replace(NPStringFog.decode(new byte[]{1}, "e1f923", 1733452184L), string3).replace(NPStringFog.decode(new byte[]{47}, "b03761", 1.3778473E9f), string2).replace(NPStringFog.decode(new byte[]{64}, "99b2f9", false, true), string);
    }

    static TimeSource getTimeSource() {
        TimeSource timeSource = timeSourceRef.get();
        return timeSource == null ? TimeSource.system() : timeSource;
    }

    private static TimeZone getTimeZone() {
        return TimeZone.getTimeZone(UTC);
    }

    static Calendar getTodayCalendar() {
        Calendar calendarNow = getTimeSource().now();
        calendarNow.set(11, 0);
        calendarNow.set(12, 0);
        calendarNow.set(13, 0);
        calendarNow.set(14, 0);
        calendarNow.setTimeZone(getTimeZone());
        return calendarNow;
    }

    private static android.icu.util.TimeZone getUtcAndroidTimeZone() {
        return android.icu.util.TimeZone.getTimeZone(UTC);
    }

    static Calendar getUtcCalendar() {
        return getUtcCalendarOf(null);
    }

    static Calendar getUtcCalendarOf(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(getTimeZone());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    static DateFormat getYearAbbrMonthDayFormat(Locale locale) {
        return getAndroidFormat(NPStringFog.decode(new byte[]{76, 122, 126, 121, 85}, "573415", 6.50405543E8d), locale);
    }

    static DateFormat getYearAbbrMonthWeekdayDayFormat(Locale locale) {
        return getAndroidFormat(NPStringFog.decode(new byte[]{78, 127, 116, 117, 118, 1}, "72983e", -4.2989677E8f), locale);
    }

    private static String removeYearFromDateFormatPattern(String str) {
        int iFindCharactersInDateFormatPattern = findCharactersInDateFormatPattern(str, NPStringFog.decode(new byte[]{78, 96}, "794a4e", false, true), 1, 0);
        if (iFindCharactersInDateFormatPattern >= str.length()) {
            return str;
        }
        String strDecode = NPStringFog.decode(new byte[]{36, 47, 7}, "abc556", false);
        int iFindCharactersInDateFormatPattern2 = findCharactersInDateFormatPattern(str, NPStringFog.decode(new byte[]{39, 127, 86}, "b22759", 4.5102346E8f), 1, iFindCharactersInDateFormatPattern);
        if (iFindCharactersInDateFormatPattern2 < str.length()) {
            strDecode = NPStringFog.decode(new byte[]{33, 41, 81}, "dd560e", false, true) + NPStringFog.decode(new byte[]{74}, "f70b7c", 22098);
        }
        return str.replace(str.substring(findCharactersInDateFormatPattern(str, strDecode, -1, iFindCharactersInDateFormatPattern) + 1, iFindCharactersInDateFormatPattern2), " ").trim();
    }

    static void setTimeSource(TimeSource timeSource) {
        timeSourceRef.set(timeSource);
    }
}
