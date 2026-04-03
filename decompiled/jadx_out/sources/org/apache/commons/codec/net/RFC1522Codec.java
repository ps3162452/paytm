package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import n.NPStringFog;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
abstract class RFC1522Codec {
    RFC1522Codec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 65, 86, 67}, "4044b8", false));
    }

    protected String decodeText(String str) throws DecoderException, UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 23, 84, 20}, "01b656", true));
    }

    protected abstract byte[] doDecoding(byte[] bArr) throws DecoderException;

    protected abstract byte[] doEncoding(byte[] bArr) throws EncoderException;

    protected String encodeText(String str, String str2) throws EncoderException, UnsupportedEncodingException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 16, 0, 22}, "80eb7e", -1316054576L));
    }

    protected abstract String getEncoding();
}
