package okhttp3;

import java.nio.charset.Charset;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class Challenge {
    private final Charset charset;
    private final String realm;
    private final String scheme;

    public Challenge(String str, String str2) {
        this(str, str2, Util.ISO_8859_1);
    }

    private Challenge(String str, String str2, Charset charset) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{74, 87, 9, 81, 85, 7, 25, 9, 92, 20, 86, 23, 85, 88}, "94a48b", -1794643060L));
        }
        if (str2 == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{67, 80, 7, 95, 15, 68, 12, 8, 70, 93, 23, 8, 93}, "15f3bd", false, false));
        }
        if (charset == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{91, 93, 5, 16, 74, 81, 76, 21, 89, 95, 25, 90, 77, 89, 8}, "85db94", -1.670600087E9d));
        }
        this.scheme = str;
        this.realm = str2;
        this.charset = charset;
    }

    public Charset charset() {
        return this.charset;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Challenge) && ((Challenge) obj).scheme.equals(this.scheme) && ((Challenge) obj).realm.equals(this.realm) && ((Challenge) obj).charset.equals(this.charset);
    }

    public int hashCode() {
        return ((((this.realm.hashCode() + 899) * 31) + this.scheme.hashCode()) * 31) + this.charset.hashCode();
    }

    public String realm() {
        return this.realm;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.scheme + NPStringFog.decode(new byte[]{65, 74, 7, 7, 91, 15, 92, 26}, "a8bf7b", 5.73822374E8d) + this.realm + NPStringFog.decode(new byte[]{23, 20, 5, 94, 0, 65, 70, 81, 18, 11, 67}, "54f6a3", false, true) + this.charset + NPStringFog.decode(new byte[]{65}, "c43b12", -1.1299866E8f);
    }

    public Challenge withCharset(Charset charset) {
        return new Challenge(this.scheme, this.realm, charset);
    }
}
