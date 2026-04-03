package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaa = {'u', 'l', 'l'};
    private static final char[] zab = {'r', 'u', 'e'};
    private static final char[] zac = {'r', 'u', 'e', '\"'};
    private static final char[] zad = {'a', 'l', 's', 'e'};
    private static final char[] zae = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zaf = {'\n'};
    private static final zai zag = new zaa();
    private static final zai zah = new zab();
    private static final zai zai = new zac();
    private static final zai zaj = new zad();
    private static final zai zak = new zae();
    private static final zai zal = new zaf();
    private static final zai zam = new zag();
    private static final zai zan = new zah();
    private final char[] zao = new char[1];
    private final char[] zap = new char[32];
    private final char[] zaq = new char[1024];
    private final StringBuilder zar = new StringBuilder(32);
    private final StringBuilder zas = new StringBuilder(1024);
    private final Stack zat = new Stack();

    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(NPStringFog.decode(new byte[]{112, 66, 16, 11, 70, 20, 92, 94, 17, 16, 85, 90, 65, 89, 3, 16, 93, 90, 82, 16, 11, 10, 90, 81, 71, 16, 13, 6, 94, 81, 86, 68}, "50bd44", -557), th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        throw new com.google.android.gms.common.server.response.FastParser.ParseException(n.NPStringFog.decode(new byte[]{54, 13, 7, 73, 66, 1, 0, 23, 7, 85, 18, 7, 12, 13, 22, 67, 93, 8, 67, 0, 10, 80, 64, 5, 0, 23, 7, 67, 18, 19, 11, 10, 14, 84, 18, 22, 6, 2, 6, 88, 92, 3, 67, 16, 22, 67, 91, 10, 4}, "ccb12d", 1.74223238E8d));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String zaA(java.io.BufferedReader r8, char[] r9, java.lang.StringBuilder r10, char[] r11) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r1 = 0
            r10.setLength(r1)
            int r0 = r9.length
            r8.mark(r0)
            r0 = r1
            r2 = r1
        La:
            int r5 = r8.read(r9)
            r3 = -1
            if (r5 == r3) goto L77
            r4 = r1
        L12:
            if (r4 >= r5) goto L6f
            char r6 = r9[r4]
            boolean r3 = java.lang.Character.isISOControl(r6)
            if (r3 == 0) goto L25
            if (r11 == 0) goto L45
            r3 = r1
        L1f:
            if (r3 > 0) goto L45
            char r7 = r11[r3]
            if (r7 != r6) goto L42
        L25:
            r3 = 34
            if (r6 != r3) goto L62
            if (r2 != 0) goto L6d
            r10.append(r9, r1, r4)
            r8.reset()
            int r1 = r4 + 1
            long r2 = (long) r1
            r8.skip(r2)
            if (r0 == 0) goto L5d
            java.lang.String r0 = r10.toString()
            java.lang.String r0 = com.google.android.gms.common.util.JsonUtils.unescapeString(r0)
        L41:
            return r0
        L42:
            int r3 = r3 + 1
            goto L1f
        L45:
            com.google.android.gms.common.server.response.FastParser$ParseException r0 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r1 = 49
            byte[] r1 = new byte[r1]
            r1 = {x008e: FILL_ARRAY_DATA , data: [54, 13, 7, 73, 66, 1, 0, 23, 7, 85, 18, 7, 12, 13, 22, 67, 93, 8, 67, 0, 10, 80, 64, 5, 0, 23, 7, 67, 18, 19, 11, 10, 14, 84, 18, 22, 6, 2, 6, 88, 92, 3, 67, 16, 22, 67, 91, 10, 4} // fill-array
            java.lang.String r2 = "ccb12d"
            r4 = 4730121970903941120(0x41a4c4df0c000000, double:1.74223238E8)
            java.lang.String r1 = n.NPStringFog.decode(r1, r2, r4)
            r0.<init>(r1)
            throw r0
        L5d:
            java.lang.String r0 = r10.toString()
            goto L41
        L62:
            r3 = 92
            if (r6 != r3) goto L6d
            r2 = r2 ^ 1
            r0 = 1
        L69:
            int r3 = r4 + 1
            r4 = r3
            goto L12
        L6d:
            r2 = r1
            goto L69
        L6f:
            r10.append(r9, r1, r5)
            int r3 = r9.length
            r8.mark(r3)
            goto La
        L77:
            com.google.android.gms.common.server.response.FastParser$ParseException r0 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r1 = 35
            byte[] r1 = new byte[r1]
            r1 = {x00ac: FILL_ARRAY_DATA , data: [103, 93, 1, 30, 65, 86, 81, 71, 1, 2, 17, 118, 125, 117, 68, 17, 89, 90, 94, 86, 68, 22, 80, 65, 65, 90, 10, 1, 17, 64, 70, 65, 13, 8, 86} // fill-array
            java.lang.String r2 = "23df13"
            r3 = -830454695(0xffffffffce804459, float:-1.0759814E9)
            java.lang.String r1 = n.NPStringFog.decode(r1, r2, r3)
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zaA(java.io.BufferedReader, char[], java.lang.StringBuilder, char[]):java.lang.String");
    }

    private final char zai(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zao) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zao[0])) {
            if (bufferedReader.read(this.zao) == -1) {
                return (char) 0;
            }
        }
        return this.zao[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zak(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zal(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0;
        }
        char[] cArr = this.zaq;
        if (iZam <= 0) {
            throw new ParseException(NPStringFog.decode(new byte[]{127, 14, 67, 91, 17, 11, 83, 4, 17, 21, 16, 9, 17, 17, 2, 71, 23, 3}, "1ac5df", true));
        }
        char c = cArr[0];
        int i3 = c == '-' ? Integer.MIN_VALUE : -2147483647;
        int i4 = c == '-' ? 1 : 0;
        if (i4 < iZam) {
            int i5 = i4 + 1;
            int iDigit = Character.digit(cArr[i4], 10);
            if (iDigit < 0) {
                throw new ParseException(NPStringFog.decode(new byte[]{49, 91, 6, 77, 70, 82, 7, 65, 6, 81, 22, 89, 11, 91, 78, 81, 95, 80, 13, 65, 67, 86, 94, 86, 22, 84, 0, 65, 83, 69}, "d5c567", true, true));
            }
            i2 = -iDigit;
            i = i5;
        } else {
            i = i4;
            i2 = 0;
        }
        while (i < iZam) {
            int iDigit2 = Character.digit(cArr[i], 10);
            if (iDigit2 < 0) {
                throw new ParseException(NPStringFog.decode(new byte[]{51, 87, 92, 26, 22, 80, 5, 77, 92, 6, 70, 91, 9, 87, 20, 6, 15, 82, 15, 77, 25, 1, 14, 84, 20, 88, 90, 22, 3, 71}, "f99bf5", -1.925694E8f));
            }
            if (i2 < -214748364) {
                throw new ParseException(NPStringFog.decode(new byte[]{127, 23, 8, 82, 83, 22, 17, 22, 10, 95, 22, 8, 80, 16, 2, 85}, "1be06d", 1.4686552E9f));
            }
            int i6 = i2 * 10;
            if (i6 < i3 + iDigit2) {
                throw new ParseException(NPStringFog.decode(new byte[]{119, 77, 11, 1, 81, 17, 25, 76, 9, 12, 20, 15, 88, 74, 1, 6}, "98fc4c", false));
            }
            i++;
            i2 = i6 - iDigit2;
        }
        if (i4 == 0) {
            return -i2;
        }
        if (i <= 1) {
            throw new ParseException(NPStringFog.decode(new byte[]{122, 90, 20, 2, 88, 80, 93, 65, 71, 70, 69, 88, 20, 69, 85, 20, 66, 82}, "454f17", -14427));
        }
        return i2;
    }

    @ResultIgnorabilityUnspecified
    private final int zam(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        char cZai = zai(bufferedReader);
        if (cZai == 0) {
            throw new ParseException(NPStringFog.decode(new byte[]{108, 12, 80, 64, 65, 7, 90, 22, 80, 92, 17, 39, 118, 36}, "9b581b", false));
        }
        if (cZai == ',') {
            throw new ParseException(NPStringFog.decode(new byte[]{46, 15, 71, 23, 94, 94, 4, 70, 66, 5, 91, 69, 6}, "cf4d70", -1429721831L));
        }
        if (cZai == 'n') {
            zax(bufferedReader, zaa);
            return 0;
        }
        bufferedReader.mark(1024);
        if (cZai == '\"') {
            i = 0;
            boolean z = false;
            while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    throw new ParseException(NPStringFog.decode(new byte[]{108, 92, 92, 79, 68, 7, 90, 70, 92, 83, 20, 1, 86, 92, 77, 69, 91, 14, 25, 81, 81, 86, 70, 3, 90, 70, 92, 69, 20, 21, 81, 91, 85, 82, 20, 16, 92, 83, 93, 94, 90, 5, 25, 65, 77, 69, 93, 12, 94}, "92974b", 1.432183111E9d));
                }
                if (c != '\"') {
                    z = c == '\\' ? !z : false;
                } else {
                    if (!z) {
                        bufferedReader.reset();
                        bufferedReader.skip(i + 1);
                        return i;
                    }
                    z = false;
                }
                i++;
            }
        } else {
            cArr[0] = cZai;
            int i2 = 1;
            while (i2 < 1024 && bufferedReader.read(cArr, i2, 1) != -1) {
                char c2 = cArr[i2];
                if (c2 == '}' || c2 == ',' || Character.isWhitespace(c2) || cArr[i2] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i2 - 1);
                    cArr[i2] = (char) 0;
                    return i2;
                }
                i2++;
            }
            i = i2;
        }
        if (i == 1024) {
            throw new ParseException(NPStringFog.decode(new byte[]{34, 80, 67, 20, 74, 1, 15, 75, 16, 13, 87, 11, 4, 18, 70, 0, 84, 16, 6}, "c20a8e", 163627392L));
        }
        throw new ParseException(NPStringFog.decode(new byte[]{102, 92, 1, 77, 65, 82, 80, 70, 1, 81, 17, 114, 124, 116}, "32d517", -2120286428L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zan(BufferedReader bufferedReader) throws ParseException, IOException {
        long j;
        int i;
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0L;
        }
        char[] cArr = this.zaq;
        if (iZam <= 0) {
            throw new ParseException(NPStringFog.decode(new byte[]{47, 89, 19, 86, 64, 88, 3, 83, 65, 24, 65, 90, 65, 70, 82, 74, 70, 80}, "a63855", true, false));
        }
        char c = cArr[0];
        long j2 = c == '-' ? Long.MIN_VALUE : -9223372036854775807L;
        int i2 = c == '-' ? 1 : 0;
        if (i2 < iZam) {
            i = i2 + 1;
            int iDigit = Character.digit(cArr[i2], 10);
            if (iDigit < 0) {
                throw new ParseException(NPStringFog.decode(new byte[]{52, 93, 93, 77, 70, 0, 2, 71, 93, 81, 22, 11, 14, 93, 21, 81, 95, 2, 8, 71, 24, 86, 94, 4, 19, 82, 91, 65, 83, 23}, "a3856e", 1.982870688E9d));
            }
            j = -iDigit;
        } else {
            j = 0;
            i = i2;
        }
        while (i < iZam) {
            int iDigit2 = Character.digit(cArr[i], 10);
            if (iDigit2 < 0) {
                throw new ParseException(NPStringFog.decode(new byte[]{52, 10, 92, 29, 20, 85, 2, 16, 92, 1, 68, 94, 14, 10, 20, 1, 13, 87, 8, 16, 25, 6, 12, 81, 19, 5, 90, 17, 1, 66}, "ad9ed0", 8.1646336E8f));
            }
            if (j < -922337203685477580L) {
                throw new ParseException(NPStringFog.decode(new byte[]{47, 19, 91, 91, 0, 70, 65, 18, 89, 86, 69, 88, 0, 20, 81, 92}, "af69e4", true));
            }
            long j3 = j * 10;
            long j4 = iDigit2;
            if (j3 < j2 + j4) {
                throw new ParseException(NPStringFog.decode(new byte[]{119, 71, 9, 81, 1, 75, 25, 70, 11, 92, 68, 85, 88, 64, 3, 86}, "92d3d9", -2041770776L));
            }
            j = j3 - j4;
            i++;
        }
        if (i2 == 0) {
            return -j;
        }
        if (i <= 1) {
            throw new ParseException(NPStringFog.decode(new byte[]{44, 14, 17, 87, 94, 94, 11, 21, 66, 19, 67, 86, 66, 17, 80, 65, 68, 92}, "ba1379", -1172846735L));
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zao(BufferedReader bufferedReader) throws ParseException, IOException {
        return zap(bufferedReader, this.zap, this.zar, null);
    }

    private final String zap(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        switch (zai(bufferedReader)) {
            case '\"':
                return zaA(bufferedReader, cArr, sb, cArr2);
            case 'n':
                zax(bufferedReader, zaa);
                return null;
            default:
                throw new ParseException(NPStringFog.decode(new byte[]{35, 78, 71, 7, 80, 64, 3, 82, 23, 17, 71, 70, 15, 88, 80}, "f67b34", -1685807327L));
        }
    }

    @ResultIgnorabilityUnspecified
    private final String zaq(BufferedReader bufferedReader) throws ParseException, IOException {
        String strZaA = null;
        this.zat.push(2);
        char cZai = zai(bufferedReader);
        switch (cZai) {
            case '\"':
                this.zat.push(3);
                strZaA = zaA(bufferedReader, this.zap, this.zar, null);
                zaw(3);
                if (zai(bufferedReader) != ':') {
                    throw new ParseException(NPStringFog.decode(new byte[]{35, 75, 67, 87, 6, 18, 3, 87, 19, 89, 0, 31, 73, 69, 82, 94, 16, 3, 70, 64, 86, 66, 4, 20, 7, 71, 92, 64}, "f332ef", 1.314921199E9d));
                }
                return strZaA;
            case ']':
                zaw(2);
                zaw(1);
                zaw(5);
                return strZaA;
            case '}':
                zaw(2);
                return strZaA;
            default:
                throw new ParseException(NPStringFog.decode(new byte[]{98, 92, 84, 25, 73, 86, 84, 70, 84, 5, 25, 71, 88, 89, 84, 15, 3, 19}, "721a93", true) + cZai);
        }
    }

    private final String zar(BufferedReader bufferedReader) throws ParseException, IOException {
        boolean z;
        char c;
        int i;
        char c2;
        bufferedReader.mark(1024);
        switch (zai(bufferedReader)) {
            case '\"':
                if (bufferedReader.read(this.zao) == -1) {
                    throw new ParseException(NPStringFog.decode(new byte[]{103, 89, 6, 79, 21, 82, 81, 67, 6, 83, 69, 114, 125, 113, 67, 64, 13, 94, 94, 82, 67, 71, 4, 69, 65, 94, 13, 80, 69, 68, 70, 69, 10, 89, 2}, "27c7e7", true, false));
                }
                char c3 = this.zao[0];
                boolean z2 = false;
                while (true) {
                    if (c3 == '\"') {
                        if (z2) {
                            c3 = '\"';
                            z2 = true;
                        }
                    }
                    boolean z3 = c3 == '\\' ? !z2 : false;
                    if (bufferedReader.read(this.zao) == -1) {
                        throw new ParseException(NPStringFog.decode(new byte[]{96, 12, 82, 29, 71, 0, 86, 22, 82, 1, 23, 32, 122, 36, 23, 18, 95, 12, 89, 7, 23, 21, 86, 23, 70, 11, 89, 2, 23, 22, 65, 16, 94, 11, 80}, "5b7e7e", -1.752167745E9d));
                    }
                    char c4 = this.zao[0];
                    if (Character.isISOControl(c4)) {
                        throw new ParseException(NPStringFog.decode(new byte[]{97, 11, 81, 75, 20, 92, 87, 17, 81, 87, 68, 90, 91, 11, 64, 65, 11, 85, 20, 6, 92, 82, 22, 88, 87, 17, 81, 65, 68, 78, 92, 12, 88, 86, 68, 75, 81, 4, 80, 90, 10, 94, 20, 22, 64, 65, 13, 87, 83}, "4e43d9", -7.902674E8f));
                    }
                    boolean z4 = z3;
                    c3 = c4;
                    z2 = z4;
                    break;
                }
                break;
            case ',':
                throw new ParseException(NPStringFog.decode(new byte[]{124, 92, 69, 23, 8, 89, 86, 21, 64, 5, 13, 66, 84}, "156da7", 2.47941531E8d));
            case '[':
                this.zat.push(5);
                bufferedReader.mark(32);
                if (zai(bufferedReader) != ']') {
                    bufferedReader.reset();
                    boolean z5 = false;
                    int i2 = 1;
                    boolean z6 = false;
                    while (i2 > 0) {
                        char cZai = zai(bufferedReader);
                        if (cZai == 0) {
                            throw new ParseException(NPStringFog.decode(new byte[]{54, 90, 87, 27, 19, 86, 0, 64, 87, 7, 67, 118, 44, 114, 18, 20, 11, 90, 15, 81, 18, 19, 2, 65, 16, 93, 92, 4, 67, 82, 17, 70, 83, 26}, "c42cc3", 18089));
                        }
                        if (Character.isISOControl(cZai)) {
                            throw new ParseException(NPStringFog.decode(new byte[]{51, 10, 3, 30, 19, 7, 5, 16, 3, 2, 67, 1, 9, 10, 18, 20, 12, 14, 70, 7, 14, 7, 17, 3, 5, 16, 3, 20, 67, 21, 14, 13, 10, 3, 67, 16, 3, 5, 2, 15, 13, 5, 70, 5, 20, 20, 2, 27}, "fdffcb", 1.858943181E9d));
                        }
                        if (cZai == '\"') {
                            if (!z6) {
                                z5 = !z5;
                            }
                            z = z5;
                            c = '\"';
                        } else {
                            z = z5;
                            c = cZai;
                        }
                        if (c == '[') {
                            i = !z ? i2 + 1 : i2;
                            c2 = '[';
                        } else {
                            char c5 = c;
                            i = i2;
                            c2 = c5;
                        }
                        if (c2 == ']' && !z) {
                            i--;
                        }
                        if (c2 == '\\' && z) {
                            z6 = !z6;
                            i2 = i;
                            z5 = z;
                        } else {
                            i2 = i;
                            z6 = false;
                            z5 = z;
                        }
                    }
                    zaw(5);
                } else {
                    zaw(5);
                }
                break;
            case '{':
                this.zat.push(1);
                bufferedReader.mark(32);
                char cZai2 = zai(bufferedReader);
                if (cZai2 == '}') {
                    zaw(1);
                } else {
                    if (cZai2 != '\"') {
                        throw new ParseException(NPStringFog.decode(new byte[]{49, 8, 3, 30, 20, 6, 7, 18, 3, 2, 68, 23, 11, 13, 3, 8, 68}, "dfffdc", true, false) + cZai2);
                    }
                    bufferedReader.reset();
                    zaq(bufferedReader);
                    while (zar(bufferedReader) != null) {
                    }
                    zaw(1);
                }
                break;
            default:
                bufferedReader.reset();
                zam(bufferedReader, this.zaq);
                break;
        }
        char cZai3 = zai(bufferedReader);
        switch (cZai3) {
            case ',':
                zaw(2);
                return zaq(bufferedReader);
            case '}':
                zaw(2);
                return null;
            default:
                throw new ParseException(NPStringFog.decode(new byte[]{97, 8, 87, 65, 17, 1, 87, 18, 87, 93, 65, 16, 91, 13, 87, 87, 65}, "4f29ad", false) + cZai3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigDecimal zas(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigInteger zat(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return null;
        }
        return new BigInteger(new String(this.zaq, 0, iZam));
    }

    private final ArrayList zau(BufferedReader bufferedReader, zai zaiVar) throws ParseException, IOException {
        char cZai = zai(bufferedReader);
        if (cZai == 'n') {
            zax(bufferedReader, zaa);
            return null;
        }
        if (cZai != '[') {
            throw new ParseException(NPStringFog.decode(new byte[]{32, 77, 20, 4, 90, 65, 0, 81, 68, 18, 77, 84, 23, 65, 68, 14, 95, 21, 4, 71, 22, 0, 64}, "e5da95", false, true));
        }
        this.zat.push(5);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bufferedReader.mark(1024);
            switch (zai(bufferedReader)) {
                case 0:
                    throw new ParseException(NPStringFog.decode(new byte[]{99, 13, 3, 64, 17, 84, 85, 23, 3, 92, 65, 116, 121, 37}, "6cf8a1", 1.372724309E9d));
                case ',':
                    break;
                case ']':
                    zaw(5);
                    return arrayList;
                default:
                    bufferedReader.reset();
                    arrayList.add(zaiVar.zaa(this, bufferedReader));
                    break;
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private final java.util.ArrayList zav(java.io.BufferedReader r8, com.google.android.gms.common.server.response.FastJsonResponse.Field r9) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zav(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse$Field):java.util.ArrayList");
    }

    private final void zaw(int i) throws ParseException {
        if (this.zat.isEmpty()) {
            throw new ParseException(NPStringFog.decode(new byte[]{33, 26, 72, 1, 80, 77, 1, 6, 24, 23, 71, 88, 16, 7, 24}, "db8d39", 1.10969551E9d) + i + NPStringFog.decode(new byte[]{17, 87, 71, 67, 67, 80, 80, 81, 18, 82, 14, 72, 69, 76, 18, 68, 23, 89, 82, 94}, "1527c8", -1.9942248E9f));
        }
        int iIntValue = ((Integer) this.zat.pop()).intValue();
        if (iIntValue == i) {
            return;
        }
        throw new ParseException(NPStringFog.decode(new byte[]{38, 28, 73, 85, 85, 69, 6, 0, 25, 67, 66, 80, 23, 1, 25}, "cd9061", -9.53425206E8d) + i + NPStringFog.decode(new byte[]{23, 82, 77, 64, 18, 94, 86, 84, 24}, "708426", -2.086051114E9d) + iIntValue);
    }

    private final void zax(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (true) {
            int length = cArr.length;
            if (i >= length) {
                return;
            }
            int i2 = bufferedReader.read(this.zap, 0, length - i);
            if (i2 == -1) {
                throw new ParseException(NPStringFog.decode(new byte[]{100, 88, 87, 28, 69, 0, 82, 66, 87, 0, 21, 32, 126, 112}, "162d5e", -10685));
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (cArr[i3 + i] != this.zap[i3]) {
                    throw new ParseException(NPStringFog.decode(new byte[]{52, 94, 93, 76, 70, 83, 2, 68, 93, 80, 22, 85, 9, 81, 74, 85, 85, 66, 4, 66}, "a08466", true, true));
                }
            }
            i += i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zay(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        char cZai = zai(bufferedReader);
        switch (cZai) {
            case '\"':
                if (z) {
                    throw new ParseException(NPStringFog.decode(new byte[]{120, 14, 68, 80, 13, 95, 90, 4, 5, 92, 66, 70, 87, 13, 17, 87, 66, 86, 89, 20, 10, 86, 66, 89, 88, 65, 23, 70, 16, 89, 88, 6}, "6ad2b0", -7.52799791E8d));
                }
                return zay(bufferedReader, true);
            case 'f':
                zax(bufferedReader, z ? zae : zad);
                return false;
            case 'n':
                zax(bufferedReader, zaa);
                return false;
            case 't':
                zax(bufferedReader, z ? zac : zab);
                return true;
            default:
                throw new ParseException(NPStringFog.decode(new byte[]{55, 13, 82, 28, 66, 6, 1, 23, 82, 0, 18, 23, 13, 8, 82, 10, 8, 67}, "bc7d2c", false) + cZai);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ResultIgnorabilityUnspecified
    private final boolean zaz(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap map;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strZaq = zaq(bufferedReader);
        if (strZaq == null) {
            zaw(1);
            return false;
        }
        while (strZaq != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strZaq);
            if (field == null) {
                strZaq = zar(bufferedReader);
            } else {
                this.zat.push(4);
                int i = field.zaa;
                switch (i) {
                    case 0:
                        if (!field.zab) {
                            fastJsonResponse.zau(field, zal(bufferedReader));
                        } else {
                            fastJsonResponse.zav(field, zau(bufferedReader, zag));
                        }
                        break;
                    case 1:
                        if (!field.zab) {
                            fastJsonResponse.zae(field, zat(bufferedReader));
                        } else {
                            fastJsonResponse.zag(field, zau(bufferedReader, zam));
                        }
                        break;
                    case 2:
                        if (!field.zab) {
                            fastJsonResponse.zax(field, zan(bufferedReader));
                        } else {
                            fastJsonResponse.zay(field, zau(bufferedReader, zah));
                        }
                        break;
                    case 3:
                        if (!field.zab) {
                            fastJsonResponse.zaq(field, zak(bufferedReader));
                        } else {
                            fastJsonResponse.zas(field, zau(bufferedReader, zai));
                        }
                        break;
                    case 4:
                        if (!field.zab) {
                            fastJsonResponse.zam(field, zaj(bufferedReader));
                        } else {
                            fastJsonResponse.zao(field, zau(bufferedReader, zaj));
                        }
                        break;
                    case 5:
                        if (!field.zab) {
                            fastJsonResponse.zaa(field, zas(bufferedReader));
                        } else {
                            fastJsonResponse.zac(field, zau(bufferedReader, zan));
                        }
                        break;
                    case 6:
                        if (!field.zab) {
                            fastJsonResponse.zai(field, zay(bufferedReader, false));
                        } else {
                            fastJsonResponse.zaj(field, zau(bufferedReader, zak));
                        }
                        break;
                    case 7:
                        if (!field.zab) {
                            fastJsonResponse.zaA(field, zao(bufferedReader));
                        } else {
                            fastJsonResponse.zaC(field, zau(bufferedReader, zal));
                        }
                        break;
                    case 8:
                        fastJsonResponse.zal(field, Base64Utils.decode(zap(bufferedReader, this.zaq, this.zas, zaf)));
                        break;
                    case 9:
                        fastJsonResponse.zal(field, Base64Utils.decodeUrlSafe(zap(bufferedReader, this.zaq, this.zas, zaf)));
                        break;
                    case 10:
                        char cZai = zai(bufferedReader);
                        if (cZai != 'n') {
                            if (cZai != '{') {
                                throw new ParseException(NPStringFog.decode(new byte[]{38, 78, 66, 92, 0, 66, 6, 82, 18, 74, 23, 87, 17, 66, 18, 86, 5, 22, 2, 22, 95, 88, 19, 22, 12, 84, 88, 92, 0, 66}, "c629c6", false, true));
                            }
                            this.zat.push(1);
                            map = new HashMap();
                            while (true) {
                                switch (zai(bufferedReader)) {
                                    case 0:
                                        throw new ParseException(NPStringFog.decode(new byte[]{97, 87, 83, 75, 17, 82, 87, 77, 83, 87, 65, 114, 123, 127}, "4963a7", -1.5479269E9f));
                                    case '\"':
                                        String strZaA = zaA(bufferedReader, this.zap, this.zar, null);
                                        if (zai(bufferedReader) != ':') {
                                            throw new ParseException(NPStringFog.decode(new byte[]{44, 94, 20, 85, 86, 17, 66, 71, 85, 84, 66, 4, 66, 87, 91, 77, 89, 5, 66, 87, 91, 74, 23, 10, 7, 72, 20}, "b1487a", -9.72937249E8d).concat(String.valueOf(strZaA)));
                                        }
                                        if (zai(bufferedReader) != '\"') {
                                            throw new ParseException(NPStringFog.decode(new byte[]{36, 76, 21, 80, 86, 76, 4, 80, 69, 102, 65, 74, 8, 90, 2, 21, 67, 89, 13, 65, 0, 21, 83, 87, 19, 20, 14, 80, 76, 24}, "a4e558", 1.1609695E9f).concat(String.valueOf(strZaA)));
                                        }
                                        map.put(strZaA, zaA(bufferedReader, this.zap, this.zar, null));
                                        char cZai2 = zai(bufferedReader);
                                        if (cZai2 != ',') {
                                            if (cZai2 != '}') {
                                                throw new ParseException(NPStringFog.decode(new byte[]{51, 90, 4, 26, 65, 1, 5, 64, 4, 6, 17, 7, 14, 85, 19, 3, 82, 16, 3, 70, 65, 21, 89, 13, 10, 81, 65, 18, 80, 22, 21, 93, 15, 5, 17, 23, 18, 70, 8, 12, 86, 68, 11, 85, 17, 88, 17}, "f4ab1d", 1868851268L) + cZai2);
                                            }
                                            zaw(1);
                                        }
                                        break;
                                        break;
                                    case '}':
                                        zaw(1);
                                        break;
                                }
                            }
                        } else {
                            zax(bufferedReader, zaa);
                            map = null;
                        }
                        fastJsonResponse.zaB(field, map);
                        break;
                    case 11:
                        if (field.zab) {
                            char cZai3 = zai(bufferedReader);
                            if (cZai3 == 'n') {
                                zax(bufferedReader, zaa);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                            } else {
                                this.zat.push(5);
                                if (cZai3 != '[') {
                                    throw new ParseException(NPStringFog.decode(new byte[]{35, 30, 66, 84, 2, 77, 3, 2, 18, 80, 19, 75, 7, 31, 18, 66, 21, 88, 20, 18}, "ff21a9", 1427062138L));
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                            }
                        } else {
                            char cZai4 = zai(bufferedReader);
                            if (cZai4 == 'n') {
                                zax(bufferedReader, zaa);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                            } else {
                                this.zat.push(1);
                                if (cZai4 != '{') {
                                    throw new ParseException(NPStringFog.decode(new byte[]{118, 65, 70, 7, 86, 21, 86, 93, 22, 17, 65, 0, 65, 77, 22, 13, 83, 65, 92, 91, 92, 7, 86, 21}, "396b5a", -1971));
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZad = field.zad();
                                    zaz(bufferedReader, fastJsonResponseZad);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, fastJsonResponseZad);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException(NPStringFog.decode(new byte[]{118, 65, 64, 88, 75, 68, 90, 93, 65, 67, 88, 10, 71, 90, 83, 67, 80, 10, 84, 19, 91, 89, 87, 1, 65, 19, 93, 85, 83, 1, 80, 71}, "33279d", false), e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException(NPStringFog.decode(new byte[]{113, 75, 22, 12, 65, 22, 93, 87, 23, 23, 82, 88, 64, 80, 5, 23, 90, 88, 83, 25, 13, 13, 93, 83, 70, 25, 11, 1, 89, 83, 87, 77}, "49dc36", 2.0333356E9f), e2);
                                }
                            }
                        }
                        break;
                    default:
                        throw new ParseException(NPStringFog.decode(new byte[]{44, 13, 16, 3, 8, 10, 1, 67, 0, 11, 1, 15, 1, 67, 18, 27, 20, 6, 69}, "ecfbdc", 1544500644L) + i);
                }
                zaw(4);
                zaw(2);
                char cZai5 = zai(bufferedReader);
                switch (cZai5) {
                    case ',':
                        strZaq = zaq(bufferedReader);
                        break;
                    case '}':
                        strZaq = null;
                        break;
                    default:
                        throw new ParseException(NPStringFog.decode(new byte[]{124, 29, 65, 87, 81, 17, 92, 1, 17, 87, 92, 1, 25, 10, 87, 18, 93, 7, 83, 0, 82, 70, 18, 10, 75, 69, 87, 91, 87, 9, 93, 69, 66, 87, 66, 4, 75, 4, 69, 93, 64, 73, 25, 7, 68, 70, 18, 3, 86, 16, 95, 86, 8, 69}, "9e122e", 9.65260856E8d) + cZai5);
                }
            }
        }
        zaw(1);
        return true;
    }

    public void parse(InputStream inputStream, T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zat.push(0);
                char cZai = zai(bufferedReader);
                switch (cZai) {
                    case 0:
                        throw new ParseException(NPStringFog.decode(new byte[]{119, 89, 17, 81, 7, 16, 88, 22, 69, 90, 70, 20, 88, 68, 66, 80}, "9615fd", 2.8941051E8d));
                    case '[':
                        this.zat.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                        if (fieldMappings.size() != 1) {
                            throw new ParseException(NPStringFog.decode(new byte[]{120, 80, 82, 92, 81, 67, 23, 83, 74, 75, 83, 78, 23, 64, 93, 74, 66, 88, 89, 65, 93, 25, 81, 91, 86, 65, 75, 25, 95, 66, 68, 70, 24, 81, 83, 65, 82, 18, 89, 25, 65, 94, 89, 85, 84, 92, 18, 113, 94, 87, 84, 93}, "728927", true));
                        }
                        FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                        t.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                        break;
                        break;
                    case '{':
                        this.zat.push(1);
                        zaz(bufferedReader, t);
                        break;
                    default:
                        throw new ParseException(NPStringFog.decode(new byte[]{101, 12, 84, 77, 68, 3, 83, 22, 84, 81, 20, 18, 95, 9, 84, 91, 14, 70}, "0b154f", true, true) + cZai);
                }
                zaw(0);
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    Log.w(NPStringFog.decode(new byte[]{119, 86, 66, 18, 97, 0, 67, 68, 84, 20}, "171f1a", -9.224439E8f), NPStringFog.decode(new byte[]{113, 82, 92, 95, 3, 80, 23, 71, 90, 19, 5, 88, 88, 64, 80, 19, 20, 81, 86, 87, 80, 65, 70, 67, 95, 90, 89, 86, 70, 68, 86, 65, 70, 90, 8, 83, 25}, "7353f4", -13737));
                }
            } catch (IOException e2) {
                throw new ParseException(e2);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                Log.w(NPStringFog.decode(new byte[]{39, 80, 70, 23, 49, 3, 19, 66, 80, 17}, "a15cab", -3.567858E7f), NPStringFog.decode(new byte[]{35, 87, 88, 90, 82, 86, 69, 66, 94, 22, 84, 94, 10, 69, 84, 22, 69, 87, 4, 82, 84, 68, 23, 69, 13, 95, 93, 83, 23, 66, 4, 68, 66, 95, 89, 85, 75}, "e61672", true, true));
            }
            throw th;
        }
    }
}
