package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import java.nio.ByteBuffer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public final class Utf8Safe extends Utf8 {

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super(NPStringFog.decode(new byte[]{99, 15, 65, 4, 10, 69, 83, 5, 17, 22, 22, 69, 68, 14, 86, 4, 23, 82, 22, 0, 69, 69, 10, 89, 82, 4, 73, 69}, "6a1ec7", false, true) + i + NPStringFog.decode(new byte[]{21, 90, 95, 66}, "559be9", -13173) + i2);
        }
    }

    private static int computeEncodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int iEncodedLengthGeneral = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt >= 2048) {
                    iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i2);
                    break;
                }
                i2++;
                iEncodedLengthGeneral = ((127 - cCharAt) >>> 31) + iEncodedLengthGeneral;
            } else {
                break;
            }
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 109, 116, 73, 92, 17, 15, 92, 92, 3, 16, 89, 67, 93, 93, 1, 23, 17, 13, 86, 70, 68, 2, 88, 23, 25, 91, 10, 68, 88, 13, 77, 8, 68}, "c92dd1", false, true) + (((long) iEncodedLengthGeneral) + 4294967296L));
    }

    public static String decodeUtf8Array(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format(NPStringFog.decode(new byte[]{3, 68, 5, 83, 84, 23, 65, 93, 6, 91, 86, 17, 9, 12, 70, 81, 29, 69, 8, 95, 7, 80, 73, 88, 68, 85, 79, 21, 66, 12, 27, 84, 94, 16, 85}, "a1c51e", false), Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i5 = i + i2;
        char[] cArr = new char[i2];
        int i6 = 0;
        int i7 = i;
        while (true) {
            if (i7 >= i5) {
                i3 = i7;
                break;
            }
            byte b = bArr[i7];
            if (!Utf8.DecodeUtil.isOneByte(b)) {
                i3 = i7;
                break;
            }
            i7++;
            Utf8.DecodeUtil.handleOneByte(b, cArr, i6);
            i6++;
        }
        while (i3 < i5) {
            int i8 = i3 + 1;
            byte b2 = bArr[i3];
            if (Utf8.DecodeUtil.isOneByte(b2)) {
                Utf8.DecodeUtil.handleOneByte(b2, cArr, i6);
                i4 = i6 + 1;
                while (i8 < i5) {
                    byte b3 = bArr[i8];
                    if (!Utf8.DecodeUtil.isOneByte(b3)) {
                        break;
                    }
                    i8++;
                    Utf8.DecodeUtil.handleOneByte(b3, cArr, i4);
                    i4++;
                }
            } else if (Utf8.DecodeUtil.isTwoBytes(b2)) {
                if (i8 >= i5) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 89, 69, 0, 84, 81, 6, 23, 102, 53, 126, 21, 90}, "b73a88", -6582));
                }
                Utf8.DecodeUtil.handleTwoBytes(b2, bArr[i8], cArr, i6);
                i8++;
                i4 = i6 + 1;
            } else if (Utf8.DecodeUtil.isThreeBytes(b2)) {
                if (i8 >= i5 - 1) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 88, 16, 87, 90, 88, 2, 22, 51, 98, 112, 28, 94}, "f6f661", true, false));
                }
                int i9 = i8 + 1;
                Utf8.DecodeUtil.handleThreeBytes(b2, bArr[i8], bArr[i9], cArr, i6);
                i8 = i9 + 1;
                i4 = i6 + 1;
            } else {
                if (i8 >= i5 - 2) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 11, 18, 82, 91, 94, 0, 69, 49, 103, 113, 26, 92}, "ded377", -453578689L));
                }
                int i10 = i8 + 1;
                int i11 = i10 + 1;
                Utf8.DecodeUtil.handleFourBytes(b2, bArr[i8], bArr[i10], bArr[i11], cArr, i6);
                i8 = i11 + 1;
                i4 = i6 + 1 + 1;
            }
            i6 = i4;
            i3 = i8;
        }
        return new String(cArr, 0, i6);
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i, int i2) {
        int i3;
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format(NPStringFog.decode(new byte[]{85, 70, 87, 0, 84, 74, 23, 95, 88, 11, 88, 76, 10, 22, 85, 74, 17, 81, 89, 87, 84, 30, 12, 29, 83, 31, 17, 10, 88, 85, 94, 71, 12, 67, 85}, "731f18", 7.645599E8f), Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i4 = i + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        int i6 = i;
        while (i6 < i4) {
            byte b = byteBuffer.get(i6);
            if (!Utf8.DecodeUtil.isOneByte(b)) {
                break;
            }
            i6++;
            Utf8.DecodeUtil.handleOneByte(b, cArr, i5);
            i5++;
        }
        while (i6 < i4) {
            int i7 = i6 + 1;
            byte b2 = byteBuffer.get(i6);
            if (Utf8.DecodeUtil.isOneByte(b2)) {
                Utf8.DecodeUtil.handleOneByte(b2, cArr, i5);
                i6 = i7;
                i3 = i5 + 1;
                while (i6 < i4) {
                    byte b3 = byteBuffer.get(i6);
                    if (!Utf8.DecodeUtil.isOneByte(b3)) {
                        break;
                    }
                    i6++;
                    Utf8.DecodeUtil.handleOneByte(b3, cArr, i3);
                    i3++;
                }
            } else if (Utf8.DecodeUtil.isTwoBytes(b2)) {
                if (i7 >= i4) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 88, 20, 89, 94, 89, 82, 22, 55, 108, 116, 29, 14}, "66b820", true));
                }
                Utf8.DecodeUtil.handleTwoBytes(b2, byteBuffer.get(i7), cArr, i5);
                i6 = i7 + 1;
                i3 = i5 + 1;
            } else if (Utf8.DecodeUtil.isThreeBytes(b2)) {
                if (i7 >= i4 - 1) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 93, 79, 86, 94, 80, 83, 19, 108, 99, 116, 20, 15}, "739729", -1.069733148E9d));
                }
                int i8 = i7 + 1;
                Utf8.DecodeUtil.handleThreeBytes(b2, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i5);
                i6 = i8 + 1;
                i3 = i5 + 1;
            } else {
                if (i7 >= i4 - 2) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 13, 16, 88, 92, 93, 1, 67, 51, 109, 118, 25, 93}, "ecf904", 31962));
                }
                int i9 = i7 + 1;
                int i10 = i9 + 1;
                Utf8.DecodeUtil.handleFourBytes(b2, byteBuffer.get(i7), byteBuffer.get(i9), byteBuffer.get(i10), cArr, i5);
                i6 = i10 + 1;
                i3 = i5 + 1 + 1;
            }
            i5 = i3;
        }
        return new String(cArr, 0, i5);
    }

    private static int encodeUtf8Array(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int length = charSequence.length();
        int i3 = 0;
        int i4 = i + i2;
        while (i3 < length && i3 + i < i4) {
            if (charSequence.charAt(i3) >= 128) {
                break;
            }
            bArr[i + i3] = (byte) r1;
            i3++;
        }
        if (i3 == length) {
            return i + length;
        }
        int i5 = i + i3;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 128 && i5 < i4) {
                bArr[i5] = (byte) cCharAt;
                i5++;
            } else if (cCharAt < 2048 && i5 <= i4 - 2) {
                int i6 = i5 + 1;
                bArr[i5] = (byte) ((cCharAt >>> 6) | 960);
                i5 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt & '?') | 128);
            } else {
                if ((cCharAt >= 55296 && 57343 >= cCharAt) || i5 > i4 - 3) {
                    if (i5 > i4 - 4) {
                        if (55296 > cCharAt || cCharAt > 57343 || (i3 + 1 != charSequence.length() && Character.isSurrogatePair(cCharAt, charSequence.charAt(i3 + 1)))) {
                            throw new ArrayIndexOutOfBoundsException(NPStringFog.decode(new byte[]{39, 83, 8, 91, 82, 2, 65, 69, 19, 94, 67, 15, 15, 85, 65}, "a2a77f", -7.87668264E8d) + cCharAt + NPStringFog.decode(new byte[]{19, 5, 68, 68, 80, 10, 87, 1, 72, 68}, "3d0d9d", -818903262L) + i5);
                        }
                        throw new UnpairedSurrogateException(i3, length);
                    }
                    if (i3 + 1 != charSequence.length()) {
                        i3++;
                        char cCharAt2 = charSequence.charAt(i3);
                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                            int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                            int i7 = i5 + 1;
                            bArr[i5] = (byte) ((codePoint >>> 18) | 240);
                            int i8 = i7 + 1;
                            bArr[i7] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i5 = i9 + 1;
                            bArr[i9] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new UnpairedSurrogateException(i3 - 1, length);
                }
                int i10 = i5 + 1;
                bArr[i5] = (byte) ((cCharAt >>> '\f') | 480);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (((cCharAt >>> 6) & 63) | 128);
                bArr[i11] = (byte) ((cCharAt & '?') | 128);
                i5 = i11 + 1;
            }
            i3++;
        }
        return i5;
    }

    private static void encodeUtf8Buffer(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int length = charSequence.length();
        int iPosition = byteBuffer.position();
        int i3 = 0;
        while (i3 < length) {
            try {
                char cCharAt = charSequence.charAt(i3);
                if (cCharAt >= 128) {
                    break;
                }
                byteBuffer.put(iPosition + i3, (byte) cCharAt);
                i3++;
            } catch (IndexOutOfBoundsException e) {
                int i4 = i3;
                i2 = iPosition;
                i = i4;
                throw new ArrayIndexOutOfBoundsException(NPStringFog.decode(new byte[]{117, 83, 95, 93, 0, 86, 19, 69, 68, 88, 17, 91, 93, 85, 22}, "3261e2", 1.0462776E9f) + charSequence.charAt(i) + NPStringFog.decode(new byte[]{22, 3, 76, 21, 10, 10, 82, 7, 64, 21}, "6b85cd", true, false) + (Math.max(i, (i2 - byteBuffer.position()) + 1) + byteBuffer.position()));
            }
        }
        if (i3 == length) {
            byteBuffer.position(iPosition + i3);
            return;
        }
        int i5 = iPosition + i3;
        while (i3 < length) {
            char cCharAt2 = charSequence.charAt(i3);
            if (cCharAt2 < 128) {
                byteBuffer.put(i5, (byte) cCharAt2);
            } else if (cCharAt2 < 2048) {
                int i6 = i5 + 1;
                try {
                    byteBuffer.put(i5, (byte) ((cCharAt2 >>> 6) | 192));
                    byteBuffer.put(i6, (byte) ((cCharAt2 & '?') | 128));
                    i5 = i6;
                } catch (IndexOutOfBoundsException e2) {
                    i = i3;
                    i2 = i6;
                    throw new ArrayIndexOutOfBoundsException(NPStringFog.decode(new byte[]{117, 83, 95, 93, 0, 86, 19, 69, 68, 88, 17, 91, 93, 85, 22}, "3261e2", 1.0462776E9f) + charSequence.charAt(i) + NPStringFog.decode(new byte[]{22, 3, 76, 21, 10, 10, 82, 7, 64, 21}, "6b85cd", true, false) + (Math.max(i, (i2 - byteBuffer.position()) + 1) + byteBuffer.position()));
                }
            } else {
                if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                    if (i3 + 1 != length) {
                        i3++;
                        char cCharAt3 = charSequence.charAt(i3);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            int i7 = i5 + 1;
                            try {
                                byteBuffer.put(i5, (byte) ((codePoint >>> 18) | 240));
                                int i8 = i7 + 1;
                                try {
                                    byteBuffer.put(i7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    i5 = i8 + 1;
                                    try {
                                        byteBuffer.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                        byteBuffer.put(i5, (byte) ((codePoint & 63) | 128));
                                    } catch (IndexOutOfBoundsException e3) {
                                        int i9 = i5;
                                        i = i3;
                                        i2 = i9;
                                        throw new ArrayIndexOutOfBoundsException(NPStringFog.decode(new byte[]{117, 83, 95, 93, 0, 86, 19, 69, 68, 88, 17, 91, 93, 85, 22}, "3261e2", 1.0462776E9f) + charSequence.charAt(i) + NPStringFog.decode(new byte[]{22, 3, 76, 21, 10, 10, 82, 7, 64, 21}, "6b85cd", true, false) + (Math.max(i, (i2 - byteBuffer.position()) + 1) + byteBuffer.position()));
                                    }
                                } catch (IndexOutOfBoundsException e4) {
                                    i = i3;
                                    i2 = i8;
                                    throw new ArrayIndexOutOfBoundsException(NPStringFog.decode(new byte[]{117, 83, 95, 93, 0, 86, 19, 69, 68, 88, 17, 91, 93, 85, 22}, "3261e2", 1.0462776E9f) + charSequence.charAt(i) + NPStringFog.decode(new byte[]{22, 3, 76, 21, 10, 10, 82, 7, 64, 21}, "6b85cd", true, false) + (Math.max(i, (i2 - byteBuffer.position()) + 1) + byteBuffer.position()));
                                }
                            } catch (IndexOutOfBoundsException e5) {
                                i5 = i7;
                            }
                        }
                    }
                    throw new UnpairedSurrogateException(i3, length);
                }
                int i10 = i5 + 1;
                byteBuffer.put(i5, (byte) ((cCharAt2 >>> '\f') | 224));
                i5 = i10 + 1;
                byteBuffer.put(i10, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                byteBuffer.put(i5, (byte) ((cCharAt2 & '?') | 128));
            }
            i3++;
            i5++;
        }
        byteBuffer.position(i5);
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new UnpairedSurrogateException(i3, length);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws IllegalArgumentException {
        return byteBuffer.hasArray() ? decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2) : decodeUtf8Buffer(byteBuffer, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            encodeUtf8Buffer(charSequence, byteBuffer);
        } else {
            int iArrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(encodeUtf8Array(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return computeEncodedLength(charSequence);
    }
}
