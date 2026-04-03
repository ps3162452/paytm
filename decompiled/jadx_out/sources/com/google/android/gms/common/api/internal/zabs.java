package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zabs {
    private final ApiKey zaa;
    private final Feature zab;

    /* synthetic */ zabs(ApiKey apiKey, Feature feature, zabr zabrVar) {
        this.zaa = apiKey;
        this.zab = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zabs)) {
            zabs zabsVar = (zabs) obj;
            if (Objects.equal(this.zaa, zabsVar.zaa) && Objects.equal(this.zab, zabsVar.zab)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zaa, this.zab);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(NPStringFog.decode(new byte[]{91, 84, 74}, "0132a6", -1890614L), this.zaa).add(NPStringFog.decode(new byte[]{83, 93, 88, 64, 66, 69, 80}, "589477", 6949), this.zab).toString();
    }
}
