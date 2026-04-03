package com.google.android.gms.common.api.internal;

import android.app.Activity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaa extends LifecycleCallback {
    private List zaa;

    private zaa(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.zaa = new ArrayList();
        this.mLifecycleFragment.addCallback(NPStringFog.decode(new byte[]{40, 91, 84, 87, 81, 76, 7, 94, 87, 125, 80, 70, 1, 64, 68, 87, 64, 122, 10, 97, 70, 93, 66}, "d22225", -9.18339E8f), this);
    }

    static /* bridge */ /* synthetic */ zaa zaa(Activity activity) {
        zaa zaaVar;
        synchronized (activity) {
            LifecycleFragment fragment = getFragment(activity);
            zaaVar = (zaa) fragment.getCallbackOrNull(NPStringFog.decode(new byte[]{46, 94, 82, 85, 85, 73, 1, 91, 81, 127, 84, 67, 7, 69, 66, 85, 68, 127, 12, 100, 64, 95, 70}, "b74060", 1.21242923E9d), zaa.class);
            if (zaaVar == null) {
                zaaVar = new zaa(fragment);
            }
        }
        return zaaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zac(Runnable runnable) {
        synchronized (this) {
            this.zaa.add(runnable);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        List list;
        synchronized (this) {
            list = this.zaa;
            this.zaa = new ArrayList();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
