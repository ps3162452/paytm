package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public interface IResultReceiver extends IInterface {

    public static class Default implements IResultReceiver {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i, Bundle bundle) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IResultReceiver {
        private static final String DESCRIPTOR = NPStringFog.decode(new byte[]{85, 94, 83, 22, 9, 15, 80, 30, 68, 17, 22, 22, 91, 66, 67, 74, 16, 82, 26, 95, 68, 74, 47, 52, 81, 67, 66, 8, 18, 52, 81, 83, 82, 13, 16, 3, 70}, "407dff", true);
        static final int TRANSACTION_send = 1;

        private static class Proxy implements IResultReceiver {
            public static IResultReceiver sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return NPStringFog.decode(new byte[]{0, 92, 7, 67, 91, 91, 5, 28, 16, 68, 68, 66, 14, 64, 23, 31, 66, 6, 79, 93, 16, 31, 125, 96, 4, 65, 22, 93, 64, 96, 4, 81, 6, 88, 66, 87, 19}, "a2c142", true);
            }

            @Override // android.support.v4.os.IResultReceiver
            public void send(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{81, 89, 7, 67, 9, 81, 84, 25, 16, 68, 22, 72, 95, 69, 23, 31, 16, 12, 30, 88, 16, 31, 47, 106, 85, 68, 22, 93, 18, 106, 85, 84, 6, 88, 16, 93, 66}, "07c1f8", false));
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().send(i, bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, NPStringFog.decode(new byte[]{4, 91, 80, 75, 94, 12, 1, 27, 71, 76, 65, 21, 10, 71, 64, 23, 71, 81, 75, 90, 71, 23, 120, 55, 0, 70, 65, 85, 69, 55, 0, 86, 81, 80, 71, 0, 23}, "e5491e", false, false));
        }

        public static IResultReceiver asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IResultReceiver)) ? new Proxy(iBinder) : (IResultReceiver) iInterfaceQueryLocalInterface;
        }

        public static IResultReceiver getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IResultReceiver iResultReceiver) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{70, 84, 77, 38, 87, 80, 84, 68, 85, 22, 123, 91, 69, 93, 17, 75, 18, 85, 84, 93, 85, 7, 86, 22, 65, 70, 80, 1, 87}, "519b26", -26309));
            }
            if (iResultReceiver == null) {
                return false;
            }
            Proxy.sDefaultImpl = iResultReceiver;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    send(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void send(int i, Bundle bundle) throws RemoteException;
}
