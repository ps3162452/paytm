package com.google.android.gms.common.util;

/* JADX INFO: loaded from: classes55.dex */
public class MurmurHash3 {
    private MurmurHash3() {
    }

    public static int murmurhash3_x86_32(byte[] bArr, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        int i8 = i;
        while (true) {
            i4 = i3;
            i5 = (i2 & (-4)) + i;
            if (i8 >= i5) {
                break;
            }
            int i9 = ((bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16) | (bArr[i8 + 3] << 24)) * (-862048943);
            int i10 = i4 ^ (((i9 << 15) | (i9 >>> 17)) * 461845907);
            i3 = (((i10 << 13) | (i10 >>> 19)) * 5) - 430675100;
            i8 += 4;
        }
        switch (i2 & 3) {
            case 3:
                i7 = (bArr[i5 + 2] & 255) << 16;
            case 2:
                i7 |= (bArr[i5 + 1] & 255) << 8;
            case 1:
                int i11 = (i7 | (bArr[i5] & 255)) * (-862048943);
                i6 = (((i11 << 15) | (i11 >>> 17)) * 461845907) ^ i4;
                break;
            default:
                i6 = i4;
                break;
        }
        int i12 = i6 ^ i2;
        int i13 = (i12 ^ (i12 >>> 16)) * (-2048144789);
        int i14 = (i13 ^ (i13 >>> 13)) * (-1028477387);
        return i14 ^ (i14 >>> 16);
    }
}
