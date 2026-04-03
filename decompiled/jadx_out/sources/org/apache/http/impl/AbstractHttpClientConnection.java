package org.apache.http.impl;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpClientConnection implements HttpClientConnection {
    public AbstractHttpClientConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 76, 85, 67}, "9297b5", false, true));
    }

    protected abstract void assertOpen() throws IllegalStateException;

    protected EntityDeserializer createEntityDeserializer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 20, 7, 69}, "7faed1", 1663827007L));
    }

    protected EntitySerializer createEntitySerializer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 76, 7, 67}, "b99ebf", -2.0643784E9f));
    }

    protected HttpResponseFactory createHttpResponseFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 77, 20, 0, 25}, "99ab88", false));
    }

    protected HttpMessageWriter createRequestWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 23, 86, 68}, "6bb4e1", -1.896996009E9d));
    }

    protected HttpMessageParser createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 23, 82, 69}, "70b0d8", false, true));
    }

    protected void doFlush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 68, 6, 20}, "261d55", 1.0024871E9f));
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 65, 7, 20}, "184e5e", true, true));
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 23, 84, 71}, "80b6f6", false));
    }

    protected void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 71, 86, 24}, "b62498", true));
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 69, 87, 64}, "e005a0", 3674));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 77, 87, 66}, "5985cb", 1.784616E9f));
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 69, 83, 66}, "5801c8", -9.87507952E8d));
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 68, 3, 22}, "ad1a70", -1.9746798E9f));
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 22, 0, 22}, "54cb78", false, false));
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 76, 0, 20}, "2f9b51", -1506144604L));
    }
}
