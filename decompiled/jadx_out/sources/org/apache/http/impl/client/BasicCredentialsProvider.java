package org.apache.http.impl.client;

import n.NPStringFog;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicCredentialsProvider implements CredentialsProvider {
    public BasicCredentialsProvider() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 20, 6, 23}, "05ad6e", 2.1343512E9f));
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void clear() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 19, 6, 20}, "dbfd5f", 1.12758141E9d));
        }
    }

    @Override // org.apache.http.client.CredentialsProvider
    public Credentials getCredentials(AuthScope authScope) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 68, 4, 16}, "bd1f1c", false, false));
        }
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void setCredentials(AuthScope authScope, Credentials credentials) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 66, 0, 68}, "167be6", 2129026554L));
        }
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 65, 7, 16}, "554e1f", 19957));
    }
}
