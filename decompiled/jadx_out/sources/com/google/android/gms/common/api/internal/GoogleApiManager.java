package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes59.dex */
public class GoogleApiManager implements Handler.Callback {
    public static final Status zaa = new Status(4, NPStringFog.decode(new byte[]{54, 10, 84, 88, 72, 90, 16, 23, 19, 89, 6, 86, 16, 17, 65, 83, 1, 21, 18, 11, 90, 90, 0, 21, 17, 11, 90, 69, 69, 116, 53, 42, 19, 85, 4, 89, 9, 67, 68, 87, 22, 21, 12, 13, 19, 70, 23, 90, 2, 17, 86, 69, 22, 27}, "ec36e5", false));
    private static final Status zab = new Status(4, NPStringFog.decode(new byte[]{109, 12, 92, 65, 67, 17, 92, 22, 25, 12, 67, 17, 77, 68, 91, 4, 22, 17, 80, 3, 87, 4, 82, 66, 80, 10, 25, 21, 89, 66, 84, 5, 82, 4, 22, 22, 81, 13, 74, 65, 119, 50, 112, 68, 90, 0, 90, 14, 23}, "9d9a6b", false, true));
    private static final Object zac = new Object();
    private static GoogleApiManager zad;
    private TelemetryData zag;
    private TelemetryLoggingClient zah;
    private final Context zai;
    private final GoogleApiAvailability zaj;
    private final com.google.android.gms.common.internal.zal zak;

    @NotOnlyInitialized
    private final Handler zar;
    private volatile boolean zas;
    private long zae = 10000;
    private boolean zaf = false;
    private final AtomicInteger zal = new AtomicInteger(1);
    private final AtomicInteger zam = new AtomicInteger(0);
    private final Map zan = new ConcurrentHashMap(5, 0.75f, 1);
    private zaae zao = null;
    private final Set zap = new ArraySet();
    private final Set zaq = new ArraySet();

    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zas = true;
        this.zai = context;
        com.google.android.gms.internal.base.zau zauVar = new com.google.android.gms.internal.base.zau(looper, this);
        this.zar = zauVar;
        this.zaj = googleApiAvailability;
        this.zak = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zas = false;
        }
        zauVar.sendMessage(zauVar.obtainMessage(6));
    }

    public static void reportSignOut() {
        synchronized (zac) {
            GoogleApiManager googleApiManager = zad;
            if (googleApiManager != null) {
                googleApiManager.zam.incrementAndGet();
                Handler handler = googleApiManager.zar;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zaF(ApiKey apiKey, ConnectionResult connectionResult) {
        return new Status(connectionResult, NPStringFog.decode(new byte[]{117, 99, 47, 9, 19}, "43f33b", 2.145689685E9d) + apiKey.zaa() + NPStringFog.decode(new byte[]{22, 89, 66, 23, 10, 92, 66, 16, 80, 65, 5, 90, 90, 81, 83, 91, 1, 19, 89, 94, 17, 67, 12, 90, 69, 16, 85, 82, 18, 90, 85, 85, 31, 23, 39, 92, 88, 94, 84, 84, 16, 90, 89, 94, 17, 81, 5, 90, 90, 85, 85, 23, 19, 90, 66, 88, 11, 23}, "6017d3", 1317935133L) + String.valueOf(connectionResult));
    }

    @ResultIgnorabilityUnspecified
    private final zabq zaG(GoogleApi googleApi) {
        ApiKey apiKey = googleApi.getApiKey();
        zabq zabqVar = (zabq) this.zan.get(apiKey);
        if (zabqVar == null) {
            zabqVar = new zabq(this, googleApi);
            this.zan.put(apiKey, zabqVar);
        }
        if (zabqVar.zaz()) {
            this.zaq.add(apiKey);
        }
        zabqVar.zao();
        return zabqVar;
    }

    private final TelemetryLoggingClient zaH() {
        if (this.zah == null) {
            this.zah = TelemetryLogging.getClient(this.zai);
        }
        return this.zah;
    }

    private final void zaI() {
        TelemetryData telemetryData = this.zag;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || zaD()) {
                zaH().log(telemetryData);
            }
            this.zag = null;
        }
    }

    private final void zaJ(TaskCompletionSource taskCompletionSource, int i, GoogleApi googleApi) {
        zacd zacdVarZaa;
        if (i == 0 || (zacdVarZaa = zacd.zaa(this, i, googleApi.getApiKey())) == null) {
            return;
        }
        Task task = taskCompletionSource.getTask();
        final Handler handler = this.zar;
        handler.getClass();
        task.addOnCompleteListener(new Executor(handler) { // from class: com.google.android.gms.common.api.internal.zabk
            public final Handler zaa;

            {
                this.zaa = handler;
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.zaa.post(runnable);
            }
        }, zacdVarZaa);
    }

    public static GoogleApiManager zaj() {
        GoogleApiManager googleApiManager;
        synchronized (zac) {
            Preconditions.checkNotNull(zad, NPStringFog.decode(new byte[]{124, 77, 75, 76, 68, 80, 68, 89, 74, 89, 10, 67, 84, 93, 24, 85, 5, 89, 80, 95, 93, 74, 68, 94, 66, 24, 86, 87, 10, 26, 95, 77, 84, 84, 68, 85, 84, 94, 87, 74, 1, 23, 68, 75, 81, 86, 3, 23, 86, 93, 76, 113, 10, 68, 69, 89, 86, 91, 1}, "1888d7", -14534));
            googleApiManager = zad;
        }
        return googleApiManager;
    }

    @ResultIgnorabilityUnspecified
    public static GoogleApiManager zak(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zac) {
            if (zad == null) {
                zad = new GoogleApiManager(context.getApplicationContext(), GmsClientSupervisor.getOrStartHandlerThread().getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = zad;
        }
        return googleApiManager;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        zabq zabqVar;
        switch (message.what) {
            case 1:
                this.zae = true != ((Boolean) message.obj).booleanValue() ? 300000L : 10000L;
                this.zar.removeMessages(12);
                for (ApiKey apiKey : this.zan.keySet()) {
                    Handler handler = this.zar;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey), this.zae);
                }
                break;
            case 2:
                zal zalVar = (zal) message.obj;
                Iterator it = zalVar.zab().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        ApiKey apiKey2 = (ApiKey) it.next();
                        zabq zabqVar2 = (zabq) this.zan.get(apiKey2);
                        if (zabqVar2 == null) {
                            zalVar.zac(apiKey2, new ConnectionResult(13), null);
                            break;
                        } else if (zabqVar2.zay()) {
                            zalVar.zac(apiKey2, ConnectionResult.RESULT_SUCCESS, zabqVar2.zaf().getEndpointPackageName());
                        } else {
                            ConnectionResult connectionResultZad = zabqVar2.zad();
                            if (connectionResultZad != null) {
                                zalVar.zac(apiKey2, connectionResultZad, null);
                            } else {
                                zabqVar2.zat(zalVar);
                                zabqVar2.zao();
                            }
                        }
                    }
                }
                break;
            case 3:
                for (zabq zabqVar3 : this.zan.values()) {
                    zabqVar3.zan();
                    zabqVar3.zao();
                }
                break;
            case 4:
            case 8:
            case 13:
                zach zachVar = (zach) message.obj;
                zabq zabqVarZaG = (zabq) this.zan.get(zachVar.zac.getApiKey());
                if (zabqVarZaG == null) {
                    zabqVarZaG = zaG(zachVar.zac);
                }
                if (!zabqVarZaG.zaz() || this.zam.get() == zachVar.zab) {
                    zabqVarZaG.zap(zachVar.zaa);
                } else {
                    zachVar.zaa.zad(zaa);
                    zabqVarZaG.zav();
                }
                break;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = this.zan.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabqVar = (zabq) it2.next();
                        if (zabqVar.zab() == i) {
                        }
                    } else {
                        zabqVar = null;
                    }
                }
                if (zabqVar == null) {
                    Log.wtf(NPStringFog.decode(new byte[]{34, 93, 11, 94, 13, 85, 36, 66, 13, 116, 0, 94, 4, 85, 1, 75}, "e2d9a0", false), NPStringFog.decode(new byte[]{32, 89, 66, 15, 80, 70, 13, 89, 67, 67, 82, 15, 13, 82, 23, 34, 100, 47, 67, 95, 89, 16, 64, 7, 13, 85, 82, 67}, "c67c4f", false) + i + NPStringFog.decode(new byte[]{20, 67, 12, 94, 15, 93, 20, 64, 22, 78, 10, 86, 83, 20, 16, 88, 67, 94, 85, 93, 8, 23, 6, 86, 69, 65, 1, 66, 6, 92, 20, 87, 5, 91, 15, 75, 26}, "44d7c8", true), new Exception());
                } else if (connectionResult.getErrorCode() == 13) {
                    zabqVar.zaD(new Status(17, NPStringFog.decode(new byte[]{116, 70, 19, 86, 19, 24, 67, 81, 18, 86, 13, 77, 69, 93, 14, 87, 65, 79, 80, 71, 65, 90, 0, 86, 82, 81, 13, 92, 5, 24, 83, 77, 65, 77, 9, 93, 17, 65, 18, 92, 19, 20, 17, 91, 19, 80, 6, 81, 95, 85, 13, 25, 4, 74, 67, 91, 19, 25, 12, 93, 66, 71, 0, 94, 4, 2, 17}, "14a9a8", false, false) + this.zaj.getErrorString(connectionResult.getErrorCode()) + NPStringFog.decode(new byte[]{11, 22}, "16228b", 1673567204L) + connectionResult.getErrorMessage()));
                } else {
                    zabqVar.zaD(zaF(zabqVar.zad, connectionResult));
                }
                break;
            case 6:
                if (this.zai.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) this.zai.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new zabl(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.zae = 300000L;
                    }
                }
                break;
            case 7:
                zaG((GoogleApi) message.obj);
                break;
            case 9:
                if (this.zan.containsKey(message.obj)) {
                    ((zabq) this.zan.get(message.obj)).zau();
                }
                break;
            case 10:
                Iterator it3 = this.zaq.iterator();
                while (it3.hasNext()) {
                    zabq zabqVar4 = (zabq) this.zan.remove((ApiKey) it3.next());
                    if (zabqVar4 != null) {
                        zabqVar4.zav();
                    }
                }
                this.zaq.clear();
                break;
            case 11:
                if (this.zan.containsKey(message.obj)) {
                    ((zabq) this.zan.get(message.obj)).zaw();
                }
                break;
            case 12:
                if (this.zan.containsKey(message.obj)) {
                    ((zabq) this.zan.get(message.obj)).zaA();
                }
                break;
            case 14:
                zaaf zaafVar = (zaaf) message.obj;
                ApiKey apiKeyZaa = zaafVar.zaa();
                if (this.zan.containsKey(apiKeyZaa)) {
                    zaafVar.zab().setResult(Boolean.valueOf(((zabq) this.zan.get(apiKeyZaa)).zaN(false)));
                } else {
                    zaafVar.zab().setResult(false);
                }
                break;
            case 15:
                zabs zabsVar = (zabs) message.obj;
                if (this.zan.containsKey(zabsVar.zaa)) {
                    zabq.zal((zabq) this.zan.get(zabsVar.zaa), zabsVar);
                }
                break;
            case 16:
                zabs zabsVar2 = (zabs) message.obj;
                if (this.zan.containsKey(zabsVar2.zaa)) {
                    zabq.zam((zabq) this.zan.get(zabsVar2.zaa), zabsVar2);
                }
                break;
            case 17:
                zaI();
                break;
            case 18:
                zace zaceVar = (zace) message.obj;
                if (zaceVar.zac == 0) {
                    zaH().log(new TelemetryData(zaceVar.zab, Arrays.asList(zaceVar.zaa)));
                } else {
                    TelemetryData telemetryData = this.zag;
                    if (telemetryData != null) {
                        List listZab = telemetryData.zab();
                        if (telemetryData.zaa() != zaceVar.zab || (listZab != null && listZab.size() >= zaceVar.zad)) {
                            this.zar.removeMessages(17);
                            zaI();
                        } else {
                            this.zag.zac(zaceVar.zaa);
                        }
                    }
                    if (this.zag == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(zaceVar.zaa);
                        this.zag = new TelemetryData(zaceVar.zab, arrayList);
                        Handler handler2 = this.zar;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), zaceVar.zac);
                    }
                }
                break;
            case 19:
                this.zaf = false;
                break;
            default:
                Log.w(NPStringFog.decode(new byte[]{35, 90, 9, 94, 85, 83, 37, 69, 15, 116, 88, 88, 5, 82, 3, 75}, "d5f996", 1.632431164E9d), NPStringFog.decode(new byte[]{52, 86, 94, 86, 14, 65, 15, 24, 88, 93, 18, 69, 0, 95, 80, 24, 8, 82, 91, 24}, "a858a6", -25202) + message.what);
                return false;
        }
        return true;
    }

    public final void zaA(zaae zaaeVar) {
        synchronized (zac) {
            if (this.zao != zaaeVar) {
                this.zao = zaaeVar;
                this.zap.clear();
            }
            this.zap.addAll(zaaeVar.zaa());
        }
    }

    final void zaB(zaae zaaeVar) {
        synchronized (zac) {
            if (this.zao == zaaeVar) {
                this.zao = null;
                this.zap.clear();
            }
        }
    }

    final boolean zaD() {
        if (this.zaf) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int iZaa = this.zak.zaa(this.zai, 203400000);
        return iZaa == -1 || iZaa == 0;
    }

    @ResultIgnorabilityUnspecified
    final boolean zaE(ConnectionResult connectionResult, int i) {
        return this.zaj.zah(this.zai, connectionResult, i);
    }

    public final int zaa() {
        return this.zal.getAndIncrement();
    }

    final zabq zai(ApiKey apiKey) {
        return (zabq) this.zan.get(apiKey);
    }

    public final Task zam(Iterable iterable) {
        zal zalVar = new zal(iterable);
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(2, zalVar));
        return zalVar.zaa();
    }

    @ResultIgnorabilityUnspecified
    public final Task zan(GoogleApi googleApi) {
        zaaf zaafVar = new zaaf(googleApi.getApiKey());
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(14, zaafVar));
        return zaafVar.zab().getTask();
    }

    public final Task zao(GoogleApi googleApi, RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaJ(taskCompletionSource, registerListenerMethod.zaa(), googleApi);
        zaf zafVar = new zaf(new zaci(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(8, new zach(zafVar, this.zam.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task zap(GoogleApi googleApi, ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaJ(taskCompletionSource, i, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(13, new zach(zahVar, this.zam.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final void zau(GoogleApi googleApi, int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zae zaeVar = new zae(i, apiMethodImpl);
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(4, new zach(zaeVar, this.zam.get(), googleApi)));
    }

    public final void zav(GoogleApi googleApi, int i, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaJ(taskCompletionSource, taskApiCall.zaa(), googleApi);
        zag zagVar = new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(4, new zach(zagVar, this.zam.get(), googleApi)));
    }

    final void zaw(MethodInvocation methodInvocation, int i, long j, int i2) {
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(18, new zace(methodInvocation, i, j, i2)));
    }

    public final void zax(ConnectionResult connectionResult, int i) {
        if (zaE(connectionResult, i)) {
            return;
        }
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
    }

    public final void zay() {
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void zaz(GoogleApi googleApi) {
        Handler handler = this.zar;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }
}
