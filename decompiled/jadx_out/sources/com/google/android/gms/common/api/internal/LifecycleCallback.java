package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class LifecycleCallback {
    protected final LifecycleFragment mLifecycleFragment;

    protected LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.mLifecycleFragment = lifecycleFragment;
    }

    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 6, 67, 95, 95, 82, 22, 13, 88, 67, 16, 87, 64, 2, 94, 91, 81, 84, 90, 6, 23, 94, 94, 22, 101, 39, 124, 25}, "6c7706", 10060));
    }

    public static LifecycleFragment getFragment(Activity activity) {
        return getFragment(new LifecycleActivity(activity));
    }

    public static LifecycleFragment getFragment(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    protected static LifecycleFragment getFragment(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.zzd()) {
            return zzd.zzc(lifecycleActivity.zzb());
        }
        if (lifecycleActivity.zzc()) {
            return zzb.zzc(lifecycleActivity.zza());
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 87, 88, 17, 22, 24, 95, 83, 66, 22, 4, 74, 89, 81, 91, 83, 12, 76, 24, 80, 89, 68, 66, 77, 86, 83, 78, 70, 7, 91, 76, 83, 82, 22, 3, 91, 76, 95, 64, 95, 22, 65, 22}, "8666b8", false, false));
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        Activity lifecycleActivity = this.mLifecycleFragment.getLifecycleActivity();
        Preconditions.checkNotNull(lifecycleActivity);
        return lifecycleActivity;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public void onResume() {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }
}
