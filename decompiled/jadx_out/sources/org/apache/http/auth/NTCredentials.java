package org.apache.http.auth;

import java.security.Principal;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NTCredentials implements Credentials {
    public NTCredentials(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 67, 17, 85, 24}, "07d797", 30478));
    }

    public NTCredentials(String str, String str2, String str3, String str4) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 70, 67, 81, 68}, "7263e4", 1.0934213E9f));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 71, 87, 22}, "5d2572", false, true));
    }

    public String getDomain() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 64, 68, 80, 25}, "a4128b", false));
    }

    @Override // org.apache.http.auth.Credentials
    public String getPassword() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 69, 87, 71}, "5505fb", -1.8846947E9f));
    }

    public String getUserName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 66, 4, 24}, "267f98", -14131));
    }

    @Override // org.apache.http.auth.Credentials
    public Principal getUserPrincipal() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 77, 23, 87, 64}, "f9b5a0", 1.99228501E9d));
    }

    public String getWorkstation() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 76, 90, 18}, "2d983b", 1900252528L));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 16, 80, 25}, "b0e287", -30364));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 16, 0, 71}, "96ebf0", 2082011373L));
    }
}
