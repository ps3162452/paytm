package org.apache.http.impl.client;

import java.util.Date;
import java.util.List;
import n.NPStringFog;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicCookieStore implements CookieStore {
    public BasicCookieStore() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 20, 4, 22}, "54af78", -1.133979551E9d));
    }

    @Override // org.apache.http.client.CookieStore
    public void addCookie(Cookie cookie) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 70, 0, 20}, "643b5e", 211420752L));
        }
    }

    public void addCookies(Cookie[] cookieArr) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 16, 82, 25}, "1ae087", -943791267L));
        }
    }

    @Override // org.apache.http.client.CookieStore
    public void clear() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 20, 86, 23}, "ada468", false));
        }
    }

    @Override // org.apache.http.client.CookieStore
    public boolean clearExpired(Date date) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 76, 23, 1, 68}, "68bce7", 23467));
        }
    }

    @Override // org.apache.http.client.CookieStore
    public List<Cookie> getCookies() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 76, 80, 23}, "de926e", -6901));
        }
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 23, 71, 0, 68}, "7c2beb", 1.6937129E9f));
    }
}
