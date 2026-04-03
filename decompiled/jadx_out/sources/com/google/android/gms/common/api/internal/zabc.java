package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zabc extends com.google.android.gms.internal.base.zau {
    final zabe zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zabc(zabe zabeVar, Looper looper) {
        super(looper);
        this.zaa = zabeVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zabe.zaj(this.zaa);
                break;
            case 2:
                zabe.zai(this.zaa);
                break;
            default:
                Log.w(NPStringFog.decode(new byte[]{113, 10, 88, 6, 90, 87, 119, 21, 94, 34, 90, 91, 83, 11, 67, 40, 91, 66, 90}, "6e7a62", 723288319L), NPStringFog.decode(new byte[]{97, 93, 10, 10, 9, 78, 90, 19, 12, 1, 21, 74, 85, 84, 4, 68, 15, 93, 14, 19}, "43adf9", -20978) + message.what);
                break;
        }
    }
}
