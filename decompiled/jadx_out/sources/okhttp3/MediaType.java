package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class MediaType {

    @Nullable
    private final String charset;
    private final String mediaType;
    private final String subtype;
    private final String type;
    private static final String QUOTED = NPStringFog.decode(new byte[]{70, 26, 105, 105, 19, 63, 78, 27, 16}, "d2271b", false, true);
    private static final String TOKEN = NPStringFog.decode(new byte[]{31, 105, 86, 28, 25, 119, 26, 104, 7, 28, 90, 27, 22, 17, 19, 20, 69, 17, 29, 25, 25, 111, 60, 86, 76, 78, 74, 79, 62, 29, 30}, "7271c6", true);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile(NPStringFog.decode(new byte[]{16, 107, 80, 79, 77, 114, 21, 106, 1, 79, 14, 30, 25, 19, 21, 71, 17, 20, 18, 27, 31, 60, 104, 83, 67, 76, 76, 28, 106, 24, 17, 31, 25, 57, 86, 30, 66, 113, 28, 56, 7, 30, 1, 29, 16, 65, 19, 22, 30, 23, 27, 73, 25, 109, 103, 80, 74, 30, 74, 77, 101, 27, 24}, "801b73", true));
    private static final Pattern PARAMETER = Pattern.compile(NPStringFog.decode(new byte[]{15, 63, 18, 29, 30, 89, 14, 75, 58, 86, 27, 28, 117, 78, 59, 7, 27, 95, 25, 66, 66, 19, 19, 64, 19, 73, 74, 25, 104, 57, 84, 24, 29, 74, 72, 59, 31, 74, 92, 31, 9, 92, 28, 56, 0, 26, 76, 39, 25, 57, 81, 26, 15, 75, 21, 64, 69, 18, 16, 65, 30, 72, 79, 105, 105, 6, 79, 31, 28, 73, 107, 77, 29, 31, 67, 31, 109, 56, 22, 62, 75, 30, 20, 79, 29, 92}, "4ca76f", -1694763264L));

    private MediaType(String str, String str2, String str3, @Nullable String str4) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.charset = str4;
    }

    @Nullable
    public static MediaType parse(String str) {
        Matcher matcher = TYPE_SUBTYPE.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = PARAMETER.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String strGroup = matcher2.group(1);
            if (strGroup != null && strGroup.equalsIgnoreCase(NPStringFog.decode(new byte[]{85, 88, 82, 74, 16, 87, 66}, "6038c2", -14141))) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 == null) {
                    strGroup2 = matcher2.group(3);
                } else if (strGroup2.startsWith(NPStringFog.decode(new byte[]{70}, "a2d317", true, false)) && strGroup2.endsWith(NPStringFog.decode(new byte[]{31}, "800762", -1.8310104E9f)) && strGroup2.length() > 2) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                }
                if (str2 != null && !strGroup2.equalsIgnoreCase(str2)) {
                    return null;
                }
                str2 = strGroup2;
            }
        }
        return new MediaType(str, lowerCase, lowerCase2, str2);
    }

    @Nullable
    public Charset charset() {
        return charset(null);
    }

    @Nullable
    public Charset charset(@Nullable Charset charset) {
        try {
            return this.charset != null ? Charset.forName(this.charset) : charset;
        } catch (IllegalArgumentException e) {
            return charset;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof MediaType) && ((MediaType) obj).mediaType.equals(this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public String subtype() {
        return this.subtype;
    }

    public String toString() {
        return this.mediaType;
    }

    public String type() {
        return this.type;
    }
}
