package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':'};
    private static final int GB2312_SUBSET = 1;

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        boolean z;
        int bits;
        int bits2;
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(50);
        ArrayList arrayList = new ArrayList(1);
        int i = -1;
        int i2 = -1;
        CharacterSetECI characterSetECIByValue = null;
        boolean z2 = false;
        while (true) {
            try {
                Mode modeForBits = bitSource.available() < 4 ? Mode.TERMINATOR : Mode.forBits(bitSource.readBits(4));
                if (modeForBits == Mode.TERMINATOR) {
                    z = z2;
                    bits = i;
                    bits2 = i2;
                } else if (modeForBits == Mode.FNC1_FIRST_POSITION || modeForBits == Mode.FNC1_SECOND_POSITION) {
                    z = true;
                    bits2 = i2;
                    bits = i;
                } else if (modeForBits == Mode.STRUCTURED_APPEND) {
                    if (bitSource.available() < 16) {
                        throw FormatException.getFormatInstance();
                    }
                    bits = bitSource.readBits(8);
                    boolean z3 = z2;
                    bits2 = bitSource.readBits(8);
                    z = z3;
                } else if (modeForBits == Mode.ECI) {
                    characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                    if (characterSetECIByValue == null) {
                        throw FormatException.getFormatInstance();
                    }
                    z = z2;
                    bits = i;
                    bits2 = i2;
                } else if (modeForBits == Mode.HANZI) {
                    int bits3 = bitSource.readBits(4);
                    int bits4 = bitSource.readBits(modeForBits.getCharacterCountBits(version));
                    if (bits3 == 1) {
                        decodeHanziSegment(bitSource, sb, bits4);
                    }
                    z = z2;
                    bits = i;
                    bits2 = i2;
                } else {
                    int bits5 = bitSource.readBits(modeForBits.getCharacterCountBits(version));
                    if (modeForBits == Mode.NUMERIC) {
                        decodeNumericSegment(bitSource, sb, bits5);
                        z = z2;
                        bits = i;
                        bits2 = i2;
                    } else if (modeForBits == Mode.ALPHANUMERIC) {
                        decodeAlphanumericSegment(bitSource, sb, bits5, z2);
                        z = z2;
                        bits = i;
                        bits2 = i2;
                    } else if (modeForBits == Mode.BYTE) {
                        decodeByteSegment(bitSource, sb, bits5, characterSetECIByValue, arrayList, map);
                        z = z2;
                        bits = i;
                        bits2 = i2;
                    } else {
                        if (modeForBits != Mode.KANJI) {
                            throw FormatException.getFormatInstance();
                        }
                        decodeKanjiSegment(bitSource, sb, bits5);
                        z = z2;
                        bits = i;
                        bits2 = i2;
                    }
                }
                if (modeForBits == Mode.TERMINATOR) {
                    return new DecoderResult(bArr, sb.toString(), arrayList.isEmpty() ? null : arrayList, errorCorrectionLevel == null ? null : errorCorrectionLevel.toString(), bits, bits2);
                }
                i2 = bits2;
                i = bits;
                z2 = z;
            } catch (IllegalArgumentException e) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb, int i, boolean z) throws FormatException {
        while (i > 1) {
            if (bitSource.available() < 11) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(11);
            sb.append(toAlphaNumericChar(bits / 45));
            sb.append(toAlphaNumericChar(bits % 45));
            i -= 2;
        }
        if (i == 1) {
            if (bitSource.available() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bitSource.readBits(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length >= sb.length() - 1 || sb.charAt(length + 1) != '%') {
                        sb.setCharAt(length, (char) 29);
                    } else {
                        sb.deleteCharAt(length + 1);
                    }
                }
            }
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        if (i * 8 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) bitSource.readBits(8);
        }
        try {
            sb.append(new String(bArr, characterSetECI == null ? StringUtils.guessEncoding(bArr, map) : characterSetECI.name()));
            collection.add(bArr);
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % 96) | ((bits / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) ((i4 >> 8) & 255);
            bArr[i2 + 1] = (byte) (i4 & 255);
            i--;
            i2 += 2;
        }
        try {
            sb.append(new String(bArr, NPStringFog.decode(new byte[]{114, 122, 5, 11, 1, 81}, "58780c", false, false)));
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % 192) | ((bits / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i--;
            i2 += 2;
        }
        try {
            sb.append(new String(bArr, NPStringFog.decode(new byte[]{48, 44, 40, 103}, "cfa4d6", false, false)));
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (bitSource.available() < 10) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(10);
            if (bits >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits / 100));
            sb.append(toAlphaNumericChar((bits / 10) % 10));
            sb.append(toAlphaNumericChar(bits % 10));
            i -= 3;
        }
        if (i == 2) {
            if (bitSource.available() < 7) {
                throw FormatException.getFormatInstance();
            }
            int bits2 = bitSource.readBits(7);
            if (bits2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits2 / 10));
            sb.append(toAlphaNumericChar(bits2 % 10));
            return;
        }
        if (i == 1) {
            if (bitSource.available() < 4) {
                throw FormatException.getFormatInstance();
            }
            int bits3 = bitSource.readBits(4);
            if (bits3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits3));
        }
    }

    private static int parseECIValue(BitSource bitSource) throws FormatException {
        int bits = bitSource.readBits(8);
        if ((bits & 128) == 0) {
            return bits & 127;
        }
        if ((bits & 192) == 128) {
            return ((bits & 63) << 8) | bitSource.readBits(8);
        }
        if ((bits & 224) == 192) {
            return ((bits & 31) << 16) | bitSource.readBits(16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char toAlphaNumericChar(int i) throws FormatException {
        if (i >= ALPHANUMERIC_CHARS.length) {
            throw FormatException.getFormatInstance();
        }
        return ALPHANUMERIC_CHARS[i];
    }
}
