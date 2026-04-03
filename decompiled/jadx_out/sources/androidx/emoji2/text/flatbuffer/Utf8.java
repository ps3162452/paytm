package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    static class DecodeUtil {
        DecodeUtil() {
        }

        static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (isNotTrailingByte(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || isNotTrailingByte(b3) || isNotTrailingByte(b4)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 11, 71, 86, 91, 13, 1, 69, 100, 99, 113, 73, 93}, "ee177d", 9.510084E8f));
            }
            int iTrailingByteValue = ((b & 7) << 18) | (trailingByteValue(b2) << 12) | (trailingByteValue(b3) << 6) | trailingByteValue(b4);
            cArr[i] = highSurrogate(iTrailingByteValue);
            cArr[i + 1] = lowSurrogate(iTrailingByteValue);
        }

        static void handleOneByte(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        static void handleThreeBytes(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (isNotTrailingByte(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || isNotTrailingByte(b3)))) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 90, 64, 5, 10, 90, 85, 20, 99, 48, 32, 30, 9}, "146df3", false, true));
            }
            cArr[i] = (char) (((b & 15) << 12) | (trailingByteValue(b2) << 6) | trailingByteValue(b3));
        }

        static void handleTwoBytes(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b < -62) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 13, 68, 80, 93, 8, 83, 67, 103, 101, 119, 76, 15, 89, 18, 120, 93, 13, 82, 4, 83, 93, 17, 13, 82, 2, 86, 88, 95, 6, 23, 1, 75, 69, 84, 65, 94, 13, 18, 3, 17, 3, 78, 23, 87, 66, 17, 20, 67, 5}, "7c211a", -13580));
            }
            if (isNotTrailingByte(b2)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 87, 70, 89, 90, 91, 81, 25, 101, 108, 112, 31, 13, 3, 16, 113, 90, 94, 80, 94, 81, 84, 22, 70, 71, 88, 89, 84, 95, 92, 82, 25, 82, 65, 66, 87, 21, 80, 94, 24, 4, 18, 87, 64, 68, 93, 69, 18, 64, 77, 86}, "590862", 27443));
            }
            cArr[i] = (char) (((b & 31) << 6) | trailingByteValue(b2));
        }

        private static char highSurrogate(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b) {
            return b > -65;
        }

        static boolean isOneByte(byte b) {
            return b >= 0;
        }

        static boolean isThreeBytes(byte b) {
            return b < -16;
        }

        static boolean isTwoBytes(byte b) {
            return b < -32;
        }

        private static char lowSurrogate(int i) {
            return (char) ((i & 1023) + 56320);
        }

        private static int trailingByteValue(byte b) {
            return b & 63;
        }
    }

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super(NPStringFog.decode(new byte[]{99, 11, 66, 84, 95, 75, 83, 1, 18, 70, 67, 75, 68, 10, 85, 84, 66, 92, 22, 4, 70, 21, 95, 87, 82, 0, 74, 21}, "6e2569", 1.165726E9f) + i + NPStringFog.decode(new byte[]{23, 94, 80, 66}, "716b47", false, true) + i2);
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i, int i2);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
