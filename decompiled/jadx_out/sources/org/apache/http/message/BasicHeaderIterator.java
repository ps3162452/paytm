package org.apache.http.message;

import java.util.NoSuchElementException;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHeaderIterator implements HeaderIterator {
    protected final Header[] allHeaders = null;
    protected int currentIndex;
    protected String headerName;

    public BasicHeaderIterator(Header[] headerArr, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 71, 71, 0, 22}, "132b7b", -53607937L));
    }

    protected boolean filterHeader(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 22, 4, 24}, "98cf9b", false, false));
    }

    protected int findNext(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 67, 6, 69}, "b66ddb", 1446780151L));
    }

    @Override // org.apache.http.HeaderIterator, java.util.Iterator
    public boolean hasNext() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 22, 80, 19}, "edc22b", 1654895225L));
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 20, 1, 67}, "f4acba", false));
    }

    @Override // org.apache.http.HeaderIterator
    public Header nextHeader() throws NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 22, 3, 69}, "44cad3", 9.06874021E8d));
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 77, 67, 6, 19}, "896d23", -2.145183632E9d));
    }
}
