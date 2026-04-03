package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class VINResultParser extends ResultParser {
    private static final Pattern IOQ = Pattern.compile(NPStringFog.decode(new byte[]{57, 121, 120, 105, 111}, "b07825", true));
    private static final Pattern AZ09 = Pattern.compile(NPStringFog.decode(new byte[]{104, 121, 73, 63, 9, 24, 10, 101, 31, 84, 14, 72}, "38de95", false, true));

    private static char checkChar(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int iVinPositionWeight = 0;
        for (int i = 0; i < charSequence.length(); i++) {
            iVinPositionWeight += vinPositionWeight(i + 1) * vinCharValue(charSequence.charAt(i));
        }
        return charSequence.charAt(8) == checkChar(iVinPositionWeight % 11);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String countryCode(CharSequence charSequence) {
        char cCharAt = charSequence.charAt(0);
        char cCharAt2 = charSequence.charAt(1);
        switch (cCharAt) {
            case '1':
            case '4':
            case '5':
                return NPStringFog.decode(new byte[]{103, 96}, "236ae5", true, true);
            case '2':
                return NPStringFog.decode(new byte[]{117, 116}, "65d3b0", 363054834L);
            case '3':
                if (cCharAt2 >= 'A' && cCharAt2 <= 'W') {
                    return NPStringFog.decode(new byte[]{120, 109}, "5583c6", false);
                }
                return null;
            case '9':
                if ((cCharAt2 >= 'A' && cCharAt2 <= 'E') || (cCharAt2 >= '3' && cCharAt2 <= '9')) {
                    return NPStringFog.decode(new byte[]{39, 49}, "ec3d75", -1120958976L);
                }
                return null;
            case 'J':
                if (cCharAt2 >= 'A' && cCharAt2 <= 'T') {
                    return NPStringFog.decode(new byte[]{41, 103}, "c77170", true, false);
                }
                return null;
            case 'K':
                if (cCharAt2 >= 'L' && cCharAt2 <= 'R') {
                    return NPStringFog.decode(new byte[]{121, 119}, "2890bd", 1.973516139E9d);
                }
                return null;
            case 'L':
                return NPStringFog.decode(new byte[]{119, 125}, "43a23a", 6.56973E8f);
            case 'M':
                if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                    return NPStringFog.decode(new byte[]{112, 122}, "942958", 8.27472975E8d);
                }
                return null;
            case 'S':
                if (cCharAt2 >= 'A' && cCharAt2 <= 'M') {
                    return NPStringFog.decode(new byte[]{97, 127}, "44bd52", false, false);
                }
                if (cCharAt2 >= 'N' && cCharAt2 <= 'T') {
                    return NPStringFog.decode(new byte[]{112, 124}, "4977fe", -1.147136038E9d);
                }
                return null;
            case 'V':
                if (cCharAt2 >= 'F' && cCharAt2 <= 'R') {
                    return NPStringFog.decode(new byte[]{37, 97}, "c3fdbb", true);
                }
                if (cCharAt2 >= 'S' && cCharAt2 <= 'W') {
                    return NPStringFog.decode(new byte[]{114, 54}, "7e5911", -6.96932291E8d);
                }
                return null;
            case 'W':
                return NPStringFog.decode(new byte[]{38, 115}, "b6bf9f", 23597);
            case 'X':
                if (cCharAt2 == '0' || (cCharAt2 >= '3' && cCharAt2 <= '9')) {
                    return NPStringFog.decode(new byte[]{96, 48}, "2ea3b9", true);
                }
                return null;
            case 'Z':
                if (cCharAt2 >= 'A' && cCharAt2 <= 'R') {
                    return NPStringFog.decode(new byte[]{113, 99}, "87a1c3", -1.733817457E9d);
                }
                return null;
            default:
                return null;
        }
    }

    private static int modelYear(char c) {
        if (c >= 'E' && c <= 'H') {
            return (c - 'E') + 1984;
        }
        if (c >= 'J' && c <= 'N') {
            return (c - 'J') + 1988;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return (c - 'R') + 1994;
        }
        if (c >= 'V' && c <= 'Y') {
            return (c - 'V') + 1997;
        }
        if (c >= '1' && c <= '9') {
            return (c - '1') + 2001;
        }
        if (c < 'A' || c > 'D') {
            throw new IllegalArgumentException();
        }
        return (c - 'A') + 2010;
    }

    private static int vinCharValue(char c) {
        if (c >= 'A' && c <= 'I') {
            return (c - 'A') + 1;
        }
        if (c >= 'J' && c <= 'R') {
            return (c - 'J') + 1;
        }
        if (c >= 'S' && c <= 'Z') {
            return (c - 'S') + 2;
        }
        if (c < '0' || c > '9') {
            throw new IllegalArgumentException();
        }
        return c - '0';
    }

    private static int vinPositionWeight(int i) {
        if (i >= 1 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i < 10 || i > 17) {
            throw new IllegalArgumentException();
        }
        return 19 - i;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String strTrim = IOQ.matcher(result.getText()).replaceAll("").trim();
        if (!AZ09.matcher(strTrim).matches()) {
            return null;
        }
        try {
            if (!checkChecksum(strTrim)) {
                return null;
            }
            String strSubstring = strTrim.substring(0, 3);
            return new VINParsedResult(strTrim, strSubstring, strTrim.substring(3, 9), strTrim.substring(9, 17), countryCode(strSubstring), strTrim.substring(3, 8), modelYear(strTrim.charAt(9)), strTrim.charAt(10), strTrim.substring(11));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
