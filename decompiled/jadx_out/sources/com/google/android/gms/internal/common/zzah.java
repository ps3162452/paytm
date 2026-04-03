package com.google.android.gms.internal.common;

import n.NPStringFog;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes55.dex */
@NullMarked
public final class zzah {
    static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{89, 16, 67, 91, 93, 7, 93, 28, 67}, "8dc23c", false) + i2);
            }
        }
        return objArr;
    }
}
