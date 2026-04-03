package com.google.zxing.common;

import java.nio.charset.Charset;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = NPStringFog.decode(new byte[]{115, 54, 34, 60, 41, 53}, "6cacce", false);
    public static final String GB2312 = NPStringFog.decode(new byte[]{35, 39, 7, 7, 2, 0}, "de5432", -1.712455E9f);
    private static final String ISO88591 = NPStringFog.decode(new byte[]{42, 48, 44, 90, 89, 2, 90, 60, 82}, "cccba7", true);
    public static final String SHIFT_JIS = NPStringFog.decode(new byte[]{106, 43, 44, 103}, "9ae487", false);
    private static final String UTF8 = NPStringFog.decode(new byte[]{101, 54, 118, 15}, "0b0701", true);
    private static final String PLATFORM_DEFAULT_ENCODING = Charset.defaultCharset().name();

    static {
        ASSUME_SHIFT_JIS = NPStringFog.decode(new byte[]{102, 122, 124, 54}, "505e24", true, true).equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING) || NPStringFog.decode(new byte[]{112, 55, 112, 57, 126, 98}, "5b3f42", 1.208115169E9d).equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING);
    }

    private StringUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String guessEncoding(byte[] r23, java.util.Map<com.google.zxing.DecodeHintType, ?> r24) {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessEncoding(byte[], java.util.Map):java.lang.String");
    }
}
