package okhttp3;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public enum Protocol {
    HTTP_1_0(NPStringFog.decode(new byte[]{88, 21, 76, 69, 31, 4, 30, 81}, "0a8505", false, false)),
    HTTP_1_1(NPStringFog.decode(new byte[]{11, 69, 67, 65, 29, 8, 77, 0}, "c17129", true)),
    SPDY_3(NPStringFog.decode(new byte[]{74, 70, 5, 26, 27, 10, 23, 7}, "96ac49", true)),
    HTTP_2(NPStringFog.decode(new byte[]{95, 3}, "715d52", -1.297597758E9d));

    private final String protocol;

    Protocol(String str) {
        this.protocol = str;
    }

    public static Protocol get(String str) throws IOException {
        if (str.equals(HTTP_1_0.protocol)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.protocol)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.protocol)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.protocol)) {
            return SPDY_3;
        }
        throw new IOException(NPStringFog.decode(new byte[]{55, 12, 4, 65, 67, 86, 1, 22, 4, 93, 19, 67, 16, 13, 21, 86, 80, 92, 14, 88, 65}, "bba933", -967) + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
