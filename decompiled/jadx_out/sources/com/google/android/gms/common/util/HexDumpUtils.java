package com.google.android.gms.common.util;

import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class HexDumpUtils {
    @ResultIgnorabilityUnspecified
    public static String dump(byte[] bArr, int i, int i2, boolean z) {
        int length;
        int i3;
        if (bArr == null || (length = bArr.length) == 0 || i < 0 || i2 <= 0 || i + i2 > length) {
            return null;
        }
        StringBuilder sb = new StringBuilder((z ? 75 : 57) * ((i2 + 15) / 16));
        int i4 = 0;
        int i5 = 0;
        int i6 = i;
        int i7 = i2;
        while (i7 > 0) {
            if (i5 == 0) {
                if (i2 < 65536) {
                    sb.append(String.format(NPStringFog.decode(new byte[]{29, 3, 85, 59, 14}, "83ac46", false), Integer.valueOf(i6)));
                } else {
                    sb.append(String.format(NPStringFog.decode(new byte[]{71, 7, 15, 108, 12}, "b7746b", true), Integer.valueOf(i6)));
                }
                i4 = i6;
            } else if (i5 == 8) {
                sb.append(NPStringFog.decode(new byte[]{68, 27}, "d6f90e", false));
            }
            sb.append(String.format(NPStringFog.decode(new byte[]{70, 21, 4, 11, 107}, "f0493f", -2.31665E8f), Integer.valueOf(bArr[i6] & 255)));
            int i8 = i7 - 1;
            int i9 = i5 + 1;
            if (z && (i9 == 16 || i8 == 0)) {
                int i10 = 16 - i9;
                if (i10 > 0) {
                    for (int i11 = 0; i11 < i10; i11++) {
                        sb.append("   ");
                    }
                }
                if (i10 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i12 = 0; i12 < i9; i12++) {
                    char c = (char) bArr[i4 + i12];
                    if (c < ' ') {
                        c = '.';
                    } else if (c > '~') {
                        c = '.';
                    }
                    sb.append(c);
                }
            }
            if (i9 == 16 || i8 == 0) {
                sb.append('\n');
                i3 = 0;
            } else {
                i3 = i9;
            }
            i6++;
            i5 = i3;
            i7 = i8;
        }
        return sb.toString();
    }
}
