package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zacx implements Continuation {
    zacx() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
        if (((Boolean) task.getResult()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, NPStringFog.decode(new byte[]{93, 8, 71, 69, 84, 90, 84, 19, 20, 80, 93, 70, 84, 0, 80, 72, 17, 65, 95, 19, 81, 86, 88, 71, 69, 4, 70, 84, 85}, "1a4114", 171858355L)));
    }
}
