package org.apache.http.impl.io;

import java.io.IOException;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SocketInputBuffer extends AbstractSessionInputBuffer {
    public SocketInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 64, 71, 80, 17}, "942208", false, false));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 67, 82, 69}, "9260db", 1960263710L));
    }

    public boolean isStale() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 17, 71, 82, 24}, "0e2095", -8.17551471E8d));
    }
}
