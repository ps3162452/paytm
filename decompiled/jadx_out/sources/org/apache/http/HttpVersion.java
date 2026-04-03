package org.apache.http;

import java.io.Serializable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpVersion extends ProtocolVersion implements Serializable {
    public static final String HTTP = NPStringFog.decode(new byte[]{120, 54, 109, 101}, "0b9515", -646449076L);
    public static final HttpVersion HTTP_0_9 = null;
    public static final HttpVersion HTTP_1_0 = null;
    public static final HttpVersion HTTP_1_1 = null;

    public HttpVersion(int i, int i2) {
        super((String) null, 0, 0);
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 66, 0, 71}, "467bfd", -1.5836872E9f));
    }

    @Override // org.apache.http.ProtocolVersion
    public ProtocolVersion forVersion(int i, int i2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 77, 87, 16}, "988516", false, false));
    }
}
