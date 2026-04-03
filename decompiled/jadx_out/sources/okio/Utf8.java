package okio;

import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class Utf8 {
    private Utf8() {
    }

    public static long size(String str) {
        return size(str, 0, str.length());
    }

    public static long size(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 67, 17, 13, 92, 87, 18, 10, 94, 68, 92, 69, 94, 91}, "27cd20", false, true));
        }
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 85, 1, 92, 8, 42, 91, 84, 3, 77, 70, 95, 21, 0, 92, 21}, "50f5fc", 31550) + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 93, 81, 45, 15, 80, 92, 75, 21, 88, 65, 86, 92, 84, 92, 10, 40, 90, 93, 86, 77, 94, 65}, "935da4", -29955) + i2 + NPStringFog.decode(new byte[]{22, 11, 23}, "677961", false) + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{4, 15, 81, 125, 13, 1, 4, 25, 21, 10, 67, 22, 21, 19, 92, 90, 4, 75, 13, 4, 91, 83, 23, 13, 91, 65}, "aa54ce", 8191) + i2 + NPStringFog.decode(new byte[]{17, 11, 21}, "155d37", 1266109730L) + str.length());
        }
        long j = 0;
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                j++;
                i++;
            } else if (cCharAt < 2048) {
                j += 2;
                i++;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                j += 3;
                i++;
            } else {
                char cCharAt2 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                    j++;
                    i++;
                } else {
                    j += 4;
                    i += 2;
                }
            }
        }
        return j;
    }
}
