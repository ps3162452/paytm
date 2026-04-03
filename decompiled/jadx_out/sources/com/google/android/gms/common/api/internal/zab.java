package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zab extends ActivityLifecycleObserver {
    private final WeakReference zaa;

    zab(zaa zaaVar) {
        this.zaa = new WeakReference(zaaVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        zaa zaaVar = (zaa) this.zaa.get();
        if (zaaVar == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{50, 88, 84, 25, 71, 80, 20, 87, 84, 77, 19, 80, 5, 68, 88, 79, 90, 69, 31, 16, 89, 88, 64, 17, 7, 92, 67, 92, 82, 85, 31, 16, 83, 92, 86, 95, 70, 119, 114, 30, 87}, "f01931", -316030801L));
        }
        zaaVar.zac(runnable);
        return this;
    }
}
