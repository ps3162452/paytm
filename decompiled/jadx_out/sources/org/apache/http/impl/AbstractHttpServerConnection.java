package org.apache.http.impl;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.HttpResponse;
import org.apache.http.HttpServerConnection;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpServerConnection implements HttpServerConnection {
    public AbstractHttpServerConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 66, 64, 3, 20}, "365a56", true));
    }

    protected abstract void assertOpen() throws IllegalStateException;

    protected EntityDeserializer createEntityDeserializer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 77, 1, 64}, "ba8caf", true, false));
    }

    protected EntitySerializer createEntitySerializer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 71, 22, 7, 19}, "53ce2c", -1388418424L));
    }

    protected HttpRequestFactory createHttpRequestFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 17, 71, 6, 17}, "7e2d04", 64698684L));
    }

    protected HttpMessageParser createRequestParser(SessionInputBuffer sessionInputBuffer, HttpRequestFactory httpRequestFactory, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 68, 0, 71}, "081bfd", -5204));
    }

    protected HttpMessageWriter createResponseWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 65, 91, 22}, "d74971", -1.921204083E9d));
    }

    protected void doFlush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 64, 82, 69}, "8650de", true));
    }

    @Override // org.apache.http.HttpServerConnection
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 22, 6, 24}, "54cd94", 9339));
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 16, 0, 69}, "aaebd8", true));
    }

    protected void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 20, 86, 18}, "86a432", 714821758L));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 77, 65, 6, 18}, "194d39", true, true));
    }

    @Override // org.apache.http.HttpServerConnection
    public void receiveRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 16, 6, 23}, "7bed6f", -26216));
    }

    @Override // org.apache.http.HttpServerConnection
    public HttpRequest receiveRequestHeader() throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 77, 23, 90, 21}, "99b84b", -712518164L));
    }

    @Override // org.apache.http.HttpServerConnection
    public void sendResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 67, 69, 7, 69}, "070ed8", -1.095055046E9d));
    }

    @Override // org.apache.http.HttpServerConnection
    public void sendResponseHeader(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 69, 83, 69}, "8301d0", 30364));
    }
}
