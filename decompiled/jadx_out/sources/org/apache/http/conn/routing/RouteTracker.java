package org.apache.http.conn.routing;

import java.net.InetAddress;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class RouteTracker implements RouteInfo {
    public RouteTracker(HttpHost httpHost, InetAddress inetAddress) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 16, 7, 23}, "55ee6e", 631560697L));
    }

    public RouteTracker(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 23, 19, 0, 20}, "ecfb5a", -26858));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 70, 19, 83, 71}, "c2f1f8", 2.0164326E9f));
    }

    public void connectProxy(HttpHost httpHost, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 71, 81, 66}, "cc23c6", false, false));
    }

    public void connectTarget(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 23, 71, 85, 23}, "dc276d", false));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 68, 87, 68}, "c815eb", 2.101944179E9d));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public int getHopCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 69, 87, 24}, "420596", -1673261937L));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getHopTarget(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 66, 4, 19}, "c07f26", -27851));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public RouteInfo.LayerType getLayerType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 65, 80, 21}, "c7424f", true, false));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 16, 84, 69}, "83e6d1", 1.969547468E9d));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getProxyHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 68, 7, 66}, "371ecc", -24693));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public HttpHost getTargetHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 22, 84, 21}, "59c647", -14138));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public RouteInfo.TunnelType getTunnelType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 71, 70, 91, 25}, "53398f", -5.12806196E8d));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 68, 80, 19}, "121227", -6.04653649E8d));
    }

    public boolean isConnected() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 65, 85, 25}, "b5478b", 244184067L));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isLayered() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 68, 82, 23}, "9d1068", false, true));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isSecure() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 67, 86, 18}, "08643f", 29905));
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public boolean isTunnelled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 71, 76, 85, 67}, "5397bb", 1.968236325E9d));
    }

    public void layerProtocol(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 17, 66, 90, 19}, "1e7827", 1631112171L));
    }

    public HttpRoute toRoute() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 23, 80, 64}, "56b2a1", false, true));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 23, 82, 24}, "40b09a", -9.984683E8f));
    }

    public void tunnelProxy(HttpHost httpHost, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 22, 85, 23}, "41c765", -1.786197354E9d));
    }

    public void tunnelTarget(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 70, 90, 19}, "d63825", 5016));
    }
}
