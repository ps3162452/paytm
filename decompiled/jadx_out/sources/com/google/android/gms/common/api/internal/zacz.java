package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zacz extends com.google.android.gms.internal.base.zau {
    final zada zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zacz(zada zadaVar, Looper looper) {
        super(looper);
        this.zaa = zadaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                PendingResult pendingResult = (PendingResult) message.obj;
                synchronized (this.zaa.zae) {
                    zada zadaVar = (zada) Preconditions.checkNotNull(this.zaa.zab);
                    if (pendingResult == null) {
                        zadaVar.zaj(new Status(13, NPStringFog.decode(new byte[]{108, 75, 0, 10, 75, 80, 87, 75, 12, 68, 74, 83, 76, 76, 19, 10, 93, 82, 24, 87, 20, 8, 84}, "89ad86", -6.62797229E8d)));
                    } else if (pendingResult instanceof zacp) {
                        zadaVar.zaj(((zacp) pendingResult).zaa());
                    } else {
                        zadaVar.zai(pendingResult);
                    }
                    break;
                }
                return;
            case 1:
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e(NPStringFog.decode(new byte[]{53, 74, 82, 10, 65, 80, 14, 74, 94, 1, 86, 100, 4, 75, 70, 8, 70, 127, 12, 72, 95}, "a83d26", -8013), NPStringFog.decode(new byte[]{48, 67, 95, 67, 91, 93, 7, 22, 84, 79, 81, 85, 18, 66, 88, 88, 92, 16, 13, 88, 17, 67, 90, 85, 66, 66, 67, 86, 92, 67, 4, 89, 67, 90, 83, 68, 11, 89, 95, 23, 69, 95, 16, 93, 84, 69, 18, 68, 10, 68, 84, 86, 86, 10, 66}, "b61720", 17180).concat(String.valueOf(runtimeException.getMessage())));
                throw runtimeException;
            default:
                Log.e(NPStringFog.decode(new byte[]{102, 19, 81, 94, 67, 83, 93, 19, 93, 85, 84, 103, 87, 18, 69, 92, 68, 124, 95, 17, 92}, "2a0005", true), NPStringFog.decode(new byte[]{48, 66, 87, 15, 69, 5, 11, 66, 91, 0, 66, 10, 11, 94, 100, 4, 69, 22, 8, 68, 126, 0, 88, 7, 8, 85, 68, 65, 68, 6, 7, 85, 95, 23, 83, 7, 68, 69, 88, 10, 88, 12, 19, 94, 22, 12, 83, 16, 23, 81, 81, 4, 22, 23, 29, 64, 83, 91, 22}, "d06a6c", -1757817271L) + message.what);
                return;
        }
    }
}
