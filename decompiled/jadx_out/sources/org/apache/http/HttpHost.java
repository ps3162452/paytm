package org.apache.http;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpHost {
    public static final String DEFAULT_SCHEME_NAME = NPStringFog.decode(new byte[]{12, 21, 76, 21}, "da8e7d", false, false);
    protected final String hostname;
    protected final String lcHostname;
    protected final int port;
    protected final String schemeName;

    public HttpHost(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 67, 1, 69}, "b96cd2", false, false));
    }

    public HttpHost(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 66, 80, 64}, "a872ae", 8551));
    }

    public HttpHost(String str, int i, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 70, 82, 24}, "bf3092", -1006272244L));
    }

    public HttpHost(HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 76, 86, 67}, "7894b2", true));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 64, 81, 20}, "d35353", false));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 22, 68, 80, 64}, "3b12a6", -18128));
    }

    public String getHostName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 71, 20, 81, 66}, "f3a3c1", true));
    }

    public int getPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 71, 90, 17}, "d72808", -495505524L));
    }

    public String getSchemeName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 77, 77, 85, 22}, "09877c", 1.535025938E9d));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 76, 80, 17}, "81920a", 27563));
    }

    public String toHostString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 20, 6, 21}, "96ad4c", true));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 23, 87, 23}, "b8b56c", -1.006550509E9d));
    }

    public String toURI() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 20, 3, 19}, "61aa25", true));
    }
}
