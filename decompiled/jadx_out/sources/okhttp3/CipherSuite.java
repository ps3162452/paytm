package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class CipherSuite {
    final String javaName;
    static final Comparator<String> ORDER_BY_NAME = new Comparator<String>() { // from class: okhttp3.CipherSuite.1
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            int iMin = Math.min(str.length(), str2.length());
            for (int i = 4; i < iMin; i++) {
                char cCharAt = str.charAt(i);
                char cCharAt2 = str2.charAt(i);
                if (cCharAt != cCharAt2) {
                    return cCharAt < cCharAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length >= length2 ? 1 : -1;
            }
            return 0;
        }
    };
    private static final Map<String, CipherSuite> INSTANCES = new TreeMap(ORDER_BY_NAME);
    public static final CipherSuite TLS_RSA_WITH_NULL_MD5 = of(NPStringFog.decode(new byte[]{98, 97, 117, 104, 54, 48, 112, 109, 110, 126, 48, 43, 110, 124, 108, 123, 40, 60, 124, 118, 12}, "1297dc", 1.3340584E9f), 1);
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{96, 106, 41, 106, 106, 103, 114, 102, 50, 124, 108, 124, 108, 119, 48, 121, 116, 107, 96, 113, 36}, "39e584", false, true), 2);
    public static final CipherSuite TLS_RSA_EXPORT_WITH_RC4_40_MD5 = of(NPStringFog.decode(new byte[]{50, 48, 127, 58, 52, 102, 32, 60, 118, 61, 54, 122, 51, 55, 108, 50, 47, 97, 41, 60, 97, 38, 82, 106, 85, 83, 108, 40, 34, 0}, "ac3ef5", false, true), 3);
    public static final CipherSuite TLS_RSA_WITH_RC4_128_MD5 = of(NPStringFog.decode(new byte[]{48, 49, 116, 111, 103, 107, 34, 61, 111, 121, 97, 112, 60, 48, 123, 4, 106, 9, 81, 90, 103, 125, 113, 13}, "cb8058", false), 4);
    public static final CipherSuite TLS_RSA_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{48, 98, 126, 103, 102, 49, 34, 110, 101, 113, 96, 42, 60, 99, 113, 12, 107, 83, 81, 9, 109, 107, 124, 35}, "c1284b", false), 5);
    public static final CipherSuite TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = of(NPStringFog.decode(new byte[]{48, 103, 124, 108, 101, 100, 34, 107, 117, 107, 103, 120, 49, 96, 111, 100, 126, 99, 43, 107, 116, 118, 100, 3, 83, 107, 115, 113, 116, 104, 48, 124, 113}, "c40377", -20443), 8);
    public static final CipherSuite TLS_RSA_WITH_DES_CBC_SHA = of(NPStringFog.decode(new byte[]{101, 50, 124, 61, 54, 96, 119, 62, 103, 43, 48, 123, 105, 37, 117, 49, 59, 112, 116, 34, 111, 49, 44, 114}, "6a0bd3", 1.806292832E9d), 9);
    public static final CipherSuite TLS_RSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{103, 48, 41, 103, 51, 54, 117, 60, 50, 113, 53, 45, 107, 80, 33, 125, 50, 58, 113, 39, 32, 103, 34, 39, 119, 60, 54, 112, 32}, "4ce8ae", true), 10);
    public static final CipherSuite TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 102, 126, 59, 39, 41, 39, 106, 118, 55, 48, 62, 39, 109, 98, 43, 49, 53, 61, 98, 123, 48, 43, 62, 38, 112, 97, 80, 83, 62, 33, 119, 113, 59, 48, 41, 35}, "b52dca", true), 17);
    public static final CipherSuite TLS_DHE_DSS_WITH_DES_CBC_SHA = of(NPStringFog.decode(new byte[]{101, 48, 125, 103, 113, 43, 115, 60, 117, 107, 102, 60, 97, 42, 101, 112, 106, 39, 115, 48, 110, 123, 119, 32, 105, 48, 121, 121}, "6c185c", -582193442L), 18);
    public static final CipherSuite TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{50, 50, 120, 109, 39, 124, 36, 62, 112, 97, 48, 107, 54, 40, 96, 122, 60, 7, 37, 36, 103, 109, 38, 112, 36, 62, 119, 112, 32, 107, 50, 41, 117}, "aa42c4", true), 19);
    public static final CipherSuite TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = of(NPStringFog.decode(new byte[]{54, 49, 127, 61, 113, 42, 32, 61, 97, 49, 116, 61, 32, 58, 99, 45, 103, 54, 58, 53, 122, 54, 125, 61, 33, 39, 96, 86, 5, 61, 38, 32, 112, 61, 102, 42, 36}, "eb3b5b", -8.897102E8f), 20);
    public static final CipherSuite TLS_DHE_RSA_WITH_DES_CBC_SHA = of(NPStringFog.decode(new byte[]{99, 98, 127, 58, 125, 112, 117, 110, 97, 54, 120, 103, 103, 120, 103, 45, 102, 124, 117, 98, 108, 38, 123, 123, 111, 98, 123, 36}, "013e98", false), 21);
    public static final CipherSuite TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{101, 48, 45, 104, 37, 112, 115, 60, 51, 100, 32, 103, 97, 42, 53, 127, 62, 11, 114, 38, 50, 104, 36, 124, 115, 60, 34, 117, 34, 103, 101, 43, 32}, "6ca7a8", -28862), 22);
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = of(NPStringFog.decode(new byte[]{97, 53, 40, 110, 114, 120, 109, 7, 10, 94, 88, 111, 119, 62, 52, 126, 100, 100, 109, 49, 45, 101, 126, 111, 96, 37, 80, 110, 2, 0, 109, 43, 32, 4}, "2fd160", true, true), 23);
    public static final CipherSuite TLS_DH_anon_WITH_RC4_128_MD5 = of(NPStringFog.decode(new byte[]{48, 100, 46, 105, 112, 45, 60, 86, 12, 89, 90, 58, 52, 126, 54, 126, 107, 55, 32, 3, 61, 7, 6, 93, 60, 122, 38, 3}, "c7b64e", 29126), 24);
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = of(NPStringFog.decode(new byte[]{102, 107, 117, 105, 37, 125, 106, 89, 87, 89, 15, 106, 112, 96, 105, 121, 51, 97, 106, 111, 112, 98, 41, 106, 113, 125, 106, 2, 81, 106, 118, 122, 122, 105, 50, 125, 116}, "5896a5", -18889), 25);
    public static final CipherSuite TLS_DH_anon_WITH_DES_CBC_SHA = of(NPStringFog.decode(new byte[]{53, 99, 42, 108, 117, 43, 57, 81, 8, 92, 95, 60, 49, 121, 50, 123, 110, 39, 35, 99, 57, 112, 115, 32, 57, 99, 46, 114}, "f0f31c", true), 26);
    public static final CipherSuite TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{106, 53, 45, 61, 116, 120, 102, 7, 15, 13, 94, 111, 110, 47, 53, 42, 111, 3, 125, 35, 50, 61, 117, 116, 124, 57, 34, 32, 115, 111, 106, 46, 32}, "9fab00", false), 27);
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_SHA = of(NPStringFog.decode(new byte[]{48, 47, 53, 106, 42, 48, 38, 86, 57, 98, 40, 54, 44, 60, 34, 112, 50, 61, 39, 33, 37, 106, 50, 42, 37}, "dcf5ab", 2.797486E8f), 30);
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{98, 41, 96, 111, 126, 103, 116, 80, 108, 103, 124, 97, 126, 58, 0, 116, 112, 102, 105, 32, 119, 117, 106, 118, 116, 38, 108, 99, 125, 116}, "6e3055", 890855799L), 31);
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{49, 123, 49, 108, 126, 102, 39, 2, 61, 100, 124, 96, 45, 104, 48, 112, 1, 107, 84, 5, 90, 108, 102, 124, 36}, "e7b354", -1.3241766E9f), 32);
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_MD5 = of(NPStringFog.decode(new byte[]{99, 41, 55, 60, 120, 102, 117, 80, 59, 52, 122, 96, 127, 58, 32, 38, 96, 107, 116, 39, 39, 60, 126, 112, 2}, "7edc34", false), 34);
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_MD5 = of(NPStringFog.decode(new byte[]{97, 121, 100, 58, 123, 99, 119, 0, 104, 50, 121, 101, 125, 106, 4, 33, 117, 98, 106, 112, 115, 32, 111, 114, 119, 118, 104, 40, 116, 4}, "557e01", -1.013511696E9d), 35);
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_MD5 = of(NPStringFog.decode(new byte[]{98, 125, 96, 106, 123, 98, 116, 4, 108, 98, 121, 100, 126, 110, 97, 118, 4, 111, 7, 3, 11, 106, 125, 116, 3}, "613500", -24603), 36);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA = of(NPStringFog.decode(new byte[]{98, 122, 98, 62, 40, 98, 116, 3, 110, 36, 59, 96, 121, 100, 101, 62, 52, 121, 98, 126, 110, 37, 38, 99, 105, 117, 115, 34, 60, 4, 6, 105, 98, 41, 34}, "661ac0", 1.6311108E9f), 38);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_SHA = of(NPStringFog.decode(new byte[]{54, 116, 98, 57, 125, 48, 32, 13, 110, 35, 110, 50, 45, 106, 101, 57, 97, 43, 54, 112, 110, 52, 117, 86, 61, 12, 1, 57, 101, 42, 35}, "b81f6b", true, true), 40);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5 = of(NPStringFog.decode(new byte[]{97, 40, 100, 105, 47, 101, 119, 81, 104, 115, 60, 103, 122, 54, 99, 105, 51, 126, 97, 44, 104, 114, 33, 100, 106, 39, 117, 117, 59, 3, 5, 59, 122, 114, 81}, "5d76d7", -1.526336694E9d), 41);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_MD5 = of(NPStringFog.decode(new byte[]{98, 120, 48, 59, 42, 48, 116, 1, 60, 33, 57, 50, 121, 102, 55, 59, 54, 43, 98, 124, 60, 54, 34, 86, 105, 0, 83, 59, 44, 38, 3}, "64cdab", 1.464536004E9d), 43);
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 125, 54, 58, 106, 107, 36, 110, 50, 44, 108, 112, 58, 112, 32, 54, 103, 9, 87, 9, 58, 38, 122, 123, 58, 98, 45, 36}, "e1ee88", -7.617286E8f), 47);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{96, 125, 107, 103, 124, 124, 113, 110, 124, 107, 107, 107, 99, 120, 108, 112, 103, 117, 113, 98, 103, 9, 10, 12, 107, 114, 122, 123, 103, 103, 124, 112}, "418884", 1516677635L), 50);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{55, 120, 101, 108, 118, 126, 38, 107, 100, 96, 115, 105, 52, 125, 98, 123, 109, 119, 38, 103, 105, 2, 0, 14, 60, 119, 116, 112, 109, 101, 43, 117}, "c46326", true, true), 51);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{50, 117, 53, 102, 38, 41, 57, 88, 8, 86, 12, 62, 49, 112, 50, 113, 61, 32, 35, 106, 57, 8, 80, 89, 57, 122, 36, 122, 61, 50, 46, 120}, "f9f9ba", false, false), 52);
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{103, 121, 53, 62, 107, 53, 114, 106, 49, 40, 109, 46, 108, 116, 35, 50, 102, 84, 6, 3, 57, 34, 123, 37, 108, 102, 46, 32}, "35fa9f", false, false), 53);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{50, 45, 101, 104, 38, 127, 35, 62, 114, 100, 49, 104, 49, 40, 98, 127, 61, 118, 35, 50, 105, 5, 87, 1, 57, 34, 116, 116, 61, 100, 46, 32}, "fa67b7", 8855), 56);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{102, 47, 53, 106, 124, 126, 119, 60, 52, 102, 121, 105, 101, 42, 50, 125, 103, 119, 119, 48, 57, 7, 13, 0, 109, 32, 36, 118, 103, 101, 122, 34}, "2cf586", 3.7928109E7d), 57);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{108, 116, 54, 110, 116, 122, 103, 89, 11, 94, 94, 109, 111, 113, 49, 121, 111, 115, 125, 107, 58, 3, 5, 4, 103, 123, 39, 114, 111, 97, 112, 121}, "88e102", true), 58);
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA256 = of(NPStringFog.decode(new byte[]{103, 120, 106, 104, 54, 99, 114, 107, 110, 126, 48, 120, 108, 122, 108, 123, 40, 111, 96, 124, 120, 5, 81, 6}, "3497d0", -6.96821145E8d), 59);
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{109, 47, 54, 61, 54, 103, 120, 60, 50, 43, 48, 124, 102, 34, 32, 49, 59, 5, 11, 91, 58, 33, 38, 119, 102, 48, 45, 35, 86, 1, 15}, "9cebd4", 24515), 60);
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA256 = of(NPStringFog.decode(new byte[]{53, 121, 48, 61, 102, 97, 32, 106, 52, 43, 96, 122, 62, 116, 38, 49, 107, 0, 84, 3, 60, 33, 118, 113, 62, 102, 43, 35, 6, 7, 87}, "a5cb42", 5.61129804E8d), 61);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{98, 122, 98, 109, 32, 44, 115, 105, 117, 97, 55, 59, 97, 127, 101, 122, 59, 37, 115, 101, 110, 3, 86, 92, 105, 117, 115, 113, 59, 55, 126, 119, 3, 7, 82}, "6612dd", 947565924L), 64);
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_128_CBC_SHA = of(NPStringFog.decode(new byte[]{48, 45, 98, 102, 99, 106, 37, 62, 102, 112, 101, 113, 59, 34, 112, 116, 116, 117, 40, 40, 112, 102, 0, 11, 92, 62, 114, 123, 114, 102, 55, 41, 112}, "da1919", -1.494732891E9d), 65);
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 40, 48, 62, 117, 123, 32, 59, 39, 50, 98, 108, 50, 45, 55, 41, 110, 112, 36, 41, 38, 45, 125, 122, 36, 59, 82, 83, 9, 108, 38, 38, 32, 62, 98, 123, 36}, "edca13", 1.170857843E9d), 68);
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA = of(NPStringFog.decode(new byte[]{108, 42, 55, 105, 124, 46, 125, 57, 54, 101, 121, 57, 111, 47, 48, 126, 103, 37, 121, 43, 33, 122, 116, 47, 121, 57, 85, 4, 0, 57, 123, 36, 39, 105, 107, 46, 121}, "8fd68f", false, false), 69);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{103, 41, 103, 106, 37, 46, 118, 58, 102, 102, 32, 57, 100, 44, 96, 125, 62, 39, 118, 54, 107, 4, 83, 94, 108, 38, 118, 118, 62, 53, 123, 36, 6, 0, 87}, "3e45af", -28810), 103);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = of(NPStringFog.decode(new byte[]{97, 41, 97, 111, 32, 124, 112, 58, 118, 99, 55, 107, 98, 44, 102, 120, 59, 117, 112, 54, 109, 2, 81, 2, 106, 38, 112, 115, 59, 103, 125, 36, 0, 5, 82}, "5e20d4", true), 106);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = of(NPStringFog.decode(new byte[]{103, 120, 106, 102, 125, 46, 118, 107, 107, 106, 120, 57, 100, 125, 109, 113, 102, 39, 118, 103, 102, 11, 12, 80, 108, 119, 123, 122, 102, 53, 123, 117, 11, 12, 15}, "34999f", true), 107);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{54, 123, 103, 108, 114, 121, 61, 86, 90, 92, 88, 110, 53, 126, 96, 123, 105, 112, 39, 100, 107, 2, 4, 9, 61, 116, 118, 112, 105, 98, 42, 118, 6, 6, 0}, "b74361", false, true), 108);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA256 = of(NPStringFog.decode(new byte[]{103, 47, 101, 59, 112, 43, 108, 2, 88, 11, 90, 60, 100, 42, 98, 44, 107, 34, 118, 48, 105, 86, 1, 85, 108, 32, 116, 39, 107, 48, 123, 34, 4, 81, 2}, "3c6d4c", 29449), 109);
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_256_CBC_SHA = of(NPStringFog.decode(new byte[]{99, 41, 98, 62, 99, 50, 118, 58, 102, 40, 101, 41, 104, 38, 112, 44, 116, 45, 123, 44, 112, 62, 3, 84, 1, 58, 114, 35, 114, 62, 100, 45, 112}, "7e1a1a", 1634994958L), 132);
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA = of(NPStringFog.decode(new byte[]{108, 121, 54, 107, 112, 44, 125, 106, 33, 103, 103, 59, 111, 124, 49, 124, 107, 39, 121, 120, 32, 120, 120, 45, 121, 106, 87, 1, 2, 59, 123, 119, 38, 107, 103, 44, 121}, "85e44d", -5898), 135);
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA = of(NPStringFog.decode(new byte[]{50, 120, 101, 62, 113, 41, 35, 107, 100, 50, 116, 62, 49, 125, 98, 41, 106, 34, 39, 121, 115, 45, 121, 40, 39, 107, 4, 84, 3, 62, 37, 118, 117, 62, 102, 41, 39}, "f46a5a", -4.8463082E8f), 136);
    public static final CipherSuite TLS_PSK_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{100, 42, 50, 102, 50, 97, 123, 57, 54, 112, 54, 122, 111, 52, 34, 13, 61, 3, 2, 94, 62, 106, 42, 115}, "0fa9b2", -7.7290032E7d), 138);
    public static final CipherSuite TLS_PSK_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{101, 116, 102, 110, 50, 103, 122, 103, 98, 120, 54, 124, 110, 11, 113, 116, 49, 107, 116, 124, 112, 110, 33, 118, 114, 103, 102, 121, 35}, "1851b4", -19737102L), 139);
    public static final CipherSuite TLS_PSK_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{109, 121, 98, 57, 99, 102, 114, 106, 102, 47, 103, 125, 102, 116, 116, 53, 108, 4, 11, 13, 110, 37, 113, 118, 102, 102, 121, 39}, "951f35", false, true), 140);
    public static final CipherSuite TLS_PSK_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{53, 45, 53, 104, 49, 96, 42, 62, 49, 126, 53, 123, 62, 32, 35, 100, 62, 1, 84, 87, 57, 116, 35, 112, 62, 50, 46, 118}, "aaf7a3", true), 141);
    public static final CipherSuite TLS_RSA_WITH_SEED_CBC_SHA = of(NPStringFog.decode(new byte[]{98, 46, 97, 104, 54, 101, 119, 61, 101, 126, 48, 126, 105, 49, 119, 114, 32, 105, 117, 32, 113, 104, 55, 126, 119}, "6b27d6", 1.0549245E9f), 150);
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{100, 116, 96, 59, 99, 107, 113, 103, 100, 45, 101, 112, 111, 121, 118, 55, 110, 9, 2, 0, 108, 35, 114, 117, 111, 107, 123, 37, 3, 13, 6}, "083d18", 3.6995872E8f), 156);
    public static final CipherSuite TLS_RSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{103, 124, 54, 109, 51, 53, 114, 111, 50, 123, 53, 46, 108, 113, 32, 97, 62, 84, 6, 6, 58, 117, 34, 43, 108, 99, 45, 115, 82, 94, 7}, "30e2af", -2.9818662E8d), 157);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{54, 125, 55, 106, 33, 123, 39, 110, 54, 102, 36, 108, 53, 120, 48, 125, 58, 114, 39, 98, 59, 4, 87, 11, 61, 118, 39, 120, 58, 96, 42, 112, 86, 0, 83}, "b1d5e3", false), 158);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{109, 124, 48, 106, 116, 44, 124, 111, 49, 102, 113, 59, 110, 121, 55, 125, 111, 37, 124, 99, 60, 7, 5, 82, 102, 119, 32, 120, 111, 55, 113, 113, 80, 13, 4}, "90c50d", -3.5896961E7d), 159);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{96, 125, 50, 103, 118, 45, 113, 110, 37, 107, 97, 58, 99, 120, 53, 112, 109, 36, 113, 98, 62, 9, 0, 93, 107, 118, 34, 117, 109, 54, 124, 112, 83, 13, 4}, "41a82e", false), 162);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{99, 40, 48, 102, 124, 121, 114, 59, 39, 106, 107, 110, 96, 45, 55, 113, 103, 112, 114, 55, 60, 11, 13, 7, 104, 35, 32, 116, 103, 98, 127, 37, 80, 1, 12}, "7dc981", true), 163);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{53, 126, 107, 59, 113, 45, 62, 83, 86, 11, 91, 58, 54, 123, 108, 44, 106, 36, 36, 97, 103, 85, 7, 93, 62, 117, 123, 41, 106, 54, 41, 115, 10, 81, 3}, "a28d5e", true, true), 166);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{97, 46, 99, 102, 115, 125, 106, 3, 94, 86, 89, 106, 98, 43, 100, 113, 104, 116, 112, 49, 111, 11, 2, 3, 106, 37, 115, 116, 104, 102, 125, 35, 3, 1, 3}, "5b0975", 8.42528984E8d), 167);
    public static final CipherSuite TLS_EMPTY_RENEGOTIATION_INFO_SCSV = of(NPStringFog.decode(new byte[]{100, 46, 49, 108, 39, 126, 96, 54, 59, 108, 48, 118, 126, 39, 37, 124, 54, 122, 113, 54, 43, 124, 44, 108, 121, 44, 36, 124, 61, 96, 115, 49, 52}, "0bb3b3", -2.6131922E8f), 255);
    public static final CipherSuite TLS_FALLBACK_SCSV = of(NPStringFog.decode(new byte[]{101, 120, 106, 109, 117, 37, 125, 120, 123, 115, 112, 47, 110, 103, 122, 97, 101}, "14923d", 1.074345095E9d), 22016);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{108, 126, 99, 102, 35, 32, 124, 122, 111, 124, 37, 39, 107, 115, 111, 110, 47, 55, 112, 109, 126, 108, 42, 47, 103, 97, 120, 120}, "8209fc", -4.2120154E8f), 49153);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{99, 40, 50, 110, 119, 112, 115, 44, 62, 116, 113, 119, 100, 37, 62, 102, 123, 103, 127, 59, 51, 114, 6, 108, 6, 86, 89, 110, 97, 123, 118}, "7da123", 1.787897047E9d), 49154);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{97, 124, 102, 105, 113, 39, 113, 120, 106, 115, 119, 32, 102, 113, 106, 97, 125, 48, 125, 111, 6, 114, 113, 55, 106, 117, 113, 115, 107, 39, 119, 115, 106, 101, 124, 37}, "50564d", true), 49155);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{103, 121, 107, 110, 112, 112, 119, 125, 103, 116, 118, 119, 96, 116, 103, 102, 124, 103, 123, 106, 121, 116, 102, 108, 2, 7, 0, 110, 118, 113, 112, 106, 107, 121, 116}, "358153", false), 49156);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 127, 101, 103, 124, 37, 33, 123, 105, 125, 122, 34, 54, 114, 105, 111, 112, 50, 45, 108, 119, 125, 106, 57, 87, 6, 0, 103, 122, 36, 38, 108, 101, 112, 120}, "e3689f", 28270), 49157);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{100, 121, 103, 103, 113, 33, 116, 125, 113, 103, 113, 33, 116, 102, 117, 103, 99, 43, 100, 125, 107, 118, 97, 46, 124, 106, 103, 112, 117}, "05484b", 30634), 49158);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{108, 121, 100, 58, 117, 122, 124, 125, 114, 58, 117, 122, 124, 102, 118, 58, 103, 112, 108, 125, 104, 55, 115, 13, 103, 4, 5, 93, 111, 106, 112, 116}, "857e09", 528966018L), 49159);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 42, 99, 105, 112, 112, 33, 46, 117, 105, 112, 112, 33, 53, 113, 105, 98, 122, 49, 46, 111, 5, 113, 118, 54, 57, 117, 114, 112, 108, 38, 36, 115, 105, 102, 123, 36}, "ef0653", 7.96979482E8d), 49160);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{54, 122, 100, 104, 117, 119, 38, 126, 114, 104, 117, 119, 38, 101, 118, 104, 103, 125, 54, 126, 104, 118, 117, 103, 61, 7, 5, 15, 111, 119, 32, 117, 104, 100, 120, 117}, "b67704", -824960342L), 49161);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{109, 121, 49, 107, 124, 33, 125, 125, 39, 107, 124, 33, 125, 102, 35, 107, 110, 43, 109, 125, 61, 117, 124, 49, 102, 7, 87, 2, 102, 33, 123, 118, 61, 103, 113, 35}, "95b49b", 1.085605215E9d), 49162);
    public static final CipherSuite TLS_ECDH_RSA_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{102, 125, 48, 57, 115, 114, 118, 121, 60, 52, 101, 112, 109, 102, 42, 50, 126, 110, 124, 100, 47, 42, 105, 98, 122, 112}, "21cf61", false), 49163);
    public static final CipherSuite TLS_ECDH_RSA_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{109, 123, 48, 57, 32, 118, 125, 127, 60, 52, 54, 116, 102, 96, 42, 50, 45, 106, 107, 116, 87, 57, 84, 7, 1, 104, 48, 46, 36}, "97cfe5", 8.25058362E8d), 49164);
    public static final CipherSuite TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{101, 120, 103, 111, 33, 116, 117, 124, 107, 98, 55, 118, 110, 99, 125, 100, 44, 104, 2, 112, 113, 99, 59, 114, 117, 113, 107, 115, 38, 116, 110, 103, 124, 113}, "1440d7", -7696), 49165);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{108, 40, 54, 111, 33, 117, 124, 44, 58, 98, 55, 119, 103, 51, 44, 100, 44, 105, 121, 33, 54, 111, 85, 4, 0, 59, 38, 114, 39, 105, 107, 44, 36}, "8de0d6", false, false), 49166);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{108, 120, 53, 110, 124, 123, 124, 124, 57, 99, 106, 121, 103, 99, 47, 101, 113, 103, 121, 113, 53, 110, 11, 13, 14, 107, 37, 115, 122, 103, 107, 124, 39}, "84f198", 1.9655646E9d), 49167);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{96, 122, 102, 109, 38, 112, 112, 126, 112, 109, 49, 96, 117, 105, 98, 123, 55, 123, 107, 120, 96, 126, 47, 108, 103, 126, 116}, "4652c3", true, false), 49168);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{49, 46, 106, 110, 125, 33, 33, 42, 124, 110, 106, 49, 36, 61, 110, 120, 108, 42, 58, 48, 122, 5, 103, 83, 87, 90, 102, 98, 112, 35}, "eb918b", -7.631134E8f), 49169);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{48, 42, 106, 108, 36, 123, 32, 46, 124, 108, 51, 107, 37, 57, 110, 122, 53, 112, 59, 85, 125, 118, 50, 103, 33, 34, 124, 108, 34, 122, 39, 57, 106, 123, 32}, "df93a8", false, true), 49170);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{98, 127, 50, 110, 118, 118, 114, 123, 36, 110, 97, 102, 119, 108, 54, 120, 103, 125, 105, 114, 36, 98, 108, 4, 4, 11, 62, 114, 113, 118, 105, 96, 41, 112}, "63a135", 1.8933878E9f), 49171);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{103, 123, 97, 62, 124, 123, 119, 127, 119, 62, 107, 107, 114, 104, 101, 40, 109, 112, 108, 118, 119, 50, 102, 10, 6, 1, 109, 34, 123, 123, 108, 100, 122, 32}, "372a98", 2043037272L), 49172);
    public static final CipherSuite TLS_ECDH_anon_WITH_NULL_SHA = of(NPStringFog.decode(new byte[]{50, 125, 99, 111, 36, 39, 34, 121, 111, 81, 15, 11, 8, 110, 103, 121, 53, 44, 57, 127, 101, 124, 45, 59, 53, 121, 113}, "f100ad", -6.02209386E8d), 49173);
    public static final CipherSuite TLS_ECDH_anon_WITH_RC4_128_SHA = of(NPStringFog.decode(new byte[]{53, 117, 100, 108, 114, 118, 37, 113, 104, 82, 89, 90, 15, 102, 96, 122, 99, 125, 62, 107, 116, 7, 104, 4, 83, 1, 104, 96, 127, 116}, "a97375", 6.8995066E7d), 49174);
    public static final CipherSuite TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = of(NPStringFog.decode(new byte[]{109, 41, 106, 105, 32, 116, 125, 45, 102, 87, 11, 88, 87, 58, 110, 127, 49, 127, 102, 86, 125, 115, 54, 104, 124, 33, 124, 105, 38, 117, 122, 58, 106, 126, 36}, "9e96e7", -1.452692148E9d), 49175);
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{49, 126, 98, 57, 114, 115, 33, 122, 110, 7, 89, 95, 11, 109, 102, 47, 99, 120, 58, 115, 116, 53, 104, 1, 87, 10, 110, 37, 117, 115, 58, 97, 121, 39}, "e21f70", -15464), 49176);
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{97, 120, 107, 110, 112, 32, 113, 124, 103, 80, 91, 12, 91, 107, 111, 120, 97, 43, 106, 117, 125, 98, 106, 81, 0, 2, 103, 114, 119, 32, 106, 103, 112, 112}, "54815c", -5.11254061E8d), 49177);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{50, 116, 98, 58, 38, 116, 34, 112, 116, 58, 38, 116, 34, 107, 112, 58, 52, 126, 50, 112, 110, 36, 38, 100, 57, 9, 3, 93, 60, 116, 36, 123, 110, 54, 43, 118, 84, 13, 7}, "f81ec7", false), 49187);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = of(NPStringFog.decode(new byte[]{53, 117, 101, 105, 114, 112, 37, 113, 115, 105, 114, 112, 37, 106, 119, 105, 96, 122, 53, 113, 105, 119, 114, 96, 62, 11, 3, 0, 104, 112, 35, 122, 105, 101, 127, 114, 82, 1, 2}, "a96673", -9.29216941E8d), 49188);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{102, 120, 106, 106, 33, 33, 118, 124, 102, 112, 39, 38, 97, 117, 102, 98, 45, 54, 122, 107, 120, 112, 55, 61, 3, 6, 1, 106, 39, 32, 113, 107, 106, 125, 37, 80, 7, 2}, "2495db", false), 49189);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = of(NPStringFog.decode(new byte[]{97, 127, 100, 106, 125, 39, 113, 123, 104, 112, 123, 32, 102, 114, 104, 98, 113, 48, 125, 108, 118, 112, 107, 59, 7, 6, 1, 106, 123, 38, 118, 108, 100, 125, 121, 87, 13, 7}, "53758d", -19401), 49190);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{96, 127, 97, 59, 114, 34, 112, 123, 119, 59, 101, 50, 117, 108, 101, 45, 99, 41, 107, 114, 119, 55, 104, 80, 6, 11, 109, 39, 117, 34, 107, 96, 122, 37, 5, 84, 2}, "432d7a", 6587), 49191);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = of(NPStringFog.decode(new byte[]{96, 47, 107, 103, 38, 37, 112, 43, 125, 103, 49, 53, 117, 60, 111, 113, 55, 46, 107, 34, 125, 107, 60, 84, 1, 85, 103, 123, 33, 37, 107, 48, 112, 121, 80, 94, 0}, "4c88cf", -7.84515419E8d), 49192);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = of(NPStringFog.decode(new byte[]{102, 40, 101, 109, 32, 116, 118, 44, 105, 96, 54, 118, 109, 51, 127, 102, 45, 104, 115, 33, 101, 109, 84, 5, 10, 59, 117, 112, 38, 104, 97, 44, 119, 0, 80, 1}, "2d62e7", 1.426089566E9d), 49193);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = of(NPStringFog.decode(new byte[]{54, 116, 102, 105, 113, 39, 38, 112, 106, 100, 103, 37, 61, 111, 124, 98, 124, 59, 35, 125, 102, 105, 6, 81, 84, 103, 118, 116, 119, 59, 49, 112, 116, 5, 12, 80}, "b8564d", -44759481L), 49194);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{108, 117, 107, 110, 32, 118, 124, 113, 125, 110, 32, 118, 124, 106, 121, 110, 50, 124, 108, 113, 103, 112, 32, 102, 103, 8, 10, 9, 58, 114, 123, 116, 103, 98, 45, 116, 10, 12, 14}, "8981e5", false, false), 49195);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{109, 124, 97, 57, 32, 112, 125, 120, 119, 57, 32, 112, 125, 99, 115, 57, 50, 122, 109, 120, 109, 39, 32, 96, 102, 2, 7, 80, 58, 116, 122, 125, 109, 53, 45, 114, 10, 8, 6}, "902fe3", -397637437L), 49196);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{100, 125, 107, 109, 33, 117, 116, 121, 103, 119, 39, 114, 99, 112, 103, 101, 45, 98, 120, 110, 121, 119, 55, 105, 1, 3, 0, 109, 35, 117, 125, 110, 107, 122, 37, 4, 5, 7}, "0182d6", -9.605285E7f), 49197);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{109, 124, 96, 107, 112, 33, 125, 120, 108, 113, 118, 38, 106, 113, 108, 99, 124, 54, 113, 111, 114, 113, 102, 61, 11, 5, 5, 107, 114, 33, 116, 111, 96, 124, 116, 81, 1, 4}, "90345b", false), 49198);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{103, 47, 103, 104, 117, 112, 119, 43, 113, 104, 98, 96, 114, 60, 99, 126, 100, 123, 108, 34, 113, 100, 111, 2, 1, 91, 107, 112, 115, 126, 108, 48, 124, 118, 2, 6, 5}, "3c4703", -1.9487995E9f), 49199);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{54, 122, 98, 58, 119, 33, 38, 126, 116, 58, 96, 49, 35, 105, 102, 44, 102, 42, 61, 119, 116, 54, 109, 80, 87, 0, 110, 34, 113, 47, 61, 101, 121, 36, 1, 90, 86}, "b61e2b", true), 49200);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = of(NPStringFog.decode(new byte[]{103, 123, 98, 58, 33, 123, 119, 127, 110, 55, 55, 121, 108, 96, 120, 49, 44, 103, 114, 114, 98, 58, 85, 10, 11, 104, 118, 38, 41, 103, 96, 127, 112, 87, 81, 14}, "371ed8", true, true), 49201);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = of(NPStringFog.decode(new byte[]{100, 122, 99, 105, 32, 115, 116, 126, 111, 100, 54, 113, 111, 97, 121, 98, 45, 111, 113, 115, 99, 105, 87, 5, 6, 105, 119, 117, 40, 111, 99, 126, 113, 5, 93, 4}, "0606e0", false), 49202);
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA = of(NPStringFog.decode(new byte[]{103, 40, 50, 59, 124, 115, 119, 44, 36, 59, 105, 99, 120, 59, 54, 45, 109, 120, 108, 37, 36, 55, 102, 1, 1, 92, 62, 39, 123, 115, 108, 55, 41, 37}, "3dad90", false), 49205);
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA = of(NPStringFog.decode(new byte[]{96, 46, 97, 60, 33, 115, 112, 42, 119, 60, 52, 99, 127, 61, 101, 42, 48, 120, 107, 35, 119, 48, 59, 2, 1, 84, 109, 32, 38, 115, 107, 49, 122, 34}, "4b2cd0", -2.2972192E7f), 49206);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = of(NPStringFog.decode(new byte[]{54, 122, 54, 106, 115, 37, 38, 126, 32, 106, 100, 53, 35, 105, 50, 124, 98, 46, 61, 117, 45, 116, 117, 46, 35, 4, 85, 106, 102, 41, 46, 111, 84, 6, 6, 83, 61, 101, 45, 116, 4, 83, 84}, "b6e56f", false), 52392);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = of(NPStringFog.decode(new byte[]{49, 45, 106, 60, 116, 39, 33, 41, 124, 60, 116, 39, 33, 50, 120, 60, 102, 45, 49, 41, 102, 32, 121, 37, 38, 41, 120, 81, 1, 59, 53, 46, 117, 58, 0, 87, 85, 84, 102, 48, 121, 37, 87, 84, 15}, "ea9c1d", -168516339L), 52393);

    private CipherSuite(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.javaName = str;
    }

    public static CipherSuite forJavaName(String str) {
        CipherSuite cipherSuite;
        synchronized (CipherSuite.class) {
            try {
                cipherSuite = INSTANCES.get(str);
                if (cipherSuite == null) {
                    cipherSuite = new CipherSuite(str);
                    INSTANCES.put(str, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipherSuite;
    }

    static List<CipherSuite> forJavaNames(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(forJavaName(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static CipherSuite of(String str, int i) {
        return forJavaName(str);
    }

    public String javaName() {
        return this.javaName;
    }

    public String toString() {
        return this.javaName;
    }
}
