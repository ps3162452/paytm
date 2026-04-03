package com.google.gson.internal;

import java.math.BigDecimal;
import java.math.BigInteger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public class NumberLimits {
    private static final int MAX_NUMBER_STRING_LENGTH = 10000;

    private NumberLimits() {
    }

    private static void checkNumberStringLength(String str) {
        if (str.length() <= MAX_NUMBER_STRING_LENGTH) {
            return;
        }
        throw new NumberFormatException(NPStringFog.decode(new byte[]{123, 71, 12, 86, 3, 19, 21, 65, 21, 70, 15, 15, 82, 18, 21, 91, 9, 65, 89, 83, 19, 83, 3, 91, 21}, "52a4fa", true) + str.substring(0, 30) + NPStringFog.decode(new byte[]{79, 29, 22}, "a38e7c", -6.2537075E8f));
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        checkNumberStringLength(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException(NPStringFog.decode(new byte[]{40, 71, 89, 90, 92, 20, 70, 90, 85, 75, 25, 19, 8, 65, 65, 72, 73, 9, 20, 70, 81, 92, 25, 21, 5, 83, 88, 93, 3, 70}, "f2489f", 158777995L) + str);
    }

    public static BigInteger parseBigInteger(String str) throws NumberFormatException {
        checkNumberStringLength(str);
        return new BigInteger(str);
    }
}
