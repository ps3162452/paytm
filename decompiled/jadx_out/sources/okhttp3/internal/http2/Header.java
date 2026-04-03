package okhttp3.internal.http2;

import n.NPStringFog;
import okhttp3.internal.Util;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class Header {
    final int hpackSize;
    public final ByteString name;
    public final ByteString value;
    public static final ByteString PSEUDO_PREFIX = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{15}, "5424e7", true, true));
    public static final ByteString RESPONSE_STATUS = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{12, 74, 76, 85, 67, 77, 69}, "698478", 1.7097092E8d));
    public static final ByteString TARGET_METHOD = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{13, 89, 87, 21, 94, 91, 83}, "742a64", false, false));
    public static final ByteString TARGET_PATH = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{89, 20, 86, 23, 89}, "cd7c10", -1028909354L));
    public static final ByteString TARGET_SCHEME = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{91, 70, 7, 88, 92, 88, 4}, "a5d095", false));
    public static final ByteString TARGET_AUTHORITY = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{13, 85, 76, 22, 12, 10, 69, 93, 77, 27}, "749bde", false));

    public Header(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public Header(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public Header(ByteString byteString, ByteString byteString2) {
        this.name = byteString;
        this.value = byteString2;
        this.hpackSize = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return this.name.equals(header.name) && this.value.equals(header.value);
    }

    public int hashCode() {
        return ((this.name.hashCode() + 527) * 31) + this.value.hashCode();
    }

    public String toString() {
        return Util.format(NPStringFog.decode(new byte[]{17, 74, 95, 25, 29, 22}, "49e98e", false, true), this.name.utf8(), this.value.utf8());
    }
}
