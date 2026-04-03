package org.apache.http.cookie;

import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class CookieSpecRegistry {
    public CookieSpecRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 16, 3, 23}, "04ea69", true));
    }

    public CookieSpec getCookieSpec(String str) throws IllegalStateException {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 66, 91, 24}, "43799f", -22419));
        }
    }

    public CookieSpec getCookieSpec(String str, HttpParams httpParams) throws IllegalStateException {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{48, 16, 22, 3, 64}, "cdcaa8", -1.9927448E9f));
        }
    }

    public List<String> getSpecNames() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 69, 3, 19}, "5d0a25", 6.98212909E8d));
        }
    }

    public void register(String str, CookieSpecFactory cookieSpecFactory) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 65, 83, 68}, "5d41e4", 1993));
        }
    }

    public void setItems(Map<String, CookieSpecFactory> map) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 71, 6, 68}, "d72de3", true, true));
        }
    }

    public void unregister(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 65, 3, 21}, "a04a48", true));
        }
    }
}
