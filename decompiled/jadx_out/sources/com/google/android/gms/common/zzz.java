package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzag;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzz {
    private String zza = null;
    private long zzb = -1;
    private zzag zzc = zzag.zzl();
    private zzag zzd = zzag.zzl();

    zzz() {
    }

    final zzz zza(long j) {
        this.zzb = j;
        return this;
    }

    final zzz zzb(List list) {
        Preconditions.checkNotNull(list);
        this.zzd = zzag.zzk(list);
        return this;
    }

    final zzz zzc(List list) {
        Preconditions.checkNotNull(list);
        this.zzc = zzag.zzk(list);
        return this;
    }

    final zzz zzd(String str) {
        this.zza = str;
        return this;
    }

    final zzab zze() {
        if (this.zza == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{64, 81, 86, 91, 2, 86, 85, 126, 84, 93, 6, 17, 93, 69, 70, 68, 67, 83, 85, 16, 81, 85, 5, 88, 94, 85, 81}, "0050c1", false));
        }
        if (this.zzb < 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{11, 90, 88, 91, 89, 67, 11, 96, 66, 83, 89, 70, 3, 87, 96, 87, 70, 69, 15, 92, 88, 124, 65, 91, 4, 86, 68, 18, 89, 67, 21, 71, 22, 80, 81, 22, 1, 65, 83, 83, 64, 83, 20, 19, 66, 90, 85, 88, 70, 92, 68, 18, 81, 71, 19, 82, 90, 18, 64, 89, 70, 3}, "f36246", true, false));
        }
        if (this.zzc.isEmpty() && this.zzd.isEmpty()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 15, 21, 90, 86, 74, 65, 9, 19, 86, 86, 74, 4, 2, 53, 87, 64, 76, 34, 3, 19, 70, 64, 24, 14, 20, 65, 93, 65, 92, 4, 20, 4, 86, 99, 74, 14, 2, 34, 87, 65, 76, 18, 70, 12, 71, 64, 76, 65, 14, 0, 68, 86, 24, 0, 18, 65, 94, 86, 89, 18, 18, 65, 93, 93, 93, 65, 5, 4, 64, 71}, "afa238", true, false));
        }
        return new zzab(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
