package android.net.http;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class HttpAuthHeader {
    public static final int BASIC = 1;
    public static final int DIGEST = 2;
    public static final int UNKNOWN = 0;
    public static final String BASIC_TOKEN = NPStringFog.decode(new byte[]{35, 4, 16, 95, 83}, "aec605", 12770);
    public static final String DIGEST_TOKEN = NPStringFog.decode(new byte[]{113, 12, 6, 92, 64, 69}, "5ea931", -2.5821051E8f);

    public HttpAuthHeader(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 77, 83, 18}, "10813f", -1755168705L));
    }

    public String getAlgorithm() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 70, 66, 0, 25}, "027b8a", 30985));
    }

    public String getNonce() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 21, 76, 83, 68}, "3a91ec", 20187));
    }

    public String getOpaque() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 23, 69, 81, 20}, "2c0351", false));
    }

    public String getPassword() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 65, 85, 21}, "6f4749", -1200553456L));
    }

    public String getQop() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 23, 4, 64}, "e0bfac", 1.7816371E9f));
    }

    public String getRealm() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 23, 6, 18}, "dbbd3e", 1.44110759E9d));
    }

    public int getScheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 67, 80, 20}, "106256", 1.297174194E9d));
    }

    public boolean getStale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 77, 83, 71}, "e581f8", 1.8312014E8d));
    }

    public String getUsername() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 77, 83, 67}, "4b81b8", false, false));
    }

    public boolean isBasic() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 64, 16, 80, 21}, "94e247", -2.070228005E9d));
    }

    public boolean isDigest() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 19, 86, 25}, "08f48d", false));
    }

    public boolean isProxy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 71, 71, 4, 21}, "332f46", false, false));
    }

    public boolean isSupportedScheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 68, 70, 86, 16}, "f0341f", true, false));
    }

    public void setPassword(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 70, 87, 17}, "6b350e", -1.6415377E9f));
    }

    public void setProxy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 77, 66, 87, 25}, "f97581", -1.95437405E9d));
    }

    public void setUsername(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 65, 80, 20}, "cf4250", -8.05771601E8d));
    }
}
