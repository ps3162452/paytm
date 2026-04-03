package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PlainSocketFactory implements SocketFactory {
    public PlainSocketFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 64, 22, 85, 22}, "a4c770", -385615509L));
    }

    public PlainSocketFactory(HostNameResolver hostNameResolver) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 71, 3, 17}, "b42a0b", true, true));
    }

    public static PlainSocketFactory getSocketFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 22, 82, 21}, "59c047", 1.195050708E9d));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 22, 19, 82, 16}, "2bf01d", 626974474L));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 77, 6, 23}, "3f8d66", -1.468235E9f));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 77, 86, 64}, "aa84a2", 1.0726742E9f));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 71, 6, 68}, "e72de4", -614504254L));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 64, 4, 20}, "585f5f", -353269856L));
    }
}
