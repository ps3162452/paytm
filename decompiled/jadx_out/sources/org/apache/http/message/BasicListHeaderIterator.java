package org.apache.http.message;

import java.util.List;
import java.util.NoSuchElementException;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicListHeaderIterator implements HeaderIterator {
    protected final List allHeaders;
    protected int currentIndex;
    protected String headerName;
    protected int lastIndex;

    public BasicListHeaderIterator(List list, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 18, 68, 82, 67}, "8f10b6", false));
    }

    protected boolean filterHeader(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 16, 7, 18}, "4cee35", false));
    }

    protected int findNext(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 67, 91, 16}, "736916", -1.06370698E9d));
    }

    @Override // org.apache.http.HeaderIterator, java.util.Iterator
    public boolean hasNext() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 64, 67, 85, 68}, "c467ec", true));
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 70, 67, 7, 71}, "226ef7", true, false));
    }

    @Override // org.apache.http.HeaderIterator
    public Header nextHeader() throws NoSuchElementException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 69, 90, 64}, "7808a7", false));
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 68, 4, 24}, "bb1f96", false, false));
    }
}
