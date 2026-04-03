package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SerializableEntity extends AbstractHttpEntity {
    public SerializableEntity(Serializable serializable, boolean z) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 76, 83, 20}, "fd915b", 15396));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 67, 84, 17}, "166604", 2041569448L));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 19, 0, 71}, "25fbfc", true, false));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 20, 7, 20}, "96ae54", -4991));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 17, 81, 18}, "8ed337", false));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 76, 0, 21}, "ab9b4f", true));
    }
}
