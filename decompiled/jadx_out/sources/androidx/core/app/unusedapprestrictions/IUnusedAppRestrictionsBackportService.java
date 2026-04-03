package androidx.core.app.unusedapprestrictions;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public interface IUnusedAppRestrictionsBackportService extends IInterface {

    public static class Default implements IUnusedAppRestrictionsBackportService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IUnusedAppRestrictionsBackportService {
        private static final String DESCRIPTOR = NPStringFog.decode(new byte[]{3, 87, 82, 65, 12, 12, 6, 65, 24, 80, 12, 23, 7, 23, 87, 67, 19, 75, 23, 87, 67, 64, 6, 1, 3, 73, 70, 65, 6, 22, 22, 75, 95, 80, 23, 12, 13, 87, 69, 29, 42, 48, 12, 76, 69, 86, 7, 36, 18, 73, 100, 86, 16, 17, 16, 80, 85, 71, 10, 10, 12, 74, 116, 82, 0, 14, 18, 86, 68, 71, 48, 0, 16, 79, 95, 80, 6}, "b963ce", -734869155L);
        static final int TRANSACTION_isPermissionRevocationEnabledForApp = 1;

        private static class Proxy implements IUnusedAppRestrictionsBackportService {
            public static IUnusedAppRestrictionsBackportService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return NPStringFog.decode(new byte[]{2, 87, 83, 74, 12, 94, 7, 65, 25, 91, 12, 69, 6, 23, 86, 72, 19, 25, 22, 87, 66, 75, 6, 83, 2, 73, 71, 74, 6, 68, 23, 75, 94, 91, 23, 94, 12, 87, 68, 22, 42, 98, 13, 76, 68, 93, 7, 118, 19, 73, 101, 93, 16, 67, 17, 80, 84, 76, 10, 88, 13, 74, 117, 89, 0, 92, 19, 86, 69, 76, 48, 82, 17, 79, 94, 91, 6}, "c978c7", 31310);
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
            public void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{86, 91, 5, 70, 91, 13, 83, 77, 79, 87, 91, 22, 82, 27, 0, 68, 68, 74, 66, 91, 20, 71, 81, 0, 86, 69, 17, 70, 81, 23, 67, 71, 8, 87, 64, 13, 88, 91, 18, 26, 125, 49, 89, 64, 18, 81, 80, 37, 71, 69, 51, 81, 71, 16, 69, 92, 2, 64, 93, 11, 89, 70, 35, 85, 87, 15, 71, 90, 19, 64, 103, 1, 69, 67, 8, 87, 81}, "75a44d", -162054324L));
                    parcelObtain.writeStrongBinder(iUnusedAppRestrictionsBackportCallback != null ? iUnusedAppRestrictionsBackportCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().isPermissionRevocationEnabledForApp(iUnusedAppRestrictionsBackportCallback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, NPStringFog.decode(new byte[]{81, 93, 92, 17, 91, 94, 84, 75, 22, 0, 91, 69, 85, 29, 89, 19, 68, 25, 69, 93, 77, 16, 81, 83, 81, 67, 72, 17, 81, 68, 68, 65, 81, 0, 64, 94, 95, 93, 75, 77, 125, 98, 94, 70, 75, 6, 80, 118, 64, 67, 106, 6, 71, 67, 66, 90, 91, 23, 93, 88, 94, 64, 122, 2, 87, 92, 64, 92, 74, 23, 103, 82, 66, 69, 81, 0, 81}, "038c47", false, true));
        }

        public static IUnusedAppRestrictionsBackportService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUnusedAppRestrictionsBackportService)) ? new Proxy(iBinder) : (IUnusedAppRestrictionsBackportService) iInterfaceQueryLocalInterface;
        }

        public static IUnusedAppRestrictionsBackportService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IUnusedAppRestrictionsBackportService iUnusedAppRestrictionsBackportService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{70, 87, 16, 113, 4, 86, 84, 71, 8, 65, 40, 93, 69, 94, 76, 28, 65, 83, 84, 94, 8, 80, 5, 16, 65, 69, 13, 86, 4}, "52d5a0", 1.442416838E9d));
            }
            if (iUnusedAppRestrictionsBackportService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iUnusedAppRestrictionsBackportService;
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
                    isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws RemoteException;
}
