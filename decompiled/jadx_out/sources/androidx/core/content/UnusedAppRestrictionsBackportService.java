package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public abstract class UnusedAppRestrictionsBackportService extends Service {
    public static final String ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION = NPStringFog.decode(new byte[]{81, 11, 84, 67, 93, 10, 84, 75, 67, 68, 66, 19, 95, 23, 68, 31, 71, 13, 69, 22, 85, 85, 83, 19, 64, 23, 85, 66, 70, 17, 89, 6, 68, 88, 93, 13, 67, 75, 81, 82, 70, 10, 95, 11, 30, 114, 71, 16, 68, 10, 93, 100, 92, 22, 67, 0, 84, 112, 66, 19, 98, 0, 67, 69, 64, 10, 83, 17, 89, 94, 92, 16, 114, 4, 83, 90, 66, 12, 66, 17, 99, 84, 64, 21, 89, 6, 85}, "0e012c", -7.018301E8f);
    private IUnusedAppRestrictionsBackportService.Stub mBinder = new IUnusedAppRestrictionsBackportService.Stub(this) { // from class: androidx.core.content.UnusedAppRestrictionsBackportService.1
        final UnusedAppRestrictionsBackportService this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws RemoteException {
            if (iUnusedAppRestrictionsBackportCallback == null) {
                return;
            }
            this.this$0.isPermissionRevocationEnabled(new UnusedAppRestrictionsBackportCallback(iUnusedAppRestrictionsBackportCallback));
        }
    };

    protected abstract void isPermissionRevocationEnabled(UnusedAppRestrictionsBackportCallback unusedAppRestrictionsBackportCallback);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
