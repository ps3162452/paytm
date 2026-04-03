package com.google.android.gms.tasks;

/* JADX INFO: loaded from: classes56.dex */
final class zzs implements OnTokenCanceledListener {
    final TaskCompletionSource zza;

    zzs(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public final void onCanceled() {
        this.zza.zza.zzc();
    }
}
