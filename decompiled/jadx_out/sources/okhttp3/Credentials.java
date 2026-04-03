package okhttp3;

import java.nio.charset.Charset;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class Credentials {
    private Credentials() {
    }

    public static String basic(String str, String str2) {
        return basic(str, str2, Util.ISO_8859_1);
    }

    public static String basic(String str, String str2, Charset charset) {
        return NPStringFog.decode(new byte[]{118, 0, 18, 12, 6, 68}, "4aaeed", 1239685081L) + ByteString.encodeString(str + NPStringFog.decode(new byte[]{94}, "def0f8", -225141314L) + str2, charset).base64();
    }
}
