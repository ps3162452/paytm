package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzb extends Fragment implements LifecycleFragment {
    private static final WeakHashMap zza = new WeakHashMap();
    private final Map zzb = Collections.synchronizedMap(new ArrayMap());
    private int zzc = 0;
    private Bundle zzd;

    public static zzb zzc(Activity activity) {
        zzb zzbVar;
        WeakHashMap weakHashMap = zza;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference == null || (zzbVar = (zzb) weakReference.get()) == null) {
            try {
                zzbVar = (zzb) activity.getFragmentManager().findFragmentByTag(NPStringFog.decode(new byte[]{42, 92, 7, 82, 84, 78, 5, 89, 4, 113, 69, 86, 1, 88, 4, 89, 67, 126, 11, 69, 13}, "f5a777", -1272173995L));
                if (zzbVar == null || zzbVar.isRemoving()) {
                    zzbVar = new zzb();
                    activity.getFragmentManager().beginTransaction().add(zzbVar, NPStringFog.decode(new byte[]{120, 91, 7, 84, 5, 72, 87, 94, 4, 119, 20, 80, 83, 95, 4, 95, 18, 120, 89, 66, 13}, "42a1f1", -1.04250304E9f)).commitAllowingStateLoss();
                }
                weakHashMap.put(activity, new WeakReference(zzbVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 16, 83, 2, 90, 80, 91, 22, 18, 18, 94, 65, 93, 66, 70, 4, 80, 21, 121, 11, 84, 0, 84, 76, 86, 14, 87, 35, 69, 84, 82, 15, 87, 11, 67, 124, 88, 18, 94, 69, 94, 70, 21, 12, 93, 17, 23, 84, 21, 46, 91, 3, 82, 86, 76, 1, 94, 0, 113, 71, 84, 5, 95, 0, 89, 65, 124, 15, 66, 9}, "5b2e75", true, false), e);
            }
        }
        return zzbVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        if (this.zzb.containsKey(str)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 95, 7, 87, 84, 77, 0, 90, 4, 113, 86, 88, 15, 84, 0, 81, 92, 20, 20, 95, 21, 90, 23, 64, 2, 81, 65}, "c6a274", 5.02814373E8d) + str + NPStringFog.decode(new byte[]{68, 0, 10, 64, 4, 82, 0, 24, 70, 83, 5, 87, 1, 5, 70, 70, 14, 19, 16, 9, 15, 65, 65, 85, 22, 0, 1, 95, 4, 93, 16, 79}, "daf2a3", -30384));
        }
        this.zzb.put(str, lifecycleCallback);
        if (this.zzc > 0) {
            new zzi(Looper.getMainLooper()).post(new zza(this, lifecycleCallback, str));
        }
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzb.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzc > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzc >= 2;
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzc = 1;
        this.zzd = bundle;
        for (Map.Entry entry : this.zzb.entrySet()) {
            ((LifecycleCallback) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzc = 5;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onDestroy();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzc = 3;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onResume();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.zzb.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzc = 2;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStart();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzc = 4;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStop();
        }
    }
}
