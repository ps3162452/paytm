package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ByteArrayEntity extends AbstractHttpEntity {
    protected final byte[] content = null;

    public ByteArrayEntity(byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 17, 0, 21}, "eedb42", false));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 71, 85, 25}, "572786", 102502817L));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 16, 83, 66}, "b7e1c1", 14595));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 20, 86, 23}, "58a460", true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 17, 6, 67}, "b7ddb8", -8.99389439E8d));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 70, 87, 23}, "e03563", false, true));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 23, 91, 19}, "66b92a", -1.827183179E9d));
    }
}
