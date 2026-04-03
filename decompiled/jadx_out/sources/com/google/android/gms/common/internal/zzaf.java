package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class zzaf extends com.google.android.gms.internal.common.zzb implements zzag {
    public static zzag zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{82, 87, 91, 31, 5, 9, 94, 95, 90, 84, 76, 7, 95, 92, 68, 94, 11, 2, 31, 95, 91, 66, 76, 5, 94, 85, 91, 94, 12, 72, 88, 86, 66, 84, 16, 8, 80, 84, 24, 120, 37, 9, 94, 95, 90, 84, 33, 3, 67, 76, 95, 87, 11, 5, 80, 76, 83, 66, 35, 22, 88}, "1861bf", 1.3127665E9f));
        return iInterfaceQueryLocalInterface instanceof zzag ? (zzag) iInterfaceQueryLocalInterface : new zzae(iBinder);
    }
}
