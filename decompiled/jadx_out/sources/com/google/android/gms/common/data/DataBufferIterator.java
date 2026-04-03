package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class DataBufferIterator<T> implements Iterator<T> {
    protected final DataBuffer zaa;
    protected int zab = -1;

    public DataBufferIterator(DataBuffer dataBuffer) {
        this.zaa = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zab < this.zaa.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public Object next() {
        if (hasNext()) {
            DataBuffer dataBuffer = this.zaa;
            int i = this.zab + 1;
            this.zab = i;
            return dataBuffer.get(i);
        }
        throw new NoSuchElementException(NPStringFog.decode(new byte[]{112, 81, 95, 13, 87, 70, 19, 81, 85, 21, 89, 92, 80, 85, 17, 23, 80, 87, 19, 89, 69, 6, 74, 83, 71, 95, 67, 67, 90, 87, 74, 95, 95, 7, 24}, "301c82", -13307) + this.zab);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{115, 0, 90, 15, 87, 68, 16, 19, 81, 12, 87, 70, 85, 65, 81, 13, 93, 93, 85, 15, 64, 18, 24, 86, 66, 14, 89, 65, 89, 16, 116, 0, 64, 0, 122, 69, 86, 7, 81, 19, 113, 68, 85, 19, 85, 21, 87, 66}, "0a4a80", 27324));
    }
}
