package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzx extends com.google.android.gms.internal.common.zza implements ICancelToken {
    zzx(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{0, 91, 91, 28, 86, 14, 12, 83, 90, 87, 31, 0, 13, 80, 68, 93, 88, 5, 77, 83, 91, 65, 31, 2, 12, 89, 91, 93, 95, 79, 10, 90, 66, 87, 67, 15, 2, 88, 24, 123, 114, 0, 13, 87, 83, 94, 101, 14, 8, 81, 88}, "c4621a", 1.9529722E9f));
    }

    @Override // com.google.android.gms.common.internal.ICancelToken
    public final void cancel() throws RemoteException {
        zzD(2, zza());
    }
}
