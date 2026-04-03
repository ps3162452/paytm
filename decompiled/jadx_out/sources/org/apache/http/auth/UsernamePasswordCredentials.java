package org.apache.http.auth;

import java.security.Principal;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class UsernamePasswordCredentials implements Credentials {
    public UsernamePasswordCredentials(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 17, 66, 90, 18}, "4e7839", 26409));
    }

    public UsernamePasswordCredentials(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 71, 65, 1, 24}, "a34c93", true, false));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 20, 3, 68}, "fdaae4", -1.6751727E9f));
    }

    @Override // org.apache.http.auth.Credentials
    public String getPassword() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 19, 84, 20}, "a5f653", true));
    }

    public String getUserName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 20, 91, 68}, "9ea9eb", false));
    }

    @Override // org.apache.http.auth.Credentials
    public Principal getUserPrincipal() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 16, 6, 22}, "fded72", 30511));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 70, 1, 68}, "fd3ce8", 269));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 65, 90, 24}, "4f4897", 1.124266704E9d));
    }
}
