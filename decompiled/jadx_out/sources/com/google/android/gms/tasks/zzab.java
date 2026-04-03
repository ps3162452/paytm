package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes56.dex */
final class zzab implements Continuation {
    final Collection zza;

    zzab(Collection collection) {
        this.zza = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zza);
        return Tasks.forResult(arrayList);
    }
}
