package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes55.dex */
@Deprecated
public class StatsUtils {
    public static String getEventKey(PowerManager.WakeLock wakeLock, String str) {
        long jMyPid = Process.myPid();
        long jIdentityHashCode = System.identityHashCode(wakeLock);
        if (true == TextUtils.isEmpty(str)) {
            str = "";
        }
        return String.valueOf(String.valueOf((jMyPid << 32) | jIdentityHashCode)).concat(String.valueOf(str));
    }
}
