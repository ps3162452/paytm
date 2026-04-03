package com.google.firebase.database.core.utilities;

import java.util.Random;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class PushIdGenerator {
    static final boolean $assertionsDisabled = false;
    private static final String PUSH_CHARS = NPStringFog.decode(new byte[]{78, 4, 4, 86, 7, 4, 86, 2, 2, 92, 13, 113, 33, 119, 113, 33, 114, 119, 43, 125, 127, 47, 120, 125, 45, 123, 101, 53, 102, 99, 55, 97, 99, 51, 108, 105, 57, 107, 84, 6, 87, 84, 6, 82, 82, 12, 93, 90, 8, 88, 88, 10, 91, 64, 18, 70, 70, 16, 65, 70, 20, 76, 76, 30}, "c45d40", 32194);
    private static final Random randGen = new Random();
    private static long lastPushTime = 0;
    private static final int[] lastRandChars = new int[12];

    public static String generatePushChildName(long j) {
        String string;
        synchronized (PushIdGenerator.class) {
            try {
                boolean z = j == lastPushTime;
                lastPushTime = j;
                char[] cArr = new char[8];
                StringBuilder sb = new StringBuilder(20);
                for (int i = 7; i >= 0; i--) {
                    cArr[i] = PUSH_CHARS.charAt((int) (j % 64));
                    j /= 64;
                }
                sb.append(cArr);
                if (z) {
                    incrementArray();
                } else {
                    for (int i2 = 0; i2 < 12; i2++) {
                        lastRandChars[i2] = randGen.nextInt(64);
                    }
                }
                for (int i3 = 0; i3 < 12; i3++) {
                    sb.append(PUSH_CHARS.charAt(lastRandChars[i3]));
                }
                string = sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    private static void incrementArray() {
        for (int i = 11; i >= 0; i--) {
            int[] iArr = lastRandChars;
            int i2 = iArr[i];
            if (i2 != 63) {
                iArr[i] = i2 + 1;
                return;
            }
            iArr[i] = 0;
        }
    }
}
