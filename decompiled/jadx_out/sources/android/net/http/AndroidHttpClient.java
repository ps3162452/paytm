package android.net.http;

import android.content.ContentResolver;
import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidHttpClient implements HttpClient {
    public static long DEFAULT_SYNC_MIN_GZIP_BYTES;

    AndroidHttpClient() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 17, 0, 23}, "acdb69", true, true));
    }

    public static AbstractHttpEntity getCompressedEntity(byte[] bArr, ContentResolver contentResolver) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 22, 91, 67}, "80c9b1", 1347424457L));
    }

    public static long getMinGzipSize(ContentResolver contentResolver) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 76, 85, 21}, "9d9745", 1.8919428E9f));
    }

    public static InputStream getUngzippedContent(HttpEntity httpEntity) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 67, 4, 18}, "d66f33", -15833));
    }

    public static void modifyRequestToAcceptGzipResponse(HttpRequest httpRequest) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 65, 65, 82, 67}, "8540bf", -1.25806746E9d));
    }

    public static AndroidHttpClient newInstance(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 17, 83, 25}, "add18b", true, false));
    }

    public static AndroidHttpClient newInstance(String str, Context context) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 17, 87, 69}, "aed5d4", 1.0551728E9f));
    }

    public static long parseDate(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 76, 6, 64}, "e09dac", -2.9948355E8f));
    }

    public void close() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 17, 82, 21}, "9ed04e", 106137821L));
    }

    public void disableCurlLogging() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 23, 69, 7, 24}, "1c0e9c", false));
    }

    public void enableCurlLogging(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 77, 69, 86, 24}, "c9049b", 5.0744662E8f));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 20, 84, 17}, "9ba606", 1.89197985E8d));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 16, 3, 21}, "10ea4a", -22691));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 71, 84, 68}, "6126e0", -921340860L));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 20, 83, 19}, "a8a12d", 1.611722538E9d));
    }

    @Override // org.apache.http.client.HttpClient
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 21, 22, 83, 17}, "7ac10b", false));
    }

    @Override // org.apache.http.client.HttpClient
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 71, 87, 68}, "aa25ed", -5853));
    }

    @Override // org.apache.http.client.HttpClient
    public HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 21, 71, 81, 21}, "fa2343", true, true));
    }

    @Override // org.apache.http.client.HttpClient
    public HttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 76, 3, 25}, "559a81", false, true));
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 66, 87, 20}, "8e7553", 1.282297965E9d));
    }

    @Override // org.apache.http.client.HttpClient
    public ClientConnectionManager getConnectionManager() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 70, 85, 68}, "4c37ed", -1813918223L));
    }

    @Override // org.apache.http.client.HttpClient
    public HttpParams getParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 76, 3, 21}, "e39a41", 6.28388864E8d));
    }
}
