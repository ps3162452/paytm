package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    private boolean zaa;
    private ArrayList zab;

    protected EntityBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zaa = false;
    }

    private final void zab() {
        synchronized (this) {
            if (!this.zaa) {
                int count = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount();
                ArrayList arrayList = new ArrayList();
                this.zab = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String primaryDataMarkerColumn = getPrimaryDataMarkerColumn();
                    int i = 1;
                    String string = this.mDataHolder.getString(primaryDataMarkerColumn, 0, this.mDataHolder.getWindowIndex(0));
                    while (i < count) {
                        int windowIndex = this.mDataHolder.getWindowIndex(i);
                        String string2 = this.mDataHolder.getString(primaryDataMarkerColumn, i, windowIndex);
                        if (string2 == null) {
                            throw new NullPointerException(NPStringFog.decode(new byte[]{122, 88, 74, 18, 92, 94, 80, 17, 79, 0, 89, 69, 82, 17, 95, 14, 71, 16, 90, 80, 75, 10, 80, 66, 116, 94, 85, 20, 88, 94, 13, 17}, "719a50", 1.0360828E9f) + primaryDataMarkerColumn + NPStringFog.decode(new byte[]{20, 67, 83, 66, 69, 20, 87, 20, 8, 22}, "8c26ef", true, false) + i + NPStringFog.decode(new byte[]{26, 20, 87, 92, 70, 19, 65, 93, 95, 87, 91, 68, 12, 20}, "641343", 4.59450912E8d) + windowIndex);
                        }
                        if (string2.equals(string)) {
                            string2 = string;
                        } else {
                            this.zab.add(Integer.valueOf(i));
                        }
                        i++;
                        string = string2;
                    }
                }
                this.zaa = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @ResultIgnorabilityUnspecified
    public final T get(int i) {
        int count;
        zab();
        int iZaa = zaa(i);
        if (i < 0 || i == this.zab.size()) {
            count = 0;
        } else {
            count = i == this.zab.size() + (-1) ? ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount() - ((Integer) this.zab.get(i)).intValue() : ((Integer) this.zab.get(i + 1)).intValue() - ((Integer) this.zab.get(i)).intValue();
            if (count == 1) {
                int iZaa2 = zaa(i);
                int windowIndex = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getWindowIndex(iZaa2);
                String childDataMarkerColumn = getChildDataMarkerColumn();
                count = (childDataMarkerColumn == null || this.mDataHolder.getString(childDataMarkerColumn, iZaa2, windowIndex) != null) ? 1 : 0;
            }
        }
        return getEntry(iZaa, count);
    }

    protected String getChildDataMarkerColumn() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zab();
        return this.zab.size();
    }

    protected abstract T getEntry(int i, int i2);

    protected abstract String getPrimaryDataMarkerColumn();

    final int zaa(int i) {
        if (i >= 0 && i < this.zab.size()) {
            return ((Integer) this.zab.get(i)).intValue();
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{105, 90, 64, 90, 69, 88, 86, 91, 19}, "953311", 1037759194L) + i + NPStringFog.decode(new byte[]{18, 88, 21, 69, 94, 23, 70, 17, 9, 3, 17, 0, 93, 68, 8, 1, 66, 66, 84, 94, 20, 69, 69, 10, 91, 66, 70, 7, 68, 4, 84, 84, 20}, "21fe1b", 20422));
    }
}
