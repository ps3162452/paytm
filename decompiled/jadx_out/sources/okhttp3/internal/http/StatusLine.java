package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import n.NPStringFog;
import okhttp3.Protocol;
import okhttp3.Response;

/* JADX INFO: loaded from: classes62.dex */
public final class StatusLine {
    public static final int HTTP_CONTINUE = 100;
    public static final int HTTP_PERM_REDIRECT = 308;
    public static final int HTTP_TEMP_REDIRECT = 307;
    public final int code;
    public final String message;
    public final Protocol protocol;

    public StatusLine(Protocol protocol, int i, String str) {
        this.protocol = protocol;
        this.code = i;
        this.message = str;
    }

    public static StatusLine get(Response response) {
        return new StatusLine(response.protocol(), response.code(), response.message());
    }

    public static StatusLine parse(String str) throws IOException {
        Protocol protocol;
        String strSubstring;
        int i = 4;
        if (str.startsWith(NPStringFog.decode(new byte[]{127, 48, 103, 96, 23, 1, 25}, "7d3080", false))) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(NPStringFog.decode(new byte[]{51, 11, 3, 75, 69, 1, 5, 17, 3, 87, 21, 23, 18, 4, 18, 70, 70, 68, 10, 12, 8, 86, 15, 68}, "fef35d", -1.772161329E9d) + str);
            }
            int iCharAt = str.charAt(7) - '0';
            i = 9;
            if (iCharAt == 0) {
                protocol = Protocol.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{51, 86, 83, 79, 72, 87, 5, 76, 83, 83, 24, 65, 18, 89, 66, 66, 75, 18, 10, 81, 88, 82, 2, 18}, "f86782", -6.8997069E8d) + str);
                }
                protocol = Protocol.HTTP_1_1;
            }
        } else {
            if (!str.startsWith(NPStringFog.decode(new byte[]{120, 115, 109, 65}, "104a61", -30833))) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{49, 94, 92, 79, 68, 80, 7, 68, 92, 83, 20, 70, 16, 81, 77, 66, 71, 21, 8, 89, 87, 82, 14, 21}, "d09745", true, true) + str);
            }
            protocol = Protocol.HTTP_1_0;
        }
        if (str.length() < i + 3) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{100, 88, 85, 79, 73, 92, 82, 66, 85, 83, 25, 74, 69, 87, 68, 66, 74, 25, 93, 95, 94, 82, 3, 25}, "160799", -1.27196817E9d) + str);
        }
        try {
            int i2 = Integer.parseInt(str.substring(i, i + 3));
            if (str.length() <= i + 3) {
                strSubstring = "";
            } else {
                if (str.charAt(i + 3) != ' ') {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{109, 8, 92, 75, 18, 80, 91, 18, 92, 87, 66, 70, 76, 7, 77, 70, 17, 21, 84, 15, 87, 86, 88, 21}, "8f93b5", false, false) + str);
                }
                strSubstring = str.substring(i + 4);
            }
            return new StatusLine(protocol, i2, strSubstring);
        } catch (NumberFormatException e) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{97, 94, 86, 25, 19, 84, 87, 68, 86, 5, 67, 66, 64, 81, 71, 20, 16, 17, 88, 89, 93, 4, 89, 17}, "403ac1", 577041234L) + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.protocol == Protocol.HTTP_1_0 ? NPStringFog.decode(new byte[]{46, 48, 99, 97, 75, 2, 72, 84}, "fd71d3", true) : NPStringFog.decode(new byte[]{41, 53, 49, 97, 77, 9, 79, 80}, "aae1b8", false, true));
        sb.append(' ').append(this.code);
        if (this.message != null) {
            sb.append(' ').append(this.message);
        }
        return sb.toString();
    }
}
