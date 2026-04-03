package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes59.dex */
public final class zak implements Handler.Callback {

    @NotOnlyInitialized
    private final zaj zab;
    private final Handler zah;
    private final ArrayList zac = new ArrayList();
    final ArrayList zaa = new ArrayList();
    private final ArrayList zad = new ArrayList();
    private volatile boolean zae = false;
    private final AtomicInteger zaf = new AtomicInteger(0);
    private boolean zag = false;
    private final Object zai = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.zab = zajVar;
        this.zah = new com.google.android.gms.internal.base.zau(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf(NPStringFog.decode(new byte[]{118, 95, 70, 117, 14, 10, 84, 92, 65, 115, 20, 6, 95, 70, 70}, "1256bc", false, true), NPStringFog.decode(new byte[]{116, 95, 90, 18, 16, 66, 91, 94, 91, 66, 68, 10, 95, 71, 20, 65, 11, 66, 88, 81, 90, 81, 8, 7, 16, 93, 81, 70, 23, 3, 87, 85, 14, 21}, "0045db", true) + message.what, new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zai) {
            if (this.zae && this.zab.isConnected() && this.zac.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(null);
            }
        }
        return true;
    }

    public final void zaa() {
        this.zae = false;
        this.zaf.incrementAndGet();
    }

    public final void zab() {
        this.zae = true;
    }

    public final void zac(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.zah, NPStringFog.decode(new byte[]{88, 95, 114, 94, 95, 13, 82, 82, 69, 88, 94, 13, 113, 80, 88, 93, 68, 17, 82, 17, 92, 68, 66, 23, 23, 94, 95, 93, 72, 67, 85, 84, 17, 82, 80, 15, 91, 84, 85, 17, 94, 13, 23, 69, 89, 84, 17, 43, 86, 95, 85, 93, 84, 17, 23, 69, 89, 67, 84, 2, 83}, "71111c", true));
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList = new ArrayList(this.zad);
            int i = this.zaf.get();
            for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList) {
                if (!this.zae || this.zaf.get() != i) {
                    return;
                }
                if (this.zad.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public final void zad(Bundle bundle) {
        Preconditions.checkHandlerThread(this.zah, NPStringFog.decode(new byte[]{90, 89, 113, 92, 86, 90, 80, 84, 70, 90, 87, 90, 102, 66, 81, 80, 93, 71, 70, 23, 95, 70, 75, 64, 21, 88, 92, 95, 65, 20, 87, 82, 18, 80, 89, 88, 89, 82, 86, 19, 87, 90, 21, 67, 90, 86, 24, 124, 84, 89, 86, 95, 93, 70, 21, 67, 90, 65, 93, 85, 81}, "572384", 17029));
        synchronized (this.zai) {
            Preconditions.checkState(!this.zag);
            this.zah.removeMessages(1);
            this.zag = true;
            Preconditions.checkState(this.zaa.isEmpty());
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.zac);
            int i = this.zaf.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.zae || !this.zab.isConnected() || this.zaf.get() != i) {
                    break;
                } else if (!this.zaa.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.zaa.clear();
            this.zag = false;
        }
    }

    public final void zae(int i) {
        Preconditions.checkHandlerThread(this.zah, NPStringFog.decode(new byte[]{13, 93, 108, 86, 81, 94, 22, 86, 87, 76, 81, 95, 12, 82, 85, 124, 81, 67, 1, 92, 87, 86, 93, 83, 22, 90, 86, 86, 24, 93, 23, 64, 77, 24, 87, 94, 14, 74, 25, 90, 93, 16, 1, 82, 85, 84, 93, 84, 66, 92, 87, 24, 76, 88, 7, 19, 113, 89, 86, 84, 14, 86, 75, 24, 76, 88, 16, 86, 88, 92}, "b39880", 9.2444873E8d));
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            this.zag = true;
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.zac);
            int i2 = this.zaf.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.zae || this.zaf.get() != i2) {
                    break;
                } else if (this.zac.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.zaa.clear();
            this.zag = false;
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            if (this.zac.contains(connectionCallbacks)) {
                Log.w(NPStringFog.decode(new byte[]{116, 94, 65, 116, 94, 95, 86, 93, 70, 114, 68, 83, 93, 71, 65}, "332726", -3.5748445E8f), NPStringFog.decode(new byte[]{70, 1, 86, 80, 68, 17, 81, 22, 114, 86, 89, 11, 81, 7, 69, 80, 88, 11, 119, 5, 93, 85, 85, 4, 87, 15, 66, 17, 30, 95, 20, 8, 88, 74, 67, 0, 90, 1, 67, 25}, "4d197e", true, false) + String.valueOf(connectionCallbacks) + NPStringFog.decode(new byte[]{18, 91, 68, 67, 89, 92, 64, 87, 86, 7, 65, 16, 64, 87, 80, 10, 75, 68, 87, 64, 82, 7}, "227c80", true));
            } else {
                this.zac.add(connectionCallbacks);
            }
        }
        if (this.zab.isConnected()) {
            Handler handler = this.zah;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void zag(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            if (this.zad.contains(onConnectionFailedListener)) {
                Log.w(NPStringFog.decode(new byte[]{114, 95, 74, 119, 10, 93, 80, 92, 77, 113, 16, 81, 91, 70, 74}, "5294f4", 1952752677L), NPStringFog.decode(new byte[]{16, 0, 3, 11, 22, 16, 7, 23, 39, 13, 11, 10, 7, 6, 16, 11, 10, 10, 36, 4, 13, 14, 0, 0, 46, 12, 23, 22, 0, 10, 7, 23, 76, 75, 95, 68, 14, 12, 23, 22, 0, 10, 7, 23, 68}, "bedbed", 688) + String.valueOf(onConnectionFailedListener) + NPStringFog.decode(new byte[]{18, 92, 17, 65, 89, 94, 64, 80, 3, 5, 65, 18, 64, 80, 5, 8, 75, 70, 87, 71, 7, 5}, "25ba82", -16494));
            } else {
                this.zad.add(onConnectionFailedListener);
            }
        }
    }

    public final void zah(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            if (!this.zac.remove(connectionCallbacks)) {
                Log.w(NPStringFog.decode(new byte[]{112, 95, 66, 123, 94, 8, 82, 92, 69, 125, 68, 4, 89, 70, 66}, "72182a", -2.110649638E9d), NPStringFog.decode(new byte[]{23, 91, 22, 0, 1, 90, 17, 65, 1, 23, 37, 92, 12, 91, 1, 6, 18, 90, 13, 91, 39, 4, 10, 95, 0, 84, 7, 14, 21, 27, 75, 15, 68, 9, 15, 64, 22, 80, 10, 0, 20, 19}, "b5def3", true) + String.valueOf(connectionCallbacks) + NPStringFog.decode(new byte[]{65, 95, 94, 18, 20, 83, 14, 68, 95, 2}, "a11f45", -4.41886431E8d));
            } else if (this.zag) {
                this.zaa.add(connectionCallbacks);
            }
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            if (!this.zad.remove(onConnectionFailedListener)) {
                Log.w(NPStringFog.decode(new byte[]{114, 12, 17, 122, 84, 90, 80, 15, 22, 124, 78, 86, 91, 21, 17}, "5ab983", -3.62893864E8d), NPStringFog.decode(new byte[]{71, 89, 22, 84, 4, 92, 65, 67, 1, 67, 32, 90, 92, 89, 1, 82, 23, 92, 93, 89, 34, 80, 10, 89, 87, 83, 40, 88, 16, 65, 87, 89, 1, 67, 75, 28, 8, 23, 8, 88, 16, 65, 87, 89, 1, 67, 67}, "27d1c5", true, true) + String.valueOf(onConnectionFailedListener) + NPStringFog.decode(new byte[]{69, 12, 14, 66, 66, 5, 10, 23, 15, 82}, "eba6bc", true));
            }
        }
    }

    public final boolean zaj(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean zContains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            zContains = this.zac.contains(connectionCallbacks);
        }
        return zContains;
    }

    public final boolean zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean zContains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            zContains = this.zad.contains(onConnectionFailedListener);
        }
        return zContains;
    }
}
