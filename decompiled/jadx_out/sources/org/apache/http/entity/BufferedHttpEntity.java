package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BufferedHttpEntity extends HttpEntityWrapper {
    public BufferedHttpEntity(HttpEntity httpEntity) throws IOException {
        super((HttpEntity) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 17, 90, 22}, "add87f", false, true));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 64, 85, 20}, "80575f", false));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 19, 83, 22}, "66f17e", true, true));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public boolean isChunked() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 20, 86, 24}, "59a49b", -14690));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 71, 68, 87, 21}, "03154f", -7625));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 16, 4, 64}, "31efad", false));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 16, 7, 20}, "40ee5d", true));
    }
}
