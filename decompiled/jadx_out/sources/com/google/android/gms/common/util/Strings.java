package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
import n.NPStringFog;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes55.dex */
public class Strings {
    private static final Pattern zza = Pattern.compile(NPStringFog.decode(new byte[]{111, 70, 57, 72, 76, 23, 25, 93, 76, 111, 25}, "3be3d9", -3.61496339E8d));

    private Strings() {
    }

    public static String emptyToNull(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean isEmptyOrWhitespace(String str) {
        return str == null || str.trim().isEmpty();
    }
}
