package com.google.android.gms.internal.common;

import n.NPStringFog;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes55.dex */
@NullMarked
public final class zzs {
    public static int zza(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzy.zza(NPStringFog.decode(new byte[]{19, 71, 22, 24, 29, 21, 31, 20, 91, 69, 75, 18, 22, 90, 89, 68, 24, 4, 83, 20, 88, 85, 95, 7, 66, 93, 64, 85}, "64608f", -9.84492E8f), NPStringFog.decode(new byte[]{88, 92, 2, 80, 28}, "12f5d7", 7.499806E8f), Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 83, 85, 82, 77, 11, 20, 83, 18, 64, 80, 24, 7, 12, 18}, "b6239b", -1.35392E9f) + i2);
            }
            strZza = zzy.zza(NPStringFog.decode(new byte[]{64, 21, 66, 78, 65, 71, 76, 70, 15, 19, 23, 64, 69, 4, 7, 70, 8, 81, 22, 21, 66, 18, 12, 85, 11, 70, 17, 15, 30, 81, 69, 78, 71, 21, 77}, "efbfd4", -11941), NPStringFog.decode(new byte[]{94, 15, 0, 92, 26}, "7ad9bc", true, true), Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzd(i, i2, NPStringFog.decode(new byte[]{90, 90, 93, 6, 78}, "349c6b", -2.8282324E7d)));
        }
        return i;
    }

    public static void zzc(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzd(i, i3, NPStringFog.decode(new byte[]{70, 16, 5, 65, 64, 17, 92, 10, 0, 86, 76}, "5dd341", 16199)) : (i2 < 0 || i2 > i3) ? zzd(i2, i3, NPStringFog.decode(new byte[]{82, 94, 85, 17, 88, 8, 83, 85, 73}, "70111f", true)) : zzy.zza(NPStringFog.decode(new byte[]{92, 8, 83, 17, 10, 89, 93, 3, 79, 17, 75, 18, 74, 79, 23, 92, 22, 68, 77, 70, 89, 94, 23, 23, 91, 3, 23, 93, 6, 68, 74, 70, 67, 89, 2, 89, 25, 21, 67, 80, 17, 67, 25, 15, 89, 85, 6, 79, 25, 78, 18, 66, 74}, "9f71c7", 272527822L), Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zzd(int i, int i2, String str) {
        if (i < 0) {
            return zzy.zza(NPStringFog.decode(new byte[]{64, 21, 67, 76, 29, 21, 76, 70, 14, 17, 75, 18, 69, 8, 12, 16, 24, 4, 0, 70, 13, 1, 95, 7, 17, 15, 21, 1}, "efcd8f", false, true), str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzy.zza(NPStringFog.decode(new byte[]{70, 67, 22, 28, 16, 71, 74, 16, 91, 65, 70, 64, 67, 94, 89, 64, 21, 86, 6, 16, 81, 70, 80, 85, 23, 85, 68, 20, 65, 92, 2, 94, 22, 71, 92, 78, 6, 16, 30, 17, 70, 29}, "c06454", 1.997701E9f), str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{11, 86, 94, 82, 18, 89, 19, 86, 25, 64, 15, 74, 0, 9, 25}, "e393f0", false) + i2);
    }
}
