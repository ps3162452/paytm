package org.apache.http.entity;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FileEntity extends AbstractHttpEntity {
    protected final File file;

    public FileEntity(File file, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 76, 80, 67}, "3f92ba", -1.2249618E9f));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 77, 0, 69}, "fd8bd6", 1053475763L));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 64, 83, 23}, "de5160", -3681));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 65, 7, 20}, "254e5f", -26515));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 66, 1, 16}, "1b7c13", -1703540377L));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 65, 91, 22}, "9d4975", -32410));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 69, 70, 83, 24}, "913196", -1.187971086E9d));
    }
}
