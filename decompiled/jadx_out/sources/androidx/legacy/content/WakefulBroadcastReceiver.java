package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes45.dex */
@Deprecated
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {
    private static final String EXTRA_WAKE_LOCK_ID = NPStringFog.decode(new byte[]{81, 12, 86, 68, 12, 88, 84, 26, 28, 85, 12, 95, 68, 7, 92, 66, 19, 80, 87, 7, 64, 24, 0, 94, 94, 22, 87, 88, 23, 31, 71, 3, 89, 83, 15, 94, 83, 9, 91, 82}, "0b26c1", -3.225373E8f);
    private static final SparseArray<PowerManager.WakeLock> sActiveWakeLocks = new SparseArray<>();
    private static int mNextId = 1;

    public static boolean completeWakefulIntent(Intent intent) {
        boolean z = false;
        int intExtra = intent.getIntExtra(EXTRA_WAKE_LOCK_ID, 0);
        if (intExtra != 0) {
            synchronized (sActiveWakeLocks) {
                PowerManager.WakeLock wakeLock = sActiveWakeLocks.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    sActiveWakeLocks.remove(intExtra);
                    z = true;
                } else {
                    Log.w(NPStringFog.decode(new byte[]{100, 82, 88, 86, 80, 23, 95, 113, 65, 92, 87, 6, 80, 82, 64, 71, 100, 7, 80, 86, 90, 69, 24}, "33336b", -1.928766523E9d), NPStringFog.decode(new byte[]{43, 90, 23, 88, 86, 71, 12, 67, 82, 25, 66, 82, 14, 80, 23, 85, 90, 80, 14, 21, 94, 93, 21, 16}, "e57953", 662472369L) + intExtra);
                    z = true;
                }
            }
        }
        return z;
    }

    public static ComponentName startWakefulService(Context context, Intent intent) {
        synchronized (sActiveWakeLocks) {
            int i = mNextId;
            mNextId++;
            if (mNextId <= 0) {
                mNextId = 1;
            }
            intent.putExtra(EXTRA_WAKE_LOCK_ID, i);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService(NPStringFog.decode(new byte[]{18, 91, 78, 6, 23}, "b49cef", 585321244L))).newWakeLock(1, NPStringFog.decode(new byte[]{4, 13, 81, 67, 14, 88, 1, 27, 27, 82, 14, 67, 0, 89, 66, 80, 10, 84, 95}, "ec51a1", 1.7355439E9f) + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(60000L);
            sActiveWakeLocks.put(i, wakeLockNewWakeLock);
            return componentNameStartService;
        }
    }
}
