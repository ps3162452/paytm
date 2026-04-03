package android.net.http;

import android.content.Context;
import android.net.compatibility.WebAddress;
import java.io.InputStream;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
public class RequestQueue implements RequestFeeder {
    public RequestQueue(Context context) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 16, 77, 7, 19}, "3d8e22", -1.0480252E9f));
    }

    public RequestQueue(Context context, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 23, 17, 82, 19}, "0cd02e", -7.14118393E8d));
    }

    public void disablePlatformNotifications() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 17, 1, 19}, "29dc27", true));
        }
    }

    public void enablePlatformNotifications() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{53, 21, 22, 86, 18}, "fac43e", -1058392885L));
        }
    }

    public HttpHost getProxyHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 70, 91, 16}, "7f3910", false, true));
    }

    @Override // android.net.http.RequestFeeder
    public Request getRequest() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 23, 0, 24}, "90bb94", 23057));
        }
    }

    @Override // android.net.http.RequestFeeder
    public Request getRequest(HttpHost httpHost) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 16, 80, 64}, "75e2a4", 7.03778213E8d));
        }
    }

    @Override // android.net.http.RequestFeeder
    public boolean haveRequest(HttpHost httpHost) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 68, 80, 16}, "ea1216", 1.981785426E9d));
        }
    }

    public RequestHandle queueRequest(String str, WebAddress webAddress, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 19, 4, 19}, "06ff23", true, false));
    }

    public RequestHandle queueRequest(String str, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 22, 85, 22}, "cfc77e", -30281));
    }

    protected void queueRequest(Request request, boolean z) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 16, 82, 25}, "c0e081", -2117));
        }
    }

    public RequestHandle queueSynchronousRequest(String str, WebAddress webAddress, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 64, 80, 68}, "8452ec", -14568));
    }

    @Override // android.net.http.RequestFeeder
    public void requeueRequest(Request request) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 66, 80, 66}, "d572c3", -5.5437146E8f));
    }

    public void shutdown() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 67, 6, 69}, "9c6dd2", 821258952L));
    }

    public void startTiming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 22, 82, 24}, "a9c099", -5.68801088E8d));
    }

    public void stopTiming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 64, 85, 18}, "735735", 1.85254053E9d));
    }
}
