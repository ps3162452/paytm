package org.apache.http.impl;

import n.NPStringFog;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.io.HttpTransportMetrics;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpConnectionMetricsImpl implements HttpConnectionMetrics {
    public static final String RECEIVED_BYTES_COUNT = NPStringFog.decode(new byte[]{93, 64, 76, 69, 77, 67, 80, 87, 93, 92, 21, 84, 81, 25, 90, 76, 23, 84, 70, 25, 91, 90, 22, 95, 65}, "5485c1", true);
    public static final String REQUEST_COUNT = NPStringFog.decode(new byte[]{10, 23, 77, 71, 23, 65, 7, 18, 76, 82, 74, 71, 79, 0, 86, 66, 87, 71}, "bc9793", -2.1436867E9f);
    public static final String RESPONSE_COUNT = NPStringFog.decode(new byte[]{94, 67, 22, 18, 74, 69, 83, 68, 18, 13, 10, 68, 83, 26, 1, 13, 17, 89, 66}, "67bbd7", true);
    public static final String SENT_BYTES_COUNT = NPStringFog.decode(new byte[]{80, 69, 77, 71, 75, 22, 93, 95, 77, 26, 7, 28, 76, 84, 74, 26, 6, 10, 77, 95, 77}, "8197ee", true, true);

    public HttpConnectionMetricsImpl(HttpTransportMetrics httpTransportMetrics, HttpTransportMetrics httpTransportMetrics2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 22, 81, 22}, "18c374", true));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public Object getMetric(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 65, 91, 67}, "8a49b2", -8.81709686E8d));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getReceivedBytesCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 64, 23, 7, 20}, "c4be5b", 734407028L));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getRequestCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 67, 0, 17}, "5c6b0b", -1049607029L));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getResponseCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 23, 90, 66}, "00b8c3", true, false));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getSentBytesCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 20, 87, 20}, "4fa559", 30613));
    }

    public void incrementRequestCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 64, 3, 16}, "705a1e", 1343325139L));
    }

    public void incrementResponseCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 77, 6, 66}, "8d8dcf", -17180));
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public void reset() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 17, 4, 16}, "69df1d", true, false));
    }

    public void setMetric(String str, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 22, 0, 71}, "8dcbfb", 25119));
    }
}
