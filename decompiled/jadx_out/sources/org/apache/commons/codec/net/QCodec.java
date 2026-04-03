package org.apache.commons.codec.net;

import n.NPStringFog;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class QCodec extends RFC1522Codec implements StringEncoder, StringDecoder {
    public QCodec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 19, 4, 69}, "1fffd5", -7.755658E8f));
    }

    public QCodec(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 23, 65, 1, 20}, "bc4c57", true));
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 71, 77, 91, 64}, "3389a7", 2041964053L));
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 68, 7, 71}, "171eff", true));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected byte[] doDecoding(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 18, 64, 90, 68}, "af58ea", 1.968079522E9d));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected byte[] doEncoding(byte[] bArr) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 20, 87, 19}, "44a520", 2.22230228E8d));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 21, 20, 6, 23}, "3aad62", false));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 66, 83, 17}, "0a7107", -210140353L));
    }

    public String encode(String str, String str2) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 64, 82, 22}, "2a507f", true, true));
    }

    public String getDefaultCharset() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 70, 65, 90, 71}, "b248fa", -1.743707E9f));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected String getEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 77, 76, 85, 68}, "d997ec", 516542104L));
    }

    public boolean isEncodeBlanks() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 64, 1, 17}, "345c09", 15949));
    }

    public void setEncodeBlanks(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 76, 4, 18}, "e39f3b", true, false));
    }
}
