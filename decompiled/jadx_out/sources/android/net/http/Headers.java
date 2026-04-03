package android.net.http;

import java.util.ArrayList;
import n.NPStringFog;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Headers {
    public static final int CONN_CLOSE = 1;
    public static final int CONN_KEEP_ALIVE = 2;
    public static final int NO_CONN_TYPE = 0;
    public static final long NO_CONTENT_LENGTH = -1;
    public static final long NO_TRANSFER_ENCODING = 0;
    public static final String ACCEPT_RANGES = NPStringFog.decode(new byte[]{81, 7, 0, 81, 71, 76, 29, 22, 2, 90, 80, 93, 67}, "0dc478", true, true);
    public static final String CACHE_CONTROL = NPStringFog.decode(new byte[]{0, 3, 91, 14, 92, 79, 0, 13, 86, 18, 75, 13, 15}, "cb8f9b", false);
    public static final String CONN_DIRECTIVE = NPStringFog.decode(new byte[]{81, 95, 13, 8, 82, 86, 70, 89, 12, 8}, "20cf75", true, false);
    public static final String CONTENT_DISPOSITION = NPStringFog.decode(new byte[]{90, 87, 87, 64, 92, 13, 77, 21, 93, 93, 74, 19, 86, 75, 80, 64, 80, 12, 87}, "98949c", false);
    public static final String CONTENT_ENCODING = NPStringFog.decode(new byte[]{81, 14, 86, 77, 81, 15, 70, 76, 93, 87, 87, 14, 86, 8, 86, 94}, "2a894a", false, false);
    public static final String CONTENT_LEN = NPStringFog.decode(new byte[]{84, 12, 12, 66, 83, 88, 67, 78, 14, 83, 88, 81, 67, 11}, "7cb666", 1.843608129E9d);
    public static final String CONTENT_TYPE = NPStringFog.decode(new byte[]{86, 90, 92, 16, 85, 90, 65, 24, 70, 29, 64, 81}, "552d04", 25132);
    public static final String ETAG = NPStringFog.decode(new byte[]{6, 21, 86, 81}, "ca76dc", true);
    public static final String EXPIRES = NPStringFog.decode(new byte[]{85, 78, 21, 80, 19, 4, 67}, "06e9aa", 1031781328L);
    public static final String LAST_MODIFIED = NPStringFog.decode(new byte[]{88, 4, 23, 18, 27, 94, 91, 1, 13, 0, 95, 86, 80}, "4edf63", true, false);
    public static final String LOCATION = NPStringFog.decode(new byte[]{14, 87, 85, 5, 66, 13, 13, 86}, "b86d6d", false);
    public static final String PRAGMA = NPStringFog.decode(new byte[]{19, 67, 5, 81, 8, 81}, "c1d6e0", true, true);
    public static final String PROXY_AUTHENTICATE = NPStringFog.decode(new byte[]{21, 19, 13, 79, 74, 26, 4, 20, 22, 95, 86, 89, 17, 8, 1, 86, 71, 82}, "eab737", -214414139L);
    public static final String PROXY_CONNECTION = NPStringFog.decode(new byte[]{65, 69, 89, 79, 73, 20, 82, 88, 88, 89, 85, 90, 69, 94, 89, 89}, "176709", false, false);
    public static final String REFRESH = NPStringFog.decode(new byte[]{75, 93, 82, 66, 81, 75, 81}, "984048", false, false);
    public static final String SET_COOKIE = NPStringFog.decode(new byte[]{68, 0, 70, 72, 1, 86, 88, 14, 91, 0}, "7e2eb9", 1669626706L);
    public static final String TRANSFER_ENCODING = NPStringFog.decode(new byte[]{18, 68, 89, 89, 21, 7, 3, 68, 21, 82, 8, 2, 9, 82, 81, 89, 1}, "f687fa", false, false);
    public static final String WWW_AUTHENTICATE = NPStringFog.decode(new byte[]{66, 67, 64, 78, 88, 19, 65, 92, 82, 13, 77, 15, 86, 85, 67, 6}, "547c9f", -62357726L);
    public static final String X_PERMITTED_CROSS_DOMAIN_POLICIES = NPStringFog.decode(new byte[]{78, 26, 68, 1, 74, 89, 95, 67, 64, 1, 92, 25, 85, 69, 91, 23, 75, 25, 82, 88, 89, 5, 81, 90, 27, 71, 91, 8, 81, 87, 95, 82, 71}, "674d84", true, true);

    public interface HeaderCallback {
        void header(String str, String str2);
    }

    public Headers() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 23, 85, 20}, "f5b751", 1.546571472E9d));
    }

    public String getAcceptRanges() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 76, 0, 16}, "299b1b", -1.7298606E9f));
    }

    public String getCacheControl() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 19, 4, 67}, "81ffb1", true, false));
    }

    public int getConnectionType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 71, 91, 21}, "4f2948", 1.159755E9f));
    }

    public String getContentDisposition() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 20, 83, 22}, "b8a179", -1.0066519E8f));
    }

    public String getContentEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 16, 6, 24}, "3fed9a", 27112));
    }

    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 70, 0, 18}, "883b3f", false));
    }

    public String getContentType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 68, 91, 20}, "831957", 624540250L));
    }

    public String getEtag() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 70, 0, 71}, "bb3bf8", true, true));
    }

    public String getExpires() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 70, 80, 25}, "f53285", -240252079L));
    }

    public void getHeaders(HeaderCallback headerCallback) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 17, 68, 81, 25}, "1e138b", true));
    }

    public String getLastModified() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 23, 80, 23}, "46b265", false, true));
    }

    public String getLocation() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 69, 85, 69}, "8a07dd", 7.13773958E8d));
    }

    public String getPragma() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 19, 1, 23}, "48fc6e", 19471));
    }

    public String getProxyAuthenticate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 76, 6, 19}, "599d20", true));
    }

    public String getRefresh() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 64, 87, 68}, "cc55e6", -32432));
    }

    public ArrayList<String> getSetCookie() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 67, 1, 18}, "d26c3b", -23510));
    }

    public long getTransferEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 66, 19, 91, 20}, "76f953", false, false));
    }

    public String getWwwAuthenticate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 71, 91, 19}, "162925", false));
    }

    public String getXPermittedCrossDomainPolicies() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 17, 87, 64}, "b8d5a2", true, true));
    }

    public void parseHeader(CharArrayBuffer charArrayBuffer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 17, 90, 68}, "2fd8ed", -2035771654L));
    }

    public void setAcceptRanges(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 67, 81, 21}, "f7634c", 2.044918258E9d));
    }

    public void setCacheControl(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 23, 90, 23}, "58b86d", 7.930821E8f));
    }

    public void setContentDisposition(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 70, 65, 0, 64}, "b24bac", 325669945L));
    }

    public void setContentEncoding(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 22, 84, 20}, "ebc65e", -1.341413079E9d));
    }

    public void setContentLength(long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 22, 6, 68}, "8acdeb", 1879474945L));
    }

    public void setContentType(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 77, 0, 23}, "ac8b6e", true, false));
    }

    public void setEtag(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 22, 4, 22}, "67cf7c", true));
    }

    public void setExpires(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 23, 85, 19}, "26b724", -1999646868L));
    }

    public void setLastModified(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 68, 76, 86, 24}, "30949c", -29038));
    }

    public void setLocation(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 76, 81, 64}, "c793a8", 1513273225L));
    }

    public void setProxyAuthenticate(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 70, 91, 20}, "bd395a", 401115722L));
    }

    public void setWwwAuthenticate(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 66, 67, 86, 71}, "3664f1", -7.48754E8f));
    }

    public void setXPermittedCrossDomainPolicies(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 76, 81, 21}, "889341", -1.764296673E9d));
    }
}
