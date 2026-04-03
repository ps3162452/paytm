package org.apache.commons.codec.language;

import n.NPStringFog;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Soundex implements StringEncoder {
    public static final String US_ENGLISH_MAPPING_STRING = NPStringFog.decode(new byte[]{84, 0, 3, 81, 0, 84, 86, 1, 1, 80, 2, 81, 81, 4, 1, 83, 2, 83, 86, 2, 1, 83, 0, 87, 84, 3}, "d11b0e", true, true);
    public static final char[] US_ENGLISH_MAPPING = null;
    public static final Soundex US_ENGLISH = null;

    public Soundex() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 16, 84, 16}, "6fe613", -21438));
    }

    public Soundex(char[] cArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 69, 66, 90, 68}, "1178ee", false));
    }

    public int difference(String str, String str2) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 67, 0, 20}, "376b52", 1.663600179E9d));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 20, 90, 20}, "3fa85c", -1.79384209E9d));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 66, 84, 69}, "e776df", true, true));
    }

    @Deprecated
    public int getMaxLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 66, 20, 6, 67}, "36adbf", -2049243880L));
    }

    @Deprecated
    public void setMaxLength(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 77, 70, 82, 19}, "09302c", false));
    }

    public String soundex(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 23, 6, 17}, "cbbd06", 3.4939587E8f));
    }
}
