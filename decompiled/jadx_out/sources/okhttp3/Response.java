package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.Headers;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes62.dex */
public final class Response implements Closeable {

    @Nullable
    final ResponseBody body;
    private volatile CacheControl cacheControl;

    @Nullable
    final Response cacheResponse;
    final int code;

    @Nullable
    final Handshake handshake;
    final Headers headers;
    final String message;

    @Nullable
    final Response networkResponse;

    @Nullable
    final Response priorResponse;
    final Protocol protocol;
    final long receivedResponseAtMillis;
    final Request request;
    final long sentRequestAtMillis;

    public static class Builder {
        ResponseBody body;
        Response cacheResponse;
        int code;

        @Nullable
        Handshake handshake;
        Headers.Builder headers;
        String message;
        Response networkResponse;
        Response priorResponse;
        Protocol protocol;
        long receivedResponseAtMillis;
        Request request;
        long sentRequestAtMillis;

        public Builder() {
            this.code = -1;
            this.headers = new Headers.Builder();
        }

        Builder(Response response) {
            this.code = -1;
            this.request = response.request;
            this.protocol = response.protocol;
            this.code = response.code;
            this.message = response.message;
            this.handshake = response.handshake;
            this.headers = response.headers.newBuilder();
            this.body = response.body;
            this.networkResponse = response.networkResponse;
            this.cacheResponse = response.cacheResponse;
            this.priorResponse = response.priorResponse;
            this.sentRequestAtMillis = response.sentRequestAtMillis;
            this.receivedResponseAtMillis = response.receivedResponseAtMillis;
        }

        private void checkPriorResponse(Response response) {
            if (response.body != null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{72, 74, 10, 13, 66, 48, 93, 75, 19, 13, 94, 17, 93, 22, 1, 13, 84, 27, 24, 25, 94, 66, 94, 23, 84, 84}, "88cb0b", -29534));
            }
        }

        private void checkSupportResponse(String str, Response response) {
            if (response.body != null) {
                throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{76, 7, 92, 80, 24, 17, 67, 88, 19, 90, 20, 93, 14}, "be34a1", -1.6765454E9f));
            }
            if (response.networkResponse != null) {
                throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{74, 89, 84, 66, 65, 13, 22, 92, 99, 83, 69, 18, 11, 89, 66, 83, 22, 67, 89, 23, 95, 67, 90, 14}, "d7166b", true));
            }
            if (response.cacheResponse != null) {
                throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{30, 2, 7, 82, 81, 4, 98, 4, 21, 65, 86, 15, 67, 4, 70, 16, 4, 65, 94, 20, 10, 93}, "0af19a", -2138530946L));
            }
            if (response.priorResponse != null) {
                throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{24, 68, 66, 88, 94, 16, 100, 81, 67, 65, 94, 12, 69, 81, 16, 16, 12, 66, 88, 65, 92, 93}, "64011b", 9.699391E8f));
            }
        }

        public Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public Builder body(@Nullable ResponseBody responseBody) {
            this.body = responseBody;
            return this;
        }

        public Response build() {
            if (this.request == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{68, 82, 67, 68, 3, 22, 66, 23, 15, 12, 70, 11, 67, 91, 94}, "6721fe", true));
            }
            if (this.protocol == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{18, 65, 86, 66, 89, 1, 13, 95, 25, 11, 11, 66, 12, 70, 85, 90}, "b3966b", 438183510L));
            }
            if (this.code < 0) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{91, 92, 1, 87, 25, 15, 24, 3, 95, 18}, "83e293", -1.404809153E9d) + this.code);
            }
            if (this.message == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{93, 82, 68, 16, 7, 83, 85, 23, 10, 94, 70, 90, 69, 91, 91}, "077cf4", -5.51417908E8d));
            }
            return new Response(this);
        }

        public Builder cacheResponse(@Nullable Response response) {
            if (response != null) {
                checkSupportResponse(NPStringFog.decode(new byte[]{6, 89, 90, 91, 1, 49, 0, 75, 73, 92, 10, 16, 0}, "e893dc", true, true), response);
            }
            this.cacheResponse = response;
            return this;
        }

        public Builder code(int i) {
            this.code = i;
            return this;
        }

        public Builder handshake(@Nullable Handshake handshake) {
            this.handshake = handshake;
            return this;
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder message(String str) {
            this.message = str;
            return this;
        }

        public Builder networkResponse(@Nullable Response response) {
            if (response != null) {
                checkSupportResponse(NPStringFog.decode(new byte[]{15, 3, 76, 69, 95, 64, 10, 52, 93, 65, 64, 93, 15, 21, 93}, "af8202", 1.8153814E9f), response);
            }
            this.networkResponse = response;
            return this;
        }

        public Builder priorResponse(@Nullable Response response) {
            if (response != null) {
                checkPriorResponse(response);
            }
            this.priorResponse = response;
            return this;
        }

        public Builder protocol(Protocol protocol) {
            this.protocol = protocol;
            return this;
        }

        public Builder receivedResponseAtMillis(long j) {
            this.receivedResponseAtMillis = j;
            return this;
        }

        public Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public Builder request(Request request) {
            this.request = request;
            return this;
        }

        public Builder sentRequestAtMillis(long j) {
            this.sentRequestAtMillis = j;
            return this;
        }
    }

    Response(Builder builder) {
        this.request = builder.request;
        this.protocol = builder.protocol;
        this.code = builder.code;
        this.message = builder.message;
        this.handshake = builder.handshake;
        this.headers = builder.headers.build();
        this.body = builder.body;
        this.networkResponse = builder.networkResponse;
        this.cacheResponse = builder.cacheResponse;
        this.priorResponse = builder.priorResponse;
        this.sentRequestAtMillis = builder.sentRequestAtMillis;
        this.receivedResponseAtMillis = builder.receivedResponseAtMillis;
    }

    @Nullable
    public ResponseBody body() {
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

    @Nullable
    public Response cacheResponse() {
        return this.cacheResponse;
    }

    public List<Challenge> challenges() {
        String strDecode;
        if (this.code == 401) {
            strDecode = NPStringFog.decode(new byte[]{53, 102, 50, 78, 113, 71, 22, 89, 0, 13, 68, 91, 1, 80, 17, 6}, "b1ec02", -23081);
        } else {
            if (this.code != 407) {
                return Collections.emptyList();
            }
            strDecode = NPStringFog.decode(new byte[]{100, 23, 10, 72, 31, 75, 117, 16, 17, 88, 3, 8, 64, 12, 6, 81, 18, 3}, "4ee0ff", 1108230493L);
        }
        return HttpHeaders.parseChallenges(headers(), strDecode);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.body == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{74, 86, 69, 20, 94, 95, 75, 86, 22, 13, 66, 17, 86, 92, 66, 68, 84, 93, 81, 84, 95, 6, 93, 84, 24, 85, 89, 22, 17, 80, 24, 81, 89, 0, 72, 17, 89, 93, 82, 68, 92, 68, 75, 71, 22, 10, 94, 69, 24, 81, 83, 68, 82, 93, 87, 64, 83, 0}, "836d11", -6.27118259E8d));
        }
        this.body.close();
    }

    public int code() {
        return this.code;
    }

    public Handshake handshake() {
        return this.handshake;
    }

    @Nullable
    public String header(String str) {
        return header(str, null);
    }

    @Nullable
    public String header(String str, @Nullable String str2) {
        String str3 = this.headers.get(str);
        return str3 != null ? str3 : str2;
    }

    public List<String> headers(String str) {
        return this.headers.values(str);
    }

    public Headers headers() {
        return this.headers;
    }

    public boolean isRedirect() {
        switch (this.code) {
            case HttpStatus.SC_MULTIPLE_CHOICES /* 300 */:
            case 301:
            case 302:
            case 303:
            case 307:
            case 308:
                return true;
            case 304:
            case 305:
            case 306:
            default:
                return false;
        }
    }

    public boolean isSuccessful() {
        return this.code >= 200 && this.code < 300;
    }

    public String message() {
        return this.message;
    }

    @Nullable
    public Response networkResponse() {
        return this.networkResponse;
    }

    public Builder newBuilder() {
        return new Builder(this);
    }

    public ResponseBody peekBody(long j) throws IOException {
        Buffer buffer;
        BufferedSource bufferedSourceSource = this.body.source();
        bufferedSourceSource.request(j);
        Buffer bufferClone = bufferedSourceSource.buffer().clone();
        if (bufferClone.size() > j) {
            buffer = new Buffer();
            buffer.write(bufferClone, j);
            bufferClone.clear();
        } else {
            buffer = bufferClone;
        }
        return ResponseBody.create(this.body.contentType(), buffer.size(), buffer);
    }

    @Nullable
    public Response priorResponse() {
        return this.priorResponse;
    }

    public Protocol protocol() {
        return this.protocol;
    }

    public long receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    public Request request() {
        return this.request;
    }

    public long sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{107, 6, 17, 22, 87, 15, 74, 6, 25, 22, 74, 14, 77, 12, 1, 9, 84, 92}, "9cbf8a", 1.630940819E9d) + this.protocol + NPStringFog.decode(new byte[]{79, 16, 87, 93, 84, 87, 94}, "c04202", 3.2884761E7d) + this.code + NPStringFog.decode(new byte[]{28, 18, 94, 92, 68, 16, 81, 85, 86, 4}, "02397c", true) + this.message + NPStringFog.decode(new byte[]{21, 24, 67, 17, 9, 92}, "986cea", -1178792039L) + this.request.url() + '}';
    }
}
