package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public interface IGmsServiceBroker extends IInterface {

    public static abstract class Stub extends Binder implements IGmsServiceBroker {
        public Stub() {
            attachInterface(this, NPStringFog.decode(new byte[]{1, 12, 89, 77, 1, 11, 13, 4, 88, 6, 72, 5, 12, 7, 70, 12, 15, 0, 76, 4, 89, 16, 72, 7, 13, 14, 89, 12, 8, 74, 11, 13, 64, 6, 20, 10, 3, 15, 26, 42, 33, 9, 17, 48, 81, 17, 16, 13, 1, 6, 118, 17, 9, 15, 7, 17}, "bc4cfd", 1.76316759E9d));
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IGmsCallbacks zzabVar;
            if (i > 16777215) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(NPStringFog.decode(new byte[]{82, 93, 12, 23, 2, 14, 94, 85, 13, 92, 75, 0, 95, 86, 19, 86, 12, 5, 31, 85, 12, 74, 75, 2, 94, 95, 12, 86, 11, 79, 88, 92, 21, 92, 23, 15, 80, 94, 79, 112, 34, 12, 66, 97, 4, 75, 19, 8, 82, 87, 35, 75, 10, 10, 84, 64}, "12a9ea", 1.79444835E9d));
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzabVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(NPStringFog.decode(new byte[]{83, 14, 15, 74, 82, 93, 95, 6, 14, 1, 27, 83, 94, 5, 16, 11, 92, 86, 30, 6, 15, 23, 27, 81, 95, 12, 15, 11, 91, 28, 89, 15, 22, 1, 71, 92, 81, 13, 76, 45, 114, 95, 67, 34, 3, 8, 89, 80, 81, 2, 9, 23}, "0abd52", -1.725445888E9d));
                zzabVar = iInterfaceQueryLocalInterface instanceof IGmsCallbacks ? (IGmsCallbacks) iInterfaceQueryLocalInterface : new zzab(strongBinder);
            }
            if (i == 46) {
                getService(zzabVar, parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
                Preconditions.checkNotNull(parcel2);
                parcel2.writeNoException();
                return true;
            }
            if (i == 47) {
                if (parcel.readInt() != 0) {
                    zzak.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            }
            parcel.readInt();
            if (i != 4) {
                parcel.readString();
                switch (i) {
                    case 1:
                        parcel.readString();
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                        break;
                    case 2:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 23:
                    case 25:
                    case 27:
                    case 37:
                    case 38:
                    case 41:
                    case 43:
                        if (parcel.readInt() != 0) {
                        }
                        break;
                    case 9:
                        parcel.readString();
                        parcel.createStringArray();
                        parcel.readString();
                        parcel.readStrongBinder();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                        break;
                    case 10:
                        parcel.readString();
                        parcel.createStringArray();
                        break;
                    case 19:
                        parcel.readStrongBinder();
                        if (parcel.readInt() != 0) {
                        }
                        break;
                    case 20:
                    case 30:
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                        break;
                    case 34:
                        parcel.readString();
                        break;
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    void getService(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException;
}
