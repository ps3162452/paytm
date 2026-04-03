package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@Deprecated
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    public interface Types {
        public static final int EVENT_TYPE_ACQUIRE_WAKE_LOCK = 7;
        public static final int EVENT_TYPE_RELEASE_WAKE_LOCK = 8;
    }

    public final String toString() {
        return zzb() + "\t" + zza() + NPStringFog.decode(new byte[]{48, 24, 82}, "95c0d8", -1521109203L) + zzc();
    }

    public abstract int zza();

    public abstract long zzb();

    public abstract String zzc();
}
