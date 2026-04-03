package com.google.android.gms.internal.base;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zac {
    private static final ClassLoader zaa = zac.class.getClassLoader();

    private zac() {
    }

    public static Parcelable zaa(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void zab(Parcel parcel) {
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail <= 0) {
            return;
        }
        throw new BadParcelableException(NPStringFog.decode(new byte[]{98, 87, 69, 83, 81, 95, 18, 82, 86, 68, 85, 19, 92, 89, 67, 16, 82, 70, 94, 90, 78, 16, 87, 92, 92, 69, 66, 93, 81, 87, 30, 22, 66, 94, 70, 86, 83, 82, 23, 67, 93, 73, 87, 12, 23}, "267043", -27987) + iDataAvail);
    }

    public static void zac(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void zad(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static void zae(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }
}
