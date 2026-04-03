package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import n.NPStringFog;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class Address {

    @Nullable
    final CertificatePinner certificatePinner;
    final List<ConnectionSpec> connectionSpecs;
    final Dns dns;

    @Nullable
    final HostnameVerifier hostnameVerifier;
    final List<Protocol> protocols;

    @Nullable
    final Proxy proxy;
    final Authenticator proxyAuthenticator;
    final ProxySelector proxySelector;
    final SocketFactory socketFactory;

    @Nullable
    final SSLSocketFactory sslSocketFactory;
    final HttpUrl url;

    public Address(String str, int i, Dns dns, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, Authenticator authenticator, @Nullable Proxy proxy, List<Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        this.url = new HttpUrl.Builder().scheme(sSLSocketFactory != null ? NPStringFog.decode(new byte[]{80, 69, 67, 21, 17}, "817eb7", -245205651L) : NPStringFog.decode(new byte[]{88, 21, 16, 21}, "0ade65", true)).host(str).port(i).build();
        if (dns == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{81, 87, 23, 67, 89, 9, 21, 87, 17, 15, 8}, "59dcd4", true, true));
        }
        this.dns = dns;
        if (socketFactory == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{21, 13, 91, 82, 83, 17, 32, 3, 91, 77, 89, 23, 31, 66, 5, 4, 22, 11, 19, 14, 84}, "fb896e", true, false));
        }
        this.socketFactory = socketFactory;
        if (authenticator == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{71, 65, 11, 77, 64, 32, 66, 71, 12, 80, 87, 21, 94, 80, 5, 65, 86, 19, 23, 14, 89, 21, 87, 20, 91, 95}, "73d59a", 21067));
        }
        this.proxyAuthenticator = authenticator;
        if (list == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{71, 70, 86, 16, 13, 81, 88, 88, 74, 68, 95, 15, 23, 90, 76, 8, 14}, "749db2", -1.346181E9f));
        }
        this.protocols = Util.immutableList(list);
        if (list2 == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{90, 11, 94, 90, 83, 87, 77, 13, 95, 90, 101, 68, 92, 7, 67, 20, 11, 9, 25, 10, 69, 88, 90}, "9d0464", 2.49083758E8d));
        }
        this.connectionSpecs = Util.immutableList(list2);
        if (proxySelector == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{68, 20, 10, 64, 64, 53, 81, 10, 0, 91, 77, 9, 70, 70, 88, 5, 25, 8, 65, 10, 9}, "4fe89f", -8.110513E8f));
        }
        this.proxySelector = proxySelector;
        this.proxy = proxy;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
    }

    @Nullable
    public CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    public Dns dns() {
        return this.dns;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Address) && this.url.equals(((Address) obj).url) && equalsNonHost((Address) obj);
    }

    boolean equalsNonHost(Address address) {
        return this.dns.equals(address.dns) && this.proxyAuthenticator.equals(address.proxyAuthenticator) && this.protocols.equals(address.protocols) && this.connectionSpecs.equals(address.connectionSpecs) && this.proxySelector.equals(address.proxySelector) && Util.equal(this.proxy, address.proxy) && Util.equal(this.sslSocketFactory, address.sslSocketFactory) && Util.equal(this.hostnameVerifier, address.hostnameVerifier) && Util.equal(this.certificatePinner, address.certificatePinner) && url().port() == address.url().port();
    }

    public int hashCode() {
        int iHashCode = this.url.hashCode();
        int iHashCode2 = this.dns.hashCode();
        int iHashCode3 = this.proxyAuthenticator.hashCode();
        int iHashCode4 = this.protocols.hashCode();
        int iHashCode5 = this.connectionSpecs.hashCode();
        int iHashCode6 = this.proxySelector.hashCode();
        int iHashCode7 = this.proxy != null ? this.proxy.hashCode() : 0;
        int iHashCode8 = this.sslSocketFactory != null ? this.sslSocketFactory.hashCode() : 0;
        return ((((((iHashCode7 + ((((((((((((iHashCode + 527) * 31) + iHashCode2) * 31) + iHashCode3) * 31) + iHashCode4) * 31) + iHashCode5) * 31) + iHashCode6) * 31)) * 31) + iHashCode8) * 31) + (this.hostnameVerifier != null ? this.hostnameVerifier.hashCode() : 0)) * 31) + (this.certificatePinner != null ? this.certificatePinner.hashCode() : 0);
    }

    @Nullable
    public HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    public List<Protocol> protocols() {
        return this.protocols;
    }

    @Nullable
    public Proxy proxy() {
        return this.proxy;
    }

    public Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    public ProxySelector proxySelector() {
        return this.proxySelector;
    }

    public SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @Nullable
    public SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder().append(NPStringFog.decode(new byte[]{35, 2, 2, 19, 3, 64, 17, 29}, "bffaf3", true)).append(this.url.host()).append(NPStringFog.decode(new byte[]{9}, "3a9597", true, true)).append(this.url.port());
        if (this.proxy != null) {
            sbAppend.append(NPStringFog.decode(new byte[]{73, 20, 66, 69, 87, 64, 28, 9}, "e42788", true, true)).append(this.proxy);
        } else {
            sbAppend.append(NPStringFog.decode(new byte[]{72, 20, 18, 23, 9, 64, 29, 103, 7, 9, 3, 91, 16, 91, 16, 88}, "d4bef8", 32404)).append(this.proxySelector);
        }
        sbAppend.append(NPStringFog.decode(new byte[]{79}, "24e5b6", 1.147923157E9d));
        return sbAppend.toString();
    }

    public HttpUrl url() {
        return this.url;
    }
}
