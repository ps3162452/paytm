package androidx.core.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class UnusedAppRestrictionsBackportServiceConnection implements ServiceConnection {
    private final Context mContext;
    ResolvableFuture<Integer> mResultFuture;
    IUnusedAppRestrictionsBackportService mUnusedAppRestrictionsService = null;
    private boolean mHasBoundService = false;

    UnusedAppRestrictionsBackportServiceConnection(Context context) {
        this.mContext = context;
    }

    private IUnusedAppRestrictionsBackportCallback getBackportCallback() {
        return new IUnusedAppRestrictionsBackportCallback.Stub(this) { // from class: androidx.core.content.UnusedAppRestrictionsBackportServiceConnection.1
            final UnusedAppRestrictionsBackportServiceConnection this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException {
                if (!z) {
                    this.this$0.mResultFuture.set(0);
                    Log.e(NPStringFog.decode(new byte[]{105, 4, 1, 88, 88, 94, 92, 40, 3, 93, 88, 94, 92, 23, 33, 92, 84, 73, 88, 17}, "9eb399", true), NPStringFog.decode(new byte[]{52, 13, 5, 85, 88, 84, 65, 23, 11, 23, 70, 84, 21, 17, 13, 82, 66, 84, 65, 23, 12, 82, 20, 65, 4, 17, 9, 94, 71, 66, 8, 12, 10, 23, 70, 84, 23, 12, 7, 86, 64, 88, 14, 13, 68, 68, 81, 69, 21, 10, 10, 80, 20, 87, 19, 12, 9, 23, 64, 89, 4, 67, 6, 86, 87, 90, 17, 12, 22, 67}, "acd741", 14263));
                } else if (z2) {
                    this.this$0.mResultFuture.set(3);
                } else {
                    this.this$0.mResultFuture.set(2);
                }
            }
        };
    }

    public void connectAndFetchResult(ResolvableFuture<Integer> resolvableFuture) {
        if (this.mHasBoundService) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 86, 85, 89, 25, 97, 89, 66, 69, 84, 93, 117, 71, 71, 100, 84, 74, 64, 69, 94, 85, 69, 80, 91, 89, 68, 116, 80, 90, 95, 71, 88, 68, 69, 106, 81, 69, 65, 95, 82, 92, 119, 88, 89, 88, 84, 90, 64, 94, 88, 88, 17, 90, 85, 89, 23, 89, 95, 85, 77, 23, 85, 83, 17, 91, 91, 66, 89, 82, 17, 86, 90, 84, 82, 24}, "776194", -1773760425L));
        }
        this.mHasBoundService = true;
        this.mResultFuture = resolvableFuture;
        this.mContext.bindService(new Intent(NPStringFog.decode(new byte[]{85, 11, 92, 64, 14, 94, 80, 75, 75, 71, 17, 71, 91, 23, 76, 28, 20, 89, 65, 22, 93, 86, 0, 71, 68, 23, 93, 65, 21, 69, 93, 6, 76, 91, 14, 89, 71, 75, 89, 81, 21, 94, 91, 11, 22, 113, 20, 68, 64, 10, 85, 103, 15, 66, 71, 0, 92, 115, 17, 71, 102, 0, 75, 70, 19, 94, 87, 17, 81, 93, 15, 68, 118, 4, 91, 89, 17, 88, 70, 17, 107, 87, 19, 65, 93, 6, 93}, "4e82a7", -14992)).setPackage(PackageManagerCompat.getPermissionRevocationVerifierApp(this.mContext.getPackageManager())), this, 1);
    }

    public void disconnectFromService() {
        if (!this.mHasBoundService) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{0, 80, 86, 82, 106, 84, 16, 79, 81, 85, 92, 17, 15, 76, 75, 66, 25, 83, 7, 25, 91, 87, 85, 93, 7, 93, 24, 84, 92, 87, 13, 75, 93, 22, 76, 95, 0, 80, 86, 82}, "b98691", false, false));
        }
        this.mHasBoundService = false;
        this.mContext.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService iUnusedAppRestrictionsBackportServiceAsInterface = IUnusedAppRestrictionsBackportService.Stub.asInterface(iBinder);
        this.mUnusedAppRestrictionsService = iUnusedAppRestrictionsBackportServiceAsInterface;
        try {
            iUnusedAppRestrictionsBackportServiceAsInterface.isPermissionRevocationEnabledForApp(getBackportCallback());
        } catch (RemoteException e) {
            this.mResultFuture.set(0);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.mUnusedAppRestrictionsService = null;
    }
}
