package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.http.HttpHeaders;

/* JADX INFO: loaded from: classes62.dex */
public final class CacheControl {

    @Nullable
    String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    public static final class Builder {
        boolean immutable;
        int maxAgeSeconds = -1;
        int maxStaleSeconds = -1;
        int minFreshSeconds = -1;
        boolean noCache;
        boolean noStore;
        boolean noTransform;
        boolean onlyIfCached;

        public CacheControl build() {
            return new CacheControl(this);
        }

        public Builder immutable() {
            this.immutable = true;
            return this;
        }

        public Builder maxAge(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{11, 86, 74, 36, 5, 0, 70, 11, 18, 85, 88, 69}, "f72ebe", -1587758068L) + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.maxAgeSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder maxStale(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 82, 29, 96, 71, 0, 84, 86, 69, 15, 19, 81, 2, 19}, "83e33a", false, true) + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.maxStaleSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder minFresh(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 11, 8, 118, 20, 82, 74, 10, 70, 12, 70, 7, 3, 66}, "9bf0f7", false, false) + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.minFreshSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder noCache() {
            this.noCache = true;
            return this;
        }

        public Builder noStore() {
            this.noStore = true;
            return this;
        }

        public Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = builder.noStore;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = builder.noTransform;
        this.immutable = builder.immutable;
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    private String headerValue() {
        StringBuilder sb = new StringBuilder();
        if (this.noCache) {
            sb.append(NPStringFog.decode(new byte[]{8, 89, 73, 84, 88, 6, 14, 83, 72, 23}, "f6d79e", 4.0356317E8f));
        }
        if (this.noStore) {
            sb.append(NPStringFog.decode(new byte[]{94, 87, 26, 22, 68, 91, 66, 93, 27, 69}, "087e04", -68101571L));
        }
        if (this.maxAgeSeconds != -1) {
            sb.append(NPStringFog.decode(new byte[]{14, 0, 74, 25, 7, 80, 6, 92}, "ca24f7", true)).append(this.maxAgeSeconds).append(NPStringFog.decode(new byte[]{31, 18}, "328edf", -1.766899257E9d));
        }
        if (this.sMaxAgeSeconds != -1) {
            sb.append(NPStringFog.decode(new byte[]{16, 28, 14, 2, 76, 0, 4, 84, 94}, "c1cc4a", 2.6341432E7f)).append(this.sMaxAgeSeconds).append(NPStringFog.decode(new byte[]{72, 22}, "d648d3", 9752));
        }
        if (this.isPrivate) {
            sb.append(NPStringFog.decode(new byte[]{21, 65, 89, 69, 86, 16, 0, 31, 16}, "e3037d", 9345));
        }
        if (this.isPublic) {
            sb.append(NPStringFog.decode(new byte[]{22, 77, 86, 91, 11, 83, 74, 24}, "f847b0", -790774886L));
        }
        if (this.mustRevalidate) {
            sb.append(NPStringFog.decode(new byte[]{11, 66, 67, 67, 79, 68, 3, 65, 81, 91, 11, 82, 7, 67, 85, 27, 66}, "f707b6", false, true));
        }
        if (this.maxStaleSeconds != -1) {
            sb.append(NPStringFog.decode(new byte[]{84, 4, 75, 75, 70, 68, 88, 9, 86, 91}, "9e3f50", true, true)).append(this.maxStaleSeconds).append(NPStringFog.decode(new byte[]{27, 23}, "774443", true, false));
        }
        if (this.minFreshSeconds != -1) {
            sb.append(NPStringFog.decode(new byte[]{85, 90, 90, 25, 86, 64, 93, 64, 92, 9}, "834402", false, false)).append(this.minFreshSeconds).append(NPStringFog.decode(new byte[]{31, 24}, "3886f5", true, false));
        }
        if (this.onlyIfCached) {
            sb.append(NPStringFog.decode(new byte[]{95, 93, 88, 27, 79, 80, 86, 30, 87, 3, 1, 81, 85, 87, 24, 66}, "034bb9", false));
        }
        if (this.noTransform) {
            sb.append(NPStringFog.decode(new byte[]{8, 14, 25, 22, 16, 82, 8, 18, 82, 13, 16, 94, 74, 65}, "fa4bb3", -1.174218E9f));
        }
        if (this.immutable) {
            sb.append(NPStringFog.decode(new byte[]{92, 14, 9, 71, 67, 83, 87, 15, 1, 30, 23}, "5cd272", false, false));
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public static CacheControl parse(Headers headers) {
        boolean z;
        String str;
        boolean z2 = false;
        boolean z3 = false;
        int seconds = -1;
        int seconds2 = -1;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int seconds3 = -1;
        int seconds4 = -1;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = true;
        int size = headers.size();
        int i = 0;
        String str2 = null;
        while (true) {
            z = z2;
            if (i >= size) {
                break;
            }
            String strName = headers.name(i);
            String strValue = headers.value(i);
            if (strName.equalsIgnoreCase(NPStringFog.decode(new byte[]{39, 7, 81, 95, 1, 30, 39, 9, 92, 67, 22, 92, 8}, "df27d3", -796592277L))) {
                if (str2 != null) {
                    z10 = false;
                } else {
                    str2 = strValue;
                }
            } else if (strName.equalsIgnoreCase(NPStringFog.decode(new byte[]{54, 71, 0, 81, 91, 89}, "f5a668", -2.0494541E9f))) {
                z10 = false;
            } else {
                z2 = z;
                i++;
            }
            z2 = z;
            int i2 = 0;
            while (i2 < strValue.length()) {
                int iSkipUntil = HttpHeaders.skipUntil(strValue, i2, NPStringFog.decode(new byte[]{13, 78, 89}, "0bb1d8", false));
                String strTrim = strValue.substring(i2, iSkipUntil).trim();
                if (iSkipUntil == strValue.length() || strValue.charAt(iSkipUntil) == ',' || strValue.charAt(iSkipUntil) == ';') {
                    i2 = iSkipUntil + 1;
                    str = null;
                } else {
                    int iSkipWhitespace = HttpHeaders.skipWhitespace(strValue, iSkipUntil + 1);
                    if (iSkipWhitespace >= strValue.length() || strValue.charAt(iSkipWhitespace) != '\"') {
                        int iSkipUntil2 = HttpHeaders.skipUntil(strValue, iSkipWhitespace, NPStringFog.decode(new byte[]{72, 11}, "d0df8a", -2.0621873E9f));
                        String strTrim2 = strValue.substring(iSkipWhitespace, iSkipUntil2).trim();
                        i2 = iSkipUntil2;
                        str = strTrim2;
                    } else {
                        int i3 = iSkipWhitespace + 1;
                        int iSkipUntil3 = HttpHeaders.skipUntil(strValue, i3, NPStringFog.decode(new byte[]{65}, "c9ad63", 31936));
                        String strSubstring = strValue.substring(i3, iSkipUntil3);
                        i2 = iSkipUntil3 + 1;
                        str = strSubstring;
                    }
                }
                if (NPStringFog.decode(new byte[]{89, 13, 28, 82, 83, 0, 95, 7}, "7b112c", -1.845756284E9d).equalsIgnoreCase(strTrim)) {
                    z2 = true;
                } else if (NPStringFog.decode(new byte[]{15, 92, 24, 18, 76, 10, 19, 86}, "a35a8e", 1781123664L).equalsIgnoreCase(strTrim)) {
                    z3 = true;
                } else if (NPStringFog.decode(new byte[]{94, 86, 77, 78, 7, 94, 86}, "375cf9", -1076428014L).equalsIgnoreCase(strTrim)) {
                    seconds = HttpHeaders.parseSeconds(str, -1);
                } else if (NPStringFog.decode(new byte[]{68, 21, 11, 3, 65, 86, 80, 93}, "78fb97", -2035998119L).equalsIgnoreCase(strTrim)) {
                    seconds2 = HttpHeaders.parseSeconds(str, -1);
                } else if (NPStringFog.decode(new byte[]{72, 20, 10, 20, 3, 71, 93}, "8fcbb3", true).equalsIgnoreCase(strTrim)) {
                    z4 = true;
                } else if (NPStringFog.decode(new byte[]{72, 20, 3, 8, 10, 6}, "8aadce", 10467).equalsIgnoreCase(strTrim)) {
                    z5 = true;
                } else if (NPStringFog.decode(new byte[]{95, 65, 23, 22, 78, 19, 87, 66, 5, 14, 10, 5, 83, 64, 1}, "24dbca", true).equalsIgnoreCase(strTrim)) {
                    z6 = true;
                } else if (NPStringFog.decode(new byte[]{14, 5, 65, 78, 17, 71, 2, 8, 92}, "cd9cb3", -7475).equalsIgnoreCase(strTrim)) {
                    seconds3 = HttpHeaders.parseSeconds(str, Integer.MAX_VALUE);
                } else if (NPStringFog.decode(new byte[]{88, 88, 94, 26, 94, 69, 80, 66, 88}, "510787", true).equalsIgnoreCase(strTrim)) {
                    seconds4 = HttpHeaders.parseSeconds(str, -1);
                } else if (NPStringFog.decode(new byte[]{89, 11, 13, 76, 25, 81, 80, 72, 2, 84, 87, 80, 83, 1}, "6ea548", -2.20620325E8d).equalsIgnoreCase(strTrim)) {
                    z7 = true;
                } else if (NPStringFog.decode(new byte[]{94, 93, 25, 23, 67, 3, 94, 65, 82, 12, 67, 15}, "024c1b", 2.029677642E9d).equalsIgnoreCase(strTrim)) {
                    z8 = true;
                } else if (NPStringFog.decode(new byte[]{13, 15, 90, 67, 17, 81, 6, 14, 82}, "db76e0", false, true).equalsIgnoreCase(strTrim)) {
                    z9 = true;
                }
            }
            i++;
        }
        return new CacheControl(z, z3, seconds, seconds2, z4, z5, z6, seconds3, seconds4, z7, z8, z9, !z10 ? null : str2);
    }

    public boolean immutable() {
        return this.immutable;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public boolean noTransform() {
        return this.noTransform;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        String strHeaderValue = headerValue();
        this.headerValue = strHeaderValue;
        return strHeaderValue;
    }
}
