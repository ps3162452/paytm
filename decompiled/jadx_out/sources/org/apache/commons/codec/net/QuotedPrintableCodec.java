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
public class QuotedPrintableCodec implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder {
    public QuotedPrintableCodec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 70, 90, 22}, "4a387e", false, false));
    }

    public QuotedPrintableCodec(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 67, 67, 86, 18}, "276437", false, false));
    }

    public static final byte[] decodeQuotedPrintable(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 68, 17, 4, 67}, "30dfbd", true));
    }

    public static final byte[] encodeQuotedPrintable(BitSet bitSet, byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 64, 6, 18}, "0a5d37", -9.2753E8f));
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 16, 83, 22}, "5ee175", false, false));
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 70, 84, 24}, "e13698", true));
    }

    public String decode(String str, String str2) throws DecoderException, UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 71, 0, 21}, "782b45", 2.6458963E8d));
    }

    @Override // org.apache.commons.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) throws DecoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 19, 83, 64}, "aef1ae", true));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 66, 6, 67}, "1b7dbd", 31191075L));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 19, 3, 69}, "a0fad4", 1.9157852E9f));
    }

    public String encode(String str, String str2) throws UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 16, 0, 22}, "45eb76", 1.921762255E9d));
    }

    @Override // org.apache.commons.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 68, 7, 20}, "6e1e55", 2.113505539E9d));
    }

    public String getDefaultCharset() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 66, 86, 17}, "167409", true, true));
    }
}
