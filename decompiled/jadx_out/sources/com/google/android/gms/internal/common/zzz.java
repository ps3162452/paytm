package com.google.android.gms.internal.common;

import java.util.NoSuchElementException;
import n.NPStringFog;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes55.dex */
@NullMarked
abstract class zzz extends zzak {
    private final int zza;
    private int zzb;

    protected zzz(int i, int i2) {
        zzs.zzb(i2, i, NPStringFog.decode(new byte[]{94, 8, 5, 1, 30}, "7fadfa", 8.33158801E8d));
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.zzb < this.zza;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzb > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zzb;
        this.zzb = i + 1;
        return zza(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzb;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.zzb - 1;
        this.zzb = i;
        return zza(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzb - 1;
    }

    protected abstract Object zza(int i);
}
