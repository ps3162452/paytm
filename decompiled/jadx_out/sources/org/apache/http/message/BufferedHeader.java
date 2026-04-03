package org.apache.http.message;

import com.google.firebase.FirebaseError;
import n.NPStringFog;
import org.apache.http.FormattedHeader;
import org.apache.http.HeaderElement;
import org.apache.http.ParseException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BufferedHeader implements FormattedHeader {
    public BufferedHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 22, 91, 69}, "20c9d0", false, true));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 22, 1, 17}, "97cc07", -199280317L));
    }

    @Override // org.apache.http.FormattedHeader
    public CharArrayBuffer getBuffer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 66, 1, 66}, "cc7ccd", 66665271L));
    }

    @Override // org.apache.http.Header
    public HeaderElement[] getElements() throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 66, 85, 17}, "bb770d", FirebaseError.ERROR_EMAIL_ALREADY_IN_USE));
    }

    @Override // org.apache.http.Header
    public String getName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 66, 82, 69}, "a270d8", true));
    }

    @Override // org.apache.http.Header
    public String getValue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 76, 86, 19}, "179425", 1637199803L));
    }

    @Override // org.apache.http.FormattedHeader
    public int getValuePos() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 19, 84, 21}, "a9f64b", false));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 16, 91, 64}, "20e9a2", 2140321838L));
    }
}
