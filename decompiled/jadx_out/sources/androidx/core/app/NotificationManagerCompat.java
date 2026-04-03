package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class NotificationManagerCompat {
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    static final int MAX_SIDE_CHANNEL_SDK_VERSION = 19;
    private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
    private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
    private static String sEnabledNotificationListeners;
    private static SideChannelManager sSideChannelManager;
    private final Context mContext;
    private final NotificationManager mNotificationManager;
    public static final String ACTION_BIND_SIDE_CHANNEL = NPStringFog.decode(new byte[]{80, 90, 5, 75, 13, 80, 85, 26, 18, 76, 18, 73, 94, 70, 21, 23, 32, 112, 127, 112, 62, 119, 45, 109, 120, 114, 40, 122, 35, 109, 120, 123, 47, 102, 49, 112, 117, 113, 62, 122, 42, 120, 127, 122, 36, 117}, "14a9b9", 23572);
    private static final String CHECK_OP_NO_THROW = NPStringFog.decode(new byte[]{80, 90, 4, 1, 88, 41, 67, 124, 14, 54, 91, 20, 92, 69}, "32ab3f", false);
    public static final String EXTRA_USE_SIDE_CHANNEL = NPStringFog.decode(new byte[]{80, 89, 6, 65, 89, 90, 85, 25, 17, 70, 70, 67, 94, 69, 22, 29, 67, 64, 84, 100, 11, 87, 83, 112, 89, 86, 12, 93, 83, 95}, "17b363", 1016271799L);
    private static final String OP_POST_NOTIFICATION = NPStringFog.decode(new byte[]{121, 103, 102, 102, 122, 54, 98, 104, 119, 121, 97, 44, 112, 126, 122, 119, 97, 44, 121, 121}, "67965e", false, true);
    private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = NPStringFog.decode(new byte[]{81, 94, 84, 1, 85, 6, 80, 111, 91, 12, 77, 10, 82, 89, 86, 2, 77, 10, 91, 94, 106, 15, 80, 16, 64, 85, 91, 6, 75, 16}, "405c9c", true);
    private static final String TAG = NPStringFog.decode(new byte[]{118, 92, 17, 15, 7, 123, 89, 93, 38, 9, 12, 70, 89, 71}, "83efa6", true);
    private static final Object sEnabledNotificationListenersLock = new Object();
    private static Set<String> sEnabledNotificationListenerPackages = new HashSet();
    private static final Object sLock = new Object();

    private static class CancelTask implements Task {
        final boolean all;
        final int id;
        final String packageName;
        final String tag;

        CancelTask(String str) {
            this.packageName = str;
            this.id = 0;
            this.tag = null;
            this.all = true;
        }

        CancelTask(String str, int i, String str2) {
            this.packageName = str;
            this.id = i;
            this.tag = str2;
            this.all = false;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            if (this.all) {
                iNotificationSideChannel.cancelAll(this.packageName);
            } else {
                iNotificationSideChannel.cancel(this.packageName, this.id, this.tag);
            }
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{114, 7, 95, 90, 0, 13, 101, 7, 66, 82, 62}, "1f19ea", -2.1249779E9f) + NPStringFog.decode(new byte[]{66, 4, 0, 82, 7, 87, 87, 43, 2, 84, 3, 10}, "2ec9f0", -1.6102131E9f) + this.packageName + NPStringFog.decode(new byte[]{73, 19, 91, 92, 8}, "e32822", -1.84392103E8d) + this.id + NPStringFog.decode(new byte[]{77, 19, 21, 89, 95, 13}, "a3a887", false) + this.tag + NPStringFog.decode(new byte[]{26, 23, 88, 84, 10, 92}, "6798ff", -3.65375031E8d) + this.all + NPStringFog.decode(new byte[]{110}, "323739", 3.6226262E8f);
        }
    }

    private static class NotifyTask implements Task {
        final int id;
        final Notification notif;
        final String packageName;
        final String tag;

        NotifyTask(String str, int i, String str2, Notification notification) {
            this.packageName = str;
            this.id = i;
            this.tag = str2;
            this.notif = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.packageName, this.id, this.tag, this.notif);
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{119, 89, 17, 15, 83, 26, 109, 87, 22, 13, 110}, "96ef5c", false, false) + NPStringFog.decode(new byte[]{72, 87, 7, 13, 83, 94, 93, 120, 5, 11, 87, 3}, "86df29", false) + this.packageName + NPStringFog.decode(new byte[]{28, 22, 80, 7, 92}, "069cf3", 1520740434L) + this.id + NPStringFog.decode(new byte[]{24, 68, 66, 83, 3, 12}, "4d62d6", 1.1614637E9d) + this.tag + NPStringFog.decode(new byte[]{63}, "be39a3", 20338);
        }
    }

    private static class ServiceConnectedEvent {
        final ComponentName componentName;
        final IBinder iBinder;

        ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.componentName = componentName;
            this.iBinder = iBinder;
        }
    }

    private static class SideChannelManager implements Handler.Callback, ServiceConnection {
        private static final int MSG_QUEUE_TASK = 0;
        private static final int MSG_RETRY_LISTENER_QUEUE = 3;
        private static final int MSG_SERVICE_CONNECTED = 1;
        private static final int MSG_SERVICE_DISCONNECTED = 2;
        private final Context mContext;
        private final Handler mHandler;
        private final HandlerThread mHandlerThread;
        private final Map<ComponentName, ListenerRecord> mRecordMap = new HashMap();
        private Set<String> mCachedEnabledPackages = new HashSet();

        private static class ListenerRecord {
            final ComponentName componentName;
            INotificationSideChannel service;
            boolean bound = false;
            ArrayDeque<Task> taskQueue = new ArrayDeque<>();
            int retryCount = 0;

            ListenerRecord(ComponentName componentName) {
                this.componentName = componentName;
            }
        }

        SideChannelManager(Context context) {
            this.mContext = context;
            HandlerThread handlerThread = new HandlerThread(NPStringFog.decode(new byte[]{127, 94, 64, 10, 3, 95, 82, 80, 64, 10, 10, 88, 124, 80, 90, 2, 2, 83, 67, 114, 91, 14, 21, 87, 69}, "114ce6", -31541));
            this.mHandlerThread = handlerThread;
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper(), this);
        }

        private boolean ensureServiceBound(ListenerRecord listenerRecord) {
            if (listenerRecord.bound) {
                return true;
            }
            listenerRecord.bound = this.mContext.bindService(new Intent(NPStringFog.decode(new byte[]{2, 15, 82, 69, 90, 93, 7, 79, 69, 66, 69, 68, 12, 19, 66, 25, 119, 125, 45, 37, 105, 121, 122, 96, 42, 39, 127, 116, 116, 96, 42, 46, 120, 104, 102, 125, 39, 36, 105, 116, 125, 117, 45, 47, 115, 123}, "ca6754", false, false)).setComponent(listenerRecord.componentName), this, 33);
            if (listenerRecord.bound) {
                listenerRecord.retryCount = 0;
            } else {
                Log.w(NPStringFog.decode(new byte[]{45, 87, 70, 92, 86, 125, 2, 86, 113, 90, 93, 64, 2, 76}, "c82500", false), NPStringFog.decode(new byte[]{97, 91, 86, 0, 9, 85, 20, 65, 88, 66, 7, 89, 90, 81, 23, 22, 10, 16, 88, 92, 68, 22, 0, 94, 81, 71, 23}, "457be0", -1.463954078E9d) + listenerRecord.componentName);
                this.mContext.unbindService(this);
            }
            return listenerRecord.bound;
        }

        private void ensureServiceUnbound(ListenerRecord listenerRecord) {
            if (listenerRecord.bound) {
                this.mContext.unbindService(this);
                listenerRecord.bound = false;
            }
            listenerRecord.service = null;
        }

        private void handleQueueTask(Task task) {
            updateListenerMap();
            for (ListenerRecord listenerRecord : this.mRecordMap.values()) {
                listenerRecord.taskQueue.add(task);
                processListenerQueue(listenerRecord);
            }
        }

        private void handleRetryListenerQueue(ComponentName componentName) {
            ListenerRecord listenerRecord = this.mRecordMap.get(componentName);
            if (listenerRecord != null) {
                processListenerQueue(listenerRecord);
            }
        }

        private void handleServiceConnected(ComponentName componentName, IBinder iBinder) {
            ListenerRecord listenerRecord = this.mRecordMap.get(componentName);
            if (listenerRecord != null) {
                listenerRecord.service = INotificationSideChannel.Stub.asInterface(iBinder);
                listenerRecord.retryCount = 0;
                processListenerQueue(listenerRecord);
            }
        }

        private void handleServiceDisconnected(ComponentName componentName) {
            ListenerRecord listenerRecord = this.mRecordMap.get(componentName);
            if (listenerRecord != null) {
                ensureServiceUnbound(listenerRecord);
            }
        }

        private void processListenerQueue(ListenerRecord listenerRecord) {
            if (Log.isLoggable(NPStringFog.decode(new byte[]{45, 90, 76, 93, 87, 44, 2, 91, 123, 91, 92, 17, 2, 65}, "c5841a", true), 3)) {
                Log.d(NPStringFog.decode(new byte[]{42, 91, 18, 91, 83, 120, 5, 90, 37, 93, 88, 69, 5, 64}, "d4f255", true, true), NPStringFog.decode(new byte[]{98, 64, 92, 83, 81, 66, 65, 91, 93, 87, 20, 82, 93, 95, 67, 95, 90, 84, 92, 70, 19}, "223041", -22754) + listenerRecord.componentName + NPStringFog.decode(new byte[]{31, 22}, "364ea3", 1.3379795E9f) + listenerRecord.taskQueue.size() + NPStringFog.decode(new byte[]{17, 16, 23, 81, 77, 80, 85, 65, 22, 85, 75, 94, 66}, "1ab485", -750277303L));
            }
            if (listenerRecord.taskQueue.isEmpty()) {
                return;
            }
            if (!ensureServiceBound(listenerRecord) || listenerRecord.service == null) {
                scheduleListenerRetry(listenerRecord);
                return;
            }
            while (true) {
                Task taskPeek = listenerRecord.taskQueue.peek();
                if (taskPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable(NPStringFog.decode(new byte[]{42, 9, 17, 10, 84, 117, 5, 8, 38, 12, 95, 72, 5, 18}, "dfec28", false), 3)) {
                        Log.d(NPStringFog.decode(new byte[]{125, 87, 70, 80, 83, 117, 82, 86, 113, 86, 88, 72, 82, 76}, "382958", false), NPStringFog.decode(new byte[]{48, 7, 8, 1, 13, 88, 4, 66, 18, 4, 23, 93, 67}, "cbfed6", true, true) + taskPeek);
                    }
                    taskPeek.send(listenerRecord.service);
                    listenerRecord.taskQueue.remove();
                } catch (DeadObjectException e) {
                    if (Log.isLoggable(NPStringFog.decode(new byte[]{47, 9, 17, 11, 5, 44, 0, 8, 38, 13, 14, 17, 0, 18}, "afebca", true), 3)) {
                        Log.d(NPStringFog.decode(new byte[]{119, 88, 69, 15, 95, 124, 88, 89, 114, 9, 84, 65, 88, 67}, "971f91", true, true), NPStringFog.decode(new byte[]{98, 7, 88, 10, 16, 92, 16, 17, 80, 23, 18, 80, 83, 7, 21, 13, 5, 74, 16, 6, 92, 0, 0, 3, 16}, "0b5ed9", 120282761L) + listenerRecord.componentName);
                    }
                } catch (RemoteException e2) {
                    Log.w(NPStringFog.decode(new byte[]{120, 93, 22, 13, 0, 126, 87, 92, 33, 11, 11, 67, 87, 70}, "62bdf3", -28857), NPStringFog.decode(new byte[]{102, 92, 95, 90, 66, 80, 113, 65, 81, 80, 70, 65, 93, 86, 92, 21, 85, 90, 89, 84, 71, 91, 95, 86, 85, 77, 91, 91, 81, 21, 67, 80, 70, 93, 22}, "492565", 1187108394L) + listenerRecord.componentName, e2);
                }
            }
            if (listenerRecord.taskQueue.isEmpty()) {
                return;
            }
            scheduleListenerRetry(listenerRecord);
        }

        private void scheduleListenerRetry(ListenerRecord listenerRecord) {
            if (this.mHandler.hasMessages(3, listenerRecord.componentName)) {
                return;
            }
            listenerRecord.retryCount++;
            if (listenerRecord.retryCount <= 6) {
                int i = (1 << (listenerRecord.retryCount - 1)) * 1000;
                if (Log.isLoggable(NPStringFog.decode(new byte[]{125, 12, 23, 94, 5, 40, 82, 13, 32, 88, 14, 21, 82, 23}, "3cc7ce", false, true), 3)) {
                    Log.d(NPStringFog.decode(new byte[]{124, 87, 67, 15, 86, 121, 83, 86, 116, 9, 93, 68, 83, 76}, "287f04", 280455073L), NPStringFog.decode(new byte[]{99, 6, 80, 3, 0, 23, 92, 12, 86, 1, 68, 16, 85, 17, 74, 31, 68, 4, 95, 23, 24}, "0e8fdb", false) + i + NPStringFog.decode(new byte[]{18, 11, 16}, "2fc487", 822137685L));
                }
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(3, listenerRecord.componentName), i);
                return;
            }
            Log.w(NPStringFog.decode(new byte[]{44, 93, 76, 89, 81, 40, 3, 92, 123, 95, 90, 21, 3, 70}, "b2807e", 1507145113L), NPStringFog.decode(new byte[]{112, 11, 71, 89, 86, 95, 23, 23, 65, 16, 87, 86, 23, 6, 84, 92, 81, 78, 82, 16, 88, 94, 95, 24}, "7b1088", false) + listenerRecord.taskQueue.size() + NPStringFog.decode(new byte[]{18, 68, 82, 67, 9, 70, 18, 68, 92, 16}, "2030b5", true, false) + listenerRecord.componentName + NPStringFog.decode(new byte[]{23, 86, 81, 71, 87, 69, 23}, "777327", 1.7605125E9f) + listenerRecord.retryCount + NPStringFog.decode(new byte[]{18, 64, 93, 16, 23, 10, 87, 65}, "228dec", -348463186L));
            listenerRecord.taskQueue.clear();
        }

        private void updateListenerMap() {
            Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.mContext);
            if (enabledListenerPackages.equals(this.mCachedEnabledPackages)) {
                return;
            }
            this.mCachedEnabledPackages = enabledListenerPackages;
            List<ResolveInfo> listQueryIntentServices = this.mContext.getPackageManager().queryIntentServices(new Intent().setAction(NPStringFog.decode(new byte[]{82, 11, 83, 20, 12, 80, 87, 75, 68, 19, 19, 73, 92, 23, 67, 72, 33, 112, 125, 33, 104, 40, 44, 109, 122, 35, 126, 37, 34, 109, 122, 42, 121, 57, 48, 112, 119, 32, 104, 37, 43, 120, 125, 43, 114, 42}, "3e7fc9", false, true)), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                    ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w(NPStringFog.decode(new byte[]{40, 93, 16, 11, 82, 40, 7, 92, 39, 13, 89, 21, 7, 70}, "f2db4e", true), NPStringFog.decode(new byte[]{54, 80, 67, 91, 13, 18, 21, 92, 94, 88, 68, 17, 20, 80, 66, 83, 10, 21, 70, 90, 95, 22, 7, 14, 11, 69, 94, 88, 1, 15, 18, 21}, "f516da", 5.460983E8f) + componentName + NPStringFog.decode(new byte[]{73, 19, 86, 14, 18, 70, 4, 87, 92, 8, 8, 1, 69, 95, 81, 18, 18, 3, 11, 86, 74, 65, 20, 3, 6, 92, 74, 5, 72}, "e38aff", 1784267620L));
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.mRecordMap.containsKey(componentName2)) {
                    if (Log.isLoggable(NPStringFog.decode(new byte[]{126, 91, 67, 94, 83, 122, 81, 90, 116, 88, 88, 71, 81, 64}, "047757", true, true), 3)) {
                        Log.d(NPStringFog.decode(new byte[]{40, 90, 21, 8, 3, 126, 7, 91, 34, 14, 8, 67, 7, 65}, "f5aae3", 6.7386078E8d), NPStringFog.decode(new byte[]{34, 84, 87, 94, 88, 5, 67, 92, 90, 68, 66, 7, 13, 85, 65, 23, 68, 7, 0, 95, 65, 83, 22, 4, 12, 66, 19}, "c0376b", 1432525033L) + componentName2);
                    }
                    this.mRecordMap.put(componentName2, new ListenerRecord(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, ListenerRecord>> it = this.mRecordMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, ListenerRecord> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable(NPStringFog.decode(new byte[]{118, 91, 23, 91, 87, 123, 89, 90, 32, 93, 92, 70, 89, 64}, "84c216", true), 3)) {
                        Log.d(NPStringFog.decode(new byte[]{120, 13, 69, 10, 83, 40, 87, 12, 114, 12, 88, 21, 87, 22}, "6b1c5e", false, false), NPStringFog.decode(new byte[]{48, 83, 89, 94, 71, 88, 12, 81, 20, 93, 88, 66, 22, 83, 90, 84, 67, 17, 16, 83, 87, 94, 67, 85, 66, 80, 91, 67, 17}, "b64111", false, true) + next.getKey());
                    }
                    ensureServiceUnbound(next.getValue());
                    it.remove();
                }
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    handleQueueTask((Task) message.obj);
                    break;
                case 1:
                    ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                    handleServiceConnected(serviceConnectedEvent.componentName, serviceConnectedEvent.iBinder);
                    break;
                case 2:
                    handleServiceDisconnected((ComponentName) message.obj);
                    break;
                case 3:
                    handleRetryListenerQueue((ComponentName) message.obj);
                    break;
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable(NPStringFog.decode(new byte[]{43, 87, 22, 81, 86, 43, 4, 86, 33, 87, 93, 22, 4, 76}, "e8b80f", 2.80132964E8d), 3)) {
                Log.d(NPStringFog.decode(new byte[]{120, 90, 65, 8, 84, 40, 87, 91, 118, 14, 95, 21, 87, 65}, "655a2e", -1.4659804E9f), NPStringFog.decode(new byte[]{113, 94, 11, 94, 0, 0, 70, 84, 1, 16, 17, 12, 18, 66, 0, 66, 19, 10, 81, 84, 69}, "21e0ec", 5800) + componentName);
            }
            this.mHandler.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable(NPStringFog.decode(new byte[]{124, 89, 76, 93, 80, 40, 83, 88, 123, 91, 91, 21, 83, 66}, "26846e", true), 3)) {
                Log.d(NPStringFog.decode(new byte[]{43, 90, 65, 8, 4, 127, 4, 91, 118, 14, 15, 66, 4, 65}, "e55ab2", 17710), NPStringFog.decode(new byte[]{32, 90, 23, 2, 10, 91, 10, 86, 7, 21, 0, 81, 68, 85, 22, 14, 8, 21, 23, 86, 22, 23, 12, 86, 1, 19}, "d3dae5", false) + componentName);
            }
            this.mHandler.obtainMessage(2, componentName).sendToTarget();
        }

        public void queueTask(Task task) {
            this.mHandler.obtainMessage(0, task).sendToTarget();
        }
    }

    private interface Task {
        void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    private NotificationManagerCompat(Context context) {
        this.mContext = context;
        this.mNotificationManager = (NotificationManager) context.getSystemService(NPStringFog.decode(new byte[]{89, 87, 22, 90, 87, 94, 84, 89, 22, 90, 94, 89}, "78b317", 3573));
    }

    public static NotificationManagerCompat from(Context context) {
        return new NotificationManagerCompat(context);
    }

    public static Set<String> getEnabledListenerPackages(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), SETTING_ENABLED_NOTIFICATION_LISTENERS);
        synchronized (sEnabledNotificationListenersLock) {
            if (string != null) {
                if (!string.equals(sEnabledNotificationListeners)) {
                    String[] strArrSplit = string.split(NPStringFog.decode(new byte[]{88}, "bac1e2", 1673426400L), -1);
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    sEnabledNotificationListenerPackages = hashSet;
                    sEnabledNotificationListeners = string;
                }
                set = sEnabledNotificationListenerPackages;
            } else {
                set = sEnabledNotificationListenerPackages;
            }
        }
        return set;
    }

    private void pushSideChannelQueue(Task task) {
        synchronized (sLock) {
            if (sSideChannelManager == null) {
                sSideChannelManager = new SideChannelManager(this.mContext.getApplicationContext());
            }
            sSideChannelManager.queueTask(task);
        }
    }

    private static boolean useSideChannelForNotification(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL);
    }

    public boolean areNotificationsEnabled() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.mNotificationManager.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.mContext.getSystemService(NPStringFog.decode(new byte[]{2, 65, 65, 87, 73, 16}, "c1189c", -833938274L));
        ApplicationInfo applicationInfo = this.mContext.getApplicationInfo();
        String packageName = this.mContext.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod(CHECK_OP_NO_THROW, Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField(OP_POST_NOTIFICATION).get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (IllegalAccessException e2) {
            return true;
        } catch (NoSuchFieldException e3) {
            return true;
        } catch (NoSuchMethodException e4) {
            return true;
        } catch (RuntimeException e5) {
            return true;
        } catch (InvocationTargetException e6) {
            return true;
        }
    }

    public void cancel(int i) {
        cancel(null, i);
    }

    public void cancel(String str, int i) {
        this.mNotificationManager.cancel(str, i);
        if (Build.VERSION.SDK_INT <= 19) {
            pushSideChannelQueue(new CancelTask(this.mContext.getPackageName(), i, str));
        }
    }

    public void cancelAll() {
        this.mNotificationManager.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            pushSideChannelQueue(new CancelTask(this.mContext.getPackageName()));
        }
    }

    public void createNotificationChannel(NotificationChannel notificationChannel) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannel(notificationChannel);
        }
    }

    public void createNotificationChannel(NotificationChannelCompat notificationChannelCompat) {
        createNotificationChannel(notificationChannelCompat.getNotificationChannel());
    }

    public void createNotificationChannelGroup(NotificationChannelGroup notificationChannelGroup) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannelGroup(notificationChannelGroup);
        }
    }

    public void createNotificationChannelGroup(NotificationChannelGroupCompat notificationChannelGroupCompat) {
        createNotificationChannelGroup(notificationChannelGroupCompat.getNotificationChannelGroup());
    }

    public void createNotificationChannelGroups(List<NotificationChannelGroup> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannelGroups(list);
        }
    }

    public void createNotificationChannelGroupsCompat(List<NotificationChannelGroupCompat> list) {
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelGroupCompat> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getNotificationChannelGroup());
        }
        this.mNotificationManager.createNotificationChannelGroups(arrayList);
    }

    public void createNotificationChannels(List<NotificationChannel> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannels(list);
        }
    }

    public void createNotificationChannelsCompat(List<NotificationChannelCompat> list) {
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelCompat> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getNotificationChannel());
        }
        this.mNotificationManager.createNotificationChannels(arrayList);
    }

    public void deleteNotificationChannel(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.deleteNotificationChannel(str);
        }
    }

    public void deleteNotificationChannelGroup(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.deleteNotificationChannelGroup(str);
        }
    }

    public void deleteUnlistedNotificationChannels(Collection<String> collection) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (NotificationChannel notificationChannel : this.mNotificationManager.getNotificationChannels()) {
                if (!collection.contains(notificationChannel.getId()) && (Build.VERSION.SDK_INT < 30 || !collection.contains(notificationChannel.getParentChannelId()))) {
                    this.mNotificationManager.deleteNotificationChannel(notificationChannel.getId());
                }
            }
        }
    }

    public int getImportance() {
        return Build.VERSION.SDK_INT >= 24 ? this.mNotificationManager.getImportance() : IMPORTANCE_UNSPECIFIED;
    }

    public NotificationChannel getNotificationChannel(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mNotificationManager.getNotificationChannel(str);
        }
        return null;
    }

    public NotificationChannel getNotificationChannel(String str, String str2) {
        return Build.VERSION.SDK_INT >= 30 ? this.mNotificationManager.getNotificationChannel(str, str2) : getNotificationChannel(str);
    }

    public NotificationChannelCompat getNotificationChannelCompat(String str) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    public NotificationChannelCompat getNotificationChannelCompat(String str, String str2) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str, str2)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    public NotificationChannelGroup getNotificationChannelGroup(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.mNotificationManager.getNotificationChannelGroup(str);
        }
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        for (NotificationChannelGroup notificationChannelGroup : getNotificationChannelGroups()) {
            if (notificationChannelGroup.getId().equals(str)) {
                return notificationChannelGroup;
            }
        }
        return null;
    }

    public NotificationChannelGroupCompat getNotificationChannelGroupCompat(String str) {
        NotificationChannelGroup notificationChannelGroup;
        if (Build.VERSION.SDK_INT >= 28) {
            NotificationChannelGroup notificationChannelGroup2 = getNotificationChannelGroup(str);
            if (notificationChannelGroup2 != null) {
                return new NotificationChannelGroupCompat(notificationChannelGroup2);
            }
        } else if (Build.VERSION.SDK_INT >= 26 && (notificationChannelGroup = getNotificationChannelGroup(str)) != null) {
            return new NotificationChannelGroupCompat(notificationChannelGroup, getNotificationChannels());
        }
        return null;
    }

    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        return Build.VERSION.SDK_INT >= 26 ? this.mNotificationManager.getNotificationChannelGroups() : Collections.emptyList();
    }

    public List<NotificationChannelGroupCompat> getNotificationChannelGroupsCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            List<NotificationChannelGroup> notificationChannelGroups = getNotificationChannelGroups();
            if (!notificationChannelGroups.isEmpty()) {
                List<NotificationChannel> listEmptyList = Build.VERSION.SDK_INT >= 28 ? Collections.emptyList() : getNotificationChannels();
                ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
                for (NotificationChannelGroup notificationChannelGroup : notificationChannelGroups) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroup));
                    } else {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroup, listEmptyList));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    public List<NotificationChannel> getNotificationChannels() {
        return Build.VERSION.SDK_INT >= 26 ? this.mNotificationManager.getNotificationChannels() : Collections.emptyList();
    }

    public List<NotificationChannelCompat> getNotificationChannelsCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            List<NotificationChannel> notificationChannels = getNotificationChannels();
            if (!notificationChannels.isEmpty()) {
                ArrayList arrayList = new ArrayList(notificationChannels.size());
                Iterator<NotificationChannel> it = notificationChannels.iterator();
                while (it.hasNext()) {
                    arrayList.add(new NotificationChannelCompat(it.next()));
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    public void notify(int i, Notification notification) {
        notify(null, i, notification);
    }

    public void notify(String str, int i, Notification notification) {
        if (!useSideChannelForNotification(notification)) {
            this.mNotificationManager.notify(str, i, notification);
        } else {
            pushSideChannelQueue(new NotifyTask(this.mContext.getPackageName(), i, str, notification));
            this.mNotificationManager.cancel(str, i);
        }
    }
}
