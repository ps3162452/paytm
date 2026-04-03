package okhttp3.internal.http2;

import java.io.IOException;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class Http2 {
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{102, 106, 123, 16, 75, 69, 126, 108, 102, 96, 78, 87, 24, 8, 63, 58, 108, 111, 101, 117, 63, 58, 108, 111}, "6820ae", -1.871398214E9d));
    private static final String[] FRAME_NAMES = {NPStringFog.decode(new byte[]{32, 114, 97, 113}, "d3503c", true), NPStringFog.decode(new byte[]{43, 119, 113, 34, 116, 99, 48}, "c20f11", 11068), NPStringFog.decode(new byte[]{102, 55, 120, 46, 54, 112, 98, 60}, "6e1ad9", 15235), NPStringFog.decode(new byte[]{49, 106, 98, 109, 49, 96, 49, 124, 119, 127}, "c962b4", 1.8586671E9f), NPStringFog.decode(new byte[]{101, 124, 101, 53, 47, 125, 113, 106}, "691af3", true, true), NPStringFog.decode(new byte[]{104, 55, 107, 112, 58, 105, 106, 45, 117, 113, 54, 124}, "8b88e9", -7.0305337E8d), NPStringFog.decode(new byte[]{53, 125, 122, 38}, "e44a1c", 9.799781E8f), NPStringFog.decode(new byte[]{37, 45, 37, 51, 32, 60}, "bbddae", false, false), NPStringFog.decode(new byte[]{49, 125, 119, 112, 126, 100, 57, 97, 105, 112, 112, 103, 35}, "f49413", -1452619057L), NPStringFog.decode(new byte[]{119, 118, 47, 103, 123, 120, 97, 120, 53, 122, 125, 120}, "49a326", 1.617619277E9d)};
    static final String[] FLAGS = new String[64];
    static final String[] BINARY = new String[256];

    static {
        for (int i = 0; i < BINARY.length; i++) {
            BINARY[i] = Util.format(NPStringFog.decode(new byte[]{18, 93, 16}, "7ec380", 11797), Integer.toBinaryString(i)).replace(' ', '0');
        }
        FLAGS[0] = "";
        FLAGS[1] = NPStringFog.decode(new byte[]{35, 42, 117, 57, 96, 108, 52, 33, 112, 43}, "fd1f38", -1.936990889E9d);
        int[] iArr = {1};
        FLAGS[8] = NPStringFog.decode(new byte[]{98, 114, 117, 119, 117, 125}, "231309", 1.601784837E9d);
        for (int i2 : iArr) {
            FLAGS[i2 | 8] = FLAGS[i2] + NPStringFog.decode(new byte[]{74, 51, 32, 37, 114, 117, 114}, "6caa60", 628626141L);
        }
        FLAGS[4] = NPStringFog.decode(new byte[]{38, 120, 124, 110, 122, 33, 34, 114, 125, 99, 97}, "c6812d", 8.3725416E7f);
        FLAGS[32] = NPStringFog.decode(new byte[]{54, 100, 43, 118, 103, 42, 50, 111}, "f6b95c", 9.0908666E8f);
        FLAGS[36] = NPStringFog.decode(new byte[]{124, 125, 119, 106, 43, 118, 120, 119, 118, 103, 48, 79, 105, 97, 122, 122, 49, 122, 109, 106}, "9335c3", 1460889971L);
        for (int i3 : new int[]{4, 32, 36}) {
            for (int i4 : iArr) {
                FLAGS[i4 | i3] = FLAGS[i4] + '|' + FLAGS[i3];
                FLAGS[i4 | i3 | 8] = FLAGS[i4] + '|' + FLAGS[i3] + NPStringFog.decode(new byte[]{29, 49, 121, 119, 119, 125, 37}, "aa8338", -3.3853574E8f);
            }
        }
        for (int i5 = 0; i5 < FLAGS.length; i5++) {
            if (FLAGS[i5] == null) {
                FLAGS[i5] = BINARY[i5];
            }
        }
    }

    private Http2() {
    }

    static String formatFlags(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        switch (b) {
            case 2:
            case 3:
            case 7:
            case 8:
                return BINARY[b2];
            case 4:
            case 6:
                return b2 == 1 ? NPStringFog.decode(new byte[]{34, 39, 115}, "cd85f8", -1.231528863E9d) : BINARY[b2];
            case 5:
            default:
                String str = b2 < FLAGS.length ? FLAGS[b2] : BINARY[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace(NPStringFog.decode(new byte[]{96, 96, 112, 120, 52, 113, 100, 107}, "0297f8", true), NPStringFog.decode(new byte[]{32, 122, 116, 96, 48, 117, 48, 102, 124, 116}, "c590b0", 1302777776L)) : str.replace(NPStringFog.decode(new byte[]{126, 39, 39, 124, 112, 52, 101}, "6bf85f", true, true), NPStringFog.decode(new byte[]{50, 97, 101, 125, 60, 53, 48, 123, 123, 124, 48, 32}, "b465ce", -2.0838811E8f));
        }
    }

    static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        return Util.format(NPStringFog.decode(new byte[]{68, 18, 18, 81, 26, 20, 81, 89, 74, 65, 71, 4, TYPE_PUSH_PROMISE, 65, 23, 76, 83, TYPE_PRIORITY, 18, 65, 23, 18}, "aa2ab1", true, true), z ? NPStringFog.decode(new byte[]{14, 8}, "24aadc", -28504) : NPStringFog.decode(new byte[]{TYPE_GOAWAY, 14}, "90e8d7", 19451), Integer.valueOf(i), Integer.valueOf(i2), b < FRAME_NAMES.length ? FRAME_NAMES[b] : Util.format(NPStringFog.decode(new byte[]{1, 28, 65, 0, 80, 79}, "1dd0b7", 5.63885698E8d), Byte.valueOf(b)), formatFlags(b, b2));
    }

    static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }
}
