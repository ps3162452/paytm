package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaaa implements zaca {
    private final Context zaa;
    private final zabe zab;
    private final Looper zac;
    private final zabi zad;
    private final zabi zae;
    private final Map zaf;
    private final Api.Client zah;
    private Bundle zai;
    private final Lock zam;
    private final Set zag = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zaj = null;
    private ConnectionResult zak = null;
    private boolean zal = false;
    private int zan = 0;

    private zaaa(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, Map map2, ClientSettings clientSettings, Api.AbstractClientBuilder abstractClientBuilder, Api.Client client, ArrayList arrayList, ArrayList arrayList2, Map map3, Map map4) {
        this.zaa = context;
        this.zab = zabeVar;
        this.zam = lock;
        this.zac = looper;
        this.zah = client;
        this.zad = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zax(this, null));
        this.zae = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zaz(this, null));
        ArrayMap arrayMap = new ArrayMap();
        Iterator it = map2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put((Api.AnyClientKey) it.next(), this.zad);
        }
        Iterator it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put((Api.AnyClientKey) it2.next(), this.zae);
        }
        this.zaf = Collections.unmodifiableMap(arrayMap);
    }

    private final void zaA(ConnectionResult connectionResult) {
        switch (this.zan) {
            case 2:
                this.zab.zaa(connectionResult);
            case 1:
                zaB();
                break;
            default:
                Log.wtf(NPStringFog.decode(new byte[]{112, 92, 85, 67, 10, 18, 90, 71, 93, 116, 36, 34}, "3383ea", true), NPStringFog.decode(new byte[]{112, 77, 22, 80, 15, 72, 69, 92, 6, 21, 22, 87, 17, 90, 3, 89, 14, 24, 87, 88, 11, 89, 23, 74, 84, 25, 1, 84, 14, 84, 83, 88, 1, 94, 17, 24, 88, 87, 66, 118, 45, 118, 127, 124, 33, 97, 43, 119, 127, 102, 47, 122, 38, 125, 110, 119, 45, 123, 39, 22, 17, 122, 3, 89, 14, 90, 80, 90, 9, 70, 66, 75, 89, 86, 23, 89, 6, 24, 83, 92, 66, 81, 11, 75, 80, 91, 14, 80, 6, 24, 71, 80, 3, 21, 37, 85, 66, 122, 14, 92, 7, 86, 69, 106, 23, 69, 7, 74, 71, 80, 17, 90, 16}, "19b5b8", true, false), new Exception());
                break;
        }
        this.zan = 0;
    }

    private final void zaB() {
        Iterator it = this.zag.iterator();
        while (it.hasNext()) {
            ((SignInConnectionListener) it.next()).onComplete();
        }
        this.zag.clear();
    }

    private final boolean zaC() {
        ConnectionResult connectionResult = this.zak;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private final boolean zaD(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabi zabiVar = (zabi) this.zaf.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabiVar, NPStringFog.decode(new byte[]{118, 87, 94, 95, 10, 93, 112, 72, 88, 123, 10, 81, 84, 86, 69, 24, 15, 75, 17, 86, 94, 76, 70, 91, 94, 86, 87, 81, 1, 77, 67, 93, 85, 24, 18, 87, 17, 77, 66, 93, 70, 76, 89, 93, 17, 121, 54, 113, 17, 74, 84, 73, 19, 81, 67, 93, 85, 24, 0, 87, 67, 24, 69, 80, 15, 75, 17, 91, 80, 84, 10, 22}, "1818f8", true));
        return zabiVar.equals(this.zae);
    }

    private static boolean zaE(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    public static zaaa zag(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, ClientSettings clientSettings, Map map2, Api.AbstractClientBuilder abstractClientBuilder, ArrayList arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry entry : map.entrySet()) {
            Api.Client client2 = (Api.Client) entry.getValue();
            if (true == client2.providesSignIn()) {
                client = client2;
            }
            if (client2.requiresSignIn()) {
                arrayMap.put((Api.AnyClientKey) entry.getKey(), client2);
            } else {
                arrayMap2.put((Api.AnyClientKey) entry.getKey(), client2);
            }
        }
        Preconditions.checkState(!arrayMap.isEmpty(), NPStringFog.decode(new byte[]{39, 89, 12, 71, 91, 69, 13, 66, 4, 112, 91, 89, 3, 90, 4, 118, 68, 95, 39, 90, 8, 82, 90, 66, 68, 69, 9, 88, 65, 90, 0, 22, 15, 88, 64, 22, 6, 83, 65, 66, 71, 83, 0, 22, 22, 94, 64, 94, 11, 67, 21, 23, 85, 88, 29, 22, 32, 103, 125, 69, 68, 66, 9, 86, 64, 22, 22, 83, 16, 66, 93, 68, 1, 22, 18, 94, 83, 88, 73, 95, 15, 25}, "d6a746", true));
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api api : map2.keySet()) {
            Api.AnyClientKey anyClientKeyZab = api.zab();
            if (arrayMap.containsKey(anyClientKeyZab)) {
                arrayMap3.put(api, (Boolean) map2.get(api));
            } else {
                if (!arrayMap2.containsKey(anyClientKeyZab)) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 81, 91, 11, 25, 112, 103, 121, 24, 10, 87, 17, 67, 88, 93, 67, 80, 66, 120, 64, 76, 10, 86, 95, 86, 92, 117, 2, 73, 17, 90, 69, 75, 23, 25, 89, 86, 70, 93, 67, 88, 17, 84, 95, 74, 17, 92, 66, 71, 95, 86, 7, 80, 95, 80, 16, 91, 15, 80, 84, 89, 68, 24, 10, 87, 17, 67, 88, 93, 67, 90, 93, 94, 85, 86, 23, 74, 17, 90, 81, 72, 77}, "708c91", 1.884741991E9d));
                }
                arrayMap4.put(api, (Boolean) map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zat zatVar = (zat) arrayList.get(i);
            if (arrayMap3.containsKey(zatVar.zaa)) {
                arrayList2.add(zatVar);
            } else {
                if (!arrayMap4.containsKey(zatVar.zaa)) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 83, 87, 12, 65, 32, 15, 91, 81, 10, 21, 32, 2, 94, 88, 6, 0, 0, 8, 65, 20, 9, 20, 16, 23, 18, 92, 5, 23, 6, 67, 83, 20, 7, 14, 17, 17, 87, 71, 20, 14, 13, 7, 91, 90, 3, 65, 34, 51, 123, 20, 13, 15, 67, 23, 90, 81, 68, 8, 16, 44, 66, 64, 13, 14, 13, 2, 94, 121, 5, 17}, "c24dac", false));
                }
                arrayList3.add(zatVar);
            }
        }
        return new zaaa(context, zabeVar, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    static /* bridge */ /* synthetic */ void zan(zaaa zaaaVar, int i, boolean z) {
        zaaaVar.zab.zac(i, z);
        zaaaVar.zak = null;
        zaaaVar.zaj = null;
    }

    static /* bridge */ /* synthetic */ void zao(zaaa zaaaVar, Bundle bundle) {
        Bundle bundle2 = zaaaVar.zai;
        if (bundle2 == null) {
            zaaaVar.zai = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    static /* bridge */ /* synthetic */ void zap(zaaa zaaaVar) {
        ConnectionResult connectionResult;
        if (!zaE(zaaaVar.zaj)) {
            if (zaaaVar.zaj != null && zaE(zaaaVar.zak)) {
                zaaaVar.zae.zar();
                zaaaVar.zaA((ConnectionResult) Preconditions.checkNotNull(zaaaVar.zaj));
                return;
            }
            ConnectionResult connectionResult2 = zaaaVar.zaj;
            if (connectionResult2 == null || (connectionResult = zaaaVar.zak) == null) {
                return;
            }
            if (zaaaVar.zae.zaf >= zaaaVar.zad.zaf) {
                connectionResult = connectionResult2;
            }
            zaaaVar.zaA(connectionResult);
            return;
        }
        if (zaE(zaaaVar.zak) || zaaaVar.zaC()) {
            switch (zaaaVar.zan) {
                case 2:
                    ((zabe) Preconditions.checkNotNull(zaaaVar.zab)).zab(zaaaVar.zai);
                case 1:
                    zaaaVar.zaB();
                    break;
                default:
                    Log.wtf(NPStringFog.decode(new byte[]{32, 13, 8, 66, 86, 65, 10, 22, 0, 117, 120, 113}, "cbe292", 5.35323676E8d), NPStringFog.decode(new byte[]{32, 22, 16, 6, 88, 64, 21, 7, 0, 67, 65, 95, 65, 1, 5, 15, 89, 16, 18, 23, 7, 0, 80, 67, 18, 66, 7, 2, 89, 92, 3, 3, 7, 8, 70, 16, 8, 12, 68, 32, 122, 126, 47, 39, 39, 55, 124, 127, 47, 61, 41, 44, 113, 117, 62, 44, 43, 45, 112, 30, 65, 33, 5, 15, 89, 82, 0, 1, 15, 16, 21, 67, 9, 13, 17, 15, 81, 16, 3, 7, 68, 7, 92, 67, 0, 0, 8, 6, 81, 16, 23, 11, 5, 67, 114, 93, 18, 33, 8, 10, 80, 94, 21, 49, 17, 19, 80, 66, 23, 11, 23, 12, 71}, "abdc50", 1.18810411E8d), new AssertionError());
                    break;
            }
            zaaaVar.zan = 0;
            return;
        }
        ConnectionResult connectionResult3 = zaaaVar.zak;
        if (connectionResult3 != null) {
            if (zaaaVar.zan == 1) {
                zaaaVar.zaB();
            } else {
                zaaaVar.zaA(connectionResult3);
                zaaaVar.zad.zar();
            }
        }
    }

    private final PendingIntent zaz() {
        if (this.zah == null) {
            return null;
        }
        return PendingIntent.getActivity(this.zaa, System.identityHashCode(this.zab), this.zah.getSignInIntent(), com.google.android.gms.internal.base.zap.zaa | 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final ConnectionResult zab() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final ConnectionResult zac(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final ConnectionResult zad(Api api) {
        return Objects.equal(this.zaf.get(api.zab()), this.zae) ? zaC() ? new ConnectionResult(4, zaz()) : this.zae.zad(api) : this.zad.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final BaseImplementation.ApiMethodImpl zae(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (!zaD(apiMethodImpl)) {
            this.zad.zae(apiMethodImpl);
        } else if (zaC()) {
            apiMethodImpl.setFailedResult(new Status(4, (String) null, zaz()));
        } else {
            this.zae.zae(apiMethodImpl);
        }
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final BaseImplementation.ApiMethodImpl zaf(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (!zaD(apiMethodImpl)) {
            return this.zad.zaf(apiMethodImpl);
        }
        if (!zaC()) {
            return this.zae.zaf(apiMethodImpl);
        }
        apiMethodImpl.setFailedResult(new Status(4, (String) null, zaz()));
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zaq() {
        this.zan = 2;
        this.zal = false;
        this.zak = null;
        this.zaj = null;
        this.zad.zaq();
        this.zae.zaq();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zar() {
        this.zak = null;
        this.zaj = null;
        this.zan = 0;
        this.zad.zar();
        this.zae.zar();
        zaB();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zas(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{0, 71, 23, 10, 123, 9, 8, 87, 13, 22}, "a2cb8e", -7.177444E8f)).println(NPStringFog.decode(new byte[]{9}, "375b79", true));
        this.zae.zas(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{84, 10, 13, 93, 34, 89, 92, 1, 12, 71}, "5db3a5", -2.0945928E9f)).println(NPStringFog.decode(new byte[]{3}, "9e9aca", false, true));
        this.zad.zas(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zat() {
        this.zad.zat();
        this.zae.zat();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zau() {
        this.zam.lock();
        try {
            boolean zZax = zax();
            this.zae.zar();
            this.zak = new ConnectionResult(4);
            if (zZax) {
                new com.google.android.gms.internal.base.zau(this.zac).post(new zav(this));
            } else {
                zaB();
            }
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zaw() {
        boolean z = true;
        this.zam.lock();
        try {
            if (!this.zad.zaw()) {
                z = false;
            } else if (!this.zae.zaw() && !zaC()) {
                if (this.zan != 1) {
                    z = false;
                }
            }
            return z;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zax() {
        this.zam.lock();
        try {
            return this.zan == 2;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zay(SignInConnectionListener signInConnectionListener) {
        this.zam.lock();
        try {
            if ((!zax() && !zaw()) || this.zae.zaw()) {
                this.zam.unlock();
                return false;
            }
            this.zag.add(signInConnectionListener);
            if (this.zan == 0) {
                this.zan = 1;
            }
            this.zak = null;
            this.zae.zaq();
            return true;
        } finally {
            this.zam.unlock();
        }
    }
}
