package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaz extends RemoteCreator {
    private static final zaz zaa = new zaz();

    private zaz() {
        super(NPStringFog.decode(new byte[]{87, 13, 15, 29, 1, 11, 91, 5, 14, 86, 72, 5, 90, 6, 16, 92, 15, 0, 26, 5, 15, 64, 72, 7, 91, 15, 15, 92, 8, 74, 65, 11, 76, 96, 15, 3, 90, 43, 12, 113, 19, 16, 64, 13, 12, 112, 20, 1, 85, 22, 13, 65, 47, 9, 68, 14}, "4bb3fd", 1.080193E9f));
    }

    public static View zaa(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        zaz zazVar = zaa;
        try {
            return (View) ObjectWrapper.unwrap(((zam) zazVar.getRemoteCreatorInstance(context)).zae(ObjectWrapper.wrap(context), new zax(1, i, i2, null)));
        } catch (Exception e) {
            throw new RemoteCreator.RemoteCreatorException(NPStringFog.decode(new byte[]{115, 95, 23, 85, 6, 67, 94, 95, 22, 25, 5, 6, 68, 16, 0, 76, 22, 23, 95, 94, 66, 78, 11, 23, 88, 16, 17, 80, 24, 6, 16}, "00b9bc", -1.951997386E9d) + i + NPStringFog.decode(new byte[]{18, 82, 95, 5, 17, 80, 93, 95, 94, 19, 17}, "231a13", -8.83852567E8d) + i2, e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{0, 86, 92, 26, 83, 90, 12, 94, 93, 81, 26, 84, 13, 93, 67, 91, 93, 81, 77, 94, 92, 71, 26, 86, 12, 84, 92, 91, 90, 27, 10, 87, 69, 81, 70, 91, 2, 85, 31, 125, 103, 92, 4, 87, 120, 90, 118, 64, 23, 77, 94, 90, 119, 71, 6, 88, 69, 91, 70}, "c91445", 4.35316972E8d));
        return iInterfaceQueryLocalInterface instanceof zam ? (zam) iInterfaceQueryLocalInterface : new zam(iBinder);
    }
}
