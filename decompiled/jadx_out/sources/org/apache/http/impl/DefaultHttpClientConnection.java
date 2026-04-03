package org.apache.http.impl;

import java.io.IOException;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultHttpClientConnection extends SocketHttpClientConnection {
    public DefaultHttpClientConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 64, 16, 82, 67}, "a4e0b3", false));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection
    public void bind(Socket socket, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 77, 0, 22}, "148b7f", false, false));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 18, 64, 90, 16}, "af5816", false, true));
    }
}
