package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public interface INotificationSideChannel extends IInterface {

    public static class Default implements INotificationSideChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(String str, int i, String str2) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(String str) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements INotificationSideChannel {
        private static final String DESCRIPTOR = NPStringFog.decode(new byte[]{82, 95, 5, 66, 14, 15, 87, 31, 18, 69, 17, 22, 92, 67, 21, 30, 23, 82, 29, 80, 17, 64, 79, 47, 125, 94, 21, 89, 7, 15, 80, 80, 21, 89, 14, 8, 96, 88, 5, 85, 34, 14, 82, 95, 15, 85, 13}, "31a0af", 2.8291808E8f);
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        private static class Proxy implements INotificationSideChannel {
            public static INotificationSideChannel sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(String str, int i, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{80, 15, 92, 66, 92, 11, 85, 79, 75, 69, 67, 18, 94, 19, 76, 30, 69, 86, 31, 0, 72, 64, 29, 43, 127, 14, 76, 89, 85, 11, 82, 0, 76, 89, 92, 12, 98, 8, 92, 85, 112, 10, 80, 15, 86, 85, 95}, "1a803b", false));
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().cancel(str, i, str2);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{86, 94, 86, 70, 86, 13, 83, 30, 65, 65, 73, 20, 88, 66, 70, 26, 79, 80, 25, 81, 66, 68, 23, 45, 121, 95, 70, 93, 95, 13, 84, 81, 70, 93, 86, 10, 100, 89, 86, 81, 122, 12, 86, 94, 92, 81, 85}, "70249d", 3788));
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().cancelAll(str);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return NPStringFog.decode(new byte[]{81, 13, 84, 70, 9, 88, 84, 77, 67, 65, 22, 65, 95, 17, 68, 26, 16, 5, 30, 2, 64, 68, 72, 120, 126, 12, 68, 93, 0, 88, 83, 2, 68, 93, 9, 95, 99, 10, 84, 81, 37, 89, 81, 13, 94, 81, 10}, "0c04f1", 6939);
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{7, 93, 85, 67, 95, 88, 2, 29, 66, 68, 64, 65, 9, 65, 69, 31, 70, 5, 72, 82, 65, 65, 30, 120, 40, 92, 69, 88, 86, 88, 5, 82, 69, 88, 95, 95, 53, 90, 85, 84, 115, 89, 7, 93, 95, 84, 92}, "f31101", 1.9067012E9f));
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().notify(str, i, str2, notification);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, NPStringFog.decode(new byte[]{82, 93, 85, 67, 88, 15, 87, 29, 66, 68, 71, 22, 92, 65, 69, 31, 65, 82, 29, 82, 65, 65, 25, 47, 125, 92, 69, 88, 81, 15, 80, 82, 69, 88, 88, 8, 96, 90, 85, 84, 116, 14, 82, 93, 95, 84, 91}, "33117f", -1742851491L));
        }

        public static INotificationSideChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INotificationSideChannel)) ? new Proxy(iBinder) : (INotificationSideChannel) iInterfaceQueryLocalInterface;
        }

        public static INotificationSideChannel getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(INotificationSideChannel iNotificationSideChannel) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{68, 93, 69, 119, 84, 4, 86, 77, 93, 71, 120, 15, 71, 84, 25, 26, 17, 1, 86, 84, 93, 86, 85, 66, 67, 79, 88, 80, 84}, "78131b", 1150363540L));
            }
            if (iNotificationSideChannel == null) {
                return false;
            }
            Proxy.sDefaultImpl = iNotificationSideChannel;
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
                    notify(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelAll(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void cancel(String str, int i, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i, String str2, Notification notification) throws RemoteException;
}
