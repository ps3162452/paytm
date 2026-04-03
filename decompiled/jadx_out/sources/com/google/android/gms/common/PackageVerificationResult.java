package com.google.android.gms.common;

import com.google.errorprone.annotations.CheckReturnValue;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@CheckReturnValue
public class PackageVerificationResult {
    private final String zza;
    private final boolean zzb;

    @Nullable
    private final String zzc;

    @Nullable
    private final Throwable zzd;

    private PackageVerificationResult(String str, int i, boolean z, @Nullable String str2, @Nullable Throwable th) {
        this.zza = str;
        this.zzb = z;
        this.zzc = str2;
        this.zzd = th;
    }

    public static PackageVerificationResult zza(String str, String str2, @Nullable Throwable th) {
        return new PackageVerificationResult(str, 1, false, str2, th);
    }

    public static PackageVerificationResult zzd(String str, int i) {
        return new PackageVerificationResult(str, i, true, null, null);
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        String strValueOf = String.valueOf(this.zzc);
        Throwable th = this.zzd;
        String strConcat = NPStringFog.decode(new byte[]{49, 80, 82, 14, 87, 80, 4, 103, 84, 23, 95, 81, 8, 82, 80, 17, 95, 88, 15, 99, 66, 9, 66, 13, 65}, "a11e67", -892676362L).concat(strValueOf);
        if (th == null) {
            throw new SecurityException(strConcat);
        }
        throw new SecurityException(strConcat, th);
    }

    public final boolean zzc() {
        return this.zzb;
    }
}
