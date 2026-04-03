package org.apache.http.conn.params;

import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ConnManagerParams implements ConnManagerPNames {
    public static final int DEFAULT_MAX_TOTAL_CONNECTIONS = 20;

    public ConnManagerParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 70, 6, 22}, "e13d70", -2428));
    }

    public static ConnPerRoute getMaxConnectionsPerRoute(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 71, 6, 25}, "0d2d83", -15521));
    }

    public static int getMaxTotalConnections(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 68, 81, 25}, "391386", -1.404069E9f));
    }

    public static long getTimeout(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 65, 1, 64}, "824ca6", true, false));
    }

    public static void setMaxConnectionsPerRoute(HttpParams httpParams, ConnPerRoute connPerRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 19, 0, 17}, "69fb0c", false, true));
    }

    public static void setMaxTotalConnections(HttpParams httpParams, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 17, 86, 67}, "04d4be", true));
    }

    public static void setTimeout(HttpParams httpParams, long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 65, 87, 18}, "31453d", -1081664509L));
    }
}
