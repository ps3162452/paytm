package okio;

import java.io.UnsupportedEncodingException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
final class Base64 {
    private static final byte[] MAP = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] URL_MAP = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    private Base64() {
    }

    public static byte[] decode(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int length = str.length();
        while (length > 0) {
            char cCharAt = str.charAt(length - 1);
            if (cCharAt != '=' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ' && cCharAt != '\t') {
                break;
            }
            length--;
        }
        byte[] bArr = new byte[(int) ((((long) length) * 6) / 8)];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i6 < length) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                i2 = cCharAt2 - 'A';
            } else if (cCharAt2 >= 'a' && cCharAt2 <= 'z') {
                i2 = cCharAt2 - 'G';
            } else if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                i2 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i2 = 62;
            } else if (cCharAt2 == '/' || cCharAt2 == '_') {
                i2 = 63;
            } else if (cCharAt2 == '\n' || cCharAt2 == '\r' || cCharAt2 == ' ') {
                i3 = i7;
                i4 = i8;
                i5 = i9;
                i6++;
                i9 = i5;
                i8 = i4;
                i7 = i3;
            } else {
                if (cCharAt2 != '\t') {
                    return null;
                }
                i3 = i7;
                i4 = i8;
                i5 = i9;
                i6++;
                i9 = i5;
                i8 = i4;
                i7 = i3;
            }
            i3 = ((byte) i2) | (i7 << 6);
            i4 = i8 + 1;
            if (i4 % 4 == 0) {
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i3 >> 16);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (i3 >> 8);
                i5 = i11 + 1;
                bArr[i11] = (byte) i3;
            } else {
                i5 = i9;
            }
            i6++;
            i9 = i5;
            i8 = i4;
            i7 = i3;
        }
        int i12 = i8 % 4;
        if (i12 == 1) {
            return null;
        }
        if (i12 == 2) {
            i = i9 + 1;
            bArr[i9] = (byte) ((i7 << 12) >> 16);
        } else if (i12 == 3) {
            int i13 = i7 << 6;
            int i14 = i9 + 1;
            bArr[i9] = (byte) (i13 >> 16);
            i = i14 + 1;
            bArr[i14] = (byte) (i13 >> 8);
        } else {
            i = i9;
        }
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, MAP);
    }

    private static String encode(byte[] bArr, byte[] bArr2) {
        int i = 0;
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        for (int i2 = 0; i2 < length; i2 += 3) {
            int i3 = i + 1;
            bArr3[i] = bArr2[(bArr[i2] & 255) >> 2];
            int i4 = i3 + 1;
            bArr3[i3] = bArr2[((bArr[i2] & 3) << 4) | ((bArr[i2 + 1] & 255) >> 4)];
            int i5 = i4 + 1;
            bArr3[i4] = bArr2[((bArr[i2 + 1] & 15) << 2) | ((bArr[i2 + 2] & 255) >> 6)];
            i = i5 + 1;
            bArr3[i5] = bArr2[bArr[i2 + 2] & 63];
        }
        switch (bArr.length % 3) {
            case 1:
                int i6 = i + 1;
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                int i7 = i6 + 1;
                bArr3[i6] = bArr2[(bArr[length] & 3) << 4];
                bArr3[i7] = (byte) 61;
                bArr3[i7 + 1] = (byte) 61;
                break;
            case 2:
                int i8 = i + 1;
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                int i9 = i8 + 1;
                bArr3[i8] = bArr2[((bArr[length] & 3) << 4) | ((bArr[length + 1] & 255) >> 4)];
                int i10 = i9 + 1;
                bArr3[i9] = bArr2[(bArr[length + 1] & 15) << 2];
                int i11 = i10 + 1;
                bArr3[i10] = (byte) 61;
                break;
        }
        try {
            return new String(bArr3, NPStringFog.decode(new byte[]{103, 49, 78, 113, 50, 115, 123, 43}, "2bc0a0", -7.1161754E8f));
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static String encodeUrl(byte[] bArr) {
        return encode(bArr, URL_MAP);
    }
}
