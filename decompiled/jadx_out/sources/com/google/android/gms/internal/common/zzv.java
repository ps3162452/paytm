package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzv implements Iterable {
    final CharSequence zza;
    final zzx zzb;

    zzv(zzx zzxVar, CharSequence charSequence) {
        this.zzb = zzxVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zzb.zzh(this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(zzq.zza(it.next(), NPStringFog.decode(new byte[]{77, 21}, "a5ba3c", false)));
                while (it.hasNext()) {
                    sb.append((CharSequence) NPStringFog.decode(new byte[]{27, 19}, "73dd2a", 1.038165271E9d));
                    sb.append(zzq.zza(it.next(), NPStringFog.decode(new byte[]{31, 20}, "34fbfd", true)));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
