package okhttp3;

import java.net.URL;
import java.util.List;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;

/* JADX INFO: loaded from: classes62.dex */
public final class Request {

    @Nullable
    final RequestBody body;
    private volatile CacheControl cacheControl;
    final Headers headers;
    final String method;
    final Object tag;
    final HttpUrl url;

    public static class Builder {
        RequestBody body;
        Headers.Builder headers;
        String method;
        Object tag;
        HttpUrl url;

        public Builder() {
            this.method = NPStringFog.decode(new byte[]{38, 32, 97}, "ae50c8", -1.4740515E8f);
            this.headers = new Headers.Builder();
        }

        Builder(Request request) {
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.tag = request.tag;
            this.headers = request.headers.newBuilder();
        }

        public Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public Request build() {
            if (this.url == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{23, 70, 95, 18, 13, 91, 66, 90, 70, 94, 92}, "b4320f", -18256));
            }
            return new Request(this);
        }

        public Builder cacheControl(CacheControl cacheControl) {
            String string = cacheControl.toString();
            return string.isEmpty() ? removeHeader(NPStringFog.decode(new byte[]{118, 2, 7, 9, 1, 79, 118, 12, 10, 21, 22, 13, 89}, "5cdadb", -2133)) : header(NPStringFog.decode(new byte[]{115, 86, 82, 10, 1, 25, 115, 88, 95, 22, 22, 91, 92}, "071bd4", false), string);
        }

        public Builder delete() {
            return delete(Util.EMPTY_REQUEST);
        }

        public Builder delete(@Nullable RequestBody requestBody) {
            return method(NPStringFog.decode(new byte[]{33, 117, 41, 36, 109, 119}, "e0ea92", -3.8684247E7d), requestBody);
        }

        public Builder get() {
            return method(NPStringFog.decode(new byte[]{113, 33, 55}, "6dca9e", 2792), null);
        }

        public Builder head() {
            return method(NPStringFog.decode(new byte[]{124, 112, 114, 32}, "453d67", 1.7906234E9f), null);
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder method(String str, @Nullable RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{15, 86, 23, 91, 92, 81, 66, 14, 94, 19, 93, 64, 14, 95}, "b3c335", 1.5228339E9f));
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{91, 93, 66, 12, 94, 83, 24, 84, 83, 10, 86, 67, 94, 16, 31, 68, 12, 10, 22, 8}, "686d17", false, true));
            }
            if (requestBody != null && !HttpMethod.permitsRequestBody(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 84, 66, 10, 89, 80, 17}, "116b64", -172) + str + NPStringFog.decode(new byte[]{66, 85, 69, 68, 65, 67, 12, 87, 68, 23, 93, 2, 20, 93, 16, 86, 21, 17, 7, 73, 69, 82, 70, 23, 66, 90, 95, 83, 76, 77}, "b8075c", -1.0260957E7d));
            }
            if (requestBody == null && HttpMethod.requiresRequestBody(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{9, 87, 69, 14, 89, 1, 68}, "d21f6e", 23606) + str + NPStringFog.decode(new byte[]{22, 84, 22, 64, 16, 21, 94, 88, 21, 86, 68, 84, 22, 75, 6, 66, 17, 80, 69, 77, 67, 81, 11, 81, 79, 23}, "69c3d5", 1.5713879E9f));
            }
            this.method = str;
            this.body = requestBody;
            return this;
        }

        public Builder patch(RequestBody requestBody) {
            return method(NPStringFog.decode(new byte[]{100, 113, 96, 113, 45}, "4042e6", 15845), requestBody);
        }

        public Builder post(RequestBody requestBody) {
            return method(NPStringFog.decode(new byte[]{99, 118, 103, 96}, "3944c5", -1.08842811E9d), requestBody);
        }

        public Builder put(RequestBody requestBody) {
            return method(NPStringFog.decode(new byte[]{105, 98, 48}, "97d745", 15772), requestBody);
        }

        public Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public Builder tag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Builder url(String str) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{67, 69, 90, 69, 11, 11, 22, 89, 67, 9, 90}, "676e66", false, false));
            }
            if (str.regionMatches(true, 0, NPStringFog.decode(new byte[]{67, 69, 91}, "46a0e1", 7.636827E8f), 0, 3)) {
                str = NPStringFog.decode(new byte[]{10, 21, 70, 22, 8}, "ba2f24", 1.630108E9f) + str.substring(3);
            } else if (str.regionMatches(true, 0, NPStringFog.decode(new byte[]{78, 17, 17, 91}, "9bba98", 3.90212439E8d), 0, 4)) {
                str = NPStringFog.decode(new byte[]{91, 76, 69, 67, 71, 13}, "381347", 1.930543288E9d) + str.substring(4);
            }
            HttpUrl httpUrl = HttpUrl.parse(str);
            if (httpUrl == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{67, 93, 0, 79, 19, 82, 85, 71, 0, 83, 67, 66, 68, 95, 95, 23}, "63e7c7", -4.884037E7f) + str);
            }
            return url(httpUrl);
        }

        public Builder url(URL url) {
            if (url == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{68, 20, 15, 17, 9, 95, 17, 8, 22, 93, 88}, "1fc14b", true, false));
            }
            HttpUrl httpUrl = HttpUrl.get(url);
            if (httpUrl == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 13, 84, 25, 66, 4, 6, 23, 84, 5, 18, 20, 23, 15, 11, 65}, "ec1a2a", -24016) + url);
            }
            return url(httpUrl);
        }

        public Builder url(HttpUrl httpUrl) {
            if (httpUrl == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{77, 17, 93, 22, 14, 4, 24, 13, 68, 90, 95}, "8c1639", 2.04287E8f));
            }
            this.url = httpUrl;
            return this;
        }
    }

    Request(Builder builder) {
        this.url = builder.url;
        this.method = builder.method;
        this.headers = builder.headers.build();
        this.body = builder.body;
        this.tag = builder.tag != null ? builder.tag : this;
    }

    @Nullable
    public RequestBody body() {
        return this.body;
    }

    public CacheControl cacheControl() {
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.parse(this.headers);
        this.cacheControl = cacheControl2;
        return cacheControl2;
    }

    public String header(String str) {
        return this.headers.get(str);
    }

    public List<String> headers(String str) {
        return this.headers.values(str);
    }

    public Headers headers() {
        return this.headers;
    }

    public boolean isHttps() {
        return this.url.isHttps();
    }

    public String method() {
        return this.method;
    }

    public Builder newBuilder() {
        return new Builder(this);
    }

    public Object tag() {
        return this.tag;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{49, 80, 64, 76, 93, 16, 23, 78, 92, 92, 76, 11, 12, 81, 12}, "c5198c", 1.977862E9f) + this.method + NPStringFog.decode(new byte[]{74, 19, 69, 66, 95, 91}, "f3003f", 1.1661998E9f) + this.url + NPStringFog.decode(new byte[]{77, 69, 18, 86, 87, 95}, "aef70b", -13820) + (this.tag != this ? this.tag : null) + '}';
    }

    public HttpUrl url() {
        return this.url;
    }
}
