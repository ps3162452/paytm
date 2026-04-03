package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import n.NPStringFog;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes59.dex */
public final class zabq implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zau {
    final GoogleApiManager zaa;

    @NotOnlyInitialized
    private final Api.Client zac;
    private final ApiKey zad;
    private final zaad zae;
    private final int zah;
    private final zact zai;
    private boolean zaj;
    private final Queue zab = new LinkedList();
    private final Set zaf = new HashSet();
    private final Map zag = new HashMap();
    private final List zak = new ArrayList();
    private ConnectionResult zal = null;
    private int zam = 0;

    public zabq(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        this.zaa = googleApiManager;
        Api.Client clientZab = googleApi.zab(googleApiManager.zar.getLooper(), this);
        this.zac = clientZab;
        this.zad = googleApi.getApiKey();
        this.zae = new zaad();
        this.zah = googleApi.zaa();
        if (clientZab.requiresSignIn()) {
            this.zai = googleApi.zac(googleApiManager.zai, googleApiManager.zar);
        } else {
            this.zai = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Feature zaB(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] availableFeatures = this.zac.getAvailableFeatures();
        if (availableFeatures == null) {
            availableFeatures = new Feature[0];
        }
        ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
        for (Feature feature : availableFeatures) {
            arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) arrayMap.get(feature2.getName());
            if (l == null || l.longValue() < feature2.getVersion()) {
                return feature2;
            }
        }
        return null;
    }

    private final void zaC(ConnectionResult connectionResult) {
        Iterator it = this.zaf.iterator();
        while (it.hasNext()) {
            ((zal) it.next()).zac(this.zad, connectionResult, Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.zac.getEndpointPackageName() : null);
        }
        this.zaf.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaD(Status status) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        zaE(status, null, false);
    }

    private final void zaE(Status status, Exception exc, boolean z) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 69, 88, 67, 23, 67, 19, 105, 118, 101, 66, 85, 75, 82, 92, 71, 22, 89, 92, 95, 25, 68, 10, 95, 70, 93, 93, 23, 0, 85, 19, 95, 76, 91, 14}, "3197b0", 949382704L));
        }
        Iterator it = this.zab.iterator();
        while (it.hasNext()) {
            zai zaiVar = (zai) it.next();
            if (!z || zaiVar.zac == 2) {
                if (status != null) {
                    zaiVar.zad(status);
                } else {
                    zaiVar.zae(exc);
                }
                it.remove();
            }
        }
    }

    private final void zaF() {
        ArrayList arrayList = new ArrayList(this.zab);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (!this.zac.isConnected()) {
                return;
            }
            if (zaL(zaiVar)) {
                this.zab.remove(zaiVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaG() {
        zan();
        zaC(ConnectionResult.RESULT_SUCCESS);
        zaK();
        Iterator it = this.zag.values().iterator();
        while (it.hasNext()) {
            zaci zaciVar = (zaci) it.next();
            if (zaB(zaciVar.zaa.getRequiredFeatures()) != null) {
                it.remove();
            } else {
                try {
                    zaciVar.zaa.registerListener(this.zac, new TaskCompletionSource<>());
                } catch (DeadObjectException e) {
                    onConnectionSuspended(3);
                    this.zac.disconnect(NPStringFog.decode(new byte[]{114, 84, 86, 6, 41, 85, 92, 84, 84, 22, 35, 79, 85, 84, 71, 22, 15, 88, 88, 17, 67, 10, 20, 88, 65, 95, 23, 21, 14, 94, 90, 84, 23, 1, 7, 91, 90, 88, 89, 5, 70, 69, 83, 86, 94, 17, 18, 82, 68, 17, 91, 11, 21, 67, 83, 95, 82, 16, 70, 90, 83, 69, 95, 13, 2, 25}, "617bf7", 1.6067273E9f));
                } catch (RemoteException e2) {
                    it.remove();
                }
            }
        }
        zaF();
        zaI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaH(int i) {
        zan();
        this.zaj = true;
        this.zae.zae(i, this.zac.getLastDisconnectMessage());
        GoogleApiManager googleApiManager = this.zaa;
        googleApiManager.zar.sendMessageDelayed(Message.obtain(googleApiManager.zar, 9, this.zad), 5000L);
        GoogleApiManager googleApiManager2 = this.zaa;
        googleApiManager2.zar.sendMessageDelayed(Message.obtain(googleApiManager2.zar, 11, this.zad), 120000L);
        this.zaa.zak.zac();
        Iterator it = this.zag.values().iterator();
        while (it.hasNext()) {
            ((zaci) it.next()).zac.run();
        }
    }

    private final void zaI() {
        this.zaa.zar.removeMessages(12, this.zad);
        GoogleApiManager googleApiManager = this.zaa;
        googleApiManager.zar.sendMessageDelayed(googleApiManager.zar.obtainMessage(12, this.zad), this.zaa.zae);
    }

    private final void zaJ(zai zaiVar) {
        zaiVar.zag(this.zae, zaz());
        try {
            zaiVar.zaf(this);
        } catch (DeadObjectException e) {
            onConnectionSuspended(1);
            this.zac.disconnect(NPStringFog.decode(new byte[]{39, 6, 88, 81, 41, 91, 9, 6, 90, 65, 35, 65, 0, 6, 73, 65, 15, 86, 13, 67, 77, 93, 20, 86, 20, 13, 25, 66, 14, 80, 15, 6, 25, 71, 19, 87, 13, 10, 87, 82, 70, 120, 19, 10, 122, 84, 10, 85, 49, 22, 87, 91, 3, 75, 77}, "cc95f9", -665213221L));
        }
    }

    private final void zaK() {
        if (this.zaj) {
            this.zaa.zar.removeMessages(11, this.zad);
            this.zaa.zar.removeMessages(9, this.zad);
            this.zaj = false;
        }
    }

    private final boolean zaL(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            zaJ(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature featureZaB = zaB(zacVar.zab(this));
        if (featureZaB == null) {
            zaJ(zaiVar);
            return true;
        }
        Log.w(NPStringFog.decode(new byte[]{33, 87, 9, 87, 91, 7, 39, 72, 15, 125, 86, 12, 7, 95, 3, 66}, "f8f07b", false), this.zac.getClass().getName() + NPStringFog.decode(new byte[]{25, 83, 11, 71, 88, 5, 25, 94, 11, 70, 20, 4, 65, 85, 7, 71, 64, 4, 25, 83, 5, 94, 88, 65, 91, 85, 7, 83, 65, 18, 92, 16, 13, 70, 20, 19, 92, 65, 17, 91, 70, 4, 74, 16, 2, 87, 85, 21, 76, 66, 1, 18, 28}, "90d24a", -11583) + featureZaB.getName() + NPStringFog.decode(new byte[]{73, 22}, "e6bf2f", true, true) + featureZaB.getVersion() + NPStringFog.decode(new byte[]{27, 28}, "22294a", false, false));
        if (!this.zaa.zas || !zacVar.zaa(this)) {
            zacVar.zae(new UnsupportedApiCallException(featureZaB));
            return true;
        }
        zabs zabsVar = new zabs(this.zad, featureZaB, null);
        int iIndexOf = this.zak.indexOf(zabsVar);
        if (iIndexOf >= 0) {
            zabs zabsVar2 = (zabs) this.zak.get(iIndexOf);
            this.zaa.zar.removeMessages(15, zabsVar2);
            GoogleApiManager googleApiManager = this.zaa;
            googleApiManager.zar.sendMessageDelayed(Message.obtain(googleApiManager.zar, 15, zabsVar2), 5000L);
        } else {
            this.zak.add(zabsVar);
            GoogleApiManager googleApiManager2 = this.zaa;
            googleApiManager2.zar.sendMessageDelayed(Message.obtain(googleApiManager2.zar, 15, zabsVar), 5000L);
            GoogleApiManager googleApiManager3 = this.zaa;
            googleApiManager3.zar.sendMessageDelayed(Message.obtain(googleApiManager3.zar, 16, zabsVar), 120000L);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (!zaM(connectionResult)) {
                this.zaa.zaE(connectionResult, this.zah);
            }
        }
        return false;
    }

    private final boolean zaM(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.zac) {
            GoogleApiManager googleApiManager = this.zaa;
            if (googleApiManager.zao == null || !googleApiManager.zap.contains(this.zad)) {
                return false;
            }
            this.zaa.zao.zah(connectionResult, this.zah);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zaN(boolean z) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if (!this.zac.isConnected() || this.zag.size() != 0) {
            return false;
        }
        if (!this.zae.zag()) {
            this.zac.disconnect(NPStringFog.decode(new byte[]{109, 12, 88, 13, 13, 5, 25, 10, 64, 16, 67, 17, 92, 23, 67, 13, 0, 7, 25, 6, 90, 10, 13, 7, 90, 17, 92, 11, 13, 76}, "9e5dcb", 25093));
            return true;
        }
        if (!z) {
            return false;
        }
        zaI();
        return false;
    }

    static /* bridge */ /* synthetic */ void zal(zabq zabqVar, zabs zabsVar) {
        if (zabqVar.zak.contains(zabsVar) && !zabqVar.zaj) {
            if (zabqVar.zac.isConnected()) {
                zabqVar.zaF();
            } else {
                zabqVar.zao();
            }
        }
    }

    static /* bridge */ /* synthetic */ void zam(zabq zabqVar, zabs zabsVar) {
        Feature[] featureArrZab;
        if (zabqVar.zak.remove(zabsVar)) {
            zabqVar.zaa.zar.removeMessages(15, zabsVar);
            zabqVar.zaa.zar.removeMessages(16, zabsVar);
            Feature feature = zabsVar.zab;
            ArrayList arrayList = new ArrayList(zabqVar.zab.size());
            for (zai zaiVar : zabqVar.zab) {
                if ((zaiVar instanceof zac) && (featureArrZab = ((zac) zaiVar).zab(zabqVar)) != null && ArrayUtils.contains(featureArrZab, feature)) {
                    arrayList.add(zaiVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zai zaiVar2 = (zai) arrayList.get(i);
                zabqVar.zab.remove(zaiVar2);
                zaiVar2.zae(new UnsupportedApiCallException(feature));
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        if (Looper.myLooper() == this.zaa.zar.getLooper()) {
            zaG();
        } else {
            this.zaa.zar.post(new zabm(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zar(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        if (Looper.myLooper() == this.zaa.zar.getLooper()) {
            zaH(i);
        } else {
            this.zaa.zar.post(new zabn(this, i));
        }
    }

    @ResultIgnorabilityUnspecified
    public final boolean zaA() {
        return zaN(true);
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void zaa(ConnectionResult connectionResult, Api api, boolean z) {
        throw null;
    }

    public final int zab() {
        return this.zah;
    }

    final int zac() {
        return this.zam;
    }

    public final ConnectionResult zad() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        return this.zal;
    }

    public final Api.Client zaf() {
        return this.zac;
    }

    public final Map zah() {
        return this.zag;
    }

    public final void zan() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        this.zal = null;
    }

    public final void zao() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if (this.zac.isConnected() || this.zac.isConnecting()) {
            return;
        }
        try {
            GoogleApiManager googleApiManager = this.zaa;
            int iZab = googleApiManager.zak.zab(googleApiManager.zai, this.zac);
            if (iZab == 0) {
                GoogleApiManager googleApiManager2 = this.zaa;
                Api.Client client = this.zac;
                zabu zabuVar = new zabu(googleApiManager2, client, this.zad);
                if (client.requiresSignIn()) {
                    ((zact) Preconditions.checkNotNull(this.zai)).zae(zabuVar);
                }
                try {
                    this.zac.connect(zabuVar);
                    return;
                } catch (SecurityException e) {
                    zar(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iZab, null);
            Log.w(NPStringFog.decode(new byte[]{37, 88, 95, 80, 84, 4, 35, 71, 89, 122, 89, 15, 3, 80, 85, 69}, "b7078a", 8.751055E8f), NPStringFog.decode(new byte[]{103, 88, 84, 67, 70, 93, 65, 70, 88, 0, 80, 24, 85, 95, 67, 67}, "301c58", -1.82400468E9d) + this.zac.getClass().getName() + NPStringFog.decode(new byte[]{23, 93, 64, 22, 94, 87, 67, 20, 82, 64, 81, 81, 91, 85, 81, 90, 85, 2, 23}, "743608", 6754) + connectionResult.toString());
            zar(connectionResult, null);
        } catch (IllegalStateException e2) {
            zar(new ConnectionResult(10), e2);
        }
    }

    public final void zap(zai zaiVar) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if (this.zac.isConnected()) {
            if (zaL(zaiVar)) {
                zaI();
                return;
            } else {
                this.zab.add(zaiVar);
                return;
            }
        }
        this.zab.add(zaiVar);
        ConnectionResult connectionResult = this.zal;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            zao();
        } else {
            zar(this.zal, null);
        }
    }

    final void zaq() {
        this.zam++;
    }

    public final void zar(ConnectionResult connectionResult, Exception exc) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        zact zactVar = this.zai;
        if (zactVar != null) {
            zactVar.zaf();
        }
        zan();
        this.zaa.zak.zac();
        zaC(connectionResult);
        if ((this.zac instanceof com.google.android.gms.common.internal.service.zap) && connectionResult.getErrorCode() != 24) {
            this.zaa.zaf = true;
            GoogleApiManager googleApiManager = this.zaa;
            googleApiManager.zar.sendMessageDelayed(googleApiManager.zar.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            zaD(GoogleApiManager.zab);
            return;
        }
        if (this.zab.isEmpty()) {
            this.zal = connectionResult;
            return;
        }
        if (exc != null) {
            Preconditions.checkHandlerThread(this.zaa.zar);
            zaE(null, exc, false);
            return;
        }
        if (!this.zaa.zas) {
            zaD(GoogleApiManager.zaF(this.zad, connectionResult));
            return;
        }
        zaE(GoogleApiManager.zaF(this.zad, connectionResult), null, true);
        if (this.zab.isEmpty() || zaM(connectionResult) || this.zaa.zaE(connectionResult, this.zah)) {
            return;
        }
        if (connectionResult.getErrorCode() == 18) {
            this.zaj = true;
        }
        if (!this.zaj) {
            zaD(GoogleApiManager.zaF(this.zad, connectionResult));
        } else {
            GoogleApiManager googleApiManager2 = this.zaa;
            googleApiManager2.zar.sendMessageDelayed(Message.obtain(googleApiManager2.zar, 9, this.zad), 5000L);
        }
    }

    public final void zas(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        Api.Client client = this.zac;
        client.disconnect(NPStringFog.decode(new byte[]{13, 12, 106, 8, 3, 15, 43, 12, 127, 0, 13, 13, 7, 6, 25, 7, 11, 19, 66}, "bb9ada", 1.7099795E9f) + client.getClass().getName() + NPStringFog.decode(new byte[]{22, 17, 92, 71, 91, 68}, "6f533d", false) + String.valueOf(connectionResult));
        zar(connectionResult, null);
    }

    public final void zat(zal zalVar) {
        Preconditions.checkHandlerThread(this.zaa.zar);
        this.zaf.add(zalVar);
    }

    public final void zau() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if (this.zaj) {
            zao();
        }
    }

    public final void zav() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        zaD(GoogleApiManager.zaa);
        this.zae.zaf();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.zag.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            zap(new zah(listenerKey, new TaskCompletionSource()));
        }
        zaC(new ConnectionResult(4));
        if (this.zac.isConnected()) {
            this.zac.onUserSignOut(new zabp(this));
        }
    }

    public final void zaw() {
        Preconditions.checkHandlerThread(this.zaa.zar);
        if (this.zaj) {
            zaK();
            GoogleApiManager googleApiManager = this.zaa;
            zaD(googleApiManager.zaj.isGooglePlayServicesAvailable(googleApiManager.zai) == 18 ? new Status(21, NPStringFog.decode(new byte[]{39, 10, 91, 90, 85, 84, 16, 12, 90, 90, 16, 67, 13, 8, 80, 80, 16, 88, 17, 17, 21, 67, 81, 94, 16, 12, 91, 83, 16, 81, 11, 23, 21, 115, 95, 88, 3, 9, 80, 20, 96, 91, 5, 28, 21, 71, 85, 69, 18, 12, 86, 81, 67, 23, 17, 21, 81, 85, 68, 82, 68, 17, 90, 20, 83, 88, 9, 21, 89, 81, 68, 82, 74}, "de5407", -25521)) : new Status(22, NPStringFog.decode(new byte[]{119, 50, 121, 20, 86, 4, 95, 14, 85, 80, 16, 17, 89, 66, 83, 91, 94, 11, 83, 1, 68, 20, 71, 13, 95, 14, 85, 20, 66, 0, 69, 23, 93, 93, 94, 2, 22, 6, 69, 81, 16, 17, 89, 66, 81, 90, 16, 16, 88, 9, 94, 91, 71, 11, 22, 7, 66, 70, 95, 23, 24}, "6b040e", true)));
            this.zac.disconnect(NPStringFog.decode(new byte[]{54, 91, 14, 10, 87, 3, 66, 93, 22, 23, 25, 7, 13, 92, 13, 6, 90, 16, 11, 93, 13, 67, 78, 12, 11, 94, 6, 67, 75, 1, 17, 71, 14, 10, 87, 3, 76}, "b2cc9d", true));
        }
    }

    final boolean zay() {
        return this.zac.isConnected();
    }

    public final boolean zaz() {
        return this.zac.requiresSignIn();
    }
}
