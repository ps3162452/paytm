package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private Object zac;

    public SingleRefDataBufferIterator(DataBuffer dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException(NPStringFog.decode(new byte[]{37, 5, 87, 92, 87, 70, 70, 5, 93, 68, 89, 92, 5, 1, 25, 70, 80, 87, 70, 13, 77, 87, 74, 83, 18, 11, 75, 18, 90, 87, 31, 11, 87, 86, 24}, "fd9282", 290434573L) + this.zab);
        }
        int i = this.zab + 1;
        this.zab = i;
        if (i == 0) {
            Object objCheckNotNull = Preconditions.checkNotNull(this.zaa.get(0));
            this.zac = objCheckNotNull;
            if (!(objCheckNotNull instanceof DataBufferRef)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 0, 71, 86, 39, 69, 87, 7, 86, 69, 69, 66, 84, 7, 86, 69, 0, 94, 82, 4, 19, 88, 3, 16, 69, 24, 67, 82, 69}, "1a37e0", 1.0752731E7d) + String.valueOf(objCheckNotNull.getClass()) + NPStringFog.decode(new byte[]{22, 92, 68, 70, 91, 13, 66, 21, 90, 9, 67, 3, 84, 89, 82}, "657f5b", true));
            }
        } else {
            ((DataBufferRef) Preconditions.checkNotNull(this.zac)).zaa(this.zab);
        }
        return this.zac;
    }
}
