package org.apache.http.client.params;

import java.util.Collection;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ClientParamBean extends HttpAbstractParamBean {
    public ClientParamBean(HttpParams httpParams) {
        super((HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 19, 91, 21}, "69f946", true));
    }

    public void setAllowCircularRedirects(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 76, 69, 3, 21}, "d80a41", 6.61540087E8d));
    }

    public void setConnectionManagerFactory(ClientConnectionManagerFactory clientConnectionManagerFactory) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 65, 80, 24}, "b74297", 1971484657L));
    }

    public void setConnectionManagerFactoryClassName(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 16, 91, 17}, "64e90f", false));
    }

    public void setCookiePolicy(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 22, 86, 18}, "42c436", 11084));
    }

    public void setDefaultHeaders(Collection<Header> collection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 69, 23, 3, 20}, "d1ba55", 3.8743312E8f));
    }

    public void setDefaultHost(HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 16, 69, 81, 25}, "dd038f", -6.00207241E8d));
    }

    public void setHandleAuthentication(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 21, 71, 85, 22}, "3a2775", false));
    }

    public void setHandleRedirects(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 68, 83, 64}, "4f11a3", 2315));
    }

    public void setMaxRedirects(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 21, 71, 91, 25}, "da2981", false));
    }

    public void setRejectRelativeRedirect(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 22, 87, 68}, "ebc5e1", -1.3246776E9f));
    }

    public void setVirtualHost(HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 19, 84, 64}, "8df6ad", 2.04588213E9d));
    }
}
