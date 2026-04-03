package android.net.http;

import java.io.File;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public final class HttpResponseCache extends ResponseCache {
    HttpResponseCache() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 76, 17, 85, 66}, "d8d7c0", 1962));
    }

    public static HttpResponseCache getInstalled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 68, 84, 22}, "1f167d", 4.35501575E8d));
    }

    public static HttpResponseCache install(File file, long j) throws IOException {
        synchronized (HttpResponseCache.class) {
            try {
                throw new RuntimeException(NPStringFog.decode(new byte[]{100, 66, 16, 3, 16}, "76ea1f", false));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 71, 82, 69}, "4320dd", 15284));
    }

    public void delete() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 64, 82, 25}, "95508a", 1593976140L));
    }

    public void flush() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 69, 81, 22}, "060375", 697790322L));
    }

    @Override // java.net.ResponseCache
    public CacheResponse get(URI uri, String str, Map<String, List<String>> map) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 20, 91, 16}, "b5a91e", 27792));
    }

    public int getHitCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 70, 64, 4, 67}, "f25fb4", -6.42981447E8d));
    }

    public int getNetworkCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 66, 3, 68}, "fe7ae6", -602388702L));
    }

    public int getRequestCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 17, 91, 25}, "8ed988", 8069));
    }

    public long maxSize() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 77, 81, 24}, "488397", -4.88910599E8d));
    }

    @Override // java.net.ResponseCache
    public CacheRequest put(URI uri, URLConnection uRLConnection) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 69, 84, 68}, "4d06e0", -2476));
    }

    public long size() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 71, 85, 68}, "8127e9", -27285));
    }
}
