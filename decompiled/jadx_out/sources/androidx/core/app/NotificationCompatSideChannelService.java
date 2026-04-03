package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.app.INotificationSideChannel;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NotificationCompatSideChannelService extends Service {

    private class NotificationSideChannelStub extends INotificationSideChannel.Stub {
        final NotificationCompatSideChannelService this$0;

        NotificationSideChannelStub(NotificationCompatSideChannelService notificationCompatSideChannelService) {
            this.this$0 = notificationCompatSideChannelService;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(String str, int i, String str2) throws RemoteException {
            this.this$0.checkPermission(getCallingUid(), str);
            long jClearCallingIdentity = clearCallingIdentity();
            try {
                this.this$0.cancel(str, i, str2);
            } finally {
                restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(String str) {
            this.this$0.checkPermission(getCallingUid(), str);
            long jClearCallingIdentity = clearCallingIdentity();
            try {
                this.this$0.cancelAll(str);
            } finally {
                restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
            this.this$0.checkPermission(getCallingUid(), str);
            long jClearCallingIdentity = clearCallingIdentity();
            try {
                this.this$0.notify(str, i, str2, notification);
            } finally {
                restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public abstract void cancel(String str, int i, String str2);

    public abstract void cancelAll(String str);

    void checkPermission(int i, String str) {
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new SecurityException(NPStringFog.decode(new byte[]{43, 91, 65, 11, 3, 95, 6, 85, 65, 11, 10, 88, 54, 93, 81, 7, 38, 94, 4, 90, 91, 7, 9, 101, 0, 70, 67, 11, 6, 83, 95, 20, 96, 11, 1, 22}, "e45be6", -6.23591126E8d) + i + NPStringFog.decode(new byte[]{24, 81, 75, 67, 11, 94, 76, 24, 89, 22, 17, 89, 87, 74, 81, 25, 0, 85, 24, 94, 87, 17, 69, 65, 89, 91, 83, 2, 2, 84, 24}, "888ce1", 1.499021E8f) + str);
    }

    public abstract void notify(String str, int i, String str2, Notification notification);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!intent.getAction().equals(NPStringFog.decode(new byte[]{0, 93, 6, 19, 10, 81, 5, 29, 17, 20, 21, 72, 14, 65, 22, 79, 39, 113, 47, 119, 61, 47, 42, 108, 40, 117, 43, 34, 36, 108, 40, 124, 44, 62, 54, 113, 37, 118, 61, 34, 45, 121, 47, 125, 39, 45}, "a3bae8", -1.05391885E9f)) || Build.VERSION.SDK_INT > 19) {
            return null;
        }
        return new NotificationSideChannelStub(this);
    }
}
