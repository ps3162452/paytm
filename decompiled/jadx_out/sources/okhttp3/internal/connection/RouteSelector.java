package okhttp3.internal.connection;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import n.NPStringFog;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class RouteSelector {
    private final Address address;
    private final Call call;
    private final EventListener eventListener;
    private int nextProxyIndex;
    private final RouteDatabase routeDatabase;
    private List<Proxy> proxies = Collections.emptyList();
    private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
    private final List<Route> postponedRoutes = new ArrayList();

    public static final class Selection {
        private int nextRouteIndex = 0;
        private final List<Route> routes;

        Selection(List<Route> list) {
            this.routes = list;
        }

        public List<Route> getAll() {
            return new ArrayList(this.routes);
        }

        public boolean hasNext() {
            return this.nextRouteIndex < this.routes.size();
        }

        public Route next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            List<Route> list = this.routes;
            int i = this.nextRouteIndex;
            this.nextRouteIndex = i + 1;
            return list.get(i);
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, Call call, EventListener eventListener) {
        this.address = address;
        this.routeDatabase = routeDatabase;
        this.call = call;
        this.eventListener = eventListener;
        resetNextProxy(address.url(), address.proxy());
    }

    static String getHostString(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean hasNextProxy() {
        return this.nextProxyIndex < this.proxies.size();
    }

    private Proxy nextProxy() throws IOException {
        if (!hasNextProxy()) {
            throw new SocketException(NPStringFog.decode(new byte[]{119, 14, 67, 70, 91, 65, 77, 4, 67, 64, 91, 20}, "9ac444", -762794084L) + this.address.url().host() + NPStringFog.decode(new byte[]{11, 69, 85, 76, 9, 4, 69, 22, 68, 81, 5, 69, 64, 23, 95, 76, 24, 69, 83, 10, 94, 82, 8, 2, 69, 23, 81, 64, 8, 10, 94, 22, 10, 20}, "0e04ae", 565370017L) + this.proxies);
        }
        List<Proxy> list = this.proxies;
        int i = this.nextProxyIndex;
        this.nextProxyIndex = i + 1;
        Proxy proxy = list.get(i);
        resetNextInetSocketAddress(proxy);
        return proxy;
    }

    private void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        String strHost;
        int iPort;
        this.inetSocketAddresses = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strHost = this.address.url().host();
            iPort = this.address.url().port();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 68, 92, 27, 28, 22, 80, 82, 87, 17, 0, 75, 66, 30, 26, 67, 12, 75, 17, 88, 92, 23, 69, 89, 95, 22, 122, 13, 0, 76, 98, 89, 80, 8, 0, 76, 112, 82, 87, 17, 0, 75, 66, 12, 19}, "163ce8", true) + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            String hostString = getHostString(inetSocketAddress);
            int port = inetSocketAddress.getPort();
            strHost = hostString;
            iPort = port;
        }
        if (iPort < 1 || iPort > 65535) {
            throw new SocketException(NPStringFog.decode(new byte[]{127, 91, 68, 23, 13, 77, 69, 81, 68, 17, 13, 24}, "14deb8", true) + strHost + NPStringFog.decode(new byte[]{15}, "53ec6a", true) + iPort + NPStringFog.decode(new byte[]{88, 17, 20, 14, 22, 16, 67, 88, 23, 65, 11, 17, 23, 17, 11, 7, 68, 22, 2, 95, 3, 4}, "c1dadd", 426884828L));
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.inetSocketAddresses.add(InetSocketAddress.createUnresolved(strHost, iPort));
            return;
        }
        this.eventListener.dnsStart(this.call, strHost);
        List<InetAddress> listLookup = this.address.dns().lookup(strHost);
        if (listLookup.isEmpty()) {
            throw new UnknownHostException(this.address.dns() + NPStringFog.decode(new byte[]{19, 65, 86, 21, 68, 71, 93, 86, 87, 65, 95, 90, 19, 82, 87, 5, 67, 80, 64, 64, 86, 18, 17, 83, 92, 65, 19}, "333a15", true, true) + strHost);
        }
        this.eventListener.dnsEnd(this.call, strHost, listLookup);
        int size = listLookup.size();
        for (int i = 0; i < size; i++) {
            this.inetSocketAddresses.add(new InetSocketAddress(listLookup.get(i), iPort));
        }
    }

    private void resetNextProxy(HttpUrl httpUrl, Proxy proxy) {
        if (proxy != null) {
            this.proxies = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.address.proxySelector().select(httpUrl.uri());
            this.proxies = (listSelect == null || listSelect.isEmpty()) ? Util.immutableList(Proxy.NO_PROXY) : Util.immutableList(listSelect);
        }
        this.nextProxyIndex = 0;
    }

    public void connectFailed(Route route, IOException iOException) {
        if (route.proxy().type() != Proxy.Type.DIRECT && this.address.proxySelector() != null) {
            this.address.proxySelector().connectFailed(this.address.url().uri(), route.proxy().address(), iOException);
        }
        this.routeDatabase.failed(route);
    }

    public boolean hasNext() {
        return hasNextProxy() || !this.postponedRoutes.isEmpty();
    }

    public Selection next() throws IOException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (hasNextProxy()) {
            Proxy proxyNextProxy = nextProxy();
            int size = this.inetSocketAddresses.size();
            for (int i = 0; i < size; i++) {
                Route route = new Route(this.address, proxyNextProxy, this.inetSocketAddresses.get(i));
                if (this.routeDatabase.shouldPostpone(route)) {
                    this.postponedRoutes.add(route);
                } else {
                    arrayList.add(route);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.postponedRoutes);
            this.postponedRoutes.clear();
        }
        return new Selection(arrayList);
    }
}
