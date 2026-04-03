package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class ConnectionTracker {
    private static final Object zzb = new Object();

    @Nullable
    private static volatile ConnectionTracker zzc;
    public final ConcurrentHashMap zza = new ConcurrentHashMap();

    private ConnectionTracker() {
    }

    public static ConnectionTracker getInstance() {
        if (zzc == null) {
            synchronized (zzb) {
                if (zzc == null) {
                    zzc = new ConnectionTracker();
                }
            }
        }
        ConnectionTracker connectionTracker = zzc;
        Preconditions.checkNotNull(connectionTracker);
        return connectionTracker;
    }

    private static void zzb(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        } catch (NoSuchElementException e3) {
        }
    }

    private final boolean zzc(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z, @Nullable Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            NPStringFog.decode(new byte[]{1, 86, 90, 25, 3, 11, 13, 94, 91, 82, 74, 5, 12, 93, 69, 88, 13, 0, 76, 94, 90, 68}, "b977dd", -1.960769017E9d).equals(packageName);
            try {
                if ((Wrappers.packageManager(context).getApplicationInfo(packageName, 0).flags & 2097152) != 0) {
                    Log.w(NPStringFog.decode(new byte[]{33, 89, 92, 12, 0, 90, 22, 95, 93, 12, 49, 75, 3, 85, 89, 7, 23}, "b62be9", -2106070792L), NPStringFog.decode(new byte[]{116, 17, 64, 82, 90, 73, 65, 0, 80, 23, 67, 86, 21, 7, 93, 89, 83, 25, 65, 10, 20, 86, 23, 74, 80, 23, 66, 94, 84, 92, 21, 12, 90, 23, 86, 25, 102, 49, 123, 103, 103, 124, 113, 69, 68, 86, 84, 82, 84, 2, 81, 25}, "5e4779", 1.913357416E9d));
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (!zzd(serviceConnection)) {
            return zze(context, intent, serviceConnection, i, executor);
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) this.zza.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w(NPStringFog.decode(new byte[]{38, 92, 94, 91, 81, 7, 17, 90, 95, 91, 96, 22, 4, 80, 91, 80, 70}, "e3054d", 1652543235L), String.format(NPStringFog.decode(new byte[]{37, 67, 22, 92, 80, 82, 0, 66, 3, 16, 91, 88, 15, 82, 15, 94, 94, 17, 22, 95, 18, 88, 25, 69, 9, 83, 70, 67, 88, 92, 4, 22, 53, 85, 75, 71, 8, 85, 3, 115, 86, 95, 15, 83, 5, 68, 80, 94, 15, 12, 70, 21, 74, 29, 65, 19, 21, 28, 25, 20, 18, 24}, "a6f091", -16460), serviceConnection, str, intent.getAction()));
        }
        try {
            boolean zZze = zze(context, intent, serviceConnection, i, executor);
            if (zZze) {
                return zZze;
            }
            return false;
        } finally {
            this.zza.remove(serviceConnection, serviceConnection);
        }
    }

    private static boolean zzd(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof zzt);
    }

    private static final boolean zze(Context context, Intent intent, ServiceConnection serviceConnection, int i, @Nullable Executor executor) {
        return (!PlatformVersion.isAtLeastQ() || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
    }

    @ResultIgnorabilityUnspecified
    public boolean bindService(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zzc(context, context.getClass().getName(), intent, serviceConnection, i, true, null);
    }

    public void unbindService(Context context, ServiceConnection serviceConnection) {
        if (!zzd(serviceConnection) || !this.zza.containsKey(serviceConnection)) {
            zzb(context, serviceConnection);
            return;
        }
        try {
            zzb(context, (ServiceConnection) this.zza.get(serviceConnection));
        } finally {
            this.zza.remove(serviceConnection);
        }
    }

    public void unbindServiceSafe(Context context, ServiceConnection serviceConnection) {
        try {
            unbindService(context, serviceConnection);
        } catch (IllegalArgumentException e) {
        }
    }

    @ResultIgnorabilityUnspecified
    public final boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, @Nullable Executor executor) {
        return zzc(context, str, intent, serviceConnection, 4225, true, executor);
    }
}
