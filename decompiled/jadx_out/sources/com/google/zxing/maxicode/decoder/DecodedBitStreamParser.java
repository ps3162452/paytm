package com.google.zxing.maxicode.decoder;

import com.google.zxing.common.DecoderResult;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class DecodedBitStreamParser {
    private static final char ECI = 65530;
    private static final char FS = 28;
    private static final char GS = 29;
    private static final char LATCHA = 65527;
    private static final char LATCHB = 65528;
    private static final char LOCK = 65529;
    private static final char NS = 65531;
    private static final char PAD = 65532;
    private static final char RS = 30;
    private static final char SHIFTA = 65520;
    private static final char SHIFTB = 65521;
    private static final char SHIFTC = 65522;
    private static final char SHIFTD = 65523;
    private static final char SHIFTE = 65524;
    private static final char THREESHIFTA = 65526;
    private static final char TWOSHIFTA = 65525;
    private static final NumberFormat NINE_DIGITS = new DecimalFormat(NPStringFog.decode(new byte[]{84, 6, 3, 86, 82, 6, 84, 6, 3}, "d63fb6", false, false));
    private static final NumberFormat THREE_DIGITS = new DecimalFormat(NPStringFog.decode(new byte[]{9, 4, 86}, "94f5c0", false, true));
    private static final String[] SETS = {NPStringFog.decode(new byte[]{56, 121, 117, 115, 39, 32, 116, 127, 127, 121, 41, 46, 126, 117, 121, 127, 51, 52, 96, 107, 99, 101, 53, 50, 106, 97, 109, -33, -36, -33, 46, 37, 41, -33, -36, -34, 18, -41, -120, -116, 65, 70, 22, 29, 17, 23, 75, 76, 24, 19, 27, 29, 77, 74, 2, 9, 5, 3, 87, 80, 4, 15, 15, 9, 89, -118, -115, -119, -40, -113, -47, -118, -115, -117, -40, -113, -41, -118, -115, -128}, "2870ce", -1232177818L), NPStringFog.decode(new byte[]{80, 84, 6, 2, 92, 82, 86, 82, 12, 8, 82, 92, 92, 88, 10, 14, 72, 70, 66, 70, 16, 20, 78, 64, 72, 76, 30, -114, -121, -115, 44, 40, 122, -114, -121, -116, 75, -38, -37, -35, 69, 73, 79, 14, 88, 92, 6, 8, 107, 105, 57, 63, 103, 23, 28, 27, 75, 91, 120, 22, 76, -38, -37, -35, -41, -120, -123, -38, -37, -41, -41, -120, -116, -38, -37, -47, -41, -120, -126, -38, -37, -46, -41, -120, -124, -38, -37, -42}, "05da87", 1.749389E9f), NPStringFog.decode(new byte[]{-95, -71, -89, -73, -5, -70, -95, -70, -89, -78, -5, -67, -95, -65, -89, -79, -5, -80, -95, -80, -89, -68, -5, -77, -95, -75, -89, -69, -5, -74, -95, -74, -89, -90, -5, -87, -95, -85, -89, -91, -5, -84, -95, -84, -89, -96, -5, -81, -95, -95, -89, -81, -5, -94, -115, -122, -34, 42, 37, 38, -95, -94, -89, -86, -5, -91, -95, -89, -89, -87, -6, -110, -96, -107, -90, -121, -6, -118, -96, -118, -90, -125, -6, -127, -96, -125, -90, -118, -6, -123, -96, -121, -90, -74, -6, -71, -96, -69, -90, -75, -6, -68, -96, -68, -90, -80, -6, -65, -96, -79, -90, -65, -41, -121, -43, 25, -117, -119, -127, -41, -35, -118, -117, -119, -116, -41, -35, -127}, "b9d688", -8.91184975E8d), NPStringFog.decode(new byte[]{-12, -104, -95, -112, -15, -64, -12, -101, -95, -107, -15, -57, -12, -98, -95, -106, -15, -54, -12, -111, -95, -101, -15, -55, -12, -108, -95, -100, -15, -52, -12, -105, -95, -127, -15, -45, -12, -118, -95, -126, -15, -42, -12, -115, -95, -121, -15, -43, -12, -128, -95, -120, -15, -40, -40, -121, -40, 45, 47, 124, -40, -121, -39, -14, -119, -95, -117, -5, -33, -14, -116, -95, -120, -6, -61, -13, -102, -96, -100, -6, -51, -13, -126, -96, -125, -6, -43, -13, -118, -96, -116, -6, -35, -13, -72, -96, -68, -6, -18, -13, -65, -96, -71, -6, -19, -13, -94, -96, -90, -6, -16, -13, -95, -96, -93, -41, -35, -122, 18, -115, -120, -118, -115, -114, -117, -115, -120, -116, -115, -114, -118}, "78b12b", -3.3356006E8f), NPStringFog.decode(new byte[]{49, 49, 55, 53, 96, 60, 55, 55, 61, 63, 110, 50, 61, 61, 59, 57, 116, 40, 35, 35, 33, 35, 114, 46, 41, 41, 47, -39, -37, -125, -34, -113, -119, -39, -37, -123, 42, -33, -118, -115, 120, 36, 47, 47, -9, -87, -90, -103, -13, -110, -9, -107, -90, -99, -13, -107, -9, -112, -90, -98, -13, -103, -9, -101, -90, -105, -13, -122, -9, -93, -90, -81, -13, -89, -9, -82, -90, -96, -13, -86, -9, -83, -90, -91, -13, -83, -9, -88, -117, -122, -122, 16, -38, -119, -42, -42, -114, -125, -38, -119, -35, -42, -114, -120}, "1056d9", false, true), NPStringFog.decode(new byte[]{53, 51, 96, 96, 61, 96, 51, 53, 106, 106, 51, 110, 57, 63, 108, 108, 41, 116, 39, 33, 118, 118, 47, 114, 45, 43, 120, 120, 37, 120, 43, 45, 66, 66, 27, 70, 17, 23, 68, 68, 17, 76, 31, 25, 78, 78, 23, 74, 5, 3, 80, 80, 13, 80, 3, 5, 90, 90, 3, 94, 9, 15, 92, 92}, "52bc9e", -1.38176E8f)};

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder(144);
        switch (i) {
            case 2:
            case 3:
                String postCode3 = i == 2 ? new DecimalFormat(NPStringFog.decode(new byte[]{85, 1, 83, 84, 82, 83, 85, 1, 83, 84}, "e1cdbc", -440163524L).substring(0, getPostCode2Length(bArr))).format(getPostCode2(bArr)) : getPostCode3(bArr);
                String str = THREE_DIGITS.format(getCountry(bArr));
                String str2 = THREE_DIGITS.format(getServiceClass(bArr));
                sb.append(getMessage(bArr, 10, 84));
                if (!sb.toString().startsWith(NPStringFog.decode(new byte[]{106, 79, 92, 39, 1, 82, 44}, "1fb91c", false, false))) {
                    sb.insert(0, postCode3 + GS + str + GS + str2 + GS);
                } else {
                    sb.insert(9, postCode3 + GS + str + GS + str2 + GS);
                }
                break;
            case 4:
                sb.append(getMessage(bArr, 1, 93));
                break;
            case 5:
                sb.append(getMessage(bArr, 1, 77));
                break;
        }
        return new DecoderResult(bArr, sb.toString(), null, String.valueOf(i));
    }

    private static int getBit(int i, byte[] bArr) {
        int i2 = i - 1;
        return ((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0 ? 0 : 1;
    }

    private static int getCountry(byte[] bArr) {
        return getInt(bArr, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38});
    }

    private static int getInt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            throw new IllegalArgumentException();
        }
        int bit = 0;
        for (int i = 0; i < bArr2.length; i++) {
            bit += getBit(bArr2[i], bArr) << ((bArr2.length - i) - 1);
        }
        return bit;
    }

    private static String getMessage(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        StringBuilder sb = new StringBuilder();
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        int i8 = i;
        while (i8 < i + i2) {
            char cCharAt = SETS[i6].charAt(bArr[i8]);
            switch (cCharAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i5 = 1;
                    int i9 = i8;
                    i3 = cCharAt - SHIFTA;
                    i7 = i6;
                    i4 = i9;
                    break;
                case 65525:
                    i5 = 2;
                    int i10 = i8;
                    i3 = 0;
                    i7 = i6;
                    i4 = i10;
                    break;
                case 65526:
                    i5 = 3;
                    int i11 = i8;
                    i3 = 0;
                    i7 = i6;
                    i4 = i11;
                    break;
                case 65527:
                    i5 = -1;
                    int i12 = i8;
                    i3 = 0;
                    i4 = i12;
                    break;
                case 65528:
                    i5 = -1;
                    int i13 = i8;
                    i3 = 1;
                    i4 = i13;
                    break;
                case 65529:
                    i5 = -1;
                    int i14 = i8;
                    i3 = i6;
                    i4 = i14;
                    break;
                case 65530:
                default:
                    sb.append(cCharAt);
                    int i15 = i8;
                    i3 = i6;
                    i4 = i15;
                    break;
                case 65531:
                    int i16 = i8 + 1;
                    byte b = bArr[i16];
                    int i17 = i16 + 1;
                    byte b2 = bArr[i17];
                    int i18 = i17 + 1;
                    byte b3 = bArr[i18];
                    int i19 = i18 + 1;
                    byte b4 = bArr[i19];
                    int i20 = i19 + 1;
                    sb.append(NINE_DIGITS.format((b << 24) + (b2 << 18) + (b3 << 12) + (b4 << 6) + bArr[i20]));
                    i3 = i6;
                    i4 = i20;
                    break;
            }
            int i21 = i5 - 1;
            if (i5 == 0) {
                i3 = i7;
            }
            i5 = i21;
            int i22 = i3;
            i8 = i4 + 1;
            i6 = i22;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private static int getPostCode2(byte[] bArr) {
        return getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    private static int getPostCode2Length(byte[] bArr) {
        return getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32});
    }

    private static String getPostCode3(byte[] bArr) {
        return String.valueOf(new char[]{SETS[0].charAt(getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32})), SETS[0].charAt(getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26})), SETS[0].charAt(getInt(bArr, new byte[]{27, 28, 29, 30, 19, 20})), SETS[0].charAt(getInt(bArr, new byte[]{21, 22, 23, 24, 13, 14})), SETS[0].charAt(getInt(bArr, new byte[]{15, 16, 17, 18, 7, 8})), SETS[0].charAt(getInt(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    private static int getServiceClass(byte[] bArr) {
        return getInt(bArr, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52});
    }
}
