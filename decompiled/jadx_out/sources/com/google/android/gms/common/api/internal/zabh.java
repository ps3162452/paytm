package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zabh extends com.google.android.gms.internal.base.zau {
    final zabi zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zabh(zabi zabiVar, Looper looper) {
        super(looper);
        this.zaa = zabiVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                ((zabg) message.obj).zab(this.zaa);
                return;
            case 2:
                throw ((RuntimeException) message.obj);
            default:
                Log.w(NPStringFog.decode(new byte[]{116, 39, 118, 49, 22, 85, 71, 3, 120, 3, 12, 85, 84, 3, 71}, "3f5bb4", -2.0249961E9f), NPStringFog.decode(new byte[]{103, 15, 14, 10, 94, 22, 92, 65, 8, 1, 66, 18, 83, 6, 0, 68, 88, 5, 8, 65}, "2aed1a", false) + message.what);
                return;
        }
    }
}
