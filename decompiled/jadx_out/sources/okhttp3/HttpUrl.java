package okhttp3;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;

/* JADX INFO: loaded from: classes62.dex */
public final class HttpUrl {

    @Nullable
    private final String fragment;
    final String host;
    private final String password;
    private final List<String> pathSegments;
    final int port;

    @Nullable
    private final List<String> queryNamesAndValues;
    final String scheme;
    private final String url;
    private final String username;
    static final String FORM_ENCODE_SET = NPStringFog.decode(new byte[]{21, 21, 69, 2, 10, 10, 8, 9, 34, 99, 108, 104, 85, 76, 31, 68, 30, 106, 10, 20, 68, 25, 21, 30, 28, 27, 28}, "57b816", true);
    static final String FRAGMENT_ENCODE_SET = NPStringFog.decode(new byte[0], "fdf050", 2.0391781E9f);
    static final String FRAGMENT_ENCODE_SET_URI = NPStringFog.decode(new byte[]{18, 26, 66, 14, 13, 109, 108, 88, 26, 78, 78}, "28a231", 95298743L);
    static final String PASSWORD_ENCODE_SET = NPStringFog.decode(new byte[]{23, 26, 20, 92, 15, 5, 10, 6, 115, 61, 105, 103, 87, 67, 78, 26, 27, 101, 8, 27}, "783f49", -1.1884626E9f);
    static final String PATH_SEGMENT_ENCODE_SET = NPStringFog.decode(new byte[]{22, 70, 13, 92, 109, 5, 77, 25, 77, 77, 111, 90, 21}, "6d1b3e", 1301918813L);
    static final String PATH_SEGMENT_ENCODE_SET_URI = NPStringFog.decode(new byte[]{98, 59}, "9ff7a5", false, false);
    static final String QUERY_COMPONENT_ENCODE_SET = NPStringFog.decode(new byte[]{20, 70, 66, 8, 12, 21, 18, 89}, "4de426", true);
    static final String QUERY_COMPONENT_ENCODE_SET_URI = NPStringFog.decode(new byte[]{111, 106, 82, 79, 76, 79}, "342402", -1326941070L);
    static final String QUERY_ENCODE_SET = NPStringFog.decode(new byte[]{70, 26, 66, 95, 9, 19}, "f8ec70", true, false);
    static final String USERNAME_ENCODE_SET = NPStringFog.decode(new byte[]{19, 70, 70, 92, 11, 94, 14, 90, 33, 61, 109, 60, 83, 31, 28, 26, 31, 62, 12, 71}, "3daf0b", 13733);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: okhttp3.HttpUrl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult = new int[Builder.ParseResult.values().length];

        static {
            try {
                $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[Builder.ParseResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[Builder.ParseResult.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[Builder.ParseResult.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public static final class Builder {

        @Nullable
        String encodedFragment;

        @Nullable
        List<String> encodedQueryNamesAndValues;

        @Nullable
        String host;

        @Nullable
        String scheme;
        String encodedUsername = "";
        String encodedPassword = "";
        int port = -1;
        final List<String> encodedPathSegments = new ArrayList();

        enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            this.encodedPathSegments.add("");
        }

        private Builder addPathSegments(String str, boolean z) {
            int i = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, i, str.length(), NPStringFog.decode(new byte[]{27, 111}, "431047", -2024316130L));
                push(str, i, iDelimiterOffset, iDelimiterOffset < str.length(), z);
                i = iDelimiterOffset + 1;
            } while (i <= str.length());
            return this;
        }

        private static String canonicalizeHost(String str, int i, int i2) {
            return Util.canonicalizeHost(HttpUrl.percentDecode(str, i, i2, false));
        }

        private boolean isDot(String str) {
            return str.equals(NPStringFog.decode(new byte[]{76}, "bd70d4", false)) || str.equalsIgnoreCase(NPStringFog.decode(new byte[]{16, 10, 93}, "588783", 2.778798E8f));
        }

        private boolean isDotDot(String str) {
            return str.equals(NPStringFog.decode(new byte[]{30, 79}, "0a0e14", false, false)) || str.equalsIgnoreCase(NPStringFog.decode(new byte[]{16, 6, 93, 31}, "5481ef", -1.7524174E9f)) || str.equalsIgnoreCase(NPStringFog.decode(new byte[]{77, 17, 7, 80}, "c455f2", true, true)) || str.equalsIgnoreCase(NPStringFog.decode(new byte[]{22, 11, 84, 29, 7, 82}, "391857", 1.620473E9f));
        }

        private static int parsePort(String str, int i, int i2) {
            try {
                int i3 = Integer.parseInt(HttpUrl.canonicalize(str, i, i2, "", false, false, false, true, null));
                if (i3 <= 0 || i3 > 65535) {
                    return -1;
                }
                return i3;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        private void pop() {
            if (!this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            } else {
                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static int portColonOffset(String str, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                switch (str.charAt(i3)) {
                    case ':':
                        return i3;
                    case '[':
                        do {
                            i3++;
                            if (i3 < i2) {
                            }
                            i3++;
                            break;
                        } while (str.charAt(i3) != ']');
                        i3++;
                        break;
                    default:
                        i3++;
                        break;
                }
            }
            return i2;
        }

        private void push(String str, int i, int i2, boolean z, boolean z2) {
            String strCanonicalize = HttpUrl.canonicalize(str, i, i2, NPStringFog.decode(new byte[]{70, 20, 4, 8, 106, 5, 29, 75, 68, 25, 104, 90, 69}, "f6864e", true, true), z2, false, false, true, null);
            if (isDot(strCanonicalize)) {
                return;
            }
            if (isDotDot(strCanonicalize)) {
                pop();
                return;
            }
            if (this.encodedPathSegments.get(this.encodedPathSegments.size() - 1).isEmpty()) {
                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, strCanonicalize);
            } else {
                this.encodedPathSegments.add(strCanonicalize);
            }
            if (z) {
                this.encodedPathSegments.add("");
            }
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        private void resolvePath(String str, int i, int i2) {
            int i3;
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i3 = i + 1;
            } else {
                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
                i3 = i;
            }
            while (i3 < i2) {
                int iDelimiterOffset = Util.delimiterOffset(str, i3, i2, NPStringFog.decode(new byte[]{27, 108}, "40732a", 15479));
                boolean z = iDelimiterOffset < i2;
                push(str, i3, iDelimiterOffset, z, true);
                i3 = z ? iDelimiterOffset + 1 : iDelimiterOffset;
            }
        }

        private static int schemeDelimiterOffset(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                return -1;
            }
            for (int i3 = i + 1; i3 < i2; i3++) {
                char cCharAt2 = str.charAt(i3);
                if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '+' || cCharAt2 == '-' || cCharAt2 == '.'))) {
                    if (cCharAt2 == ':') {
                        return i3;
                    }
                    return -1;
                }
            }
            return -1;
        }

        private static int slashCount(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        public Builder addEncodedPathSegment(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{1, 90, 5, 86, 80, 85, 0, 100, 7, 77, 92, 99, 1, 83, 11, 92, 90, 68, 68, 9, 91, 25, 90, 69, 8, 88}, "d4f940", false));
            }
            push(str, 0, str.length(), false, true);
            return this;
        }

        public Builder addEncodedPathSegments(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{4, 92, 83, 87, 5, 81, 5, 98, 81, 76, 9, 103, 4, 85, 93, 93, 15, 64, 18, 18, 13, 5, 65, 90, 20, 94, 92}, "a208a4", 2029113178L));
            }
            return addPathSegments(str, true);
        }

        public Builder addEncodedQueryParameter(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{82, 92, 85, 88, 6, 4, 83, 124, 87, 90, 7, 65, 10, 15, 22, 89, 23, 13, 91}, "7267ba", false, true));
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{69, 19, 31, 8, 14, 64, 67, 12}, "e1840c", 1257766316L), true, false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, NPStringFog.decode(new byte[]{23, 26, 23, 95, 95, 18, 17, 5}, "780ca1", false), true, false, true, true) : null);
            return this;
        }

        public Builder addPathSegment(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{19, 81, 71, 90, 54, 86, 4, 93, 86, 92, 17, 19, 94, 13, 19, 92, 16, 95, 15}, "c032e3", -9.02524179E8d));
            }
            push(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addPathSegments(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{19, 3, 18, 88, 97, 7, 4, 15, 3, 94, 70, 17, 67, 95, 91, 16, 92, 23, 15, 14}, "cbf02b", 9.9572864E8f));
            }
            return addPathSegments(str, false);
        }

        public Builder addQueryParameter(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{88, 84, 8, 92, 65, 10, 11, 21, 11, 76, 13, 91}, "65e9a7", -1638));
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{19, 23, 21, 8, 8, 69, 21, 8}, "35246f", -9825866.0f), false, false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, NPStringFog.decode(new byte[]{16, 68, 30, 13, 13, 17, 22, 91}, "0f9132", 131421758L), false, false, true, true) : null);
            return this;
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{65, 7, 95, 86, 93, 84, 18, 89, 10, 19, 94, 68, 94, 8}, "2d7301", 1.907491E9f));
            }
            if (this.host == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{81, 93, 68, 18, 67, 14, 4, 18, 89, 19, 15, 95}, "927fc3", -27258));
            }
            return new HttpUrl(this);
        }

        int effectivePort() {
            return this.port != -1 ? this.port : HttpUrl.defaultPort(this.scheme);
        }

        public Builder encodedFragment(@Nullable String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", true, false, false, false) : null;
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{0, 88, 83, 90, 1, 1, 1, 102, 81, 70, 22, 19, 10, 68, 84, 21, 88, 89, 69, 88, 69, 89, 9}, "e605ed", 627862944L));
            }
            this.encodedPassword = HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{23, 71, 31, 15, 94, 9, 10, 91, 120, 110, 56, 107, 87, 30, 69, 73, 74, 105, 8, 70}, "7e85e5", 52470041L), true, false, false, true);
            return this;
        }

        public Builder encodedPath(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{1, 93, 2, 10, 5, 80, 0, 99, 0, 17, 9, 21, 89, 14, 65, 11, 20, 89, 8}, "d3aea5", -988113006L));
            }
            if (!str.startsWith(NPStringFog.decode(new byte[]{28}, "3948cd", -8.740811E8f))) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 87, 83, 78, 17, 82, 6, 77, 83, 82, 65, 82, 11, 90, 89, 82, 4, 83, 53, 88, 66, 94, 91, 23}, "e966a7", -1.744053632E9d) + str);
            }
            resolvePath(str, 0, str.length());
            return this;
        }

        public Builder encodedQuery(@Nullable String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{65, 71, 23, 10, 90, 26}, "ae06d9", -9389), true, false, true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{80, 91, 85, 12, 1, 87, 81, 96, 69, 6, 23, 92, 84, 88, 83, 67, 88, 15, 21, 91, 67, 15, 9}, "556ce2", true, false));
            }
            this.encodedUsername = HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{19, 18, 17, 88, 94, 90, 14, 14, 118, 57, 56, 56, 83, 75, 75, 30, 74, 58, 12, 19}, "306bef", 7.8558234E8f), true, false, false, true);
            return this;
        }

        public Builder fragment(@Nullable String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", false, false, false, false) : null;
            return this;
        }

        public Builder host(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{9, 13, 67, 76, 67, 88, 92, 66, 94, 77, 15, 9}, "ab08ce", true, false));
            }
            String strCanonicalizeHost = canonicalizeHost(str, 0, str.length());
            if (strCanonicalizeHost == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 92, 80, 74, 69, 83, 6, 70, 80, 86, 21, 94, 10, 65, 65, 8, 21}, "e25256", -8.69673071E8d) + str);
            }
            this.host = strCanonicalizeHost;
            return this;
        }

        ParseResult parse(@Nullable HttpUrl httpUrl, String str) {
            boolean z;
            int iDelimiterOffset;
            int iSkipLeadingAsciiWhitespace = Util.skipLeadingAsciiWhitespace(str, 0, str.length());
            int iSkipTrailingAsciiWhitespace = Util.skipTrailingAsciiWhitespace(str, iSkipLeadingAsciiWhitespace, str.length());
            if (schemeDelimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace) != -1) {
                if (str.regionMatches(true, iSkipLeadingAsciiWhitespace, NPStringFog.decode(new byte[]{11, 16, 66, 68, 71, 88}, "cd644b", true, false), 0, 6)) {
                    this.scheme = NPStringFog.decode(new byte[]{9, 69, 16, 71, 66}, "a1d71b", false);
                    iSkipLeadingAsciiWhitespace += NPStringFog.decode(new byte[]{92, 70, 68, 69, 16, 88}, "4205cb", -1.3275324E9f).length();
                } else {
                    if (!str.regionMatches(true, iSkipLeadingAsciiWhitespace, NPStringFog.decode(new byte[]{14, 69, 69, 68, 13}, "f1147c", false), 0, 5)) {
                        return ParseResult.UNSUPPORTED_SCHEME;
                    }
                    this.scheme = NPStringFog.decode(new byte[]{90, 68, 65, 71}, "2057b7", -1.6386025E9f);
                    iSkipLeadingAsciiWhitespace += NPStringFog.decode(new byte[]{90, 16, 23, 71, 11}, "2dc71d", false, true).length();
                }
            } else {
                if (httpUrl == null) {
                    return ParseResult.MISSING_SCHEME;
                }
                this.scheme = httpUrl.scheme;
            }
            boolean z2 = false;
            int iSlashCount = slashCount(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace);
            if (iSlashCount >= 2 || httpUrl == null || !httpUrl.scheme.equals(this.scheme)) {
                int i = iSkipLeadingAsciiWhitespace + iSlashCount;
                boolean z3 = false;
                while (true) {
                    iSkipLeadingAsciiWhitespace = Util.delimiterOffset(str, i, iSkipTrailingAsciiWhitespace, NPStringFog.decode(new byte[]{115, 29, 58, 7, 20}, "32f870", -1.597683E9f));
                    switch (iSkipLeadingAsciiWhitespace != iSkipTrailingAsciiWhitespace ? str.charAt(iSkipLeadingAsciiWhitespace) : (byte) -1) {
                        case -1:
                        case 35:
                        case 47:
                        case 63:
                        case 92:
                            int iPortColonOffset = portColonOffset(str, i, iSkipLeadingAsciiWhitespace);
                            if (iPortColonOffset + 1 < iSkipLeadingAsciiWhitespace) {
                                this.host = canonicalizeHost(str, i, iPortColonOffset);
                                this.port = parsePort(str, iPortColonOffset + 1, iSkipLeadingAsciiWhitespace);
                                if (this.port == -1) {
                                    return ParseResult.INVALID_PORT;
                                }
                            } else {
                                this.host = canonicalizeHost(str, i, iPortColonOffset);
                                this.port = HttpUrl.defaultPort(this.scheme);
                            }
                            if (this.host == null) {
                                return ParseResult.INVALID_HOST;
                            }
                            break;
                        case 64:
                            if (z2) {
                                this.encodedPassword += NPStringFog.decode(new byte[]{16, 7, 86}, "53fdb5", -185) + HttpUrl.canonicalize(str, i, iSkipLeadingAsciiWhitespace, NPStringFog.decode(new byte[]{16, 20, 68, 95, 3, 90, 13, 8, 35, 62, 101, 56, 80, 77, 30, 25, 23, 58, 15, 21}, "06ce8f", -689192167L), true, false, false, true, null);
                            } else {
                                int iDelimiterOffset2 = Util.delimiterOffset(str, i, iSkipLeadingAsciiWhitespace, ':');
                                String strCanonicalize = HttpUrl.canonicalize(str, i, iDelimiterOffset2, NPStringFog.decode(new byte[]{69, 22, 17, 3, 2, 9, 88, 10, 118, 98, 100, 107, 5, 79, 75, 69, 22, 105, 90, 23}, "e46995", -6.9843286E7d), true, false, false, true, null);
                                if (z3) {
                                    strCanonicalize = this.encodedUsername + NPStringFog.decode(new byte[]{23, 86, 3}, "2b352f", -2.6013722E7f) + strCanonicalize;
                                }
                                this.encodedUsername = strCanonicalize;
                                if (iDelimiterOffset2 != iSkipLeadingAsciiWhitespace) {
                                    this.encodedPassword = HttpUrl.canonicalize(str, iDelimiterOffset2 + 1, iSkipLeadingAsciiWhitespace, NPStringFog.decode(new byte[]{19, 18, 31, 10, 10, 12, 14, 14, 120, 107, 108, 110, 83, 75, 69, 76, 30, 108, 12, 19}, "308010", 152387308L), true, false, false, true, null);
                                    z = true;
                                } else {
                                    z = z2;
                                }
                                z3 = true;
                                z2 = z;
                            }
                            i = iSkipLeadingAsciiWhitespace + 1;
                            z3 = z3;
                            break;
                    }
                }
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iSkipLeadingAsciiWhitespace == iSkipTrailingAsciiWhitespace || str.charAt(iSkipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int iDelimiterOffset3 = Util.delimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace, NPStringFog.decode(new byte[]{9, 65}, "6b3b9f", false, true));
            resolvePath(str, iSkipLeadingAsciiWhitespace, iDelimiterOffset3);
            if (iDelimiterOffset3 >= iSkipTrailingAsciiWhitespace || str.charAt(iDelimiterOffset3) != '?') {
                iDelimiterOffset = iDelimiterOffset3;
            } else {
                iDelimiterOffset = Util.delimiterOffset(str, iDelimiterOffset3, iSkipTrailingAsciiWhitespace, '#');
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, iDelimiterOffset3 + 1, iDelimiterOffset, NPStringFog.decode(new byte[]{18, 67, 30, 89, 95, 64}, "2a9eac", false, true), true, false, true, true, null));
            }
            if (iDelimiterOffset < iSkipTrailingAsciiWhitespace && str.charAt(iDelimiterOffset) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, iDelimiterOffset + 1, iSkipTrailingAsciiWhitespace, "", true, false, false, false, null);
            }
            return ParseResult.SUCCESS;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{71, 89, 68, 67, 20, 13, 69, 92, 23, 13, 94, 66, 89, 77, 91, 92}, "7870cb", false, true));
            }
            this.encodedPassword = HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{24, 19, 67, 2, 14, 94, 5, 15, 36, 99, 104, 60, 88, 74, 25, 68, 26, 62, 7, 18}, "81d85b", 4.7814163E8f), false, false, false, true);
            return this;
        }

        public Builder port(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 89, 7, 26, 22, 7, 6, 67, 7, 6, 70, 18, 10, 69, 22, 88, 70}, "e7bbfb", 1.8994998E7f) + i);
            }
            this.port = i;
            return this;
        }

        public Builder query(@Nullable String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{25, 16, 70, 9, 90, 18}, "92a5d1", 4808), false, false, true, true)) : null;
            return this;
        }

        Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                this.encodedPathSegments.set(i, HttpUrl.canonicalize(this.encodedPathSegments.get(i), NPStringFog.decode(new byte[]{98, 60}, "9aef1d", true, true), true, true, false, true));
            }
            if (this.encodedQueryNamesAndValues != null) {
                int size2 = this.encodedQueryNamesAndValues.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.encodedQueryNamesAndValues.get(i2);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i2, HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{111, 56, 4, 76, 75, 77}, "3fd770", 19458), true, true, true, true));
                    }
                }
            }
            if (this.encodedFragment != null) {
                this.encodedFragment = HttpUrl.canonicalize(this.encodedFragment, NPStringFog.decode(new byte[]{20, 17, 27, 95, 7, 107, 106, 83, 67, 31, 68}, "438c97", true), true, true, false, false);
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{1, 12, 7, 93, 81, 0, 0, 44, 5, 95, 80, 69, 89, 95, 68, 92, 64, 9, 8}, "dbd25e", -2.104784E9f));
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{16, 65, 70, 4, 12, 17, 22, 94}, "0ca822", 448278442L), true, false, true, true));
            }
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{10, 88, 84, 82, 70, 94, 89, 25, 87, 66, 10, 15}, "d997fc", false));
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{67, 20, 19, 14, 13, 65, 69, 11}, "c6423b", -11558), false, false, true, true));
            }
            return this;
        }

        public Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{21, 80, 81, 86, 91, 83, 70, 14, 4, 19, 88, 67, 10, 95}, "f39366", 1541));
            }
            if (str.equalsIgnoreCase(NPStringFog.decode(new byte[]{81, 66, 21, 68}, "96a454", 24523))) {
                this.scheme = NPStringFog.decode(new byte[]{13, 70, 64, 67}, "e24300", 282868780L);
            } else {
                if (!str.equalsIgnoreCase(NPStringFog.decode(new byte[]{12, 16, 66, 70, 18}, "dd66ac", 3.19703083E8d))) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 90, 93, 74, 71, 3, 84, 64, 93, 86, 23, 21, 84, 92, 93, 95, 82, 92, 23}, "74827f", 8403) + str);
                }
                this.scheme = NPStringFog.decode(new byte[]{89, 77, 18, 68, 65}, "19f426", 338530844L);
            }
            return this;
        }

        public Builder setEncodedPathSegment(int i, String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{87, 88, 82, 93, 5, 4, 86, 102, 80, 70, 9, 50, 87, 81, 92, 87, 15, 21, 18, 11, 12, 18, 15, 20, 94, 90}, "2612aa", true, false));
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), NPStringFog.decode(new byte[]{16, 22, 9, 14, 56, 86, 75, 73, 73, 31, 58, 9, 19}, "0450f6", -2.144228763E9d), true, false, false, true, null);
            this.encodedPathSegments.set(i, strCanonicalize);
            if (isDot(strCanonicalize) || isDotDot(strCanonicalize)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{64, 90, 92, 27, 17, 86, 86, 64, 92, 7, 65, 67, 84, 64, 81, 67, 18, 86, 82, 89, 92, 13, 21, 9, 21}, "549ca3", -24139) + str);
            }
            return this;
        }

        public Builder setEncodedQueryParameter(String str, @Nullable String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i, String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{65, 81, 18, 90, 101, 83, 86, 93, 3, 92, 66, 22, 12, 13, 70, 92, 67, 90, 93}, "10f266", 1979183803L));
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), NPStringFog.decode(new byte[]{25, 20, 4, 6, 109, 83, 66, 75, 68, 23, 111, 12, 26}, "968833", true), false, false, false, true, null);
            if (isDot(strCanonicalize) || isDotDot(strCanonicalize)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{19, 94, 6, 28, 68, 6, 5, 68, 6, 0, 20, 19, 7, 68, 11, 68, 71, 6, 1, 93, 6, 10, 64, 89, 70}, "f0cd4c", -1.5909439E9f) + str);
            }
            this.encodedPathSegments.set(i, strCanonicalize);
            return this;
        }

        public Builder setQueryParameter(String str, @Nullable String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.scheme);
            sb.append(NPStringFog.decode(new byte[]{11, 28, 25}, "136eca", -1.8791822E9f));
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb.append(':');
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.host);
                sb.append(']');
            } else {
                sb.append(this.host);
            }
            int iEffectivePort = effectivePort();
            if (iEffectivePort != HttpUrl.defaultPort(this.scheme)) {
                sb.append(':');
                sb.append(iEffectivePort);
            }
            HttpUrl.pathSegmentsToString(sb, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                HttpUrl.namesAndValuesToQueryString(sb, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            return sb.toString();
        }

        public Builder username(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{65, 23, 81, 67, 86, 7, 89, 1, 20, 12, 5, 70, 90, 17, 88, 93}, "4d418f", -4.9530726E8f));
            }
            this.encodedUsername = HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{23, 23, 22, 88, 93, 11, 10, 11, 113, 57, 59, 105, 87, 78, 76, 30, 73, 107, 8, 22}, "751bf7", 2193), false, false, false, true);
            return this;
        }
    }

    HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        this.queryNamesAndValues = builder.encodedQueryNamesAndValues != null ? percentDecode(builder.encodedQueryNamesAndValues, true) : null;
        this.fragment = builder.encodedFragment != null ? percentDecode(builder.encodedFragment, false) : null;
        this.url = builder.toString();
    }

    static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z2 && !percentEncoded(str, iCharCount, i2)))) || (iCodePointAt == 43 && z3)))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, iCharCount);
                canonicalize(buffer, str, iCharCount, i2, str2, z, z2, z3, z4, charset);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i, i2);
    }

    static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    static void canonicalize(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        Buffer buffer2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    buffer.writeUtf8(z ? NPStringFog.decode(new byte[]{25}, "21a286", 490353281L) : NPStringFog.decode(new byte[]{70, 83, 118}, "ca4689", 1.442392904E9d));
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !percentEncoded(str, i, i2)))))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    if (charset == null || charset.equals(Util.UTF_8)) {
                        buffer2.writeUtf8CodePoint(iCodePointAt);
                    } else {
                        buffer2.writeString(str, i, Character.charCount(iCodePointAt) + i, charset);
                    }
                    while (!buffer2.exhausted()) {
                        int i3 = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        buffer.writeByte((int) HEX_DIGITS[(i3 >> 4) & 15]);
                        buffer.writeByte((int) HEX_DIGITS[i3 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public static int defaultPort(String str) {
        if (str.equals(NPStringFog.decode(new byte[]{89, 18, 65, 20}, "1f5dd3", -27023))) {
            return 80;
        }
        return str.equals(NPStringFog.decode(new byte[]{93, 76, 17, 20, 68}, "58ed7f", false)) ? 443 : -1;
    }

    @Nullable
    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    @Nullable
    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    static HttpUrl getChecked(String str) throws MalformedURLException, UnknownHostException {
        Builder builder = new Builder();
        Builder.ParseResult parseResult = builder.parse(null, str);
        switch (AnonymousClass1.$SwitchMap$okhttp3$HttpUrl$Builder$ParseResult[parseResult.ordinal()]) {
            case 1:
                return builder.build();
            case 2:
                throw new UnknownHostException(NPStringFog.decode(new byte[]{125, 87, 21, 83, 89, 15, 80, 25, 11, 93, 70, 18, 14, 25}, "49c25f", -25725) + str);
            default:
                throw new MalformedURLException(NPStringFog.decode(new byte[]{47, 92, 67, 88, 84, 10, 2, 18, 96, 107, 116, 89, 70}, "f2598c", false, false) + parseResult + NPStringFog.decode(new byte[]{67, 85, 90, 20, 65}, "c35fa4", false, false) + str);
        }
    }

    static void namesAndValuesToQueryString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    @Nullable
    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == Builder.ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    static void pathSegmentsToString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    static String percentDecode(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                percentDecode(buffer, str, i3, i2, z);
                return buffer.readUtf8();
            }
        }
        return str.substring(i, i2);
    }

    static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    private List<String> percentDecode(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void percentDecode(okio.Buffer r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
            r4 = -1
            r0 = r7
        L2:
            if (r0 >= r8) goto L46
            int r1 = r6.codePointAt(r0)
            r2 = 37
            if (r1 != r2) goto L36
            int r2 = r0 + 2
            if (r2 >= r8) goto L36
            int r2 = r0 + 1
            char r2 = r6.charAt(r2)
            int r2 = okhttp3.internal.Util.decodeHexDigit(r2)
            int r3 = r0 + 2
            char r3 = r6.charAt(r3)
            int r3 = okhttp3.internal.Util.decodeHexDigit(r3)
            if (r2 == r4) goto L42
            if (r3 == r4) goto L42
            int r2 = r2 << 4
            int r2 = r2 + r3
            r5.writeByte(r2)
            int r0 = r0 + 2
        L30:
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            goto L2
        L36:
            r2 = 43
            if (r1 != r2) goto L42
            if (r9 == 0) goto L42
            r2 = 32
            r5.writeByte(r2)
            goto L30
        L42:
            r5.writeUtf8CodePoint(r1)
            goto L30
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.percentDecode(okio.Buffer, java.lang.String, int, int, boolean):void");
    }

    static boolean percentEncoded(String str, int i, int i2) {
        return i + 2 < i2 && str.charAt(i) == '%' && Util.decodeHexDigit(str.charAt(i + 1)) != -1 && Util.decodeHexDigit(str.charAt(i + 2)) != -1;
    }

    static List<String> queryStringToNamesAndValues(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    @Nullable
    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        int iIndexOf = this.url.indexOf(58, this.scheme.length() + 3);
        return this.url.substring(iIndexOf + 1, this.url.indexOf(64));
    }

    public String encodedPath() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        return this.url.substring(iIndexOf, Util.delimiterOffset(this.url, iIndexOf, this.url.length(), NPStringFog.decode(new byte[]{92, 16}, "c36ea1", 6259)));
    }

    public List<String> encodedPathSegments() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        int iDelimiterOffset = Util.delimiterOffset(this.url, iIndexOf, this.url.length(), NPStringFog.decode(new byte[]{12, 64}, "3c5dae", -2353));
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iDelimiterOffset) {
            int i = iIndexOf + 1;
            iIndexOf = Util.delimiterOffset(this.url, i, iDelimiterOffset, '/');
            arrayList.add(this.url.substring(i, iIndexOf));
        }
        return arrayList;
    }

    @Nullable
    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iIndexOf = this.url.indexOf(63) + 1;
        return this.url.substring(iIndexOf, Util.delimiterOffset(this.url, iIndexOf, this.url.length(), '#'));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        return this.url.substring(length, Util.delimiterOffset(this.url, length, this.url.length(), NPStringFog.decode(new byte[]{15, 36}, "5d51ed", true, true)));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    @Nullable
    public String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String host() {
        return this.host;
    }

    public boolean isHttps() {
        return this.scheme.equals(NPStringFog.decode(new byte[]{14, 64, 16, 19, 66}, "f4dc12", false));
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    @Nullable
    public Builder newBuilder(String str) {
        Builder builder = new Builder();
        if (builder.parse(this, str) == Builder.ParseResult.SUCCESS) {
            return builder;
        }
        return null;
    }

    public String password() {
        return this.password;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public int port() {
        return this.port;
    }

    @Nullable
    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        namesAndValuesToQueryString(sb, this.queryNamesAndValues);
        return sb.toString();
    }

    @Nullable
    public String queryParameter(String str) {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                return this.queryNamesAndValues.get(i + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i) {
        if (this.queryNamesAndValues == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.queryNamesAndValues.get(i * 2);
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i) {
        if (this.queryNamesAndValues == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.queryNamesAndValues.get((i * 2) + 1);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                arrayList.add(this.queryNamesAndValues.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        if (this.queryNamesAndValues != null) {
            return this.queryNamesAndValues.size() / 2;
        }
        return 0;
    }

    public String redact() {
        return newBuilder(NPStringFog.decode(new byte[]{30, 30, 79, 23}, "10a9bb", true, false)).username("").password("").build().toString();
    }

    @Nullable
    public HttpUrl resolve(String str) {
        Builder builderNewBuilder = newBuilder(str);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    @Nullable
    public String topPrivateDomain() {
        if (Util.verifyAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.get().getEffectiveTldPlusOne(this.host);
    }

    public URI uri() {
        String string = newBuilder().reencodeForUri().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                return URI.create(string.replaceAll(NPStringFog.decode(new byte[]{57, 62, 69, 8, 84, 81, 82, 79, 108, 77, 84, 81, 83, 36, 108, 77, 84, 81, 85, 36, 29, 100, 17, 81, 82, 91, 118, 100, 20, 26, 8, 3, 70, 89, 51, 9, 11, 22, 85, 75, 20, 0, 1, 7, 77, 101}, "bb08da", -14826), ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String username() {
        return this.username;
    }
}
