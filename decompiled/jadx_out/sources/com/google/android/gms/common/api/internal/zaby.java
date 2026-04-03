package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaby extends com.google.android.gms.internal.base.zaa implements IStatusCallback {
    zaby(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{85, 14, 85, 79, 3, 94, 89, 6, 84, 4, 74, 80, 88, 5, 74, 14, 13, 85, 24, 6, 85, 18, 74, 82, 89, 12, 85, 14, 10, 31, 87, 17, 81, 79, 13, 95, 66, 4, 74, 15, 5, 93, 24, 40, 107, 21, 5, 69, 67, 18, 123, 0, 8, 93, 84, 0, 91, 10}, "6a8ad1", -1.9071818E8d));
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        throw null;
    }
}
