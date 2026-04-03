package org.apache.http.conn.scheme;

import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class SchemeRegistry {
    public SchemeRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 69, 84, 18}, "160638", false));
    }

    public Scheme get(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 67, 84, 68}, "2966ec", 20107));
        }
    }

    public Scheme getScheme(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 69, 91, 68}, "bd09e5", -1.259720158E9d));
        }
    }

    public Scheme getScheme(HttpHost httpHost) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 77, 85, 69}, "b787d0", -1.6103802E9f));
        }
    }

    public List<String> getSchemeNames() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 16, 82, 17}, "45e00f", true, true));
        }
    }

    public Scheme register(Scheme scheme) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 70, 80, 20}, "553259", 3.75959421E8d));
        }
    }

    public void setItems(Map<String, Scheme> map) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 23, 3, 18}, "48ba3c", 680199214L));
        }
    }

    public Scheme unregister(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 17, 64, 80, 66}, "2e52c4", -18451));
        }
    }
}
