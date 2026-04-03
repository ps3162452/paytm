package org.apache.http.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MultihomePlainSocketFactory implements SocketFactory {
    MultihomePlainSocketFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 70, 64, 1, 64}, "025cad", -1.094765E9f));
    }

    public static MultihomePlainSocketFactory getSocketFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 23, 84, 19}, "06b626", true, false));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 67, 7, 17}, "f16e0e", false));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 20, 1, 22}, "c8ac7a", 2140567012L));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 64, 85, 19}, "0a572b", 167223094L));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 68, 90, 16}, "4a1819", -16232));
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 22, 87, 68}, "c1c5ed", 1.470174E9f));
    }
}
