package com.google.zxing.common;

import com.google.zxing.FormatException;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public enum CharacterSetECI {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, NPStringFog.decode(new byte[]{122, 49, 43, 31, 0, 9, 6, 91, 73, 3}, "3bd281", true, false)),
    ISO8859_2(4, NPStringFog.decode(new byte[]{123, 50, 43, 73, 8, 14, 7, 88, 73, 86}, "2add06", -2.130682E9f)),
    ISO8859_3(5, NPStringFog.decode(new byte[]{40, 98, 44, 20, 92, 15, 84, 8, 78, 10}, "a1c9d7", false)),
    ISO8859_4(6, NPStringFog.decode(new byte[]{44, 107, 121, 20, 9, 94, 80, 1, 27, 13}, "e8691f", 19678)),
    ISO8859_5(7, NPStringFog.decode(new byte[]{125, 97, 125, 28, 92, 93, 1, 11, 31, 4}, "4221de", true, true)),
    ISO8859_6(8, NPStringFog.decode(new byte[]{122, 102, 120, 24, 13, 90, 6, 12, 26, 3}, "35755b", 8.443984E8f)),
    ISO8859_7(9, NPStringFog.decode(new byte[]{47, 107, 41, 30, 91, 91, 83, 1, 75, 4}, "f8f3cc", true, true)),
    ISO8859_8(10, NPStringFog.decode(new byte[]{127, 98, 127, 20, 14, 0, 3, 8, 29, 1}, "610968", 15632)),
    ISO8859_9(11, NPStringFog.decode(new byte[]{123, 49, 118, 20, 15, 89, 7, 91, 20, 0}, "2b997a", -1.377373735E9d)),
    ISO8859_10(12, NPStringFog.decode(new byte[]{124, 102, 45, 30, 8, 89, 0, 12, 79, 2, 0}, "55b30a", -21463)),
    ISO8859_11(13, NPStringFog.decode(new byte[]{113, 106, 44, 72, 13, 12, 13, 0, 78, 84, 4}, "89ce54", 1281806647L)),
    ISO8859_13(15, NPStringFog.decode(new byte[]{122, 102, 124, 21, 1, 92, 6, 12, 30, 9, 10}, "35389d", 1.429175817E9d)),
    ISO8859_14(16, NPStringFog.decode(new byte[]{43, 103, 43, 28, 13, 91, 87, 13, 73, 0, 1}, "b4d15c", 12746)),
    ISO8859_15(17, NPStringFog.decode(new byte[]{42, 103, 126, 26, 91, 1, 86, 13, 28, 6, 86}, "c417c9", -8.45867981E8d)),
    ISO8859_16(18, NPStringFog.decode(new byte[]{45, 101, 119, 24, 12, 15, 81, 15, 21, 4, 2}, "d68547", false, true)),
    SJIS(20, NPStringFog.decode(new byte[]{99, 88, 80, 85, 17, 103, 122, 121, 106}, "0093e8", 9.076686E8f)),
    Cp1250(21, NPStringFog.decode(new byte[]{19, 13, 90, 83, 9, 66, 23, 73, 5, 5, 83, 5}, "dd47f5", 19246)),
    Cp1251(22, NPStringFog.decode(new byte[]{20, 94, 92, 83, 12, 71, 16, 26, 3, 5, 86, 1}, "c727c0", 4.4850901E8d)),
    Cp1252(23, NPStringFog.decode(new byte[]{65, 95, 92, 83, 93, 19, 69, 27, 3, 5, 7, 86}, "66272d", -242875455L)),
    Cp1256(24, NPStringFog.decode(new byte[]{64, 89, 15, 2, 89, 19, 68, 29, 80, 84, 3, 82}, "70af6d", 908096737L)),
    UnicodeBigUnmarked(25, NPStringFog.decode(new byte[]{109, 53, 114, 79, 4, 80, 122, 36}, "8a4b5f", 1.1348763E9f), NPStringFog.decode(new byte[]{99, 94, 8, 1, 95, 85, 83, 114, 8, 5}, "60ab01", 1.6649472E9f)),
    UTF8(26, NPStringFog.decode(new byte[]{102, 98, 35, 28, 0}, "36e188", true, false)),
    ASCII(new int[]{27, 170}, NPStringFog.decode(new byte[]{109, 98, 30, 119, 96, 119, 113, 120}, "813634", 1.2989895E7f)),
    Big5(28),
    GB18030(29, NPStringFog.decode(new byte[]{34, 112, 80, 3, 4, 1}, "e2b053", -1.520366213E9d), NPStringFog.decode(new byte[]{36, 99, 32, 110, 119, 45}, "a6c14c", true, false), NPStringFog.decode(new byte[]{112, 122, 45}, "78fe23", 8.15517807E8d)),
    EUC_KR(30, NPStringFog.decode(new byte[]{35, 98, 114, 26, 126, 99}, "f71751", -9.06242587E8d));

    private final String[] otherEncodingNames;
    private final int[] values;
    private static final Map<Integer, CharacterSetECI> VALUE_TO_ECI = new HashMap();
    private static final Map<String, CharacterSetECI> NAME_TO_ECI = new HashMap();

    static {
        for (CharacterSetECI characterSetECI : values()) {
            for (int i : characterSetECI.values) {
                VALUE_TO_ECI.put(Integer.valueOf(i), characterSetECI);
            }
            NAME_TO_ECI.put(characterSetECI.name(), characterSetECI);
            for (String str : characterSetECI.otherEncodingNames) {
                NAME_TO_ECI.put(str, characterSetECI);
            }
        }
    }

    CharacterSetECI(int i) {
        this(new int[]{i}, new String[0]);
    }

    CharacterSetECI(int i, String... strArr) {
        this.values = new int[]{i};
        this.otherEncodingNames = strArr;
    }

    CharacterSetECI(int[] iArr, String... strArr) {
        this.values = iArr;
        this.otherEncodingNames = strArr;
    }

    public static CharacterSetECI getCharacterSetECIByName(String str) {
        return NAME_TO_ECI.get(str);
    }

    public static CharacterSetECI getCharacterSetECIByValue(int i) throws FormatException {
        if (i < 0 || i >= 900) {
            throw FormatException.getFormatInstance();
        }
        return VALUE_TO_ECI.get(Integer.valueOf(i));
    }

    public int getValue() {
        return this.values[0];
    }
}
