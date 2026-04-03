package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import n.NPStringFog;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class URLCodec implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder {
    protected static byte ESCAPE_CHAR;
    protected static final BitSet WWW_FORM_URL = null;
    protected String charset;

    public URLCodec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 17, 16, 0, 18}, "2eeb31", true));
    }

    public URLCodec(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 65, 4, 67}, "df4fb5", 1028406725L));
    }

    public static final byte[] decodeUrl(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 69, 6, 25}, "f10d8f", -1.0977471E9f));
    }

    public static final byte[] encodeUrl(BitSet bitSet, byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 64, 67, 7, 68}, "e46eeb", false, false));
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 23, 81, 69}, "1bb3dd", -1625270703L));
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 68, 7, 68}, "ef1ee9", -1.8125693E9f));
    }

    public String decode(String str, String str2) throws DecoderException, UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 70, 71, 7, 24}, "e22e97", 3.18631621E8d));
    }

    @Override // org.apache.commons.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 20, 7, 20}, "edae5b", -1.7541892E9f));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 70, 90, 68}, "4538e4", 8.26032629E8d));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 17, 83, 25}, "1bd180", false));
    }

    public String encode(String str, String str2) throws UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 64, 6, 68}, "e05deb", 1.608575279E9d));
    }

    @Override // org.apache.commons.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 64, 81, 23}, "41536f", true));
    }

    public String getDefaultCharset() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 64, 76, 90, 23}, "c49868", false, true));
    }

    @Deprecated
    public String getEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 17, 69, 1, 71}, "3e0cf2", 14758));
    }
}
