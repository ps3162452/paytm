package com.google.android.gms.internal.common;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes55.dex */
@NullMarked
abstract class zzj implements Iterator {

    @CheckForNull
    private Object zza;
    private int zzb = 2;

    protected zzj() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb;
        if (i == 4) {
            throw new IllegalStateException();
        }
        if (i == 0) {
            throw null;
        }
        switch (i - 1) {
            case 0:
                return true;
            case 1:
            default:
                this.zzb = 4;
                this.zza = zza();
                if (this.zzb == 3) {
                    return false;
                }
                this.zzb = 1;
                return true;
            case 2:
                return false;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.zzb = 2;
        Object obj = this.zza;
        this.zza = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    protected abstract Object zza();

    @CheckForNull
    protected final Object zzb() {
        this.zzb = 3;
        return null;
    }
}
