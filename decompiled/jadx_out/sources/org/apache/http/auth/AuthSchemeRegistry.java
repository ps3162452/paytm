package org.apache.http.auth;

import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class AuthSchemeRegistry {
    public AuthSchemeRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 68, 87, 69}, "3715d5", -1115312602L));
    }

    public AuthScheme getAuthScheme(String str, HttpParams httpParams) throws IllegalStateException {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 68, 84, 69}, "9e16d3", 1.7171933E9f));
        }
    }

    public List<String> getSchemeNames() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 71, 4, 16}, "e12f19", 17956));
        }
    }

    public void register(String str, AuthSchemeFactory authSchemeFactory) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 65, 7, 18}, "674e3f", true));
        }
    }

    public void setItems(Map<String, AuthSchemeFactory> map) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 23, 90, 16}, "e9b813", -828228904L));
        }
    }

    public void unregister(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 23, 76, 86, 69}, "0c94d7", 1.26612E9f));
        }
    }
}
