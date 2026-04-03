package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaaw implements zabf {
    private final zabi zaa;
    private final Lock zab;
    private final Context zac;
    private final GoogleApiAvailabilityLight zad;
    private ConnectionResult zae;
    private int zaf;
    private int zah;
    private com.google.android.gms.signin.zae zak;
    private boolean zal;
    private boolean zam;
    private boolean zan;
    private IAccountAccessor zao;
    private boolean zap;
    private boolean zaq;
    private final ClientSettings zar;
    private final Map zas;
    private final Api.AbstractClientBuilder zat;
    private int zag = 0;
    private final Bundle zai = new Bundle();
    private final Set zaj = new HashSet();
    private final ArrayList zau = new ArrayList();

    public zaaw(zabi zabiVar, ClientSettings clientSettings, Map map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder abstractClientBuilder, Lock lock, Context context) {
        this.zaa = zabiVar;
        this.zar = clientSettings;
        this.zas = map;
        this.zad = googleApiAvailabilityLight;
        this.zat = abstractClientBuilder;
        this.zab = lock;
        this.zac = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaA() {
        this.zam = false;
        this.zaa.zag.zad = Collections.emptySet();
        for (Api.AnyClientKey anyClientKey : this.zaj) {
            if (!this.zaa.zab.containsKey(anyClientKey)) {
                this.zaa.zab.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    private final void zaB(boolean z) {
        com.google.android.gms.signin.zae zaeVar = this.zak;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z) {
                zaeVar.zaa();
            }
            zaeVar.disconnect();
            this.zao = null;
        }
    }

    private final void zaC() {
        this.zaa.zai();
        zabj.zaa().execute(new zaak(this));
        com.google.android.gms.signin.zae zaeVar = this.zak;
        if (zaeVar != null) {
            if (this.zap) {
                zaeVar.zac((IAccountAccessor) Preconditions.checkNotNull(this.zao), this.zaq);
            }
            zaB(false);
        }
        Iterator it = this.zaa.zab.keySet().iterator();
        while (it.hasNext()) {
            ((Api.Client) Preconditions.checkNotNull((Api.Client) this.zaa.zaa.get((Api.AnyClientKey) it.next()))).disconnect();
        }
        this.zaa.zah.zab(this.zai.isEmpty() ? null : this.zai);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaD(ConnectionResult connectionResult) {
        zaz();
        zaB(!connectionResult.hasResolution());
        this.zaa.zak(connectionResult);
        this.zaa.zah.zaa(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaE(ConnectionResult connectionResult, Api api, boolean z) {
        int priority = api.zac().getPriority();
        if ((!z || connectionResult.hasResolution() || this.zad.getErrorResolutionIntent(connectionResult.getErrorCode()) != null) && (this.zae == null || priority < this.zaf)) {
            this.zae = connectionResult;
            this.zaf = priority;
        }
        this.zaa.zab.put(api.zab(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaF() {
        if (this.zah != 0) {
            return;
        }
        if (!this.zam || this.zan) {
            ArrayList arrayList = new ArrayList();
            this.zag = 1;
            this.zah = this.zaa.zaa.size();
            for (Api.AnyClientKey anyClientKey : this.zaa.zaa.keySet()) {
                if (!this.zaa.zab.containsKey(anyClientKey)) {
                    arrayList.add((Api.Client) this.zaa.zaa.get(anyClientKey));
                } else if (zaH()) {
                    zaC();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.zau.add(zabj.zaa().submit(new zaap(this, arrayList)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zaG(int i) {
        if (this.zag == i) {
            return true;
        }
        Log.w(NPStringFog.decode(new byte[]{118, 32, 38, 33, 95, 90, 95, 4, 6, 22, 89, 90, 86}, "1aeb04", -1.815444878E9d), this.zaa.zag.zaf());
        Log.w(NPStringFog.decode(new byte[]{113, 118, 32, 117, 93, 87, 88, 82, 0, 66, 91, 87, 81}, "67c629", 1.788488341E9d), NPStringFog.decode(new byte[]{51, 13, 83, 79, 67, 6, 5, 23, 83, 83, 19, 0, 7, 15, 90, 85, 82, 0, 13, 67, 95, 89, 19}, "fc673c", 1.655564491E9d).concat(toString()));
        Log.w(NPStringFog.decode(new byte[]{127, 35, 123, 112, 94, 92, 86, 7, 91, 71, 88, 92, 95}, "8b8312", -12118), NPStringFog.decode(new byte[]{14, 102, 86, 8, 88, 92, 13, 93, 93, 2, 122, 90, 13, 90, 86, 6, 77, 92, 12, 90, 64, 88}, "c43e95", false) + this.zah);
        Log.e(NPStringFog.decode(new byte[]{36, 35, 118, 38, 89, 86, 13, 7, 86, 17, 95, 86, 4}, "cb5e68", 1.720805344E9d), NPStringFog.decode(new byte[]{34, 88, 91, 95, 8, 85, 36, 71, 93, 123, 8, 89, 0, 89, 64, 24, 7, 95, 11, 89, 81, 91, 16, 89, 11, 80, 20, 81, 23, 16, 12, 89, 20, 75, 16, 85, 21, 23}, "e748d0", 1.116576E9f) + zaJ(this.zag) + NPStringFog.decode(new byte[]{21, 80, 77, 23, 17, 22, 80, 81, 93, 10, 71, 1, 81, 18, 91, 2, 93, 8, 87, 83, 91, 8, 17, 2, 90, 64, 24, 16, 69, 1, 69, 18}, "528c1d", 16795) + zaJ(i), new Exception());
        zaD(new ConnectionResult(8, null));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zaH() {
        int i = this.zah - 1;
        this.zah = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w(NPStringFog.decode(new byte[]{117, 115, 119, 113, 93, 95, 92, 87, 87, 70, 91, 95, 85}, "224221", -2.260047E8f), this.zaa.zag.zaf());
            Log.wtf(NPStringFog.decode(new byte[]{126, 116, 118, 39, 95, 10, 87, 80, 86, 16, 89, 10, 94}, "955d0d", false), NPStringFog.decode(new byte[]{117, 89, 95, 4, 88, 81, 115, 70, 89, 32, 88, 93, 87, 88, 68, 67, 70, 81, 81, 83, 89, 21, 81, 80, 18, 66, 95, 12, 20, 89, 83, 88, 73, 67, 87, 85, 94, 90, 82, 2, 87, 95, 65, 22, 86, 12, 70, 20, 70, 94, 85, 67, 83, 93, 68, 83, 94, 67, 71, 64, 87, 70, 30, 67, 119, 88, 91, 83, 94, 23, 71, 20, 95, 87, 73, 67, 86, 81, 18, 95, 94, 67, 85, 90, 18, 67, 94, 6, 76, 68, 87, 85, 68, 6, 80, 20, 65, 66, 81, 23, 81, 15, 18, 113, 95, 12, 83, 88, 87, 119, 64, 10, 119, 88, 91, 83, 94, 23, 20, 67, 91, 90, 92, 67, 90, 91, 69, 22, 84, 10, 71, 87, 93, 88, 94, 6, 87, 64, 28}, "260c44", -2.1269868E9f), new Exception());
            zaD(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.zae;
        if (connectionResult == null) {
            return true;
        }
        this.zaa.zaf = this.zaf;
        zaD(connectionResult);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zaI(ConnectionResult connectionResult) {
        return this.zal && !connectionResult.hasResolution();
    }

    private static final String zaJ(int i) {
        switch (i) {
            case 0:
                return NPStringFog.decode(new byte[]{107, 50, 115, 49, 60, 103, 125, 52, 96, 40, 32, 113, 103, 36, 127, 47, 39, 125, 118, 33, 101, 62, 34, 122, 124, 57, 101, 40, 36, 122, 103, 47, 120}, "8f6ac4", false);
            default:
                return NPStringFog.decode(new byte[]{98, 109, 114, 104, 106, 119, 116, 109, 99, 113, 123, 119, 110, 107, 114, 117, 122, 100, 116, 102, 100, 125, 103, 102, 120, 122, 114}, "197850", -6.330961E8f);
        }
    }

    static /* bridge */ /* synthetic */ Set zao(zaaw zaawVar) {
        ClientSettings clientSettings = zaawVar.zar;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map mapZad = zaawVar.zar.zad();
        for (Api api : mapZad.keySet()) {
            if (!zaawVar.zaa.zab.containsKey(api.zab())) {
                hashSet.addAll(((com.google.android.gms.common.internal.zab) mapZad.get(api)).zaa);
            }
        }
        return hashSet;
    }

    static /* bridge */ /* synthetic */ void zar(zaaw zaawVar, com.google.android.gms.signin.internal.zak zakVar) {
        if (zaawVar.zaG(0)) {
            ConnectionResult connectionResultZaa = zakVar.zaa();
            if (!connectionResultZaa.isSuccess()) {
                if (!zaawVar.zaI(connectionResultZaa)) {
                    zaawVar.zaD(connectionResultZaa);
                    return;
                } else {
                    zaawVar.zaA();
                    zaawVar.zaF();
                    return;
                }
            }
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult connectionResultZaa2 = zavVar.zaa();
            if (!connectionResultZaa2.isSuccess()) {
                String strValueOf = String.valueOf(String.valueOf(connectionResultZaa2));
                Log.wtf(NPStringFog.decode(new byte[]{119, 120, 33, 116, 87, 11, 94, 92, 1, 67, 81, 11, 87}, "09b78e", true, true), NPStringFog.decode(new byte[]{50, 90, 85, 13, 27, 89, 15, 19, 65, 22, 85, 83, 4, 86, 86, 6, 82, 16, 22, 90, 70, 11, 22, 66, 4, 64, 93, 15, 64, 85, 65, 82, 81, 0, 89, 69, 15, 71, 18, 5, 87, 89, 13, 70, 64, 6, 12, 16}, "a32c60", -16157).concat(strValueOf), new Exception());
                zaawVar.zaD(connectionResultZaa2);
                return;
            }
            zaawVar.zan = true;
            zaawVar.zao = (IAccountAccessor) Preconditions.checkNotNull(zavVar.zab());
            zaawVar.zap = zavVar.zac();
            zaawVar.zaq = zavVar.zad();
            zaawVar.zaF();
        }
    }

    private final void zaz() {
        ArrayList arrayList = this.zau;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Future) arrayList.get(i)).cancel(true);
        }
        this.zau.clear();
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zaa(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.zaa.zag.zaa.add(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 88, 91, 3, 92, 87, 36, 71, 93, 39, 92, 91, 0, 89, 64, 68, 89, 65, 69, 89, 91, 16, 16, 81, 10, 89, 90, 1, 83, 70, 0, 83, 20, 29, 85, 70, 75}, "e74d02", true, false));
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zad() {
        zaas zaasVar = null;
        this.zaa.zab.clear();
        this.zam = false;
        this.zae = null;
        this.zag = 0;
        this.zal = true;
        this.zan = false;
        this.zap = false;
        HashMap map = new HashMap();
        boolean z = false;
        for (Api api : this.zas.keySet()) {
            Api.Client client = (Api.Client) Preconditions.checkNotNull((Api.Client) this.zaa.zaa.get(api.zab()));
            boolean z2 = (api.zac().getPriority() == 1) | z;
            boolean zBooleanValue = ((Boolean) this.zas.get(api)).booleanValue();
            if (client.requiresSignIn()) {
                this.zam = true;
                if (zBooleanValue) {
                    this.zaj.add(api.zab());
                } else {
                    this.zal = false;
                }
            }
            map.put(client, new zaal(this, api, zBooleanValue));
            z = z2;
        }
        if (z) {
            this.zam = false;
        }
        if (this.zam) {
            Preconditions.checkNotNull(this.zar);
            Preconditions.checkNotNull(this.zat);
            this.zar.zae(Integer.valueOf(System.identityHashCode(this.zaa.zag)));
            zaat zaatVar = new zaat(this, zaasVar);
            Api.AbstractClientBuilder abstractClientBuilder = this.zat;
            Context context = this.zac;
            Looper looper = this.zaa.zag.getLooper();
            ClientSettings clientSettings = this.zar;
            this.zak = abstractClientBuilder.buildClient(context, looper, clientSettings, clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) zaatVar, (GoogleApiClient.OnConnectionFailedListener) zaatVar);
        }
        this.zah = this.zaa.zaa.size();
        this.zau.add(zabj.zaa().submit(new zaao(this, map)));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zae() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zag(Bundle bundle) {
        if (zaG(1)) {
            if (bundle != null) {
                this.zai.putAll(bundle);
            }
            if (zaH()) {
                zaC();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zah(ConnectionResult connectionResult, Api api, boolean z) {
        if (zaG(1)) {
            zaE(connectionResult, api, z);
            if (zaH()) {
                zaC();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zai(int i) {
        zaD(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean zaj() {
        zaz();
        zaB(true);
        this.zaa.zak(null);
        return true;
    }
}
