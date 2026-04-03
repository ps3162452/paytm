package com.google.android.gms.auth.api.signin.internal;

/* JADX INFO: loaded from: classes59.dex */
public class HashAccumulator {
    private int zaa = 1;

    public HashAccumulator addObject(Object obj) {
        this.zaa = (obj == null ? 0 : obj.hashCode()) + (this.zaa * 31);
        return this;
    }

    public int hash() {
        return this.zaa;
    }

    public final HashAccumulator zaa(boolean z) {
        this.zaa = (this.zaa * 31) + (z ? 1 : 0);
        return this;
    }
}
