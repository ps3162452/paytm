package com.google.zxing.oned;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] START_END_CHARS = {'A', 'B', 'C', 'D'};
    private static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = {'/', ':', '+', '.'};
    private static final char DEFAULT_GUARD = START_END_CHARS[0];

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        if (str.length() < 2) {
            str = DEFAULT_GUARD + str + DEFAULT_GUARD;
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            boolean zArrayContains = CodaBarReader.arrayContains(START_END_CHARS, upperCase);
            boolean zArrayContains2 = CodaBarReader.arrayContains(START_END_CHARS, upperCase2);
            boolean zArrayContains3 = CodaBarReader.arrayContains(ALT_START_END_CHARS, upperCase);
            boolean zArrayContains4 = CodaBarReader.arrayContains(ALT_START_END_CHARS, upperCase2);
            if (zArrayContains) {
                if (!zArrayContains2) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 88, 19, 4, 14, 91, 1, 22, 22, 17, 3, 64, 17, 25, 0, 11, 6, 18, 2, 67, 4, 23, 6, 65, 95, 22}, "e6eeb2", false) + str);
                }
            } else if (!zArrayContains3) {
                if (zArrayContains2 || zArrayContains4) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{42, 91, 69, 82, 84, 12, 7, 21, 64, 71, 89, 23, 23, 26, 86, 93, 92, 69, 4, 64, 82, 65, 92, 22, 89, 21}, "c5338e", false) + str);
                }
                str = DEFAULT_GUARD + str + DEFAULT_GUARD;
            } else if (!zArrayContains4) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{40, 86, 20, 82, 10, 95, 5, 24, 17, 71, 7, 68, 21, 23, 7, 93, 2, 22, 6, 77, 3, 65, 2, 69, 91, 24}, "a8b3f6", 1177378489L) + str);
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, str.charAt(i3))) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 86, 92, 15, 87, 18, 66, 82, 92, 2, 87, 2, 7, 23, 8, 65, 31}, "b72a8f", 1.615438639E9d) + str.charAt(i3) + '\'');
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i2];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                switch (upperCase3) {
                    case '*':
                        upperCase3 = 'C';
                        break;
                    case 'E':
                        upperCase3 = 'D';
                        break;
                    case 'N':
                        upperCase3 = 'B';
                        break;
                    case 'T':
                        upperCase3 = 'A';
                        break;
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= CodaBarReader.ALPHABET.length) {
                    i = 0;
                } else if (upperCase3 == CodaBarReader.ALPHABET[i6]) {
                    i = CodaBarReader.CHARACTER_ENCODINGS[i6];
                } else {
                    i6++;
                }
            }
            int i7 = 0;
            boolean z = true;
            int i8 = 0;
            while (i7 < 7) {
                zArr[i4] = z;
                int i9 = i4 + 1;
                if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                    i7++;
                    z = !z;
                    i8 = 0;
                    i4 = i9;
                } else {
                    i8++;
                    i4 = i9;
                }
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
