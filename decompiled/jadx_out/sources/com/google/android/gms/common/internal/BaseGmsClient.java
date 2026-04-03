package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class BaseGmsClient<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    private volatile String zzA;
    private ConnectionResult zzB;
    private boolean zzC;
    private volatile zzk zzD;
    zzv zza;
    final Handler zzb;
    protected ConnectionProgressReportCallbacks zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final GmsClientSupervisor zzn;
    private final GoogleApiAvailabilityLight zzo;
    private final Object zzp;
    private final Object zzq;
    private IGmsServiceBroker zzr;
    private IInterface zzs;
    private final ArrayList zzt;
    private zze zzu;
    private int zzv;
    private final BaseConnectionCallbacks zzw;
    private final BaseOnConnectionFailedListener zzx;
    private final int zzy;
    private final String zzz;
    public static final String DEFAULT_ACCOUNT = NPStringFog.decode(new byte[]{12, 5, 81, 0, 3, 0, 69, 85, 65, 69, 4, 2, 83, 86, 64, 11, 17, 95, 14}, "095eea", true);
    public static final String KEY_PENDING_INTENT = NPStringFog.decode(new byte[]{19, 1, 8, 93, 13, 91, 4, 45, 8, 77, 1, 91, 23}, "cdf9d5", false, false);
    private static final Feature[] zze = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {NPStringFog.decode(new byte[]{18, 83, 70, 64, 90, 0, 4, 105, 81, 69, 94, 12, 3, 95, 88, 83}, "a6463c", -1.8381706E9f), NPStringFog.decode(new byte[]{16, 3, 66, 67, 90, 85, 6, 57, 87, 90, 92, 81, 15, 3, 93, 80}, "cf0536", -15103)};

    public interface BaseConnectionCallbacks {
        public static final int CAUSE_DEAD_OBJECT_EXCEPTION = 3;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface BaseOnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface ConnectionProgressReportCallbacks {
        void onReportServiceBinding(ConnectionResult connectionResult);
    }

    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        final BaseGmsClient zza;

        public LegacyClientCallbackAdapter(BaseGmsClient baseGmsClient) {
            this.zza = baseGmsClient;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void onReportServiceBinding(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                BaseGmsClient baseGmsClient = this.zza;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else if (this.zza.zzx != null) {
                this.zza.zzx.onConnectionFailed(connectionResult);
            }
        }
    }

    public interface SignOutCallbacks {
        void onSignOutComplete();
    }

    protected BaseGmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{123, 12, 94, 65, 7, 25, 76, 67, 93, 64, 17, 21, 24, 13, 95, 65, 66, 3, 93, 67, 94, 64, 14, 13}, "8c05ba", -5.526185E8f));
        this.zzl = context;
        Preconditions.checkNotNull(handler, NPStringFog.decode(new byte[]{120, 84, 11, 84, 10, 3, 66, 21, 8, 69, 21, 18, 16, 91, 10, 68, 70, 4, 85, 21, 11, 69, 10, 10}, "05e0ff", -20314));
        this.zzb = handler;
        this.zzm = handler.getLooper();
        Preconditions.checkNotNull(gmsClientSupervisor, NPStringFog.decode(new byte[]{101, 16, 66, 82, 22, 20, 95, 22, 93, 69, 68, 15, 67, 22, 70, 23, 10, 13, 66, 69, 80, 82, 68, 12, 67, 9, 94}, "6e27db", 14345));
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, NPStringFog.decode(new byte[]{39, 100, 124, 18, 5, 18, 7, 93, 89, 83, 6, 13, 10, 93, 65, 75, 68, 9, 19, 71, 65, 18, 10, 11, 18, 20, 87, 87, 68, 10, 19, 88, 89}, "f452dd", 4.9239114E8f));
        this.zzo = googleApiAvailabilityLight;
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    protected BaseGmsClient(Context context, Looper looper, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
        Preconditions.checkNotNull(baseConnectionCallbacks);
        Preconditions.checkNotNull(baseOnConnectionFailedListener);
        this(context, looper, gmsClientSupervisor, googleApiAvailabilityLight, i, baseConnectionCallbacks, baseOnConnectionFailedListener, str);
    }

    protected BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{37, 92, 8, 18, 1, 27, 18, 19, 11, 19, 23, 23, 70, 93, 9, 18, 68, 1, 3, 19, 8, 19, 8, 15}, "f3ffdc", false, false));
        this.zzl = context;
        Preconditions.checkNotNull(looper, NPStringFog.decode(new byte[]{116, 92, 90, 66, 80, 71, 24, 94, 64, 65, 65, 21, 86, 92, 65, 18, 87, 80, 24, 93, 64, 94, 89}, "835255", true));
        this.zzm = looper;
        Preconditions.checkNotNull(gmsClientSupervisor, NPStringFog.decode(new byte[]{97, 66, 17, 85, 64, 66, 91, 68, 14, 66, 18, 89, 71, 68, 21, 16, 92, 91, 70, 23, 3, 85, 18, 90, 71, 91, 13}, "27a024", 9.955097E8f));
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, NPStringFog.decode(new byte[]{113, 101, 120, 25, 2, 79, 81, 92, 93, 88, 1, 80, 92, 92, 69, 64, 67, 84, 69, 70, 69, 25, 13, 86, 68, 21, 83, 92, 67, 87, 69, 89, 93}, "0519c9", 1.4344884E9d));
        this.zzo = googleApiAvailabilityLight;
        this.zzb = new zzb(this, looper);
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = str;
    }

    static /* bridge */ /* synthetic */ void zzj(BaseGmsClient baseGmsClient, zzk zzkVar) {
        baseGmsClient.zzD = zzkVar;
        if (baseGmsClient.usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzkVar.zzd;
            RootTelemetryConfigManager.getInstance().zza(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.zza());
        }
    }

    static /* bridge */ /* synthetic */ void zzk(BaseGmsClient baseGmsClient, int i) {
        int i2;
        int i3;
        synchronized (baseGmsClient.zzp) {
            i2 = baseGmsClient.zzv;
        }
        if (i2 == 3) {
            baseGmsClient.zzC = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = baseGmsClient.zzb;
        handler.sendMessage(handler.obtainMessage(i3, baseGmsClient.zzd.get(), 16));
    }

    static /* bridge */ /* synthetic */ boolean zzn(BaseGmsClient baseGmsClient, int i, int i2, IInterface iInterface) {
        synchronized (baseGmsClient.zzp) {
            if (baseGmsClient.zzv != i) {
                return false;
            }
            baseGmsClient.zzp(i2, iInterface);
            return true;
        }
    }

    static /* bridge */ /* synthetic */ boolean zzo(BaseGmsClient baseGmsClient) {
        if (baseGmsClient.zzC || TextUtils.isEmpty(baseGmsClient.getServiceDescriptor()) || TextUtils.isEmpty(baseGmsClient.getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(baseGmsClient.getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzp(int i, IInterface iInterface) {
        zzv zzvVar;
        Preconditions.checkArgument((i == 4) == (iInterface != null));
        synchronized (this.zzp) {
            this.zzv = i;
            this.zzs = iInterface;
            switch (i) {
                case 1:
                    zze zzeVar = this.zzu;
                    if (zzeVar != null) {
                        GmsClientSupervisor gmsClientSupervisor = this.zzn;
                        String strZzb = this.zza.zzb();
                        Preconditions.checkNotNull(strZzb);
                        gmsClientSupervisor.zzb(strZzb, this.zza.zza(), 4225, zzeVar, zze(), this.zza.zzc());
                        this.zzu = null;
                    }
                    break;
                case 2:
                case 3:
                    zze zzeVar2 = this.zzu;
                    if (zzeVar2 != null && (zzvVar = this.zza) != null) {
                        Log.e(NPStringFog.decode(new byte[]{33, 11, 21, 39, 90, 81, 3, 8, 18}, "fffd68", true, false), NPStringFog.decode(new byte[]{33, 88, 94, 93, 80, 95, 5, 25, 81, 94, 87, 95, 7, 90, 70, 25, 16, 17, 21, 81, 91, 93, 92, 17, 17, 77, 91, 93, 85, 17, 1, 86, 92, 95, 92, 82, 22, 92, 86, 29, 25, 92, 11, 74, 65, 88, 87, 86, 66, 93, 91, 66, 90, 94, 12, 87, 87, 82, 77, 25, 75, 25, 84, 94, 75, 17}, "b92191", -7.873138E8f) + zzvVar.zzb() + NPStringFog.decode(new byte[]{67, 12, 11, 67}, "ccec7c", false) + zzvVar.zza());
                        GmsClientSupervisor gmsClientSupervisor2 = this.zzn;
                        String strZzb2 = this.zza.zzb();
                        Preconditions.checkNotNull(strZzb2);
                        gmsClientSupervisor2.zzb(strZzb2, this.zza.zza(), 4225, zzeVar2, zze(), this.zza.zzc());
                        this.zzd.incrementAndGet();
                    }
                    zze zzeVar3 = new zze(this, this.zzd.get());
                    this.zzu = zzeVar3;
                    zzv zzvVar2 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new zzv(getStartServicePackage(), getStartServiceAction(), false, 4225, getUseDynamicLookup()) : new zzv(getContext().getPackageName(), getLocalStartServiceAction(), true, 4225, false);
                    this.zza = zzvVar2;
                    if (zzvVar2.zzc() && getMinApkVersion() < 17895000) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 88, 21, 3, 19, 90, 83, 90, 65, 35, 19, 70, 93, 68, 77, 70, 21, 92, 87, 22, 12, 15, 15, 93, 95, 67, 12, 70, 0, 68, 89, 22, 23, 3, 19, 71, 91, 89, 15, 70, 14, 82, 18, 66, 9, 15, 18, 20, 112, 87, 18, 3, 38, 89, 65, 117, 13, 15, 4, 90, 70, 22, 8, 21, 65, 64, 93, 89, 65, 10, 14, 67, 18, 66, 14, 70, 18, 65, 66, 70, 14, 20, 21, 20, 86, 79, 15, 7, 12, 93, 81, 22, 13, 9, 14, 95, 71, 70, 79, 70, 50, 64, 83, 68, 21, 70, 18, 81, 64, 64, 8, 5, 4, 20, 83, 85, 21, 15, 14, 90, 8, 22}, "26afa4", false).concat(String.valueOf(this.zza.zzb())));
                    }
                    GmsClientSupervisor gmsClientSupervisor3 = this.zzn;
                    String strZzb3 = this.zza.zzb();
                    Preconditions.checkNotNull(strZzb3);
                    if (!gmsClientSupervisor3.zzc(new zzo(strZzb3, this.zza.zza(), 4225, this.zza.zzc()), zzeVar3, zze(), getBindServiceExecutor())) {
                        Log.w(NPStringFog.decode(new byte[]{127, 94, 70, 34, 92, 91, 93, 93, 65}, "835a02", 27924), NPStringFog.decode(new byte[]{65, 8, 4, 85, 89, 80, 20, 18, 10, 23, 86, 90, 90, 8, 0, 84, 65, 21, 64, 9, 69, 68, 80, 71, 66, 15, 6, 82, 15, 21}, "4fe755", 1.21727816E8f) + this.zza.zzb() + NPStringFog.decode(new byte[]{67, 91, 94, 17}, "c401ad", false, true) + this.zza.zza());
                        zzl(16, null, this.zzd.get());
                    }
                    break;
                    break;
                case 4:
                    Preconditions.checkNotNull(iInterface);
                    onConnectedLocked(iInterface);
                    break;
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int iIsGooglePlayServicesAvailable = this.zzo.isGooglePlayServicesAvailable(this.zzl, getMinApkVersion());
        if (iIsGooglePlayServicesAvailable == 0) {
            connect(new LegacyClientCallbackAdapter(this));
        } else {
            zzp(1, null);
            triggerNotAvailable(new LegacyClientCallbackAdapter(this), iIsGooglePlayServicesAvailable, null);
        }
    }

    protected final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{42, 94, 17, 65, 91, 87, 10, 95, 0, 2, 76, 93, 0, 31, 69, 34, 89, 84, 8, 17, 6, 14, 86, 86, 1, 82, 17, 73, 17, 24, 5, 95, 1, 65, 79, 89, 13, 69, 69, 7, 87, 74, 68, 94, 11, 34, 87, 86, 10, 84, 6, 21, 93, 92, 76, 24, 69, 21, 87, 24, 6, 84, 69, 2, 89, 84, 8, 84, 1, 79}, "d1ea88", 26739));
        }
    }

    public void connect(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, NPStringFog.decode(new byte[]{116, 95, 15, 91, 4, 84, 67, 89, 14, 91, 65, 71, 69, 95, 6, 71, 4, 68, 68, 16, 2, 84, 13, 91, 85, 81, 2, 94, 18, 23, 84, 81, 15, 91, 14, 67, 23, 82, 4, 21, 15, 66, 91, 92, 79}, "70a5a7", 13698));
        this.zzc = connectionProgressReportCallbacks;
        zzp(2, null);
    }

    protected abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            int size = this.zzt.size();
            for (int i = 0; i < size; i++) {
                ((zzc) this.zzt.get(i)).zzf();
            }
            this.zzt.clear();
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zzp(1, null);
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.zzp) {
            i = this.zzv;
            iInterface = this.zzs;
        }
        synchronized (this.zzq) {
            iGmsServiceBroker = this.zzr;
        }
        printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{8, 32, 14, 11, 12, 85, 6, 23, 50, 17, 3, 68, 0, 94}, "ecaeb0", 9.6745594E8f));
        switch (i) {
            case 1:
                printWriter.print(NPStringFog.decode(new byte[]{33, 42, 98, 37, 126, 118, 43, 38, 114, 50, 116, 124}, "ec1f18", false));
                break;
            case 2:
                printWriter.print(NPStringFog.decode(new byte[]{55, 112, 122, 120, 50, 125, 58, 118, 120, 121, 40, 125, 38, 97, 126, 121, 33}, "e577f8", true));
                break;
            case 3:
                printWriter.print(NPStringFog.decode(new byte[]{117, 44, 119, 113, 116, 57, 122, 44, 122, 126, 125, 37, 109, 42, 122, 119}, "9c408f", 847490381L));
                break;
            case 4:
                printWriter.print(NPStringFog.decode(new byte[]{116, 125, 47, 120, 116, 37, 99, 119, 37}, "72a61f", false));
                break;
            case 5:
                printWriter.print(NPStringFog.decode(new byte[]{114, 124, 106, 116, 45, 45, 120, 112, 122, 99, 43, 45, 113}, "6597bc", true));
                break;
            default:
                printWriter.print(NPStringFog.decode(new byte[]{102, 122, 120, 118, 127, 100, 125}, "343803", -1635027811L));
                break;
        }
        printWriter.append((CharSequence) NPStringFog.decode(new byte[]{69, 91, 106, 86, 75, 67, 12, 85, 92, 14}, "e69395", 1465206802L));
        if (iInterface == null) {
            printWriter.append((CharSequence) NPStringFog.decode(new byte[]{92, 65, 15, 94}, "24c2c6", true, true));
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append((CharSequence) NPStringFog.decode(new byte[]{36}, "da91d8", false)).append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append((CharSequence) NPStringFog.decode(new byte[]{17, 85, 53, 0, 65, 66, 88, 91, 3, 39, 65, 91, 90, 93, 20, 88}, "18fe34", 775844727L));
        if (iGmsServiceBroker == null) {
            printWriter.println(NPStringFog.decode(new byte[]{86, 66, 9, 13}, "87eaa9", -29867));
        } else {
            printWriter.append((CharSequence) NPStringFog.decode(new byte[]{45, 112, 8, 68, 98, 84, 22, 65, 12, 84, 84, 115, 22, 88, 14, 82, 67, 113}, "d7e711", 12288)).println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(NPStringFog.decode(new byte[]{65, 73, 27, 28, 24, 41, 117, 29, 6, 1, 21, 44, 112, 10, 15, 8, 15, 23, 75, 30, 49, 54, 102}, "80be5d", true), Locale.US);
        if (this.zzh > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{8, 5, 22, 64, 113, 88, 10, 10, 0, 87, 70, 82, 0, 48, 12, 89, 87, 10}, "dde427", -1.711700562E9d));
            long j = this.zzh;
            printWriterAppend.println(j + " " + simpleDateFormat.format(new Date(j)));
        }
        if (this.zzg > 0) {
            printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{9, 82, 65, 69, 48, 66, 22, 67, 87, 95, 7, 82, 1, 112, 83, 68, 16, 82, 88}, "e321c7", -1.986341318E9d));
            int i2 = this.zzf;
            switch (i2) {
                case 1:
                    printWriter.append((CharSequence) NPStringFog.decode(new byte[]{37, 114, 54, 98, 117, 108, 53, 118, 49, 103, 121, 112, 35, 108, 39, 120, 99, 112, 41, 125, 45, 116, 115, 103, 35, 119}, "f3c103", false, true));
                    break;
                case 2:
                    printWriter.append((CharSequence) NPStringFog.decode(new byte[]{119, 118, 102, 103, 117, 108, 122, 114, 103, 99, 127, 97, 127, 104, 127, 123, 99, 103}, "473403", true, true));
                    break;
                case 3:
                    printWriter.append((CharSequence) NPStringFog.decode(new byte[]{34, 116, 52, 53, 117, 111, 37, 112, 32, 34, 111, 127, 35, 127, 36, 37, 100, 111, 36, 109, 34, 35, 96, 100, 40, 122, 47}, "a5af00", 1.2043948E9f));
                    break;
                default:
                    printWriter.append((CharSequence) String.valueOf(i2));
                    break;
            }
            PrintWriter printWriterAppend2 = printWriter.append((CharSequence) NPStringFog.decode(new byte[]{70, 14, 2, 18, 70, 48, 19, 17, 19, 4, 92, 7, 3, 6, 55, 8, 95, 6, 91}, "fbca2c", 8.3720134E8f));
            long j2 = this.zzg;
            printWriterAppend2.println(j2 + " " + simpleDateFormat.format(new Date(j2)));
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{15, 81, 69, 64, 119, 3, 10, 92, 83, 80, 98, 22, 2, 68, 67, 71, 12}, "c0641b", -1.971171832E9d)).append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzi));
            PrintWriter printWriterAppend3 = printWriter.append((CharSequence) NPStringFog.decode(new byte[]{25, 89, 84, 68, 23, 127, 88, 92, 89, 82, 7, 109, 80, 88, 80, 10}, "9557c9", 1410967942L));
            long j3 = this.zzj;
            printWriterAppend3.println(j3 + " " + simpleDateFormat.format(new Date(j3)));
        }
    }

    protected boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return zze;
    }

    public final Feature[] getAvailableFeatures() {
        zzk zzkVar = this.zzD;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.zzb;
    }

    protected Executor getBindServiceExecutor() {
        return null;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        zzv zzvVar;
        if (!isConnected() || (zzvVar = this.zza) == null) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{117, 2, 80, 15, 83, 92, 19, 23, 86, 67, 85, 87, 93, 13, 92, 0, 66, 24, 68, 11, 92, 13, 22, 91, 91, 6, 90, 8, 95, 86, 84, 67, 73, 2, 85, 83, 82, 4, 92}, "3c9c68", -17570));
        }
        return zzvVar.zza();
    }

    public int getGCoreServiceId() {
        return this.zzy;
    }

    protected Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    protected String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        int i = this.zzy;
        String str = this.zzA;
        int i2 = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.zzb;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i, i2, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.zzf = this.zzl.getPackageName();
        getServiceRequest.zzi = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(DEFAULT_ACCOUNT, NPStringFog.decode(new byte[]{7, 13, 95, 26, 87, 87, 11, 5, 94, 81}, "db2408", 1.374999494E9d));
            }
            getServiceRequest.zzj = account;
            if (iAccountAccessor != null) {
                getServiceRequest.zzg = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzj = getAccount();
        }
        getServiceRequest.zzk = zze;
        getServiceRequest.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzo = true;
        }
        try {
            synchronized (this.zzq) {
                IGmsServiceBroker iGmsServiceBroker = this.zzr;
                if (iGmsServiceBroker != null) {
                    iGmsServiceBroker.getService(new zzd(this, this.zzd.get()), getServiceRequest);
                } else {
                    Log.w(NPStringFog.decode(new byte[]{116, 12, 16, 123, 10, 10, 86, 15, 23}, "3ac8fc", true), NPStringFog.decode(new byte[]{15, 50, 1, 74, 16, 12, 1, 4, 38, 74, 9, 14, 7, 19, 68, 81, 21, 69, 12, 20, 8, 84, 74, 69, 1, 13, 13, 93, 8, 17, 66, 5, 13, 75, 5, 10, 12, 15, 1, 91, 18, 0, 6}, "bad8fe", -1.816571469E9d));
                }
            }
        } catch (DeadObjectException e) {
            Log.w(NPStringFog.decode(new byte[]{115, 14, 68, 113, 9, 11, 81, 13, 67}, "4c72eb", 2.038101238E9d), NPStringFog.decode(new byte[]{47, 114, 92, 71, 50, 85, 20, 67, 88, 87, 4, 114, 20, 90, 90, 81, 19, 30, 1, 80, 69, 103, 4, 66, 16, 92, 82, 81, 65, 86, 7, 92, 93, 81, 5}, "f514a0", -29589), e);
            triggerConnectionSuspended(3);
        } catch (RemoteException e2) {
            e = e2;
            Log.w(NPStringFog.decode(new byte[]{33, 11, 69, 33, 89, 13, 3, 8, 66}, "ff6b5d", true), NPStringFog.decode(new byte[]{126, 114, 11, 17, 100, 83, 69, 67, 15, 1, 82, 116, 69, 90, 13, 7, 69, 24, 80, 80, 18, 49, 82, 68, 65, 92, 5, 7, 23, 80, 86, 92, 10, 7, 83}, "75fb76", -13091), e);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w(NPStringFog.decode(new byte[]{33, 11, 69, 33, 89, 13, 3, 8, 66}, "ff6b5d", true), NPStringFog.decode(new byte[]{126, 114, 11, 17, 100, 83, 69, 67, 15, 1, 82, 116, 69, 90, 13, 7, 69, 24, 80, 80, 18, 49, 82, 68, 65, 92, 5, 7, 23, 80, 86, 92, 10, 7, 83}, "75fb76", -13091), e);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    protected Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzp) {
            if (this.zzv == 5) {
                throw new DeadObjectException();
            }
            checkConnected();
            t = (T) this.zzs;
            Preconditions.checkNotNull(t, NPStringFog.decode(new byte[]{39, 92, 10, 82, 95, 64, 68, 89, 16, 23, 82, 91, 10, 94, 6, 84, 69, 81, 0, 16, 1, 66, 69, 20, 23, 85, 17, 65, 88, 87, 1, 16, 10, 68, 17, 90, 17, 92, 15}, "d0c714", true));
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            IGmsServiceBroker iGmsServiceBroker = this.zzr;
            if (iGmsServiceBroker == null) {
                return null;
            }
            return iGmsServiceBroker.asBinder();
        }
    }

    protected abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{40, 94, 17, 69, 81, 69, 21, 88, 2, 11, 16, 12, 8, 17, 36, 53, 121}, "f1ee0e", true));
    }

    protected abstract String getStartServiceAction();

    protected String getStartServicePackage() {
        return NPStringFog.decode(new byte[]{0, 13, 9, 28, 94, 11, 12, 5, 8, 87, 23, 5, 13, 6, 22, 93, 80, 0, 77, 5, 9, 65}, "cbd29d", 1.571291597E9d);
    }

    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzk zzkVar = this.zzD;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.zzd;
    }

    protected boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    public boolean hasConnectionInfo() {
        return this.zzD != null;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzp) {
            int i = this.zzv;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    protected void onConnectedLocked(T t) {
        this.zzh = System.currentTimeMillis();
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    protected void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    protected void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new zzf(this, i, iBinder, bundle)));
    }

    public void onUserSignOut(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.onSignOutComplete();
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    public void triggerConnectionSuspended(int i) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.zzd.get(), i));
    }

    protected void triggerNotAvailable(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, PendingIntent pendingIntent) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, NPStringFog.decode(new byte[]{115, 92, 92, 91, 86, 2, 68, 90, 93, 91, 19, 17, 66, 92, 85, 71, 86, 18, 67, 19, 81, 84, 95, 13, 82, 82, 81, 94, 64, 65, 83, 82, 92, 91, 92, 21, 16, 81, 87, 21, 93, 20, 92, 95, 28}, "03253a", 5409));
        this.zzc = connectionProgressReportCallbacks;
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(3, this.zzd.get(), i, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    protected final String zze() {
        String str = this.zzz;
        return str == null ? this.zzl.getClass().getName() : str;
    }

    protected final void zzl(int i, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new zzg(this, i, null)));
    }
}
