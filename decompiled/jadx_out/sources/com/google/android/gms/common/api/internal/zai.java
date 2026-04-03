package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zai {
    public final int zac;

    public zai(int i) {
        this.zac = i;
    }

    static /* bridge */ /* synthetic */ Status zah(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + NPStringFog.decode(new byte[]{91, 65}, "aad657", 1.068481506E9d) + remoteException.getLocalizedMessage());
    }

    public abstract void zad(Status status);

    public abstract void zae(Exception exc);

    public abstract void zaf(zabq zabqVar) throws DeadObjectException;

    public abstract void zag(zaad zaadVar, boolean z);
}
