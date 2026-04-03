package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;
    final byte[] data;
    transient int hashCode;
    transient String utf8;
    static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = of(new byte[0]);

    ByteString(byte[] bArr) {
        this.data = bArr;
    }

    static int codePointIndexToCharIndex(String str, int i) {
        int iCharCount = 0;
        int length = str.length();
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 == i) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i2++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    @Nullable
    public static ByteString decodeBase64(String str) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{0, 82, 74, 7, 87, 6, 66, 14, 4, 66, 15, 71, 14, 95}, "b39ba2", true, true));
        }
        byte[] bArrDecode = Base64.decode(str);
        if (bArrDecode != null) {
            return new ByteString(bArrDecode);
        }
        return null;
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 86, 29, 23, 12, 11, 68, 93, 16, 91, 93}, "d3e716", false, false));
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 94, 92, 27, 67, 85, 80, 68, 92, 7, 19, 88, 86, 72, 25, 16, 71, 66, 90, 94, 94, 89, 19}, "309c30", -8.0513766E8f) + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((decodeHexDigit(str.charAt(i * 2)) << 4) + decodeHexDigit(str.charAt((i * 2) + 1)));
        }
        return of(bArr);
    }

    private static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 'a') + 10;
        }
        if (c < 'A' || c > 'F') {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 13, 87, 79, 66, 3, 82, 23, 87, 83, 18, 14, 84, 27, 18, 83, 91, 1, 88, 23, 8, 23}, "1c272f", 8.502432E8f) + c);
        }
        return (c - 'A') + 10;
    }

    private ByteString digest(String str) {
        try {
            return of(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{18, 20, 10, 88, 68, 92, 20, 88, 91}, "a47ed2", 24639));
        }
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 81, 84, 19, 69, 4, 65, 25, 8, 92, 22, 15, 64, 85, 89}, "595a6a", 2.9794704E8f));
        }
        return new ByteString(str.getBytes(charset));
    }

    public static ByteString encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{21, 19, 15, 5, 20, 93, 19, 95, 94}, "f32843", true, true));
        }
        ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
        byteString.utf8 = str;
        return byteString;
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return of(mac.doFinal(this.data));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static ByteString of(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 82, 65, 81, 24, 12, 15, 19, 91, 69, 84, 93}, "235081", 211662684L));
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new ByteString(bArr);
    }

    public static ByteString of(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 84, 69, 87, 70, 95, 9, 21, 95, 67, 10, 14}, "4516fb", false, false));
        }
        return new ByteString((byte[]) bArr.clone());
    }

    public static ByteString of(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{93, 85, 66, 88, 19, 5, 4, 20, 88, 76, 95, 84}, "946938", -30868));
        }
        Util.checkOffsetAndCount(bArr.length, i, i2);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new ByteString(bArr2);
    }

    public static ByteString read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 11, 70, 89, 88, 17, 87, 16, 10, 8}, "9efde1", 1.9377325E8f));
        }
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{81, 24, 68, 83, 122, 94, 70, 15, 68, 22, 5, 17, 3, 91, 16}, "3a0691", true) + i);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 += i3;
        }
        return new ByteString(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString byteString = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField(NPStringFog.decode(new byte[]{82, 81, 18, 82}, "60f3f5", 17602));
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.data);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    public String base64() {
        return Base64.encode(this.data);
    }

    public String base64Url() {
        return Base64.encodeUrl(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int i2 = getByte(i) & 255;
            int i3 = byteString.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size >= size2 ? 1 : -1;
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ByteString) && ((ByteString) obj).size() == this.data.length && ((ByteString) obj).rangeEquals(0, this.data, 0, this.data.length);
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.data);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    public String hex() {
        int i = 0;
        char[] cArr = new char[this.data.length * 2];
        for (byte b : this.data) {
            int i2 = i + 1;
            cArr[i] = HEX_DIGITS[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = HEX_DIGITS[b & 15];
        }
        return new String(cArr);
    }

    public ByteString hmacSha1(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{124, 8, 5, 86, 99, 124, 117, 84}, "4ed504", false, true), byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{45, 84, 5, 85, 99, 42, 36, 11, 81, 0}, "e9d60b", 2.143472E9f), byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{42, 85, 88, 84, 50, 42, 35, 13, 8, 5}, "b897ab", 1.478661242E9d), byteString);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.internalArray(), 0);
    }

    public final int indexOf(ByteString byteString, int i) {
        return indexOf(byteString.internalArray(), i);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.data.length;
        int length2 = bArr.length;
        for (int iMax = Math.max(i, 0); iMax <= length - length2; iMax++) {
            if (Util.arrayRangeEquals(this.data, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    byte[] internalArray() {
        return this.data;
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.internalArray(), size());
    }

    public final int lastIndexOf(ByteString byteString, int i) {
        return lastIndexOf(byteString.internalArray(), i);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int iMin = Math.min(i, this.data.length - bArr.length); iMin >= 0; iMin--) {
            if (Util.arrayRangeEquals(this.data, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public ByteString md5() {
        return digest(NPStringFog.decode(new byte[]{117, 115, 84}, "87a8a1", -1.8068443E9f));
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        return byteString.rangeEquals(i2, this.data, i, i3);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.data.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && Util.arrayRangeEquals(this.data, i, bArr, i2, i3);
    }

    public ByteString sha1() {
        return digest(NPStringFog.decode(new byte[]{96, 121, 113, 78, 84}, "310ce4", true, false));
    }

    public ByteString sha256() {
        return digest(NPStringFog.decode(new byte[]{50, 113, 121, 24, 87, 84, 87}, "a985ea", -1.516031482E9d));
    }

    public ByteString sha512() {
        return digest(NPStringFog.decode(new byte[]{100, 112, 115, 29, 81, 8, 5}, "7820d9", 1223567718L));
    }

    public int size() {
        return this.data.length;
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public String string(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{5, 88, 88, 68, 65, 83, 18, 16, 4, 11, 18, 88, 19, 92, 85}, "f09626", -11763));
        }
        return new String(this.data, charset);
    }

    public ByteString substring(int i) {
        return substring(i, this.data.length);
    }

    public ByteString substring(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{4, 80, 3, 80, 8, 42, 8, 81, 1, 65, 70, 95, 70, 5}, "f5d9fc", -1.629273347E9d));
        }
        if (i2 > this.data.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{3, 95, 7, 120, 8, 6, 3, 73, 67, 15, 70, 14, 3, 95, 4, 69, 14, 74}, "f1c1fb", -4.88373E8f) + this.data.length + NPStringFog.decode(new byte[]{79}, "f99c35", false, false));
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 15, 82, 44, 15, 5, 84, 25, 22, 89, 65, 3, 84, 6, 95, 11, 40, 15, 85, 4, 78}, "1a6eaa", true, true));
        }
        if (i == 0 && i2 == this.data.length) {
            return this;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.data, i, bArr, 0, i3);
        return new ByteString(bArr);
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.data.length) {
                return this;
            }
            byte b = this.data[i2];
            if (b < 65 || b > 90) {
                i = i2 + 1;
            } else {
                byte[] bArr = (byte[]) this.data.clone();
                bArr[i2] = (byte) (b + 32);
                while (true) {
                    i2++;
                    if (i2 >= bArr.length) {
                        return new ByteString(bArr);
                    }
                    byte b2 = bArr[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr[i2] = (byte) (b2 + 32);
                    }
                }
            }
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.data.length) {
                return this;
            }
            byte b = this.data[i2];
            if (b < 97 || b > 122) {
                i = i2 + 1;
            } else {
                byte[] bArr = (byte[]) this.data.clone();
                bArr[i2] = (byte) (b - 32);
                while (true) {
                    i2++;
                    if (i2 >= bArr.length) {
                        return new ByteString(bArr);
                    }
                    byte b2 = bArr[i2];
                    if (b2 >= 97 && b2 <= 122) {
                        bArr[i2] = (byte) (b2 - 32);
                    }
                }
            }
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public String toString() {
        if (this.data.length == 0) {
            return NPStringFog.decode(new byte[]{58, 71, 89, 74, 4, 15, 81, 105}, "a400a2", false);
        }
        String strUtf8 = utf8();
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(strUtf8, 64);
        if (iCodePointIndexToCharIndex == -1) {
            return this.data.length <= 64 ? NPStringFog.decode(new byte[]{56, 93, 80, 79, 12}, "c55718", 22029) + hex() + NPStringFog.decode(new byte[]{100}, "99bb13", -1.481791268E9d) : NPStringFog.decode(new byte[]{58, 18, 15, 28, 93, 95}, "aaff8b", -1.40217619E9d) + this.data.length + NPStringFog.decode(new byte[]{65, 12, 80, 72, 14}, "ad5038", 695588944L) + substring(0, 64).hex() + NPStringFog.decode(new byte[]{-122, -31, -97, 104}, "da95c1", -30516);
        }
        String strReplace = strUtf8.substring(0, iCodePointIndexToCharIndex).replace(NPStringFog.decode(new byte[]{56}, "d9d072", true, false), NPStringFog.decode(new byte[]{106, 109}, "61cdcd", 1963211052L)).replace("\n", NPStringFog.decode(new byte[]{100, 15}, "8af900", 9.0023443E8f)).replace("\r", NPStringFog.decode(new byte[]{107, 17}, "7cee56", 1400725446L));
        return iCodePointIndexToCharIndex < strUtf8.length() ? NPStringFog.decode(new byte[]{111, 70, 81, 28, 87, 4}, "458f29", false) + this.data.length + NPStringFog.decode(new byte[]{65, 76, 1, 77, 76, 94}, "a8d58c", false) + strReplace + NPStringFog.decode(new byte[]{-128, -29, -97, 100}, "bc99b5", -5.1977072E8f) : NPStringFog.decode(new byte[]{107, 65, 3, 78, 23, 88}, "05f6ce", -1.438675901E9d) + strReplace + NPStringFog.decode(new byte[]{60}, "ae42c6", -2.068194938E9d);
    }

    public String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, Util.UTF_8);
        this.utf8 = str2;
        return str2;
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{13, 65, 71, 20, 13, 94, 66, 90, 70, 88, 92}, "b4340c", -14119));
        }
        outputStream.write(this.data);
    }

    void write(Buffer buffer) {
        buffer.write(this.data, 0, this.data.length);
    }
}
