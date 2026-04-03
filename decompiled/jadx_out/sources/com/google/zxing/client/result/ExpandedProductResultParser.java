package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        char cCharAt;
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length() && (cCharAt = strSubstring.charAt(i2)) != ')'; i2++) {
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (findAIvalue(i2, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = getMassagedText(result);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String strDecode = null;
        String strSubstring = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        String strSubstring4 = null;
        HashMap map = new HashMap();
        int i = 0;
        while (i < massagedText.length()) {
            String strFindAIvalue = findAIvalue(i, massagedText);
            if (strFindAIvalue == null) {
                return null;
            }
            int length = strFindAIvalue.length() + 2 + i;
            String strFindValue = findValue(length, massagedText);
            int length2 = length + strFindValue.length();
            byte b = -1;
            switch (strFindAIvalue.hashCode()) {
                case 1536:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{9, 2}, "927205", 13355))) {
                        b = 0;
                    }
                    break;
                case 1537:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{4, 80}, "4af15a", false, false))) {
                        b = 1;
                    }
                    break;
                case 1567:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{83, 8}, "b833ac", 2059663630L))) {
                        b = 2;
                    }
                    break;
                case 1568:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{4, 87}, "5fd4d5", 1.3075741E9f))) {
                        b = 3;
                    }
                    break;
                case 1570:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{82, 5}, "c657b6", true))) {
                        b = 4;
                    }
                    break;
                case 1572:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{2, 3}, "3644a8", 23087))) {
                        b = 5;
                    }
                    break;
                case 1574:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{4, 15}, "587e33", 1.1996943E9f))) {
                        b = 6;
                    }
                    break;
                case 1567966:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{87, 4, 2, 86}, "d52fc4", false))) {
                        b = 7;
                    }
                    break;
                case 1567967:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{2, 83, 86, 8}, "1bf934", false, false))) {
                        b = 8;
                    }
                    break;
                case 1567968:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{86, 84, 0, 10}, "ee0818", 1.533738663E9d))) {
                        b = 9;
                    }
                    break;
                case 1567969:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{80, 84, 6, 4}, "ce675a", true))) {
                        b = 10;
                    }
                    break;
                case 1567970:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{1, 84, 7, 6}, "2e72d7", -16469))) {
                        b = 11;
                    }
                    break;
                case 1567971:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{11, 87, 81, 80}, "8fae50", false))) {
                        b = 12;
                    }
                    break;
                case 1567972:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{82, 8, 7, 82}, "a97d10", false, false))) {
                        b = 13;
                    }
                    break;
                case 1567973:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{85, 6, 81, 3}, "f7a45d", 19827))) {
                        b = 14;
                    }
                    break;
                case 1567974:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{5, 0, 8, 15}, "6187ae", -5.1605178E8f))) {
                        b = 15;
                    }
                    break;
                case 1567975:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{7, 4, 86, 8}, "45f170", true, false))) {
                        b = 16;
                    }
                    break;
                case 1568927:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{82, 10, 84, 83}, "a8dc8a", true, false))) {
                        b = 17;
                    }
                    break;
                case 1568928:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{87, 84, 6, 82}, "df6cbb", -1079655602L))) {
                        b = 18;
                    }
                    break;
                case 1568929:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{6, 3, 9, 81}, "519c1e", false, false))) {
                        b = 19;
                    }
                    break;
                case 1568930:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{81, 2, 85, 4}, "b0e7dc", true, true))) {
                        b = 20;
                    }
                    break;
                case 1568931:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{7, 4, 8, 81}, "468ee0", -35523017L))) {
                        b = 21;
                    }
                    break;
                case 1568932:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{3, 83, 81, 80}, "0aae67", 1885809586L))) {
                        b = 22;
                    }
                    break;
                case 1568933:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{86, 7, 85, 4}, "e5e2b5", false, false))) {
                        b = 23;
                    }
                    break;
                case 1568934:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{10, 87, 5, 15}, "9e58dc", -1.156755875E9d))) {
                        b = 24;
                    }
                    break;
                case 1568935:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{4, 0, 81, 91}, "72acab", -1.618470345E9d))) {
                        b = 25;
                    }
                    break;
                case 1568936:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{85, 6, 81, 13}, "f4a45c", 4412))) {
                        b = 26;
                    }
                    break;
                case 1575716:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{6, 10, 86, 84}, "53dd5b", 414617665L))) {
                        b = 27;
                    }
                    break;
                case 1575717:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{7, 12, 6, 82}, "454c95", -1.8251722E9f))) {
                        b = 28;
                    }
                    break;
                case 1575718:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{82, 90, 3, 2}, "ac1069", -1.3738716E9f))) {
                        b = 29;
                    }
                    break;
                case 1575719:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{7, 91, 84, 82}, "4bfa20", true, true))) {
                        b = 30;
                    }
                    break;
                case 1575747:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{5, 9, 11, 6}, "608695", -883481119L))) {
                        b = 31;
                    }
                    break;
                case 1575748:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{86, 91, 1, 2}, "eb234c", 14803))) {
                        b = 32;
                    }
                    break;
                case 1575749:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{4, 15, 87, 3}, "76d1d9", false, false))) {
                        b = 33;
                    }
                    break;
                case 1575750:
                    if (strFindAIvalue.equals(NPStringFog.decode(new byte[]{2, 90, 5, 0}, "1c63de", -1.6703985E9f))) {
                        b = 34;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    str2 = strFindValue;
                    break;
                case 1:
                    str = strFindValue;
                    break;
                case 2:
                    str3 = strFindValue;
                    break;
                case 3:
                    str4 = strFindValue;
                    break;
                case 4:
                    str5 = strFindValue;
                    break;
                case 5:
                    str6 = strFindValue;
                    break;
                case 6:
                    str7 = strFindValue;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    strDecode = NPStringFog.decode(new byte[]{123, 36}, "0c0a89", -1.420364962E9d);
                    strSubstring = strFindAIvalue.substring(3);
                    str8 = strFindValue;
                    break;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    strDecode = NPStringFog.decode(new byte[]{41, 39}, "eea580", -1.4978263E9f);
                    strSubstring = strFindAIvalue.substring(3);
                    str8 = strFindValue;
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                    strSubstring3 = strFindAIvalue.substring(3);
                    strSubstring2 = strFindValue;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    if (strFindValue.length() < 4) {
                        return null;
                    }
                    strSubstring2 = strFindValue.substring(3);
                    strSubstring4 = strFindValue.substring(0, 3);
                    strSubstring3 = strFindAIvalue.substring(3);
                    break;
                default:
                    map.put(strFindAIvalue, strFindValue);
                    break;
            }
            i = length2;
        }
        return new ExpandedProductParsedResult(massagedText, str, str2, str3, str4, str5, str6, str7, str8, strDecode, strSubstring, strSubstring2, strSubstring3, strSubstring4, map);
    }
}
