package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHeaderValueFormatter implements HeaderValueFormatter {
    public static final String SEPARATORS = NPStringFog.decode(new byte[]{23, 8, 77, 91, 121, 30, 30, 15, 95, 61, 27, 25, 108, 110, 94, 92, 66, 75, 62}, "73aa96", -9321);
    public static final String UNSAFE_CHARS = NPStringFog.decode(new byte[]{67, 100}, "a88a07", -541714L);
    public static final BasicHeaderValueFormatter DEFAULT = null;

    public BasicHeaderValueFormatter() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 23, 22, 81, 22}, "2cc376", true, true));
    }

    public static final String formatElements(HeaderElement[] headerElementArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 76, 0, 71}, "6f9bfb", false));
    }

    public static final String formatHeaderElement(HeaderElement headerElement, boolean z, HeaderValueFormatter headerValueFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 66, 85, 17}, "31770c", 1.990651308E9d));
    }

    public static final String formatNameValuePair(NameValuePair nameValuePair, boolean z, HeaderValueFormatter headerValueFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 16, 91, 66}, "c1e9cf", -7.1011514E8f));
    }

    public static final String formatParameters(NameValuePair[] nameValuePairArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 71, 80, 20}, "c52251", -9.52891728E8d));
    }

    protected void doFormatValue(CharArrayBuffer charArrayBuffer, String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 20, 4, 23}, "41af60", false));
    }

    protected int estimateElementsLen(HeaderElement[] headerElementArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 67, 1, 22}, "ac6c73", 510466208L));
    }

    protected int estimateHeaderElementLen(HeaderElement headerElement) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 23, 0, 64}, "6fbbaf", true, false));
    }

    protected int estimateNameValuePairLen(NameValuePair nameValuePair) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 19, 7, 18}, "5dfe35", -2.42446709E8d));
    }

    protected int estimateParametersLen(NameValuePair[] nameValuePairArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 23, 85, 64}, "04b7a5", -438461562L));
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatElements(CharArrayBuffer charArrayBuffer, HeaderElement[] headerElementArr, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 19, 82, 19}, "aaf029", 4.77623162E8d));
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatHeaderElement(CharArrayBuffer charArrayBuffer, HeaderElement headerElement, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 16, 6, 25}, "9bed89", 21361));
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatNameValuePair(CharArrayBuffer charArrayBuffer, NameValuePair nameValuePair, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 77, 87, 64}, "c085a8", false, false));
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatParameters(CharArrayBuffer charArrayBuffer, NameValuePair[] nameValuePairArr, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 20, 83, 20}, "01a158", 1.420116583E9d));
    }

    protected boolean isSeparator(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 20, 6, 68}, "56ade5", false, false));
    }

    protected boolean isUnsafe(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 65, 76, 85, 64}, "1597a6", 1.0046235E9f));
    }
}
