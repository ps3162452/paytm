package android.net.http;

import android.net.compatibility.WebAddress;
import java.io.InputStream;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class RequestHandle {
    public static final int MAX_REDIRECT_COUNT = 16;

    public RequestHandle(RequestQueue requestQueue, String str, WebAddress webAddress, String str2, Map<String, String> map, InputStream inputStream, int i, Request request) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 66, 83, 19}, "39712d", false, true));
    }

    public RequestHandle(RequestQueue requestQueue, String str, WebAddress webAddress, String str2, Map<String, String> map, InputStream inputStream, int i, Request request, Connection connection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 22, 69, 80, 22}, "3b0271", 1.894030601E9d));
    }

    public static String authorizationHeader(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 68, 82, 66}, "4b10c7", -31996));
    }

    public static String computeBasicAuthResponse(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 19, 7, 22}, "10fe73", 179216554L));
    }

    public void cancel() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 71, 87, 68}, "7425ec", 1.282821825E9d));
    }

    public String getMethod() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 23, 90, 17}, "0ab801", true, true));
    }

    public int getRedirectCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 77, 82, 24}, "f5809e", 7848));
    }

    public void handleSslErrorResponse(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 76, 91, 68}, "c799e9", false));
    }

    public boolean isRedirectMax() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 71, 87, 69}, "9725d5", -7.5524326E8f));
    }

    public void pauseRequest(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 67, 4, 23}, "0d6f62", true));
    }

    public void processRequest() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 64, 1, 16}, "375c11", 1.422607045E9d));
    }

    public void setRedirectCount(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 20, 86, 67}, "a1a4b9", 9.975169E8f));
    }

    public void setupBasicAuthResponse(boolean z, String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 65, 86, 21}, "964449", -5.9060006E8f));
    }

    public void setupDigestAuthResponse(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 76, 91, 25}, "ce998a", -8.98623606E8d));
    }

    public boolean setupRedirect(String str, int i, Map<String, String> map) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 70, 20, 86, 22}, "32a477", -699889421L));
    }

    public void waitUntilComplete() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 22, 1, 71}, "abccf1", -1890693107L));
    }
}
