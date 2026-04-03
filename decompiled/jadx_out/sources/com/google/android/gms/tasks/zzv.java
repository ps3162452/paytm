package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
final class zzv extends LifecycleCallback {
    private final List zza;

    private zzv(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.zza = new ArrayList();
        this.mLifecycleFragment.addCallback(NPStringFog.decode(new byte[]{98, 3, 69, 82, 118, 10, 101, 22, 89, 73, 122, 5, 90, 14, 84, 88, 90, 15}, "6b699d", true), this);
    }

    public static zzv zza(Activity activity) {
        LifecycleFragment fragment = getFragment(activity);
        zzv zzvVar = (zzv) fragment.getCallbackOrNull(NPStringFog.decode(new byte[]{55, 82, 67, 90, 120, 87, 48, 71, 95, 65, 116, 88, 15, 95, 82, 80, 84, 82}, "c30179", false, true), zzv.class);
        return zzvVar == null ? new zzv(fragment) : zzvVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        synchronized (this.zza) {
            Iterator it = this.zza.iterator();
            while (it.hasNext()) {
                zzq zzqVar = (zzq) ((WeakReference) it.next()).get();
                if (zzqVar != null) {
                    zzqVar.zzc();
                }
            }
            this.zza.clear();
        }
    }

    public final void zzb(zzq zzqVar) {
        synchronized (this.zza) {
            this.zza.add(new WeakReference(zzqVar));
        }
    }
}
