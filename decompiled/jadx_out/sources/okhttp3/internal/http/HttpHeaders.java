package okhttp3.internal.http;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class HttpHeaders {
    private static final String QUOTED_STRING = NPStringFog.decode(new byte[]{16, 27, 63, 109, 65, 62, 24, 26, 70}, "23d3cc", -9514);
    private static final String TOKEN = NPStringFog.decode(new byte[]{73, 63, 111, 23, 23, 9, 60, 78, 24}, "ad1754", 40921539L);
    private static final Pattern PARAMETER = Pattern.compile(NPStringFog.decode(new byte[]{65, 24, 75, 62, 106, 67, 67, 14, 62, 79, 29, 94, 73, 9, 92, 71, 28, 56, 63, 17, 62, 79, 29, 65, 29, 27, 56, 59, 20, 65, 92, 110, 73, 76, 29, 67, 75, 27, 89, 90, 24, 31, 69, 26}, "a3ce4c", 2.40725546E8d));

    private HttpHeaders() {
    }

    public static long contentLength(Headers headers) {
        return stringToLong(headers.get(NPStringFog.decode(new byte[]{34, 86, 93, 18, 7, 11, 21, 20, 127, 3, 12, 2, 21, 81}, "a93fbe", true)));
    }

    public static long contentLength(Response response) {
        return contentLength(response.headers());
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals(NPStringFog.decode(new byte[]{41, 33, 115, 116}, "ad201c", 349745750L))) {
            return false;
        }
        int iCode = response.code();
        if ((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) {
            return contentLength(response) != -1 || NPStringFog.decode(new byte[]{0, 90, 71, 93, 15, 4, 7}, "c223da", -31666).equalsIgnoreCase(response.header(NPStringFog.decode(new byte[]{97, 67, 0, 90, 17, 83, 80, 67, 76, 113, 12, 86, 90, 85, 8, 90, 5}, "51a4b5", 2.036210068E9d)));
        }
        return true;
    }

    public static boolean hasVaryAll(Headers headers) {
        return varyFields(headers).contains(NPStringFog.decode(new byte[]{18}, "8d1a1d", 11547));
    }

    public static boolean hasVaryAll(Response response) {
        return hasVaryAll(response.headers());
    }

    public static List<Challenge> parseChallenges(Headers headers, String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : headers.values(str)) {
            int iIndexOf = str2.indexOf(32);
            if (iIndexOf != -1) {
                String strSubstring = str2.substring(0, iIndexOf);
                String strGroup = null;
                String strGroup2 = null;
                Matcher matcher = PARAMETER.matcher(str2);
                while (true) {
                    String str3 = strGroup2;
                    String str4 = strGroup;
                    if (!matcher.find(iIndexOf)) {
                        strGroup = str4;
                        strGroup2 = str3;
                        break;
                    }
                    if (str2.regionMatches(true, matcher.start(1), NPStringFog.decode(new byte[]{64, 80, 7, 13, 8}, "25fae7", -18373), 0, 5)) {
                        strGroup = matcher.group(3);
                        strGroup2 = str3;
                    } else if (str2.regionMatches(true, matcher.start(1), NPStringFog.decode(new byte[]{82, 91, 3, 70, 17, 87, 69}, "13b4b2", false), 0, 7)) {
                        strGroup = str4;
                        strGroup2 = matcher.group(3);
                    } else {
                        strGroup = str4;
                        strGroup2 = str3;
                    }
                    if (strGroup != null && strGroup2 != null) {
                        break;
                    }
                    iIndexOf = matcher.end();
                }
                if (strGroup != null) {
                    Challenge challenge = new Challenge(strSubstring, strGroup);
                    if (strGroup2 != null) {
                        if (strGroup2.equalsIgnoreCase(NPStringFog.decode(new byte[]{100, 48, 117, 30, 10}, "1d332d", 1.52962521E9d))) {
                            challenge = challenge.withCharset(Util.UTF_8);
                        }
                    }
                    arrayList.add(challenge);
                }
            }
        }
        return arrayList;
    }

    public static int parseSeconds(String str, int i) {
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    public static int skipUntil(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static int skipWhitespace(String str, int i) {
        char cCharAt;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\t')) {
            i++;
        }
        return i;
    }

    private static long stringToLong(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public static Set<String> varyFields(Headers headers) {
        Set<String> setEmptySet = Collections.emptySet();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if (NPStringFog.decode(new byte[]{51, 83, 69, 78}, "e27746", 1200504829L).equalsIgnoreCase(headers.name(i))) {
                String strValue = headers.value(i);
                if (setEmptySet.isEmpty()) {
                    setEmptySet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                String[] strArrSplit = strValue.split(NPStringFog.decode(new byte[]{28}, "07e85b", -8.756028E8f));
                for (String str : strArrSplit) {
                    setEmptySet.add(str.trim());
                }
            }
        }
        return setEmptySet;
    }

    private static Set<String> varyFields(Response response) {
        return varyFields(response.headers());
    }

    public static Headers varyHeaders(Headers headers, Headers headers2) {
        Set<String> setVaryFields = varyFields(headers2);
        if (setVaryFields.isEmpty()) {
            return new Headers.Builder().build();
        }
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String strName = headers.name(i);
            if (setVaryFields.contains(strName)) {
                builder.add(strName, headers.value(i));
            }
        }
        return builder.build();
    }

    public static Headers varyHeaders(Response response) {
        return varyHeaders(response.networkResponse().request().headers(), response.headers());
    }

    public static boolean varyMatches(Response response, Headers headers, Request request) {
        for (String str : varyFields(response)) {
            if (!Util.equal(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }
}
