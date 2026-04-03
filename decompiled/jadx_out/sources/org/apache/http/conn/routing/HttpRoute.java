package org.apache.http.conn.routing;

import java.net.InetAddress;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpRoute implements RouteInfo {
    public HttpRoute(HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 68, 83, 71}, "7511f5", 2.83866233E8d));
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 77, 70, 3, 20}, "993a5a", -1.00296017E8d));
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 17, 69, 80, 66}, "3e02c7", false));
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 69, 87, 17}, "df0501", 8.79248581E8d));
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost[] httpHostArr, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 65, 91, 18}, "aa4933", -870415461L));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 19, 83, 24}, "c8f195", -28895));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 77, 65, 83, 67}, "1941bf", false));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public int getHopCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 67, 3, 20}, "936a5a", true));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getHopTarget(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 77, 3, 66}, "d78ac8", -1.703167854E9d));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public RouteInfo.LayerType getLayerType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 21, 66, 83, 25}, "ca7186", -7734));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 64, 86, 23}, "4b5466", true));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getProxyHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 22, 85, 71}, "9bc7f8", true, false));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getTargetHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 23, 1, 17}, "17bc04", false));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public RouteInfo.TunnelType getTunnelType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 77, 0, 23}, "018b62", false));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 77, 90, 24}, "6a889d", 8.83984364E8d));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isLayered() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 21, 64, 90, 69}, "5a58d9", -1673017760L));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isSecure() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 67, 85, 64}, "2a67a2", -2.14288604E9d));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isTunnelled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 16, 82, 20}, "05e053", 1.0930771E9f));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 16, 6, 19}, "f1ed24", -9.770534E8f));
    }
}
