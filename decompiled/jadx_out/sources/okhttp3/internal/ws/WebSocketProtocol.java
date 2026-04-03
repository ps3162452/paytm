package okhttp3.internal.ws;

import n.NPStringFog;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class WebSocketProtocol {
    static final String ACCEPT_MAGIC = NPStringFog.decode(new byte[]{5, 7, 0, 113, 35, 35, 118, 7, 21, 113, 91, 84, 3, 31, 12, 3, 38, 36, 26, 11, 13, 119, 35, 72, 116, 7, 121, 118, 82, 33, 116, 10, 13, 118, 83, 84}, "7284be", true, true);
    static final int B0_FLAG_FIN = 128;
    static final int B0_FLAG_RSV1 = 64;
    static final int B0_FLAG_RSV2 = 32;
    static final int B0_FLAG_RSV3 = 16;
    static final int B0_MASK_OPCODE = 15;
    static final int B1_FLAG_MASK = 128;
    static final int B1_MASK_LENGTH = 127;
    static final int CLOSE_ABNORMAL_TERMINATION = 1006;
    static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    static final long CLOSE_MESSAGE_MAX = 123;
    static final int CLOSE_NO_STATUS_CODE = 1005;
    static final int CLOSE_PROTOCOL_EXCEPTION = 1002;
    static final int OPCODE_BINARY = 2;
    static final int OPCODE_CONTINUATION = 0;
    static final int OPCODE_CONTROL_CLOSE = 8;
    static final int OPCODE_CONTROL_PING = 9;
    static final int OPCODE_CONTROL_PONG = 10;
    static final int OPCODE_FLAG_CONTROL = 8;
    static final int OPCODE_TEXT = 1;
    static final long PAYLOAD_BYTE_MAX = 125;
    static final int PAYLOAD_LONG = 127;
    static final int PAYLOAD_SHORT = 126;
    static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
        throw new AssertionError(NPStringFog.decode(new byte[]{126, 87, 65, 90, 95, 70, 68, 89, 15, 80, 84, 70, 30}, "08a315", false));
    }

    public static String acceptHeader(String str) {
        return ByteString.encodeUtf8(str + ACCEPT_MAGIC).sha1().base64();
    }

    static String closeCodeExceptionMessage(int i) {
        if (i < 1000 || i >= 5000) {
            return NPStringFog.decode(new byte[]{118, 88, 1, 85, 24, 93, 64, 68, 17, 16, 90, 85, 21, 94, 11, 16, 74, 81, 91, 80, 0, 16, 99, 1, 5, 7, 85, 28, 13, 0, 5, 7, 76, 10, 24}, "57e080", 432018663L) + i;
        }
        if ((i < 1004 || i > 1006) && (i < 1012 || i > 2999)) {
            return null;
        }
        return NPStringFog.decode(new byte[]{112, 87, 81, 83, 24}, "385683", 15484) + i + NPStringFog.decode(new byte[]{17, 81, 67, 20, 67, 85, 66, 93, 66, 66, 84, 84, 17, 89, 94, 80, 17, 93, 80, 65, 16, 90, 94, 68, 17, 90, 85, 20, 68, 67, 84, 92, 30}, "180410", 3.2085765E7d);
    }

    static void toggleMask(byte[] bArr, long j, byte[] bArr2, long j2) {
        int length = bArr2.length;
        int i = 0;
        while (i < j) {
            bArr[i] = (byte) (bArr2[(int) (j2 % ((long) length))] ^ bArr[i]);
            i++;
            j2++;
        }
    }

    static void validateCloseCode(int i) {
        String strCloseCodeExceptionMessage = closeCodeExceptionMessage(i);
        if (strCloseCodeExceptionMessage != null) {
            throw new IllegalArgumentException(strCloseCodeExceptionMessage);
        }
    }
}
