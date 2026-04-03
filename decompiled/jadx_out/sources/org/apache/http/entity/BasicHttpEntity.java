package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHttpEntity extends AbstractHttpEntity {
    public BasicHttpEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 17, 84, 18}, "d7d630", false));
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 66, 76, 7, 22}, "369e7b", true, false));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 65, 7, 68}, "f64ee0", true));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 70, 71, 80, 69}, "f222d7", -5.6593197E8f));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 68, 0, 67}, "771bbb", true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 16, 81, 24}, "90e391", -3.7614212E7f));
    }

    public void setContent(InputStream inputStream) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 71, 0, 23}, "b72b62", true, true));
    }

    public void setContentLength(long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 77, 80, 68}, "3182ee", true, false));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 70, 86, 19}, "ae3421", 1.126814656E9d));
    }
}
