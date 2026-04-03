package okhttp3;

import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* JADX INFO: loaded from: classes62.dex */
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;
    private static final Pattern YEAR_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{25, 57, 93, 25, 1, 72, 5, 24, 16, 57, 109, 56, 85, 56, 19}, "1e9b3d", true));
    private static final Pattern MONTH_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{24, 10, 81, 17, 16, 88, 81, 91, 68, 94, 93, 80, 76, 88, 89, 74, 68, 83, 64, 71, 68, 85, 89, 75, 76, 95, 77, 86, 68, 88, 69, 89, 68, 89, 77, 85, 76, 70, 93, 72, 68, 93, 83, 65, 68, 86, 87, 68, 76, 81, 93, 91, 17, 28, 26}, "058882", true, true));
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{76, 104, 5, 29, 2, 26, 86, 73, 72, 61, 109, 106, 0, 105, 75}, "d4af36", -31784));
    private static final Pattern TIME_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{24, 109, 6, 79, 8, 73, 2, 76, 75, 14, 17, 57, 84, 74, 83, 24, 11, 24, 25, 11, 74, 104, 93, 30, 1, 29, 80, 73, 16, 62, 110, 109, 6, 105, 19}, "01b49e", 1262992615L));

    public static final class Builder {
        String domain;
        boolean hostOnly;
        boolean httpOnly;
        String name;
        boolean persistent;
        boolean secure;
        String value;
        long expiresAt = HttpDate.MAX_DATE;
        String path = NPStringFog.decode(new byte[]{24}, "70f232", -21832);

        private Builder domain(String str, boolean z) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{82, 89, 15, 7, 12, 13, 22, 11, 95, 70, 11, 22, 90, 90}, "66bfec", 1.6652251E9f));
            }
            String strCanonicalizeHost = Util.canonicalizeHost(str);
            if (strCanonicalizeHost == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{64, 88, 84, 30, 64, 81, 86, 66, 84, 2, 16, 80, 90, 91, 80, 15, 94, 14, 21}, "561f04", -1.4449667E9f) + str);
            }
            this.domain = strCanonicalizeHost;
            this.hostOnly = z;
            return this;
        }

        public Cookie build() {
            return new Cookie(this);
        }

        public Builder domain(String str) {
            return domain(str, false);
        }

        public Builder expiresAt(long j) {
            long j2 = HttpDate.MAX_DATE;
            long j3 = j <= 0 ? Long.MIN_VALUE : j;
            if (j3 <= HttpDate.MAX_DATE) {
                j2 = j3;
            }
            this.expiresAt = j2;
            this.persistent = true;
            return this;
        }

        public Builder hostOnlyDomain(String str) {
            return domain(str, true);
        }

        public Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public Builder name(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{90, 80, 8, 82, 67, 9, 9, 17, 11, 66, 15, 88}, "41e7c4", -961236251L));
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{88, 7, 93, 0, 21, 94, 69, 70, 94, 10, 65, 23, 66, 20, 89, 8, 88, 82, 82}, "6f0e57", -936789711L));
            }
            this.name = str;
            return this;
        }

        public Builder path(String str) {
            if (!str.startsWith(NPStringFog.decode(new byte[]{31}, "0ea650", -5.78320244E8d))) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{73, 83, 64, 13, 18, 85, 76, 65, 64, 69, 65, 76, 88, 64, 64, 69, 69, 81, 77, 90, 20, 66, 29, 31}, "924e28", -2.7667842E7f));
            }
            this.path = str;
            return this;
        }

        public Builder secure() {
            this.secure = true;
            return this;
        }

        public Builder value(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{78, 81, 88, 76, 3, 16, 5, 13, 20, 87, 19, 92, 84}, "8049f0", -1.6873428E9f));
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 85, 92, 70, 92, 25, 94, 71, 16, 93, 86, 77, 23, 64, 66, 90, 84, 84, 82, 80}, "740399", -8.619598E8f));
            }
            this.value = str;
            return this;
        }
    }

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.hostOnly = z3;
        this.persistent = z4;
    }

    Cookie(Builder builder) {
        if (builder.name == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{1, 76, 13, 10, 93, 0, 17, 23, 10, 7, 84, 0, 67, 4, 89, 70, 87, 16, 15, 85}, "c9df9e", -2.093636517E9d));
        }
        if (builder.value == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{6, 20, 88, 15, 7, 84, 22, 79, 71, 2, 15, 68, 1, 65, 12, 94, 67, 95, 17, 13, 93}, "da1cc1", -3.99837972E8d));
        }
        if (builder.domain == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{4, 20, 81, 15, 1, 85, 20, 79, 92, 12, 8, 81, 15, 15, 24, 94, 88, 16, 8, 20, 84, 15}, "fa8ce0", true, false));
        }
        this.name = builder.name;
        this.value = builder.value;
        this.expiresAt = builder.expiresAt;
        this.domain = builder.domain;
        this.path = builder.path;
        this.secure = builder.secure;
        this.httpOnly = builder.httpOnly;
        this.persistent = builder.persistent;
        this.hostOnly = builder.hostOnly;
    }

    private static int dateCharacterOffset(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i3;
            }
        }
        return i2;
    }

    private static boolean domainMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) + (-1)) == '.' && !Util.verifyAsIpAddress(str);
    }

    @Nullable
    static Cookie parse(long j, HttpUrl httpUrl, String str) {
        long j2;
        String str2;
        String strSubstring;
        String domain;
        int length = str.length();
        int iDelimiterOffset = Util.delimiterOffset(str, 0, length, ';');
        int iDelimiterOffset2 = Util.delimiterOffset(str, 0, iDelimiterOffset, '=');
        if (iDelimiterOffset2 == iDelimiterOffset) {
            return null;
        }
        String strTrimSubstring = Util.trimSubstring(str, 0, iDelimiterOffset2);
        if (strTrimSubstring.isEmpty() || Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
            return null;
        }
        String strTrimSubstring2 = Util.trimSubstring(str, iDelimiterOffset2 + 1, iDelimiterOffset);
        if (Util.indexOfControlOrNonAscii(strTrimSubstring2) != -1) {
            return null;
        }
        long expires = HttpDate.MAX_DATE;
        long maxAge = -1;
        String str3 = null;
        String str4 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = false;
        int i = iDelimiterOffset + 1;
        while (i < length) {
            int iDelimiterOffset3 = Util.delimiterOffset(str, i, length, ';');
            int iDelimiterOffset4 = Util.delimiterOffset(str, i, iDelimiterOffset3, '=');
            String strTrimSubstring3 = Util.trimSubstring(str, i, iDelimiterOffset4);
            String strTrimSubstring4 = iDelimiterOffset4 < iDelimiterOffset3 ? Util.trimSubstring(str, iDelimiterOffset4 + 1, iDelimiterOffset3) : "";
            if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{81, 74, 69, 92, 19, 86, 71}, "4255a3", -7.99972586E8d))) {
                try {
                    expires = parseExpires(strTrimSubstring4, 0, strTrimSubstring4.length());
                    z4 = true;
                    strTrimSubstring4 = str4;
                    domain = str3;
                } catch (IllegalArgumentException e) {
                    strTrimSubstring4 = str4;
                    domain = str3;
                }
            } else if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{94, 83, 77, 27, 2, 86, 86}, "3256c1", 1.53265308E9d))) {
                try {
                    maxAge = parseMaxAge(strTrimSubstring4);
                    z4 = true;
                    strTrimSubstring4 = str4;
                    domain = str3;
                } catch (NumberFormatException e2) {
                    strTrimSubstring4 = str4;
                    domain = str3;
                }
            } else if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{6, 94, 15, 84, 88, 88}, "b1b516", -352))) {
                try {
                    z3 = false;
                    String str5 = str4;
                    domain = parseDomain(strTrimSubstring4);
                    strTrimSubstring4 = str5;
                } catch (IllegalArgumentException e3) {
                    strTrimSubstring4 = str4;
                    domain = str3;
                }
            } else if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{65, 4, 18, 95}, "1ef751", false))) {
                domain = str3;
            } else if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{65, 6, 86, 64, 20, 7}, "2c55fb", 9.2899603E8f))) {
                z = true;
                strTrimSubstring4 = str4;
                domain = str3;
            } else if (strTrimSubstring3.equalsIgnoreCase(NPStringFog.decode(new byte[]{80, 23, 68, 17, 9, 92, 84, 26}, "8c0af2", true))) {
                z2 = true;
                strTrimSubstring4 = str4;
                domain = str3;
            } else {
                strTrimSubstring4 = str4;
                domain = str3;
            }
            String str6 = strTrimSubstring4;
            i = iDelimiterOffset3 + 1;
            str3 = domain;
            str4 = str6;
        }
        if (maxAge == Long.MIN_VALUE) {
            j2 = Long.MIN_VALUE;
        } else if (maxAge != -1) {
            j2 = (maxAge <= 9223372036854775L ? maxAge * 1000 : LocationRequestCompat.PASSIVE_INTERVAL) + j;
            if (j2 < j || j2 > HttpDate.MAX_DATE) {
                j2 = HttpDate.MAX_DATE;
            }
        } else {
            j2 = expires;
        }
        String strHost = httpUrl.host();
        if (str3 == null) {
            str2 = strHost;
        } else {
            if (!domainMatch(strHost, str3)) {
                return null;
            }
            str2 = str3;
        }
        if (strHost.length() != str2.length() && PublicSuffixDatabase.get().getEffectiveTldPlusOne(str2) == null) {
            return null;
        }
        if (str4 == null || !str4.startsWith(NPStringFog.decode(new byte[]{27}, "44ced8", -9.5951357E8d))) {
            String strEncodedPath = httpUrl.encodedPath();
            int iLastIndexOf = strEncodedPath.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strEncodedPath.substring(0, iLastIndexOf) : NPStringFog.decode(new byte[]{23}, "8dc6bd", -1.080795914E9d);
        } else {
            strSubstring = str4;
        }
        return new Cookie(strTrimSubstring, strTrimSubstring2, j2, str2, strSubstring, z, z2, z3, z4);
    }

    @Nullable
    public static Cookie parse(HttpUrl httpUrl, String str) {
        return parse(System.currentTimeMillis(), httpUrl, str);
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        ArrayList arrayList;
        List<String> listValues = headers.values(NPStringFog.decode(new byte[]{49, 85, 66, 21, 32, 89, 13, 91, 95, 93}, "b068c6", 5.83388086E8d));
        ArrayList arrayList2 = null;
        int size = listValues.size();
        int i = 0;
        while (i < size) {
            Cookie cookie = parse(httpUrl, listValues.get(i));
            if (cookie == null) {
                arrayList = arrayList2;
            } else {
                arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList.add(cookie);
            }
            i++;
            arrayList2 = arrayList;
        }
        return arrayList2 != null ? Collections.unmodifiableList(arrayList2) : Collections.emptyList();
    }

    private static String parseDomain(String str) {
        if (str.endsWith(NPStringFog.decode(new byte[]{27}, "56582c", -3.145658E8f))) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(NPStringFog.decode(new byte[]{76}, "b7a3a6", 1.936255138E9d))) {
            str = str.substring(1);
        }
        String strCanonicalizeHost = Util.canonicalizeHost(str);
        if (strCanonicalizeHost == null) {
            throw new IllegalArgumentException();
        }
        return strCanonicalizeHost;
    }

    private static long parseExpires(String str, int i, int i2) {
        int iDateCharacterOffset = dateCharacterOffset(str, i, i2, false);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int iIndexOf = -1;
        Matcher matcher = TIME_PATTERN.matcher(str);
        int i7 = -1;
        int iDateCharacterOffset2 = iDateCharacterOffset;
        while (iDateCharacterOffset2 < i2) {
            int iDateCharacterOffset3 = dateCharacterOffset(str, iDateCharacterOffset2 + 1, i2, true);
            matcher.region(iDateCharacterOffset2, iDateCharacterOffset3);
            if (i3 == -1 && matcher.usePattern(TIME_PATTERN).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
                i4 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
            } else if (i6 == -1 && matcher.usePattern(DAY_OF_MONTH_PATTERN).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1 && matcher.usePattern(MONTH_PATTERN).matches()) {
                iIndexOf = MONTH_PATTERN.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i7 == -1 && matcher.usePattern(YEAR_PATTERN).matches()) {
                i7 = Integer.parseInt(matcher.group(1));
            }
            iDateCharacterOffset2 = dateCharacterOffset(str, iDateCharacterOffset3 + 1, i2, false);
        }
        if (i7 >= 70 && i7 <= 99) {
            i7 += 1900;
        }
        if (i7 >= 0 && i7 <= 69) {
            i7 += 2000;
        }
        if (i7 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        }
        if (i3 < 0 || i3 > 23) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 59) {
            throw new IllegalArgumentException();
        }
        if (i5 < 0 || i5 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i7);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i6);
        gregorianCalendar.set(11, i3);
        gregorianCalendar.set(12, i4);
        gregorianCalendar.set(13, i5);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    private static long parseMaxAge(String str) {
        try {
            long j = Long.parseLong(str);
            if (j <= 0) {
                return Long.MIN_VALUE;
            }
            return j;
        } catch (NumberFormatException e) {
            if (!str.matches(NPStringFog.decode(new byte[]{28, 93, 105, 84, 30}, "1b505b", false))) {
                throw e;
            }
            if (str.startsWith(NPStringFog.decode(new byte[]{73}, "d79b04", -2.107773E9f))) {
                return Long.MIN_VALUE;
            }
            return LocationRequestCompat.PASSIVE_INTERVAL;
        }
    }

    private static boolean pathMatch(HttpUrl httpUrl, String str) {
        String strEncodedPath = httpUrl.encodedPath();
        if (strEncodedPath.equals(str)) {
            return true;
        }
        return strEncodedPath.startsWith(str) && (str.endsWith(NPStringFog.decode(new byte[]{30}, "1167a6", -14656)) || strEncodedPath.charAt(str.length()) == '/');
    }

    public String domain() {
        return this.domain;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.expiresAt == this.expiresAt && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly;
    }

    public long expiresAt() {
        return this.expiresAt;
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode();
        int iHashCode2 = this.value.hashCode();
        int iHashCode3 = this.domain.hashCode();
        int iHashCode4 = this.path.hashCode();
        int i = (int) (this.expiresAt ^ (this.expiresAt >>> 32));
        int i2 = this.secure ? 0 : 1;
        int i3 = this.httpOnly ? 0 : 1;
        return ((((((i2 + ((((((((((iHashCode + 527) * 31) + iHashCode2) * 31) + iHashCode3) * 31) + iHashCode4) * 31) + i) * 31)) * 31) + i3) * 31) + (this.persistent ? 0 : 1)) * 31) + (this.hostOnly ? 0 : 1);
    }

    public boolean hostOnly() {
        return this.hostOnly;
    }

    public boolean httpOnly() {
        return this.httpOnly;
    }

    public boolean matches(HttpUrl httpUrl) {
        if ((this.hostOnly ? httpUrl.host().equals(this.domain) : domainMatch(httpUrl.host(), this.domain)) && pathMatch(httpUrl, this.path)) {
            return !this.secure || httpUrl.isHttps();
        }
        return false;
    }

    public String name() {
        return this.name;
    }

    public String path() {
        return this.path;
    }

    public boolean persistent() {
        return this.persistent;
    }

    public boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString(false);
    }

    String toString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append(NPStringFog.decode(new byte[]{89, 18, 8, 4, 73, 27, 3, 85, 0, 88, 1}, "b2ee16", -971920562L));
            } else {
                sb.append(NPStringFog.decode(new byte[]{89, 69, 6, 77, 20, 15, 16, 0, 16, 8}, "bec5df", false)).append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append(NPStringFog.decode(new byte[]{9, 25, 86, 89, 91, 89, 91, 87, 15}, "292668", 22312));
            if (z) {
                sb.append(NPStringFog.decode(new byte[]{23}, "9209bf", -20131));
            }
            sb.append(this.domain);
        }
        sb.append(NPStringFog.decode(new byte[]{11, 67, 65, 89, 16, 93, 13}, "0c18d5", -801913286L)).append(this.path);
        if (this.secure) {
            sb.append(NPStringFog.decode(new byte[]{10, 25, 71, 83, 86, 20, 67, 92}, "19465a", -3.3045603E8d));
        }
        if (this.httpOnly) {
            sb.append(NPStringFog.decode(new byte[]{12, 65, 92, 68, 22, 65, 88, 15, 88, 73}, "7a40b1", 14208));
        }
        return sb.toString();
    }

    public String value() {
        return this.value;
    }
}
