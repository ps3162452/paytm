package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpEntityWrapper implements HttpEntity {
    protected HttpEntity wrappedEntity;

    public HttpEntityWrapper(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 68, 6, 22}, "fe1d7b", false));
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 23, 85, 67}, "88b7bf", false, false));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 64, 76, 82, 64}, "9490a8", 2.1465514E9f));
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 67, 91, 67}, "6669bd", 2.0976355E9f));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 23, 3, 21}, "78ba40", false));
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 67, 84, 16}, "aa6614", true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 21, 68, 81, 66}, "da13cd", 1.27611662E8d));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 69, 6, 25}, "960d88", true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 17, 86, 69}, "43d4d9", -2856211.0f));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 70, 0, 66}, "ac3bc9", true));
    }
}
