package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class Route {
    final Address address;
    final InetSocketAddress inetSocketAddress;
    final Proxy proxy;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (address == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{2, 80, 84, 67, 87, 22, 16, 20, 13, 12, 18, 11, 22, 88, 92}, "c4012e", false));
        }
        if (proxy == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{22, 22, 89, 75, 31, 67, 91, 89, 22, 93, 19, 15, 10}, "fd63fc", false, true));
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{15, 93, 84, 77, 49, 87, 5, 88, 84, 77, 35, 92, 2, 65, 84, 74, 17, 24, 91, 14, 17, 87, 23, 84, 10}, "f319b8", true, true));
        }
        this.address = address;
        this.proxy = proxy;
        this.inetSocketAddress = inetSocketAddress;
    }

    public Address address() {
        return this.address;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Route) && ((Route) obj).address.equals(this.address) && ((Route) obj).proxy.equals(this.proxy) && ((Route) obj).inetSocketAddress.equals(this.inetSocketAddress);
    }

    public int hashCode() {
        return ((((this.address.hashCode() + 527) * 31) + this.proxy.hashCode()) * 31) + this.inetSocketAddress.hashCode();
    }

    public Proxy proxy() {
        return this.proxy;
    }

    public boolean requiresTunnel() {
        return this.address.sslSocketFactory != null && this.proxy.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress socketAddress() {
        return this.inetSocketAddress;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{52, 12, 23, 70, 93, 26}, "fcb28a", true, true) + this.inetSocketAddress + NPStringFog.decode(new byte[]{69}, "8e1f82", 28602);
    }
}
