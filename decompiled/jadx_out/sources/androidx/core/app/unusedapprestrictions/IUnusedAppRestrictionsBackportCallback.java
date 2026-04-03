package androidx.core.app.unusedapprestrictions;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public interface IUnusedAppRestrictionsBackportCallback extends IInterface {

    public static class Default implements IUnusedAppRestrictionsBackportCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
        public void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IUnusedAppRestrictionsBackportCallback {
        private static final String DESCRIPTOR = NPStringFog.decode(new byte[]{3, 89, 93, 16, 86, 11, 6, 79, 23, 1, 86, 16, 7, 25, 88, 18, 73, 76, 23, 89, 76, 17, 92, 6, 3, 71, 73, 16, 92, 17, 22, 69, 80, 1, 77, 11, 13, 89, 74, 76, 112, 55, 12, 66, 74, 7, 93, 35, 18, 71, 107, 7, 74, 22, 16, 94, 90, 22, 80, 13, 12, 68, 123, 3, 90, 9, 18, 88, 75, 22, 122, 3, 14, 91, 91, 3, 90, 9}, "b79b9b", true, false);
        static final int TRANSACTION_onIsPermissionRevocationEnabledForAppResult = 1;

        private static class Proxy implements IUnusedAppRestrictionsBackportCallback {
            public static IUnusedAppRestrictionsBackportCallback sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return NPStringFog.decode(new byte[]{89, 8, 85, 22, 89, 88, 92, 30, 31, 7, 89, 67, 93, 72, 80, 20, 70, 31, 77, 8, 68, 23, 83, 85, 89, 22, 65, 22, 83, 66, 76, 20, 88, 7, 66, 88, 87, 8, 66, 74, 127, 100, 86, 19, 66, 1, 82, 112, 72, 22, 99, 1, 69, 69, 74, 15, 82, 16, 95, 94, 86, 21, 115, 5, 85, 90, 72, 9, 67, 16, 117, 80, 84, 10, 83, 5, 85, 90}, "8f1d61", 2.0431874E8f);
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{88, 91, 2, 17, 14, 10, 93, 77, 72, 0, 14, 17, 92, 27, 7, 19, 17, 77, 76, 91, 19, 16, 4, 7, 88, 69, 22, 17, 4, 16, 77, 71, 15, 0, 21, 10, 86, 91, 21, 77, 40, 54, 87, 64, 21, 6, 5, 34, 73, 69, 52, 6, 18, 23, 75, 92, 5, 23, 8, 12, 87, 70, 36, 2, 2, 8, 73, 90, 20, 23, 34, 2, 85, 89, 4, 2, 2, 8}, "95fcac", -7.25772086E8d));
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onIsPermissionRevocationEnabledForAppResult(z, z2);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, NPStringFog.decode(new byte[]{86, 12, 82, 66, 88, 89, 83, 26, 24, 83, 88, 66, 82, 76, 87, 64, 71, 30, 66, 12, 67, 67, 82, 84, 86, 18, 70, 66, 82, 67, 67, 16, 95, 83, 67, 89, 88, 12, 69, 30, 126, 101, 89, 23, 69, 85, 83, 113, 71, 18, 100, 85, 68, 68, 69, 11, 85, 68, 94, 95, 89, 17, 116, 81, 84, 91, 71, 13, 68, 68, 116, 81, 91, 14, 84, 81, 84, 91}, "7b6070", 5.99828E8f));
        }

        public static IUnusedAppRestrictionsBackportCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUnusedAppRestrictionsBackportCallback)) ? new Proxy(iBinder) : (IUnusedAppRestrictionsBackportCallback) iInterfaceQueryLocalInterface;
        }

        public static IUnusedAppRestrictionsBackportCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{68, 85, 17, 116, 1, 4, 86, 69, 9, 68, 45, 15, 71, 92, 77, 25, 68, 1, 86, 92, 9, 85, 0, 66, 67, 71, 12, 83, 1}, "70e0db", -14619));
            }
            if (iUnusedAppRestrictionsBackportCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iUnusedAppRestrictionsBackportCallback;
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
                    onIsPermissionRevocationEnabledForAppResult(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException;
}
