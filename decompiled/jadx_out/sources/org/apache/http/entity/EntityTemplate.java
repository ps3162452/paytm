package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class EntityTemplate extends AbstractHttpEntity {
    public EntityTemplate(ContentProducer contentProducer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 23, 3, 22}, "c1ba78", 8429));
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 76, 4, 64}, "3c9fad", -1.73903103E9d));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 69, 87, 68}, "2505e9", false));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 77, 16, 80, 23}, "49e261", true, true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 16, 4, 25}, "39ef8b", true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 67, 87, 25}, "176583", false));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 67, 1, 18}, "046c38", 1.637618496E9d));
    }
}
