package com.google.firebase.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import n.NPStringFog;

/* JADX INFO: loaded from: classes58.dex */
@KeepForSdk
public class InternalTokenResult {
    private String zza;

    @KeepForSdk
    public InternalTokenResult(@Nullable String str) {
        this.zza = str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof InternalTokenResult) {
            return Objects.equal(this.zza, ((InternalTokenResult) obj).zza);
        }
        return false;
    }

    @Nullable
    @KeepForSdk
    public String getToken() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza);
    }

    public String toString() {
        return Objects.toStringHelper(this).add(NPStringFog.decode(new byte[]{23, 92, 13, 80, 95}, "c3f519", -1358648736L), this.zza).toString();
    }
}
