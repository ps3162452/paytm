package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zau;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zad extends zau {
    final GoogleApiAvailability zaa;
    private final Context zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zad(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.zaa = googleApiAvailability;
        this.zab = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                int iIsGooglePlayServicesAvailable = this.zaa.isGooglePlayServicesAvailable(this.zab);
                if (this.zaa.isUserResolvableError(iIsGooglePlayServicesAvailable)) {
                    this.zaa.showErrorNotification(this.zab, iIsGooglePlayServicesAvailable);
                }
                break;
            default:
                Log.w(NPStringFog.decode(new byte[]{119, 94, 89, 84, 84, 83, 113, 65, 95, 114, 78, 87, 89, 93, 87, 81, 81, 90, 89, 69, 79}, "016386", false, false), NPStringFog.decode(new byte[]{114, 11, 89, 19, 68, 69, 93, 10, 88, 67, 16, 13, 89, 19, 23, 64, 95, 69, 94, 5, 89, 80, 92, 0, 22, 16, 95, 93, 67, 69, 91, 1, 68, 71, 81, 2, 83, 94, 23}, "6d740e", -830889701L) + message.what);
                break;
        }
    }
}
