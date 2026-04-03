package org.apache.http.entity;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpEntity implements HttpEntity {
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 70, 16, 83, 25}, "b2e18b", 24339));
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws UnsupportedOperationException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 19, 7, 69}, "5efed3", -1.994509867E9d));
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 66, 85, 67}, "f577b8", true, true));
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 71, 16, 6, 24}, "03ed95", false, false));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 70, 22, 86, 22}, "c2c473", true));
    }

    public void setChunked(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 21, 68, 86, 22}, "9a1471", -998802968L));
    }

    public void setContentEncoding(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 22, 1, 64}, "4accae", 10454));
    }

    public void setContentEncoding(Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 23, 76, 90, 17}, "1c9806", 1.5320717E8f));
    }

    public void setContentType(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 71, 66, 87, 68}, "6375ee", 8.7463565E8f));
    }

    public void setContentType(Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 67, 66, 80, 25}, "27728d", 31336));
    }
}
