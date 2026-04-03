package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class InputStreamEntity extends AbstractHttpEntity {
    public InputStreamEntity(InputStream inputStream, long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 22, 80, 64}, "e0c2ae", 1.758782445E9d));
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 70, 81, 69}, "4f33d7", 6.3580525E8f));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 23, 20, 4, 69}, "ecafda", -24191));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 20, 6, 68}, "f6adef", 13724));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 77, 16, 91, 17}, "c9e908", 1.581127891E9d));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 69, 86, 69}, "5704dd", -1.7673564E9f));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 22, 17, 1, 17}, "3bdc01", true));
    }
}
