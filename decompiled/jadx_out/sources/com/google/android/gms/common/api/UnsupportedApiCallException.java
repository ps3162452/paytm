package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {
    private final Feature zza;

    public UnsupportedApiCallException(Feature feature) {
        this.zza = feature;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return NPStringFog.decode(new byte[]{40, 91, 65, 18, 89, 94, 2, 18}, "e22a00", true).concat(String.valueOf(String.valueOf(this.zza)));
    }
}
