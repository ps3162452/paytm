package okhttp3.internal.cache;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.http.HttpHeaders;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes62.dex */
public final class CacheStrategy {

    @Nullable
    public final Response cacheResponse;

    @Nullable
    public final Request networkRequest;

    public static class Factory {
        private int ageSeconds;
        final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        final long nowMillis;
        private long receivedResponseMillis;
        final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j, Request request, Response response) {
            this.ageSeconds = -1;
            this.nowMillis = j;
            this.request = request;
            this.cacheResponse = response;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String strName = headers.name(i);
                    String strValue = headers.value(i);
                    if (NPStringFog.decode(new byte[]{33, 0, 67, 7}, "ea7bd0", -1.490509406E9d).equalsIgnoreCase(strName)) {
                        this.servedDate = HttpDate.parse(strValue);
                        this.servedDateString = strValue;
                    } else if (NPStringFog.decode(new byte[]{125, 29, 17, 91, 71, 0, 75}, "8ea25e", -5.75895098E8d).equalsIgnoreCase(strName)) {
                        this.expires = HttpDate.parse(strValue);
                    } else if (NPStringFog.decode(new byte[]{45, 86, 71, 71, 31, 47, 14, 83, 93, 85, 91, 7, 5}, "a7432b", 27593).equalsIgnoreCase(strName)) {
                        this.lastModified = HttpDate.parse(strValue);
                        this.lastModifiedString = strValue;
                    } else if (NPStringFog.decode(new byte[]{116, 53, 87, 94}, "1a6974", 16182).equalsIgnoreCase(strName)) {
                        this.etag = strValue;
                    } else if (NPStringFog.decode(new byte[]{35, 82, 81}, "b543be", 1468132034L).equalsIgnoreCase(strName)) {
                        this.ageSeconds = HttpHeaders.parseSeconds(strValue, -1);
                    }
                }
            }
        }

        private long cacheResponseAge() {
            long jMax = this.servedDate != null ? Math.max(0L, this.receivedResponseMillis - this.servedDate.getTime()) : 0L;
            if (this.ageSeconds != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(this.ageSeconds));
            }
            return jMax + (this.receivedResponseMillis - this.sentRequestMillis) + (this.nowMillis - this.receivedResponseMillis);
        }

        private long computeFreshnessLifetime() {
            if (this.cacheResponse.cacheControl().maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(r2.maxAgeSeconds());
            }
            if (this.expires != null) {
                long time = this.expires.getTime() - (this.servedDate != null ? this.servedDate.getTime() : this.receivedResponseMillis);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.lastModified == null || this.cacheResponse.request().url().query() != null) {
                return 0L;
            }
            long time2 = (this.servedDate != null ? this.servedDate.getTime() : this.sentRequestMillis) - this.lastModified.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private CacheStrategy getCandidate() {
            String strDecode;
            String str;
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.request, null);
            }
            if ((!this.request.isHttps() || this.cacheResponse.handshake() != null) && CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                CacheControl cacheControl = this.request.cacheControl();
                if (cacheControl.noCache() || hasConditions(this.request)) {
                    return new CacheStrategy(this.request, null);
                }
                CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                if (cacheControl2.immutable()) {
                    return new CacheStrategy(null, this.cacheResponse);
                }
                long jCacheResponseAge = cacheResponseAge();
                long jComputeFreshnessLifetime = computeFreshnessLifetime();
                if (cacheControl.maxAgeSeconds() != -1) {
                    jComputeFreshnessLifetime = Math.min(jComputeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                }
                long millis = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
                long millis2 = 0;
                if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                    millis2 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                }
                if (!cacheControl2.noCache() && jCacheResponseAge + millis < millis2 + jComputeFreshnessLifetime) {
                    Response.Builder builderNewBuilder = this.cacheResponse.newBuilder();
                    if (millis + jCacheResponseAge >= jComputeFreshnessLifetime) {
                        builderNewBuilder.addHeader(NPStringFog.decode(new byte[]{101, 7, 66, 94, 88, 86, 85}, "2f0018", false, false), NPStringFog.decode(new byte[]{5, 6, 83, 19, 44, 22, 64, 71, 54, 97, 40, 33, 91, 89, 13, 86, 7, 22, 93, 88, 13, 19, 70, 48, 81, 68, 19, 92, 10, 17, 81, 23, 10, 64, 68, 17, 64, 86, 15, 86, 70}, "47c3db", -1.39394574E9d));
                    }
                    if (jCacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                        builderNewBuilder.addHeader(NPStringFog.decode(new byte[]{100, 0, 17, 8, 13, 92, 84}, "3acfd2", 31284333L), NPStringFog.decode(new byte[]{85, 84, 10, 21, 45, 67, 16, 21, 108, 103, 41, 116, 11, 11, 87, 80, 6, 67, 13, 10, 87, 21, 71, 127, 1, 16, 75, 92, 22, 67, 13, 6, 25, 80, 29, 71, 13, 23, 88, 65, 12, 88, 10, 71}, "de95e7", true));
                    }
                    return new CacheStrategy(null, builderNewBuilder.build());
                }
                if (this.etag != null) {
                    strDecode = NPStringFog.decode(new byte[]{120, 94, 24, 121, 9, 10, 84, 21, 120, 86, 18, 7, 89}, "1857fd", 17540);
                    str = this.etag;
                } else if (this.lastModified != null) {
                    strDecode = NPStringFog.decode(new byte[]{45, 7, 27, 47, 93, 82, 13, 7, 95, 7, 86, 27, 55, 8, 88, 1, 87}, "da6b26", true);
                    str = this.lastModifiedString;
                } else {
                    if (this.servedDate == null) {
                        return new CacheStrategy(this.request, null);
                    }
                    strDecode = NPStringFog.decode(new byte[]{123, 3, 30, 40, 92, 7, 91, 3, 90, 0, 87, 78, 97, 12, 93, 6, 86}, "2e3e3c", 1.3048827E9f);
                    str = this.servedDateString;
                }
                Headers.Builder builderNewBuilder2 = this.request.headers().newBuilder();
                Internal.instance.addLenient(builderNewBuilder2, strDecode, str);
                return new CacheStrategy(this.request.newBuilder().headers(builderNewBuilder2.build()).build(), this.cacheResponse);
            }
            return new CacheStrategy(this.request, null);
        }

        private static boolean hasConditions(Request request) {
            return (request.header(NPStringFog.decode(new byte[]{127, 94, 73, 116, 93, 85, 95, 94, 13, 92, 86, 28, 101, 81, 10, 90, 87}, "68d921", -542120484L)) == null && request.header(NPStringFog.decode(new byte[]{47, 87, 24, 118, 87, 8, 3, 28, 120, 89, 76, 5, 14}, "f1588f", 13192)) == null) ? false : true;
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            return (candidate.networkRequest == null || !this.request.cacheControl().onlyIfCached()) ? candidate : new CacheStrategy(null, null);
        }
    }

    CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    public static boolean isCacheable(Response response, Request request) {
        switch (response.code()) {
            case 200:
            case HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION /* 203 */:
            case HttpStatus.SC_NO_CONTENT /* 204 */:
            case HttpStatus.SC_MULTIPLE_CHOICES /* 300 */:
            case 301:
            case 308:
            case HttpStatus.SC_NOT_FOUND /* 404 */:
            case HttpStatus.SC_METHOD_NOT_ALLOWED /* 405 */:
            case HttpStatus.SC_GONE /* 410 */:
            case HttpStatus.SC_REQUEST_URI_TOO_LONG /* 414 */:
            case 501:
                break;
            case 302:
            case 307:
                if (response.header(NPStringFog.decode(new byte[]{115, 76, 67, 90, 69, 0, 69}, "64337e", false)) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return (response.cacheControl().noStore() || request.cacheControl().noStore()) ? false : true;
    }
}
