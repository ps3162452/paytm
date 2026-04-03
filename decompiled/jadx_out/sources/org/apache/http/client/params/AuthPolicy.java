package org.apache.http.client.params;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class AuthPolicy {
    public static final String BASIC = NPStringFog.decode(new byte[]{36, 89, 16, 12, 81}, "f8ce22", false, false);
    public static final String DIGEST = NPStringFog.decode(new byte[]{117, 92, 5, 86, 65, 66}, "15b326", false, true);
    public static final String NTLM = NPStringFog.decode(new byte[]{126, 97, 121, 46}, "055cbe", -10397);

    AuthPolicy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 65, 80, 20}, "9c425d", -8203));
    }
}
