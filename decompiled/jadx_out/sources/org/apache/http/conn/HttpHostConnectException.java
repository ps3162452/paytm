package org.apache.http.conn;

import java.net.ConnectException;
import n.NPStringFog;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpHostConnectException extends ConnectException {
    public HttpHostConnectException(HttpHost httpHost, ConnectException connectException) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 16, 90, 71}, "74e8fa", -1461195899L));
    }

    public HttpHost getHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 69, 80, 20}, "b9025d", false));
    }
}
