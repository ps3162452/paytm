package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public interface IObjectWrapper extends IInterface {

    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IObjectWrapper {
        public Stub() {
            super(NPStringFog.decode(new byte[]{83, 12, 95, 23, 80, 90, 95, 4, 94, 92, 25, 84, 94, 7, 64, 86, 94, 81, 30, 4, 95, 74, 25, 81, 73, 13, 83, 84, 94, 86, 30, 42, 125, 91, 93, 80, 83, 23, 101, 75, 86, 69, 64, 6, 64}, "0c2975", false));
        }

        public static IObjectWrapper asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{83, 90, 12, 26, 1, 86, 95, 82, 13, 81, 72, 88, 94, 81, 19, 91, 15, 93, 30, 82, 12, 71, 72, 93, 73, 91, 0, 89, 15, 90, 30, 124, 46, 86, 12, 92, 83, 65, 54, 70, 7, 73, 64, 80, 19}, "05a4f9", 1.3364268E9f));
            return iInterfaceQueryLocalInterface instanceof IObjectWrapper ? (IObjectWrapper) iInterfaceQueryLocalInterface : new zzb(iBinder);
        }
    }
}
