package org.apache.http.params;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpConnectionParams implements CoreConnectionPNames {
    HttpConnectionParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 70, 7, 64}, "1b3ea0", -15153));
    }

    public static int getConnectionTimeout(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 65, 87, 23}, "044564", 2.044066367E9d));
    }

    public static int getLinger(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 17, 1, 17}, "98dc07", 1147113030L));
    }

    public static int getSoTimeout(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 16, 83, 24}, "c0e19c", -1586838676L));
    }

    public static int getSocketBufferSize(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 71, 17, 81, 24}, "a3d390", -28271));
    }

    public static boolean getTcpNoDelay(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 67, 1, 17}, "0b6c06", false, true));
    }

    public static boolean isStaleCheckingEnabled(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 68, 81, 23}, "711360", 1083218673L));
    }

    public static void setConnectionTimeout(HttpParams httpParams, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 69, 83, 17}, "780100", false));
    }

    public static void setLinger(HttpParams httpParams, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 67, 84, 71}, "f666fe", -4.49859576E8d));
    }

    public static void setSoTimeout(HttpParams httpParams, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 76, 0, 66}, "989bc4", -1.589932967E9d));
    }

    public static void setSocketBufferSize(HttpParams httpParams, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 18, 76, 0, 16}, "5f9b18", 2.096477769E9d));
    }

    public static void setStaleCheckingEnabled(HttpParams httpParams, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 65, 65, 7, 67}, "154eb3", false, true));
    }

    public static void setTcpNoDelay(HttpParams httpParams, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 76, 1, 16}, "809c1e", true));
    }
}
