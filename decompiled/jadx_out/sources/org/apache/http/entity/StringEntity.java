package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class StringEntity extends AbstractHttpEntity {
    protected final byte[] content = null;

    public StringEntity(String str) throws UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 66, 76, 6, 18}, "369d36", 1.1345045E8f));
    }

    public StringEntity(String str, String str2) throws UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 23, 80, 68}, "12b2e3", true));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 77, 1, 25}, "478c8b", true));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 67, 6, 68}, "556de9", true, true));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 17, 7, 22}, "d0de78", 674757572L));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 71, 71, 83, 17}, "132109", 5.017455E8f));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 66, 87, 22}, "1f7575", 1457032876L));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 16, 1, 17}, "e9ec0c", 1193673236L));
    }
}
