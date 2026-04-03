package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzc {
    private static final Pattern zza = Pattern.compile(NPStringFog.decode(new byte[]{111, 100, 66, 58, 5, 76, 10, 89, 26, 7, 116, 76, 117, 101, 76, 85, 72}, "387a5a", -580609939L));

    public static String zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = zza.matcher(str);
        StringBuilder sb = null;
        int iEnd = 0;
        while (matcher.find()) {
            if (sb == null) {
                sb = new StringBuilder();
            }
            int iStart = matcher.start();
            int i = iStart;
            while (i >= 0 && str.charAt(i) == '\\') {
                i--;
            }
            if ((iStart - i) % 2 != 0) {
                int i2 = Integer.parseInt(matcher.group().substring(2), 16);
                sb.append((CharSequence) str, iEnd, matcher.start());
                if (i2 == 92) {
                    sb.append(NPStringFog.decode(new byte[]{101, 108}, "9054f1", true, true));
                } else {
                    sb.append(Character.toChars(i2));
                }
                iEnd = matcher.end();
            }
        }
        if (sb == null) {
            return str;
        }
        if (iEnd < matcher.regionEnd()) {
            sb.append((CharSequence) str, iEnd, matcher.regionEnd());
        }
        return sb.toString();
    }
}
