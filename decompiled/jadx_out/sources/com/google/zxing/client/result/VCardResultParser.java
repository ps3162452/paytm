package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile(NPStringFog.decode(new byte[]{115, 33, 114, 43, 47, 3, 103, 39, 116, 48, 37}, "1d5ba9", true, true), 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile(NPStringFog.decode(new byte[]{108, 84, 26, 6, 78, 21, 15, 108, 5, 73, 1, 69, 29, 15, 61, 86, 72, 10, 77}, "00a238", -251683960L));
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile(NPStringFog.decode(new byte[]{62, 62, 110, 17, 61, 110}, "345143", -1.1013042E9f));
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile(NPStringFog.decode(new byte[]{62, 109, 61, 91, 124, 105}, "b1f524", 1.360353E9f));
    private static final Pattern VCARD_ESCAPES = Pattern.compile(NPStringFog.decode(new byte[]{104, 109, 25, 57, 25, 3, 104, 109, 108, 75}, "411b58", 1605698823L));
    private static final Pattern EQUALS = Pattern.compile(NPStringFog.decode(new byte[]{9}, "4845c0", -24732));
    private static final Pattern SEMICOLON = Pattern.compile(NPStringFog.decode(new byte[]{12}, "7a93ff", 1.4829701E8f));
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile(NPStringFog.decode(new byte[]{24, 92, 4, 22, 108, 107, 25, 88, 19}, "0c8707", -1.368182901E9d));
    private static final Pattern COMMA = Pattern.compile(NPStringFog.decode(new byte[]{31}, "3e70cb", 375041690L));
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile(NPStringFog.decode(new byte[]{111, 95, 78, 57}, "4dbd6f", 32579));

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char cCharAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char cCharAt2 = charSequence.charAt(i);
            switch (cCharAt2) {
                case '\n':
                case '\r':
                    break;
                case '=':
                    if (i < length - 2 && (cCharAt = charSequence.charAt(i + 1)) != '\r' && cCharAt != '\n') {
                        char cCharAt3 = charSequence.charAt(i + 2);
                        int hexDigit = parseHexDigit(cCharAt);
                        int hexDigit2 = parseHexDigit(cCharAt3);
                        if (hexDigit >= 0 && hexDigit2 >= 0) {
                            byteArrayOutputStream.write((hexDigit << 4) + hexDigit2);
                        }
                        i += 2;
                    }
                    break;
                default:
                    maybeAppendFragment(byteArrayOutputStream, str, sb);
                    sb.append(cCharAt2);
                    break;
            }
            i++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        int iIndexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < strArr.length - 1 && (iIndexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, iIndexOf);
                    i++;
                    i2 = iIndexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> listMatchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z, z2);
        if (listMatchVCardPrefixedField == null || listMatchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return listMatchVCardPrefixedField.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.util.List<java.util.List<java.lang.String>> matchVCardPrefixedField(java.lang.CharSequence r18, java.lang.String r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.VCardResultParser.matchVCardPrefixedField(java.lang.CharSequence, java.lang.String, boolean, boolean):java.util.List");
    }

    private static void maybeAppendComponent(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] == null || strArr[i].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, Charset.forName(NPStringFog.decode(new byte[]{52, 49, 39, 30, 13}, "aea35a", 1.6415039E9f)));
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException e) {
                    str2 = new String(byteArray, Charset.forName(NPStringFog.decode(new byte[]{97, 97, 127, 21, 89}, "4598a0", 2.3737678E8f)));
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String strSubstring;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    strSubstring = null;
                    break;
                }
                strSubstring = list.get(i2);
                int iIndexOf = strSubstring.indexOf(61);
                if (iIndexOf >= 0) {
                    if (NPStringFog.decode(new byte[]{102, 60, 102, 115}, "2e660c", 1.8188184E9f).equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                        break;
                    }
                    i = i2 + 1;
                }
            }
            arrayList.add(strSubstring);
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> listMatchVCardPrefixedField = matchVCardPrefixedField(NPStringFog.decode(new byte[]{112, 118}, "68680d", 836683379L), massagedText, true, false);
        if (listMatchVCardPrefixedField == null) {
            listMatchVCardPrefixedField = matchVCardPrefixedField(NPStringFog.decode(new byte[]{42}, "d5d2d1", 1948), massagedText, true, false);
            formatNames(listMatchVCardPrefixedField);
        }
        List<List<String>> list = listMatchVCardPrefixedField;
        List<String> listMatchSingleVCardPrefixedField = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{120, 113, 119, 120, 44, 36, 123, 125}, "6843be", false, true), massagedText, true, false);
        String[] strArrSplit = listMatchSingleVCardPrefixedField == null ? null : COMMA.split(listMatchSingleVCardPrefixedField.get(0));
        List<List<String>> listMatchVCardPrefixedField2 = matchVCardPrefixedField(NPStringFog.decode(new byte[]{49, 33, 45}, "eda151", -876547009L), massagedText, true, false);
        List<List<String>> listMatchVCardPrefixedField3 = matchVCardPrefixedField(NPStringFog.decode(new byte[]{117, 40, 121, 45, 41}, "0e8de6", 4.4635584E8f), massagedText, true, false);
        List<String> listMatchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{40, 41, 96, 35}, "ff4ff0", -1.53419019E9d), massagedText, false, false);
        List<List<String>> listMatchVCardPrefixedField4 = matchVCardPrefixedField(NPStringFog.decode(new byte[]{34, 117, 99}, "c1103e", true), massagedText, true, true);
        List<String> listMatchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{43, 55, 38}, "dea210", false), massagedText, true, true);
        List<String> listMatchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{114, 125, 113, 111}, "0906e7", 537639949L), massagedText, true, false);
        List<String> list2 = (listMatchSingleVCardPrefixedField4 == null || isLikeVCardDate(listMatchSingleVCardPrefixedField4.get(0))) ? listMatchSingleVCardPrefixedField4 : null;
        List<String> listMatchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{99, 127, 53, 47, 32}, "76ace6", true), massagedText, true, false);
        List<List<String>> listMatchVCardPrefixedField5 = matchVCardPrefixedField(NPStringFog.decode(new byte[]{102, 97, 125}, "3311b8", 28049), massagedText, true, false);
        List<String> listMatchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{121, 116, 51, 50}, "09cb0a", false), massagedText, true, false);
        List<String> listMatchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{127, 36, 43}, "8ad0e1", false), massagedText, true, false);
        String[] strArrSplit2 = listMatchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split(listMatchSingleVCardPrefixedField7.get(0));
        if (strArrSplit2 != null && strArrSplit2.length != 2) {
            strArrSplit2 = null;
        }
        return new AddressBookParsedResult(toPrimaryValues(list), strArrSplit, null, toPrimaryValues(listMatchVCardPrefixedField2), toTypes(listMatchVCardPrefixedField2), toPrimaryValues(listMatchVCardPrefixedField3), toTypes(listMatchVCardPrefixedField3), toPrimaryValue(listMatchSingleVCardPrefixedField6), toPrimaryValue(listMatchSingleVCardPrefixedField2), toPrimaryValues(listMatchVCardPrefixedField4), toTypes(listMatchVCardPrefixedField4), toPrimaryValue(listMatchSingleVCardPrefixedField3), toPrimaryValue(list2), toPrimaryValue(listMatchSingleVCardPrefixedField5), toPrimaryValues(listMatchVCardPrefixedField5), strArrSplit2);
    }
}
