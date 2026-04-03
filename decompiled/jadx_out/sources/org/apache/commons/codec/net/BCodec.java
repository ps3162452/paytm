package org.apache.commons.codec.net;

import n.NPStringFog;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BCodec extends RFC1522Codec implements StringEncoder, StringDecoder {
    public BCodec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 69, 0, 68}, "4c0bef", -6.24481894E8d));
    }

    public BCodec(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 18, 77, 83, 68}, "5f81e8", 1697679755L));
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 68, 84, 17}, "771601", -16037));
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 70, 80, 64}, "7532a2", -5.07536301E8d));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected byte[] doDecoding(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 77, 1, 69}, "b08cde", false));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected byte[] doEncoding(byte[] bArr) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 16, 7, 71}, "56eef0", -1.457980128E9d));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 76, 7, 68}, "3f9eec", 16306));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 23, 3, 21}, "39ba45", true, true));
    }

    public String encode(String str, String str2) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 67, 80, 64}, "bb62a1", true, true));
    }

    public String getDefaultCharset() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 76, 6, 17}, "a09d07", 1561047389L));
    }

    @Override // org.apache.commons.codec.net.RFC1522Codec
    protected String getEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 23, 20, 91, 18}, "bca93b", -1.747044342E9d));
    }
}
