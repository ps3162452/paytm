package org.apache.http.message;

import java.util.NoSuchElementException;
import n.NPStringFog;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = NPStringFog.decode(new byte[]{24, 25, 3, 88, 26, 26, 4, 11, 120, 95, 110, 17, 23, 110, 101, 90, 73, 78, 49}, "858e23", 2.009958882E9d);
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headerIterator) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 70, 87, 71}, "8435f7", -1738454159L));
    }

    protected String createToken(String str, int i, int i2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 71, 7, 66}, "7f2eca", false, true));
    }

    protected int findNext(int i) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 68, 80, 25}, "001280", -1.50183061E9d));
    }

    protected int findTokenEnd(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 19, 90, 17}, "f5f805", -1.27214967E8d));
    }

    protected int findTokenSeparator(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 76, 80, 22}, "cc9277", 9.292735E8f));
    }

    protected int findTokenStart(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 66, 4, 19}, "5c7f24", -3.36392493E8d));
    }

    @Override // org.apache.http.TokenIterator, java.util.Iterator
    public boolean hasNext() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 20, 6, 20}, "81ad58", false, true));
    }

    protected boolean isHttpSeparator(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 19, 85, 68}, "f6f7e8", 9.81570458E8d));
    }

    protected boolean isTokenChar(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 70, 4, 21}, "983f45", 43112338L));
    }

    protected boolean isTokenSeparator(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 64, 86, 16}, "d75416", -964571516L));
    }

    protected boolean isWhitespace(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 77, 3, 20}, "2a8a5a", -1061320083L));
    }

    @Override // java.util.Iterator
    public final Object next() throws ParseException, NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 64, 90, 17}, "58580c", 5903));
    }

    @Override // org.apache.http.TokenIterator
    public String nextToken() throws ParseException, NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 76, 81, 20}, "129359", false, true));
    }

    @Override // java.util.Iterator
    public final void remove() throws UnsupportedOperationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 20, 85, 68}, "c6a7e8", -4.53315498E8d));
    }
}
