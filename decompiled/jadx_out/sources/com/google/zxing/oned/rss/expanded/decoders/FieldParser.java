package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class FieldParser {
    private static final Object[][] FOUR_DIGIT_DATA_LENGTH;
    private static final Object VARIABLE_LENGTH = new Object();
    private static final Object[][] TWO_DIGIT_DATA_LENGTH = {new Object[]{NPStringFog.decode(new byte[]{84, 81}, "da56fa", false, true), 18}, new Object[]{NPStringFog.decode(new byte[]{86, 4}, "f5b3df", 7.162328E8f), 14}, new Object[]{NPStringFog.decode(new byte[]{2, 3}, "21ae85", -63380042L), 14}, new Object[]{NPStringFog.decode(new byte[]{83, 5}, "b51c08", false), VARIABLE_LENGTH, 20}, new Object[]{NPStringFog.decode(new byte[]{0, 0}, "1131dc", -7.6572915E7d), 6}, new Object[]{NPStringFog.decode(new byte[]{3, 1}, "238c7e", true), 6}, new Object[]{NPStringFog.decode(new byte[]{83, 86}, "be94ad", -1671791112L), 6}, new Object[]{NPStringFog.decode(new byte[]{0, 86}, "1c72d3", true, false), 6}, new Object[]{NPStringFog.decode(new byte[]{87, 81}, "ffbe41", false), 6}, new Object[]{NPStringFog.decode(new byte[]{0, 85}, "2e8075", true), 2}, new Object[]{NPStringFog.decode(new byte[]{5, 5}, "742db0", 1.5631704E9f), VARIABLE_LENGTH, 20}, new Object[]{NPStringFog.decode(new byte[]{2, 3}, "016045", true), VARIABLE_LENGTH, 29}, new Object[]{NPStringFog.decode(new byte[]{7, 3}, "438a07", 987), VARIABLE_LENGTH, 8}, new Object[]{NPStringFog.decode(new byte[]{11, 85}, "8b517c", false), VARIABLE_LENGTH, 8}, new Object[]{NPStringFog.decode(new byte[]{0, 3}, "93f9b2", -6.7923955E8f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{91, 3}, "b2421f", 1.3239799E9f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{0, 5}, "97fcf6", 3.4385856E8f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{92, 81}, "eb2cf7", false, false), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{15, 5}, "617515", 28265), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{10, 3}, "362b24", -1990221296L), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{93, 7}, "d1abef", -7.52528921E8d), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{11, 14}, "29b233", true, true), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{10, 11}, "335ac6", -1.529429829E9d), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{12, 10}, "53331c", -5.6368306E8d), VARIABLE_LENGTH, 30}};
    private static final Object[][] THREE_DIGIT_DATA_LENGTH = {new Object[]{NPStringFog.decode(new byte[]{81, 81, 81}, "ceabd5", true, false), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{6, 2, 80}, "46ac59", false, false), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{10, 12, 6}, "884aab", 5.3083008E8f), VARIABLE_LENGTH, 6}, new Object[]{NPStringFog.decode(new byte[]{6, 12, 85}, "49e4aa", 1.690762567E9d), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{83, 12, 7}, "a96eee", true, true), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{4, 86, 85}, "6cfcfe", true, true), VARIABLE_LENGTH, 17}, new Object[]{NPStringFog.decode(new byte[]{10, 1, 6}, "842f5b", -22433), VARIABLE_LENGTH, 20}, new Object[]{NPStringFog.decode(new byte[]{13, 85, 0}, "9e009d", false), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{82, 83, 2}, "fc363f", 2160), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{0, 8, 81}, "48c06a", 1223648715L), 17}, new Object[]{NPStringFog.decode(new byte[]{81, 8, 2}, "e81474", 9.3338624E8f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{7, 82, 6}, "3c6b43", -1845975867L), 13}, new Object[]{NPStringFog.decode(new byte[]{13, 85, 1}, "9d06fd", 9.06421783E8d), 13}, new Object[]{NPStringFog.decode(new byte[]{6, 2, 83}, "23a086", 1298609512L), 13}, new Object[]{NPStringFog.decode(new byte[]{2, 80, 2}, "6a13e9", -3.85840065E8d), 13}, new Object[]{NPStringFog.decode(new byte[]{4, 8, 0}, "0947ae", true), 13}, new Object[]{NPStringFog.decode(new byte[]{81, 7, 7}, "e57ddf", -28903), VARIABLE_LENGTH, 20}, new Object[]{NPStringFog.decode(new byte[]{3, 2, 87}, "70fcc0", true, true), VARIABLE_LENGTH, 15}, new Object[]{NPStringFog.decode(new byte[]{4, 86, 86}, "0ddad5", 1.497960952E9d), 3}, new Object[]{NPStringFog.decode(new byte[]{2, 6, 85}, "64f6ec", 22881), VARIABLE_LENGTH, 15}, new Object[]{NPStringFog.decode(new byte[]{2, 84, 4}, "6f0291", 1.141506857E9d), 3}, new Object[]{NPStringFog.decode(new byte[]{85, 4, 13}, "a68969", 10754), 3}, new Object[]{NPStringFog.decode(new byte[]{2, 7, 2}, "654650", 25465), 3}};
    private static final Object[][] THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = {new Object[]{NPStringFog.decode(new byte[]{4, 87, 8}, "7f8e19", 20921), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 83, 83}, "fbb98f", false, true), 6}, new Object[]{NPStringFog.decode(new byte[]{82, 8, 83}, "a9ae9a", -3.1089684E7f), 6}, new Object[]{NPStringFog.decode(new byte[]{2, 3, 82}, "12a01f", 1.521389884E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 9, 7}, "783d4e", false), 6}, new Object[]{NPStringFog.decode(new byte[]{11, 2, 6}, "8339cc", 1502493526L), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 8, 87}, "49aa26", 1.690906893E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 2, 82}, "40b495", false), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 1, 9}, "f388d9", false), 6}, new Object[]{NPStringFog.decode(new byte[]{81, 6, 2}, "b40938", true), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 81, 6}, "7c5912", -6.5286953E7d), 6}, new Object[]{NPStringFog.decode(new byte[]{81, 81, 80}, "bcdea5", -666979002L), 6}, new Object[]{NPStringFog.decode(new byte[]{6, 83, 80}, "5ae417", true, true), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 84, 85}, "4fc669", false), 6}, new Object[]{NPStringFog.decode(new byte[]{87, 2, 83}, "d0d05b", false, true), 6}, new Object[]{NPStringFog.decode(new byte[]{0, 87, 0}, "3e87ed", 1273727836L), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 80, 8}, "7b117b", 1065153929L), 6}, new Object[]{NPStringFog.decode(new byte[]{5, 81, 9}, "6b9bd2", -323), 6}, new Object[]{NPStringFog.decode(new byte[]{10, 0, 5}, "93439e", true, true), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 86, 6}, "fe4b38", -340488056L), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 1, 7}, "724e42", -13162), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 6, 4}, "4502cf", false), 6}, new Object[]{NPStringFog.decode(new byte[]{5, 85, 4}, "6f1e86", 1.9006152E9f), 6}, new Object[]{NPStringFog.decode(new byte[]{87, 80, 85}, "dccfe2", true), 6}, new Object[]{NPStringFog.decode(new byte[]{6, 1, 83}, "55ccf1", 2.3900116E7f), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 81, 83}, "4eb9e4", true), 6}, new Object[]{NPStringFog.decode(new byte[]{80, 80, 5}, "cd713c", -7.585076E8f), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 4, 80}, "f0c95a", false, true), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 3, 3}, "f77767", 31714), 6}, new Object[]{NPStringFog.decode(new byte[]{6, 80, 83}, "5df65f", -1.697476886E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{2, 1, 15}, "159030", -31454), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 7, 5}, "432861", 32093), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 82, 12}, "7f478d", true), 6}, new Object[]{NPStringFog.decode(new byte[]{5, 3, 11}, "6723c4", 328710249L), 6}, new Object[]{NPStringFog.decode(new byte[]{7, 1, 4}, "4448f3", 357321205L), 6}, new Object[]{NPStringFog.decode(new byte[]{6, 86, 1}, "5c00bf", 1.8775249E9f), 6}, new Object[]{NPStringFog.decode(new byte[]{3, 7, 80}, "02bb4a", -6.97634194E8d), 6}, new Object[]{NPStringFog.decode(new byte[]{82, 83, 80}, "afc86f", -13827), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 83, 87}, "ffcf51", -6629), 6}, new Object[]{NPStringFog.decode(new byte[]{1, 86, 1}, "2c4e20", -1.2621612E9f), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 13, 3}, "785e1f", -1917025635L), 6}, new Object[]{NPStringFog.decode(new byte[]{5, 83, 14}, "6f9f8a", false), 6}, new Object[]{NPStringFog.decode(new byte[]{10, 4, 0}, "920ead", -603502538L), 6}, new Object[]{NPStringFog.decode(new byte[]{3, 83, 84}, "0eec7a", 7.4438917E8d), 6}, new Object[]{NPStringFog.decode(new byte[]{3, 85, 4}, "0c6f98", -1240395648L), 6}, new Object[]{NPStringFog.decode(new byte[]{86, 0, 82}, "e6ad1f", 9.75484712E8d), 6}, new Object[]{NPStringFog.decode(new byte[]{85, 80, 3}, "ff70cf", 1.422233125E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{80, 6, 2}, "c07bd9", 88325043L), 6}, new Object[]{NPStringFog.decode(new byte[]{10, 5, 5}, "9334ca", 4.5763075E8f), 6}, new Object[]{NPStringFog.decode(new byte[]{10, 6, 83}, "90dbfb", 2.04655465E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{81, 1, 9}, "b71ce4", false, false), 6}, new Object[]{NPStringFog.decode(new byte[]{11, 14, 8}, "8817b6", -1.581120218E9d), 6}, new Object[]{NPStringFog.decode(new byte[]{4, 93, 8}, "7d887e", -17150), VARIABLE_LENGTH, 15}, new Object[]{NPStringFog.decode(new byte[]{0, 95, 83}, "3fb947", 1.603470803E9d), VARIABLE_LENGTH, 18}, new Object[]{NPStringFog.decode(new byte[]{10, 93, 84}, "9df649", -22965), VARIABLE_LENGTH, 15}, new Object[]{NPStringFog.decode(new byte[]{10, 91, 11}, "9b8d0b", false, true), VARIABLE_LENGTH, 18}, new Object[]{NPStringFog.decode(new byte[]{1, 6, 2}, "661c9d", 1523199212L), VARIABLE_LENGTH, 30}};

    static {
        Object[] objArr = {NPStringFog.decode(new byte[]{15, 86, 9, 1}, "8f9030", 1.448439046E9d), 13};
        Object obj = VARIABLE_LENGTH;
        FOUR_DIGIT_DATA_LENGTH = new Object[][]{objArr, new Object[]{NPStringFog.decode(new byte[]{86, 1, 2, 6}, "a124d6", 1815694347L), obj, 30}, new Object[]{NPStringFog.decode(new byte[]{83, 86, 8, 0}, "df831b", -9.729209E8f), 10}, new Object[]{NPStringFog.decode(new byte[]{10, 6, 1, 0}, "2611a6", true), 14}, new Object[]{NPStringFog.decode(new byte[]{9, 84, 9, 2}, "1d907c", true), VARIABLE_LENGTH, 20}, new Object[]{NPStringFog.decode(new byte[]{94, 81, 5, 3}, "fa508a", 1.3441293E9f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{15, 3, 2, 4}, "7320d6", -1.0572226E9f), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{0, 0, 6, 7}, "806264", 2.0402726E9f), 6}, new Object[]{NPStringFog.decode(new byte[]{91, 83, 5, 3}, "cc550d", 352851579L), 18}, new Object[]{NPStringFog.decode(new byte[]{13, 5, 6, 7}, "5560fb", -125932914L), VARIABLE_LENGTH, 30}, new Object[]{NPStringFog.decode(new byte[]{8, 1, 6, 89}, "016a0a", false, false), VARIABLE_LENGTH, 12}, new Object[]{NPStringFog.decode(new byte[]{9, 4, 9, 91}, "148c53", 425905856L), 18}, new Object[]{NPStringFog.decode(new byte[]{1, 3, 0, 83}, "932c3f", false, true), VARIABLE_LENGTH, 25}, new Object[]{NPStringFog.decode(new byte[]{89, 80, 5, 8}, "aa58f5", 31621), 6}, new Object[]{NPStringFog.decode(new byte[]{92, 5, 85, 5}, "d4e426", false), 10}, new Object[]{NPStringFog.decode(new byte[]{8, 2, 6, 83}, "036a45", 29988688L), 2}, new Object[]{NPStringFog.decode(new byte[]{1, 80, 8, 8}, "9a9851", -1.5667713E9f), VARIABLE_LENGTH, 70}, new Object[]{NPStringFog.decode(new byte[]{91, 81, 6, 8}, "cc68d5", 26226), VARIABLE_LENGTH, 70}};
    }

    private FieldParser() {
    }

    static String parseFieldsInGeneralPurpose(String str) throws NotFoundException {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, 2);
        for (Object[] objArr : TWO_DIGIT_DATA_LENGTH) {
            if (objArr[0].equals(strSubstring)) {
                return objArr[1] == VARIABLE_LENGTH ? processVariableAI(2, ((Integer) objArr[2]).intValue(), str) : processFixedAI(2, ((Integer) objArr[1]).intValue(), str);
            }
        }
        if (str.length() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(0, 3);
        for (Object[] objArr2 : THREE_DIGIT_DATA_LENGTH) {
            if (objArr2[0].equals(strSubstring2)) {
                return objArr2[1] == VARIABLE_LENGTH ? processVariableAI(3, ((Integer) objArr2[2]).intValue(), str) : processFixedAI(3, ((Integer) objArr2[1]).intValue(), str);
            }
        }
        for (Object[] objArr3 : THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH) {
            if (objArr3[0].equals(strSubstring2)) {
                return objArr3[1] == VARIABLE_LENGTH ? processVariableAI(4, ((Integer) objArr3[2]).intValue(), str) : processFixedAI(4, ((Integer) objArr3[1]).intValue(), str);
            }
        }
        if (str.length() < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring3 = str.substring(0, 4);
        for (Object[] objArr4 : FOUR_DIGIT_DATA_LENGTH) {
            if (objArr4[0].equals(strSubstring3)) {
                return objArr4[1] == VARIABLE_LENGTH ? processVariableAI(4, ((Integer) objArr4[2]).intValue(), str) : processFixedAI(4, ((Integer) objArr4[1]).intValue(), str);
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String processFixedAI(int i, int i2, String str) throws NotFoundException {
        if (str.length() < i) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, i);
        if (str.length() < i + i2) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(i, i + i2);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String fieldsInGeneralPurpose = parseFieldsInGeneralPurpose(str.substring(i + i2));
        return fieldsInGeneralPurpose == null ? str2 : str2 + fieldsInGeneralPurpose;
    }

    private static String processVariableAI(int i, int i2, String str) throws NotFoundException {
        String strSubstring = str.substring(0, i);
        int length = str.length() < i + i2 ? str.length() : i + i2;
        String strSubstring2 = str.substring(i, length);
        String strSubstring3 = str.substring(length);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String fieldsInGeneralPurpose = parseFieldsInGeneralPurpose(strSubstring3);
        return fieldsInGeneralPurpose == null ? str2 : str2 + fieldsInGeneralPurpose;
    }
}
