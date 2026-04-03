package com.google.zxing.datamatrix.encoder;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.budiyev.android.codescanner.BarcodeUtils;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes65.dex */
public final class ErrorCorrection {
    private static final int MODULO_VALUE = 301;
    private static final int[] FACTOR_SETS = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[][] FACTORS = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, 144, 134, 240, 92, 254}, new int[]{28, 24, 185, 166, 223, 248, 116, 255, 110, 61}, new int[]{175, 138, HttpStatus.SC_RESET_CONTENT, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, 153, 158, 91, 61, 42, 142, 213, 97, 178, 100, 242}, new int[]{156, 97, 192, 252, 95, 9, 157, 119, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, 213, 109, 129, 94, 254, 225, 48, 90, 188}, new int[]{15, 195, 244, 9, 233, 71, 168, 2, 188, 160, 153, 145, 253, 79, 108, 82, 27, 174, 186, 172}, new int[]{52, 190, 88, HttpStatus.SC_RESET_CONTENT, 109, 39, 176, 21, 155, 197, 251, 223, 155, 21, 5, 172, 254, 124, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, 174, 37, 151, 170, 53, 75, 34, 249, 121, 17, 138, 110, 213, 141, 136, 120, 151, 233, 168, 93, 255}, new int[]{245, 127, 242, 218, 130, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 162, 181, 102, 120, 84, 179, 220, 251, 80, 182, 229, 18, 2, 4, 68, 33, 101, 137, 95, 119, 115, 44, 175, 184, 59, 25, 225, 98, 81, 112}, new int[]{77, 193, 137, 31, 19, 38, 22, 153, 247, 105, 122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 167, 105, 214, 111, 57, 121, 21, 1, 253, 57, 54, 101, 248, HttpStatus.SC_ACCEPTED, 69, 50, 150, 177, 226, 5, 9, 5}, new int[]{245, 132, 172, 223, 96, 32, 117, 22, 238, 133, 238, 231, HttpStatus.SC_RESET_CONTENT, 188, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, HttpStatus.SC_RESET_CONTENT, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, 213, 92, 253, 225, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 175, 170, 230, 192, 215, 235, 150, 159, 36, 223, 38, 200, 132, 54, 228, 146, 218, 234, 117, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 29, 232, 144, 238, 22, 150, HttpStatus.SC_CREATED, 117, 62, HttpStatus.SC_MULTI_STATUS, 164, 13, 137, 245, 127, 67, 247, 28, 155, 43, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 107, 233, 53, 143, 46}, new int[]{242, 93, 169, 50, 144, 210, 39, 118, HttpStatus.SC_ACCEPTED, 188, HttpStatus.SC_CREATED, 189, 143, 108, 196, 37, 185, 112, 134, 230, 245, 63, 197, 190, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, 130, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 11, HttpStatus.SC_NO_CONTENT}, new int[]{220, 228, 173, 89, 251, 149, 159, 56, 89, 33, 147, 244, 154, 36, 73, 127, 213, 136, 248, BarcodeUtils.ROTATION_180, 234, 197, 158, 177, 68, 122, 93, 213, 15, 160, 227, 236, 66, 139, 153, 185, HttpStatus.SC_ACCEPTED, 167, 179, 25, 220, 232, 96, 210, 231, 136, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, 189, 64, 54, 108, 153, 132, 63, 96, 103, 82, 186}};
    private static final int[] LOG = new int[256];
    private static final int[] ALOG = new int[255];

    static {
        int i = 1;
        for (int i2 = 0; i2 < 255; i2++) {
            ALOG[i2] = i;
            LOG[i] = i2;
            i *= 2;
            if (i >= 256) {
                i ^= 301;
            }
        }
    }

    private ErrorCorrection() {
    }

    private static String createECCBlock(CharSequence charSequence, int i) {
        return createECCBlock(charSequence, 0, charSequence.length(), i);
    }

    private static String createECCBlock(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = 0;
        while (true) {
            if (i4 >= FACTOR_SETS.length) {
                i4 = -1;
                break;
            }
            if (FACTOR_SETS[i4] == i3) {
                break;
            }
            i4++;
        }
        if (i4 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 10, 84, 7, 2, 7, 89, 70, 86, 23, 8, 4, 80, 20, 24, 13, 3, 70, 80, 20, 74, 13, 23, 70, 86, 9, 74, 16, 0, 5, 65, 15, 87, 12, 69, 5, 90, 2, 93, 21, 10, 20, 81, 21, 24, 17, 21, 3, 86, 15, 94, 11, 0, 2, 15, 70}, "5f8bef", -1808344956L) + i3);
        }
        int[] iArr = FACTORS[i4];
        char[] cArr = new char[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            cArr[i5] = (char) 0;
        }
        for (int i6 = i; i6 < i + i2; i6++) {
            int iCharAt = charSequence.charAt(i6) ^ cArr[i3 - 1];
            for (int i7 = i3 - 1; i7 > 0; i7--) {
                if (iCharAt == 0 || iArr[i7] == 0) {
                    cArr[i7] = cArr[i7 - 1];
                } else {
                    cArr[i7] = (char) (cArr[i7 - 1] ^ ALOG[(LOG[iCharAt] + LOG[iArr[i7]]) % 255]);
                }
            }
            if (iCharAt == 0 || iArr[0] == 0) {
                cArr[0] = (char) 0;
            } else {
                cArr[0] = (char) ALOG[(LOG[iCharAt] + LOG[iArr[0]]) % 255];
            }
        }
        char[] cArr2 = new char[i3];
        for (int i8 = 0; i8 < i3; i8++) {
            cArr2[i8] = cArr[(i3 - i8) - 1];
        }
        return String.valueOf(cArr2);
    }

    public static String encodeECC200(String str, SymbolInfo symbolInfo) {
        if (str.length() != symbolInfo.getDataCapacity()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 89, 85, 20, 11, 76, 90, 83, 85, 70, 69, 86, 81, 17, 83, 91, 1, 92, 64, 94, 66, 80, 22, 25, 83, 94, 85, 71, 69, 87, 88, 69, 16, 89, 4, 77, 84, 89, 16, 64, 13, 92, 23, 66, 85, 88, 0, 90, 67, 84, 84, 20, 22, 64, 90, 83, 95, 88}, "7104e9", false, false));
        }
        StringBuilder sb = new StringBuilder(symbolInfo.getDataCapacity() + symbolInfo.getErrorCodewords());
        sb.append(str);
        int interleavedBlockCount = symbolInfo.getInterleavedBlockCount();
        if (interleavedBlockCount == 1) {
            sb.append(createECCBlock(str, symbolInfo.getErrorCodewords()));
        } else {
            sb.setLength(sb.capacity());
            int[] iArr = new int[interleavedBlockCount];
            int[] iArr2 = new int[interleavedBlockCount];
            int[] iArr3 = new int[interleavedBlockCount];
            for (int i = 0; i < interleavedBlockCount; i++) {
                iArr[i] = symbolInfo.getDataLengthForInterleavedBlock(i + 1);
                iArr2[i] = symbolInfo.getErrorLengthForInterleavedBlock(i + 1);
                iArr3[i] = 0;
                if (i > 0) {
                    iArr3[i] = iArr3[i - 1] + iArr[i];
                }
            }
            for (int i2 = 0; i2 < interleavedBlockCount; i2++) {
                StringBuilder sb2 = new StringBuilder(iArr[i2]);
                for (int i3 = i2; i3 < symbolInfo.getDataCapacity(); i3 += interleavedBlockCount) {
                    sb2.append(str.charAt(i3));
                }
                String strCreateECCBlock = createECCBlock(sb2.toString(), iArr2[i2]);
                int i4 = i2;
                int i5 = 0;
                while (i4 < iArr2[i2] * interleavedBlockCount) {
                    sb.setCharAt(symbolInfo.getDataCapacity() + i4, strCreateECCBlock.charAt(i5));
                    i4 += interleavedBlockCount;
                    i5++;
                }
            }
        }
        return sb.toString();
    }
}
