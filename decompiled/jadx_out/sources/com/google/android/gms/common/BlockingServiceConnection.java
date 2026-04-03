package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class BlockingServiceConnection implements ServiceConnection {
    boolean zza = false;
    private final BlockingQueue zzb = new LinkedBlockingQueue();

    @ResultIgnorabilityUnspecified
    public IBinder getService() throws InterruptedException {
        Preconditions.checkNotMainThread(NPStringFog.decode(new byte[]{118, 93, 89, 86, 91, 90, 90, 86, 101, 80, 66, 69, 93, 82, 83, 118, 95, 93, 90, 84, 85, 65, 89, 92, 90, 31, 81, 80, 68, 96, 81, 67, 64, 92, 83, 86, 28, 24, 22, 86, 81, 95, 88, 84, 82, 21, 95, 93, 20, 92, 87, 92, 94, 19, 64, 89, 68, 80, 81, 87}, "416503", -1.7273466E9f));
        if (this.zza) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 81, 12, 15, 87, 69, 24, 83, 3, 13, 84, 17, 95, 85, 22, 65, 87, 95, 24, 68, 10, 8, 75, 17, 91, 95, 12, 15, 93, 82, 76, 89, 13, 15, 24, 92, 87, 66, 7, 65, 76, 89, 89, 94, 66, 14, 86, 82, 93}, "80ba81", true, false));
        }
        this.zza = true;
        return (IBinder) this.zzb.take();
    }

    @ResultIgnorabilityUnspecified
    public IBinder getServiceWithTimeout(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        Preconditions.checkNotMainThread(NPStringFog.decode(new byte[]{39, 90, 12, 82, 14, 13, 11, 81, 48, 84, 23, 18, 12, 85, 6, 114, 10, 10, 11, 83, 0, 69, 12, 11, 11, 24, 4, 84, 17, 55, 0, 68, 21, 88, 6, 1, 50, 95, 23, 89, 49, 13, 8, 83, 12, 68, 17, 76, 76, 22, 0, 80, 9, 8, 0, 82, 67, 94, 11, 68, 8, 87, 10, 95, 69, 16, 13, 68, 6, 80, 1}, "e6c1ed", 2.1339894E9f));
        if (this.zza) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 3, 88, 8, 10, 77, 17, 1, 87, 10, 9, 25, 86, 7, 66, 70, 10, 87, 17, 22, 94, 15, 22, 25, 82, 13, 88, 8, 0, 90, 69, 11, 89, 8, 69, 84, 94, 16, 83, 70, 17, 81, 80, 12, 22, 9, 11, 90, 84}, "1b6fe9", -18897));
        }
        this.zza = true;
        IBinder iBinder = (IBinder) this.zzb.poll(j, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException(NPStringFog.decode(new byte[]{97, 92, 92, 1, 5, 24, 90, 64, 69, 68, 22, 89, 92, 65, 88, 10, 6, 24, 83, 90, 67, 68, 21, 80, 80, 21, 66, 1, 19, 78, 92, 86, 84, 68, 2, 87, 91, 91, 84, 7, 21, 81, 90, 91}, "551da8", -8.2723158E8d));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zzb.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
