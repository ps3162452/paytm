package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class LifecycleActivity {
    private final Object zza;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, NPStringFog.decode(new byte[]{119, 0, 16, 93, 68, 88, 66, 26, 68, 89, 71, 66, 66, 67, 10, 91, 70, 17, 84, 6, 68, 90, 71, 93, 90}, "6cd421", false, true));
        this.zza = activity;
    }

    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    public final Activity zza() {
        return (Activity) this.zza;
    }

    public final FragmentActivity zzb() {
        return (FragmentActivity) this.zza;
    }

    public final boolean zzc() {
        return this.zza instanceof Activity;
    }

    public final boolean zzd() {
        return this.zza instanceof FragmentActivity;
    }
}
