package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
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
public final class zzd extends Fragment implements LifecycleFragment {
    private static final WeakHashMap zza = new WeakHashMap();
    private final Map zzb = Collections.synchronizedMap(new ArrayMap());
    private int zzc = 0;
    private Bundle zzd;

    public static zzd zzc(FragmentActivity fragmentActivity) {
        zzd zzdVar;
        WeakHashMap weakHashMap = zza;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference == null || (zzdVar = (zzd) weakReference.get()) == null) {
            try {
                zzdVar = (zzd) fragmentActivity.getSupportFragmentManager().findFragmentByTag(NPStringFog.decode(new byte[]{103, 22, 70, 17, 87, 69, 64, 47, 95, 7, 93, 84, 77, 0, 90, 4, 126, 69, 85, 4, 91, 4, 86, 67, 125, 14, 70, 13}, "4c6a87", true));
                if (zzdVar == null || zzdVar.isRemoving()) {
                    zzdVar = new zzd();
                    fragmentActivity.getSupportFragmentManager().beginTransaction().add(zzdVar, NPStringFog.decode(new byte[]{98, 77, 22, 21, 91, 22, 69, 116, 15, 3, 81, 7, 72, 91, 10, 0, 114, 22, 80, 95, 11, 0, 90, 16, 120, 85, 22, 9}, "18fe4d", -1.5560762E9f)).commitAllowingStateLoss();
                }
                weakHashMap.put(fragmentActivity, new WeakReference(zzdVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 16, 0, 86, 14, 0, 12, 22, 65, 70, 10, 17, 10, 66, 21, 80, 4, 69, 49, 23, 17, 65, 12, 23, 22, 46, 8, 87, 6, 6, 27, 1, 13, 84, 37, 23, 3, 5, 12, 84, 13, 17, 43, 15, 17, 93, 67, 12, 17, 66, 15, 94, 23, 69, 3, 66, 50, 68, 19, 21, 13, 16, 21, 125, 10, 3, 7, 1, 24, 82, 15, 0, 36, 16, 0, 86, 14, 0, 12, 22, 40, 92, 19, 9}, "bba1ce", 7.66961699E8d), e);
            }
        }
        return zzdVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        if (this.zzb.containsKey(str)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 13, 80, 86, 83, 29, 82, 8, 83, 112, 81, 8, 93, 6, 87, 80, 91, 68, 70, 13, 66, 91, 16, 16, 80, 3, 22}, "1d630d", true) + str + NPStringFog.decode(new byte[]{24, 5, 85, 20, 0, 84, 92, 29, 25, 7, 1, 81, 93, 0, 25, 18, 10, 21, 76, 12, 80, 21, 69, 83, 74, 5, 94, 11, 0, 91, 76, 74}, "8d9fe5", -5.16764375E8d));
        }
        this.zzb.put(str, lifecycleCallback);
        if (this.zzc > 0) {
            new zzi(Looper.getMainLooper()).post(new zzc(this, lifecycleCallback, str));
        }
    }

    @Override // androidx.fragment.app.Fragment
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
    public final /* synthetic */ Activity getLifecycleActivity() {
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

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzc = 1;
        this.zzd = bundle;
        for (Map.Entry entry : this.zzb.entrySet()) {
            ((LifecycleCallback) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzc = 5;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzc = 3;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzc = 2;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzc = 4;
        Iterator it = this.zzb.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStop();
        }
    }
}
