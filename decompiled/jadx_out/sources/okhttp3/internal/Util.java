package okhttp3.internal;

import androidx.core.location.LocationRequestCompat;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import n.NPStringFog;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final ResponseBody EMPTY_RESPONSE = ResponseBody.create((MediaType) null, EMPTY_BYTE_ARRAY);
    public static final RequestBody EMPTY_REQUEST = RequestBody.create((MediaType) null, EMPTY_BYTE_ARRAY);
    private static final ByteString UTF_8_BOM = ByteString.decodeHex(NPStringFog.decode(new byte[]{92, 2, 91, 87, 3, 81}, "9d95a7", -7.12203E8f));
    private static final ByteString UTF_16_BE_BOM = ByteString.decodeHex(NPStringFog.decode(new byte[]{0, 0, 87, 4}, "fe1b61", true));
    private static final ByteString UTF_16_LE_BOM = ByteString.decodeHex(NPStringFog.decode(new byte[]{80, 80, 7, 0}, "66ae2e", true, true));
    private static final ByteString UTF_32_BE_BOM = ByteString.decodeHex(NPStringFog.decode(new byte[]{1, 84, 86, 83, 4, 5, 87, 2}, "1dfcbc", -602));
    private static final ByteString UTF_32_LE_BOM = ByteString.decodeHex(NPStringFog.decode(new byte[]{86, 3, 84, 95, 86, 2, 0, 85}, "0e29f2", 1.039891666E9d));
    public static final Charset UTF_8 = Charset.forName(NPStringFog.decode(new byte[]{54, 109, 36, 25, 15}, "c9b47a", true, false));
    public static final Charset ISO_8859_1 = Charset.forName(NPStringFog.decode(new byte[]{112, 96, 45, 20, 93, 13, 12, 10, 79, 8}, "93b9e5", -1.023013157E9d));
    private static final Charset UTF_16_BE = Charset.forName(NPStringFog.decode(new byte[]{96, 99, 32, 75, 1, 15, 119, 114}, "57ff09", -315848159L));
    private static final Charset UTF_16_LE = Charset.forName(NPStringFog.decode(new byte[]{52, 98, 116, 76, 3, 82, 45, 115}, "a62a2d", 1031949819L));
    private static final Charset UTF_32_BE = Charset.forName(NPStringFog.decode(new byte[]{100, 109, 118, 24, 11, 0, 115, 124}, "190582", -1.6008906E9f));
    private static final Charset UTF_32_LE = Charset.forName(NPStringFog.decode(new byte[]{52, 97, 119, 29, 7, 83, 45, 112}, "a5104a", false));
    public static final TimeZone UTC = TimeZone.getTimeZone(NPStringFog.decode(new byte[]{33, 127, 103}, "f23e9a", true));
    public static final Comparator<String> NATURAL_ORDER = new Comparator<String>() { // from class: okhttp3.internal.Util.1
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };
    private static final Pattern VERIFY_AS_IP_ADDRESS = Pattern.compile(NPStringFog.decode(new byte[]{31, 99, 83, 21, 88, 80, 26, 94, 34, 21, 39, 108, 29, 2, 56, 8, 76, 8, 86, 21, 5, 121, 76, 119, 13, 22, 62, 18, 72, 77, 31, 99, 63, 92, 79, 108, 28, 17}, "78c8a1", true, true));

    private Util() {
    }

    public static AssertionError assertionError(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    public static Charset bomAwareCharset(BufferedSource bufferedSource, Charset charset) throws IOException {
        if (bufferedSource.rangeEquals(0L, UTF_8_BOM)) {
            bufferedSource.skip(UTF_8_BOM.size());
            return UTF_8;
        }
        if (bufferedSource.rangeEquals(0L, UTF_16_BE_BOM)) {
            bufferedSource.skip(UTF_16_BE_BOM.size());
            return UTF_16_BE;
        }
        if (bufferedSource.rangeEquals(0L, UTF_16_LE_BOM)) {
            bufferedSource.skip(UTF_16_LE_BOM.size());
            return UTF_16_LE;
        }
        if (bufferedSource.rangeEquals(0L, UTF_32_BE_BOM)) {
            bufferedSource.skip(UTF_32_BE_BOM.size());
            return UTF_32_BE;
        }
        if (!bufferedSource.rangeEquals(0L, UTF_32_LE_BOM)) {
            return charset;
        }
        bufferedSource.skip(UTF_32_LE_BOM.size());
        return UTF_32_LE;
    }

    public static String canonicalizeHost(String str) {
        if (str.contains(NPStringFog.decode(new byte[]{11}, "15f576", false, true))) {
            InetAddress inetAddressDecodeIpv6 = (str.startsWith(NPStringFog.decode(new byte[]{99}, "80f358", true)) && str.endsWith(NPStringFog.decode(new byte[]{105}, "4d7ae0", false, false))) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
            if (inetAddressDecodeIpv6 == null) {
                return null;
            }
            byte[] address = inetAddressDecodeIpv6.getAddress();
            if (address.length == 16) {
                return inet6AddressToAscii(address);
            }
            throw new AssertionError(NPStringFog.decode(new byte[]{127, 86, 18, 81, 8, 8, 82, 24, 45, 96, 18, 87, 22, 89, 0, 84, 22, 4, 69, 75, 94, 16, 67}, "68d0da", true) + str + NPStringFog.decode(new byte[]{17}, "698163", 1217878561L));
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static int checkDuration(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{20, 8, 23, 3}, "4473a4", -2.0989448E9f));
        }
        if (timeUnit == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{65, 10, 93, 66, 24, 4, 9, 68, 90, 67, 84, 85}, "4d4689", -6.7393325E8f));
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{16, 23, 94, 95, 69, 92, 81, 17, 86, 85, 75}, "0c10e0", -31356));
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + NPStringFog.decode(new byte[]{70, 77, 86, 95, 20, 65, 11, 88, 85, 92, 26}, "f99042", -1.486722607E9d));
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!isAndroidGetsocknameError(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static String[] concat(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    private static boolean containsInvalidHostnameAsciiCodes(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 31) {
                if (cCharAt >= 127) {
                    return true;
                }
                if (NPStringFog.decode(new byte[]{16, 64, 21, 77, 12, 90, 112, 56, 108, 63}, "0c0b6e", 6.723164E8f).indexOf(cCharAt) == -1) {
                }
            }
            return true;
        }
        return false;
    }

    public static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 'a') + 10;
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return (c - 'A') + 10;
    }

    private static boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i;
        int i5 = i3;
        while (i4 < i2) {
            if (i5 == bArr.length) {
                return false;
            }
            if (i5 != i3) {
                if (str.charAt(i4) != '.') {
                    return false;
                }
                i4++;
            }
            int i6 = 0;
            int i7 = i4;
            while (i7 < i2) {
                char cCharAt = str.charAt(i7);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i6 == 0 && i4 != i7) || ((i6 * 10) + cCharAt) - 48 > 255) {
                    return false;
                }
                i7++;
            }
            if (i7 - i4 == 0) {
                return false;
            }
            bArr[i5] = (byte) i6;
            i5++;
            i4 = i7;
        }
        return i5 == i3 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        if (r1 == r5.length) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        if (r0 != (-1)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b9, code lost:
    
        java.lang.System.arraycopy(r5, r0, r5, r5.length - (r1 - r0), r1 - r0);
        java.util.Arrays.fill(r5, r0, (r5.length - r1) + r0, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d6, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:?, code lost:
    
        return java.net.InetAddress.getByAddress(r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress decodeIpv6(java.lang.String r10, int r11, int r12) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }

    public static int delimiterOffset(String str, int i, int i2, char c) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == c) {
                return i3;
            }
        }
        return i2;
    }

    public static int delimiterOffset(String str, int i, int i2, String str2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str2.indexOf(str.charAt(i3)) != -1) {
                return i3;
            }
        }
        return i2;
    }

    public static boolean discard(Source source, int i, TimeUnit timeUnit) {
        try {
            return skipAll(source, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String hostHeader(HttpUrl httpUrl, boolean z) {
        String strHost = httpUrl.host().contains(NPStringFog.decode(new byte[]{14}, "4717cf", false, true)) ? NPStringFog.decode(new byte[]{106}, "1098bb", -5.0037504E8f) + httpUrl.host() + NPStringFog.decode(new byte[]{60}, "aec36f", 30587) : httpUrl.host();
        return (z || httpUrl.port() != HttpUrl.defaultPort(httpUrl.scheme())) ? strHost + NPStringFog.decode(new byte[]{3}, "9cdcc4", -20121) + httpUrl.port() : strHost;
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> immutableList(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static int indexOf(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static int indexOfControlOrNonAscii(String str) {
        int i = 0;
        int length = str.length();
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private static String inet6AddressToAscii(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (i4 < bArr.length) {
            int i5 = i4;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i4;
            if (i6 > i2 && i6 >= 4) {
                i2 = i6;
                i3 = i4;
            }
            i4 = i5 + 2;
        }
        Buffer buffer = new Buffer();
        while (i < bArr.length) {
            if (i == i3) {
                buffer.writeByte(58);
                i += i2;
                if (i == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong(((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
                i += 2;
            }
        }
        return buffer.readUtf8();
    }

    public static String[] intersect(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains(NPStringFog.decode(new byte[]{2, 83, 76, 66, 94, 6, 14, 88, 89, 92, 84, 69, 3, 87, 81, 93, 84, 1}, "e6811e", -8.46861575E8d))) ? false : true;
    }

    public static boolean nonEmptyIntersection(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean skipAll(Source source, int i, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == LocationRequestCompat.PASSIVE_INTERVAL) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jDeadlineNanoTime + jNanoTime);
            }
            return true;
        } catch (InterruptedIOException e) {
            if (jDeadlineNanoTime == LocationRequestCompat.PASSIVE_INTERVAL) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jDeadlineNanoTime + jNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == LocationRequestCompat.PASSIVE_INTERVAL) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jDeadlineNanoTime + jNanoTime);
            }
            throw th;
        }
    }

    public static int skipLeadingAsciiWhitespace(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i3;
            }
        }
        return i2;
    }

    public static int skipTrailingAsciiWhitespace(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i3 + 1;
            }
        }
        return i;
    }

    public static ThreadFactory threadFactory(String str, boolean z) {
        return new ThreadFactory(str, z) { // from class: okhttp3.internal.Util.2
            final boolean val$daemon;
            final String val$name;

            {
                this.val$name = str;
                this.val$daemon = z;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, this.val$name);
                thread.setDaemon(this.val$daemon);
                return thread;
            }
        };
    }

    public static String toHumanReadableAscii(String str) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt <= 31 || iCodePointAt >= 127) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, iCharCount);
                int iCharCount2 = iCharCount;
                while (iCharCount2 < length) {
                    int iCodePointAt2 = str.codePointAt(iCharCount2);
                    buffer.writeUtf8CodePoint((iCodePointAt2 <= 31 || iCodePointAt2 >= 127) ? 63 : iCodePointAt2);
                    iCharCount2 = Character.charCount(iCodePointAt2) + iCharCount2;
                }
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    public static String trimSubstring(String str, int i, int i2) {
        int iSkipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, i, i2);
        return str.substring(iSkipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace(str, iSkipLeadingAsciiWhitespace, i2));
    }

    public static boolean verifyAsIpAddress(String str) {
        return VERIFY_AS_IP_ADDRESS.matcher(str).matches();
    }
}
