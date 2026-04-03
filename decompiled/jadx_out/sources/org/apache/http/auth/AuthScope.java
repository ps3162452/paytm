package org.apache.http.auth;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AuthScope {
    public static final int ANY_PORT = -1;
    public static final AuthScope ANY = null;
    public static final String ANY_HOST = null;
    public static final String ANY_REALM = null;
    public static final String ANY_SCHEME = null;

    public AuthScope(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 77, 80, 23}, "ba826b", false));
    }

    public AuthScope(String str, int i, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 69, 80, 17}, "fd0208", -6.14361283E8d));
    }

    public AuthScope(String str, int i, String str2, String str3) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 76, 1, 23}, "4a9c65", -2.66431259E8d));
    }

    public AuthScope(AuthScope authScope) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 70, 0, 16}, "f53b1e", true));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 67, 0, 22}, "146b73", true));
    }

    public String getHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 23, 80, 19}, "39b222", -269596418L));
    }

    public int getPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 65, 81, 66}, "fd43cf", -1919021412L));
    }

    public String getRealm() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 64, 82, 19}, "5c5027", 8272));
    }

    public String getScheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 71, 90, 25}, "a92887", -21518));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 67, 90, 20}, "8a685a", true, false));
    }

    public int match(AuthScope authScope) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 16, 85, 64}, "fde7ab", -1630724047L));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 65, 0, 21}, "734b4b", 216665162L));
    }
}
