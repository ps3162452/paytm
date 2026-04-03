package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zabe extends GoogleApiClient implements zabz {
    zabx zab;
    final Map zac;
    Set zad;
    final ClientSettings zae;
    final Map zaf;
    final Api.AbstractClientBuilder zag;
    Set zah;
    final zadc zai;
    private final Lock zaj;
    private final com.google.android.gms.common.internal.zak zak;
    private final int zam;
    private final Context zan;
    private final Looper zao;
    private volatile boolean zap;
    private long zaq;
    private long zar;
    private final zabc zas;
    private final GoogleApiAvailability zat;
    private final ListenerHolders zau;
    private final ArrayList zav;
    private Integer zaw;
    private final com.google.android.gms.common.internal.zaj zax;
    private zaca zal = null;
    final Queue zaa = new LinkedList();

    public zabe(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder abstractClientBuilder, Map map, List list, List list2, Map map2, int i, int i2, ArrayList arrayList) {
        this.zaq = true != ClientLibraryUtils.isPackageSide() ? 120000L : 10000L;
        this.zar = 5000L;
        this.zad = new HashSet();
        this.zau = new ListenerHolders();
        this.zaw = null;
        this.zah = null;
        zaay zaayVar = new zaay(this);
        this.zax = zaayVar;
        this.zan = context;
        this.zaj = lock;
        this.zak = new com.google.android.gms.common.internal.zak(looper, zaayVar);
        this.zao = looper;
        this.zas = new zabc(this, looper);
        this.zat = googleApiAvailability;
        this.zam = i;
        if (i >= 0) {
            this.zaw = Integer.valueOf(i2);
        }
        this.zaf = map;
        this.zac = map2;
        this.zav = arrayList;
        this.zai = new zadc();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.zak.zaf((GoogleApiClient.ConnectionCallbacks) it.next());
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            this.zak.zag((GoogleApiClient.OnConnectionFailedListener) it2.next());
        }
        this.zae = clientSettings;
        this.zag = abstractClientBuilder;
    }

    public static int zad(Iterable iterable, boolean z) {
        Iterator it = iterable.iterator();
        boolean zProvidesSignIn = false;
        boolean zRequiresSignIn = false;
        while (it.hasNext()) {
            Api.Client client = (Api.Client) it.next();
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn = client.providesSignIn() | zProvidesSignIn;
        }
        if (zRequiresSignIn) {
            return (zProvidesSignIn && z) ? 2 : 1;
        }
        return 3;
    }

    static String zag(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{49, 122, 118, 44, 59, 124, 44, 108, 124, 45, 32, 112, 61, 97, 116, 51, 49, 124, 48, 118, 117}, "b31bd5", 9871);
            case 2:
                return NPStringFog.decode(new byte[]{101, 45, 37, 45, 107, 43, 120, 59, 47, 44, 112, 39, 105, 43, 50, 55, 125, 45, 120, 37, 46}, "6dbc4b", 32670);
            case 3:
                return NPStringFog.decode(new byte[]{48, 47, 37, 47, 104, 123, 45, 57, 47, 46, 115, 119, 60, 40, 45, 47, 114}, "cfba72", -2.106849489E9d);
            default:
                return NPStringFog.decode(new byte[]{97, 126, 41, 40, 44, 100, 122}, "40bfc3", 1350254837L);
        }
    }

    static /* bridge */ /* synthetic */ void zai(zabe zabeVar) {
        zabeVar.zaj.lock();
        try {
            if (zabeVar.zap) {
                zabeVar.zan();
            }
        } finally {
            zabeVar.zaj.unlock();
        }
    }

    static /* bridge */ /* synthetic */ void zaj(zabe zabeVar) {
        zabeVar.zaj.lock();
        try {
            if (zabeVar.zak()) {
                zabeVar.zan();
            }
        } finally {
            zabeVar.zaj.unlock();
        }
    }

    private final void zal(int i) {
        Integer num = this.zaw;
        if (num == null) {
            this.zaw = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 81, 13, 95, 87, 76, 25, 69, 16, 84, 24, 75, 80, 87, 13, 28, 81, 86, 25, 93, 12, 85, 93, 2, 25}, "90c188", 1591540587L) + zag(i) + NPStringFog.decode(new byte[]{30, 21, 122, 10, 86, 93, 16, 66, 86, 22, 18, 89, 92, 71, 82, 4, 86, 65, 16, 70, 82, 17, 18, 76, 95, 21}, "057e28", -1.19727662E9d) + zag(this.zaw.intValue()));
        }
        if (this.zal != null) {
            return;
        }
        boolean zRequiresSignIn = false;
        boolean zProvidesSignIn = false;
        for (Api.Client client : this.zac.values()) {
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn = client.providesSignIn() | zProvidesSignIn;
        }
        switch (this.zaw.intValue()) {
            case 1:
                if (!zRequiresSignIn) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{96, 127, 127, 47, 61, 126, 125, 105, 117, 46, 38, 114, 108, 100, 125, 48, 55, 126, 97, 115, 124, 65, 1, 86, 93, 88, 87, 21, 66, 85, 86, 22, 77, 18, 7, 83, 19, 89, 86, 65, 3, 23, 116, 89, 87, 6, 14, 82, 114, 70, 81, 34, 14, 94, 86, 88, 76, 65, 22, 95, 82, 66, 24, 5, 13, 82, 64, 22, 86, 14, 22, 23, 80, 89, 86, 21, 3, 94, 93, 22, 89, 15, 27, 23, 82, 67, 76, 9, 7, 89, 71, 95, 91, 0, 22, 82, 87, 22, 121, 49, 43, 68, 29, 22, 109, 18, 7, 23, 80, 89, 86, 15, 7, 84, 71, 30, 17, 65, 11, 89, 64, 66, 93, 0, 6, 25}, "368ab7", false));
                }
                if (zProvidesSignIn) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 0, 88, 86, 11, 22, 21, 20, 69, 93, 68, 49, 124, 38, 120, 103, 45, 44, 106, 44, 121, 124, 33, 61, 103, 36, 103, 109, 45, 48, 112, 37, 22, 79, 13, 22, 93, 65, 113, 119, 43, 37, 121, 36, 105, 107, 45, 37, 123, 62, 127, 118, 59, 35, 101, 40, 24, 24, 49, 17, 80, 65, 85, 87, 10, 12, 80, 2, 66, 16, 55, 43, 114, 47, 105, 113, 42, 61, 120, 46, 114, 125, 59, 45, 101, 53, 127, 119, 42, 35, 121, 72, 22, 81, 10, 17, 65, 4, 87, 92, 74}, "5a68db", 1308469821L));
                }
                break;
            case 2:
                if (zRequiresSignIn) {
                    this.zal = zaaa.zag(this.zan, this, this.zaj, this.zao, this.zat, this.zac, this.zae, this.zaf, this.zag, this.zav);
                    return;
                }
                break;
        }
        this.zal = new zabi(this.zan, this, this.zaj, this.zao, this.zat, this.zac, this.zae, this.zaf, this.zag, this.zav, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zam(GoogleApiClient googleApiClient, StatusPendingResult statusPendingResult, boolean z) {
        Common.zaa.zaa(googleApiClient).setResultCallback(new zabb(this, statusPendingResult, z, googleApiClient));
    }

    private final void zan() {
        this.zak.zab();
        ((zaca) Preconditions.checkNotNull(this.zal)).zaq();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final ConnectionResult blockingConnect() {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), NPStringFog.decode(new byte[]{3, 93, 13, 5, 89, 13, 15, 86, 33, 9, 92, 10, 4, 82, 22, 70, 95, 17, 18, 69, 66, 8, 93, 16, 65, 83, 7, 70, 81, 5, 13, 93, 7, 2, 18, 11, 15, 17, 22, 14, 87, 68, 52, 120, 66, 18, 90, 22, 4, 80, 6}, "a1bf2d", 31213));
        this.zaj.lock();
        try {
            if (this.zam >= 0) {
                Preconditions.checkState(this.zaw != null, NPStringFog.decode(new byte[]{48, 93, 5, 90, 78, 13, 13, 20, 15, 91, 7, 1, 67, 71, 10, 91, 22, 8, 7, 20, 10, 85, 21, 1, 67, 86, 7, 81, 13, 68, 16, 81, 22, 20, 6, 28, 19, 88, 11, 87, 10, 16, 15, 77, 66, 86, 26, 68, 2, 65, 22, 91, 78, 9, 2, 90, 3, 83, 6, 74}, "c4b4cd", -4.043006E8f));
            } else {
                Integer num = this.zaw;
                if (num == null) {
                    this.zaw = Integer.valueOf(zad(this.zac.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 84, 86, 15, 11, 21, 65, 86, 89, 13, 8, 65, 3, 89, 87, 2, 15, 8, 15, 82, 123, 14, 10, 15, 4, 86, 76, 73, 77, 65, 22, 93, 93, 15, 68, 18, 8, 82, 86, 76, 13, 15, 65, 88, 87, 5, 1, 65, 8, 70, 24, 18, 1, 21, 65, 65, 87, 65, 55, 40, 38, 123, 103, 40, 42, 62, 44, 122, 124, 36, 59, 46, 49, 97, 113, 46, 42, 32, 45, 27, 24, 34, 5, 13, 13, 21, 91, 14, 10, 15, 4, 86, 76, 73, 55, 40, 38, 123, 103, 40, 42, 62, 44, 122, 124, 36, 59, 46, 49, 97, 113, 46, 42, 32, 45, 28, 24, 8, 10, 18, 21, 80, 89, 5, 74}, "a58ada", 1216808931L));
                }
            }
            zal(((Integer) Preconditions.checkNotNull(this.zaw)).intValue());
            this.zak.zab();
            return ((zaca) Preconditions.checkNotNull(this.zal)).zab();
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), NPStringFog.decode(new byte[]{80, 93, 90, 87, 15, 80, 92, 86, 118, 91, 10, 87, 87, 82, 65, 20, 9, 76, 65, 69, 21, 90, 11, 77, 18, 83, 80, 20, 7, 88, 94, 93, 80, 80, 68, 86, 92, 17, 65, 92, 1, 25, 103, 120, 21, 64, 12, 75, 87, 80, 81}, "2154d9", -1418041641L));
        Preconditions.checkNotNull(timeUnit, NPStringFog.decode(new byte[]{50, 81, 84, 86, 48, 13, 15, 76, 25, 94, 16, 16, 18, 24, 87, 92, 17, 67, 4, 93, 25, 93, 16, 15, 10}, "f893ec", 13109));
        this.zaj.lock();
        try {
            Integer num = this.zaw;
            if (num == null) {
                this.zaw = Integer.valueOf(zad(this.zac.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 80, 90, 8, 9, 64, 23, 82, 85, 10, 10, 20, 85, 93, 91, 5, 13, 93, 89, 86, 119, 9, 8, 90, 82, 82, 64, 78, 79, 20, 64, 89, 81, 8, 70, 71, 94, 86, 90, 75, 15, 90, 23, 92, 91, 2, 3, 20, 94, 66, 20, 21, 3, 64, 23, 69, 91, 70, 53, 125, 112, 127, 107, 47, 40, 107, 122, 126, 112, 35, 57, 123, 103, 101, 125, 41, 40, 117, 123, 31, 20, 37, 7, 88, 91, 17, 87, 9, 8, 90, 82, 82, 64, 78, 53, 125, 112, 127, 107, 47, 40, 107, 122, 126, 112, 35, 57, 123, 103, 101, 125, 41, 40, 117, 123, 24, 20, 15, 8, 71, 67, 84, 85, 2, 72}, "714ff4", 285631932L));
            }
            zal(((Integer) Preconditions.checkNotNull(this.zaw)).intValue());
            this.zak.zab();
            return ((zaca) Preconditions.checkNotNull(this.zal)).zac(j, timeUnit);
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        Preconditions.checkState(isConnected(), NPStringFog.decode(new byte[]{118, 90, 90, 85, 91, 83, 112, 69, 92, 113, 91, 95, 84, 91, 65, 18, 94, 69, 17, 91, 90, 70, 23, 85, 94, 91, 91, 87, 84, 66, 84, 81, 21, 75, 82, 66, 31}, "155276", 32351));
        Integer num = this.zaw;
        boolean z = true;
        if (num != null && num.intValue() == 2) {
            z = false;
        }
        Preconditions.checkState(z, NPStringFog.decode(new byte[]{32, 0, 88, 92, 86, 67, 67, 20, 69, 87, 25, 84, 15, 4, 87, 64, 125, 82, 5, 0, 67, 94, 77, 118, 0, 2, 89, 71, 87, 67, 34, 15, 82, 96, 92, 84, 12, 15, 88, 87, 90, 67, 67, 22, 95, 70, 81, 23, 36, 46, 121, 117, 117, 114, 60, 50, 127, 117, 119, 104, 42, 47, 105, 115, 105, 126}, "ca6297", 1.763137157E9d));
        StatusPendingResult statusPendingResult = new StatusPendingResult(this);
        if (this.zac.containsKey(Common.CLIENT_KEY)) {
            zam(this, statusPendingResult, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            zaaz zaazVar = new zaaz(this, atomicReference, statusPendingResult);
            zaba zabaVar = new zaba(this, statusPendingResult);
            GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.zan);
            builder.addApi(Common.API);
            builder.addConnectionCallbacks(zaazVar);
            builder.addOnConnectionFailedListener(zabaVar);
            builder.setHandler(this.zas);
            GoogleApiClient googleApiClientBuild = builder.build();
            atomicReference.set(googleApiClientBuild);
            googleApiClientBuild.connect();
        }
        return statusPendingResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008e, code lost:
    
        throw r0;
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void connect() {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zabe.connect():void");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        boolean z = true;
        this.zaj.lock();
        if (i != 3 && i != 1) {
            if (i == 2) {
                i = 2;
            } else {
                z = false;
            }
        }
        try {
            Preconditions.checkArgument(z, NPStringFog.decode(new byte[]{124, 95, 10, 6, 94, 82, 89, 19, 21, 10, 94, 93, 24, 90, 8, 67, 84, 92, 81, 86, 92, 67}, "53fc93", true) + i);
            zal(i);
            zan();
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        Lock lock;
        this.zaj.lock();
        try {
            this.zai.zab();
            zaca zacaVar = this.zal;
            if (zacaVar != null) {
                zacaVar.zar();
            }
            this.zau.zab();
            for (BaseImplementation.ApiMethodImpl apiMethodImpl : this.zaa) {
                apiMethodImpl.zan(null);
                apiMethodImpl.cancel();
            }
            this.zaa.clear();
            if (this.zal == null) {
                lock = this.zaj;
            } else {
                zak();
                this.zak.zaa();
                lock = this.zaj;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{14, 118, 13, 13, 70, 86, 27, 65, 95}, "c5bc23", true)).println(this.zan);
        printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{84, 49, 85, 69, 67, 11, 80, 13, 87, 11}, "9c066f", 1.5872552E9f)).print(this.zap);
        printWriter.append((CharSequence) NPStringFog.decode(new byte[]{70, 93, 98, 88, 69, 88, 55, 69, 80, 66, 82, 29, 21, 89, 79, 82, 31, 26, 91}, "f05773", 1989932955L)).print(this.zaa.size());
        printWriter.append((CharSequence) NPStringFog.decode(new byte[]{24, 84, 99, 8, 86, 89, 86, 74, 67, 11, 80, 82, 121, 73, 95, 37, 84, 90, 84, 74, 24, 21, 92, 76, 93, 17, 31, 91}, "896f56", false)).println(this.zai.zab.size());
        zaca zacaVar = this.zal;
        if (zacaVar != null) {
            zacaVar.zas(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        Lock lock;
        Api<?> api = t.getApi();
        Preconditions.checkArgument(this.zac.containsKey(t.getClientKey()), NPStringFog.decode(new byte[]{116, 91, 10, 2, 93, 1, 114, 68, 12, 38, 93, 13, 86, 90, 17, 69, 88, 23, 19, 90, 10, 17, 17, 7, 92, 90, 3, 12, 86, 17, 65, 81, 1, 69, 69, 11, 19, 65, 22, 0, 17}, "34ee1d", 1309817078L) + (api != null ? api.zad() : NPStringFog.decode(new byte[]{22, 12, 3, 17, 118, 99, 43}, "bdf173", -5.639733E8f)) + NPStringFog.decode(new byte[]{17, 20, 80, 20, 67, 90, 67, 3, 81, 69, 80, 92, 67, 70, 65, 13, 95, 64, 17, 5, 84, 9, 90, 29}, "1f5e63", 4.698658E8f));
        this.zaj.lock();
        try {
            zaca zacaVar = this.zal;
            if (zacaVar == null) {
                this.zaa.add(t);
                lock = this.zaj;
            } else {
                t = (T) zacaVar.zae(t);
                lock = this.zaj;
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Lock lock;
        Api<?> api = t.getApi();
        Preconditions.checkArgument(this.zac.containsKey(t.getClientKey()), NPStringFog.decode(new byte[]{116, 90, 88, 83, 89, 92, 114, 69, 94, 119, 89, 80, 86, 91, 67, 20, 92, 74, 19, 91, 88, 64, 21, 90, 92, 91, 81, 93, 82, 76, 65, 80, 83, 20, 65, 86, 19, 64, 68, 81, 21}, "357459", 1351883417L) + (api != null ? api.zad() : NPStringFog.decode(new byte[]{76, 81, 87, 70, 116, 97, 113}, "892f51", 9.1515546E8f)) + NPStringFog.decode(new byte[]{66, 68, 92, 70, 71, 12, 16, 83, 93, 23, 84, 10, 16, 22, 77, 95, 91, 22, 66, 85, 88, 91, 94, 75}, "b6972e", false, true));
        this.zaj.lock();
        try {
            zaca zacaVar = this.zal;
            if (zacaVar == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 87, 14, 82, 89, 1, 112, 72, 8, 118, 89, 13, 84, 86, 21, 21, 92, 23, 17, 86, 14, 65, 21, 7, 94, 86, 15, 80, 86, 16, 84, 92, 65, 76, 80, 16, 31}, "18a55d", -4.22065692E8d));
            }
            if (this.zap) {
                this.zaa.add(t);
                while (!this.zaa.isEmpty()) {
                    BaseImplementation.ApiMethodImpl apiMethodImpl = (BaseImplementation.ApiMethodImpl) this.zaa.remove();
                    this.zai.zaa(apiMethodImpl);
                    apiMethodImpl.setFailedResult(Status.RESULT_INTERNAL_ERROR);
                }
                lock = this.zaj;
            } else {
                t = (T) zacaVar.zaf(t);
                lock = this.zaj;
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.zac.get(anyClientKey);
        Preconditions.checkNotNull(c, NPStringFog.decode(new byte[]{113, 22, 21, 68, 13, 19, 66, 15, 4, 66, 7, 67, 113, 22, 12, 22, 21, 2, 67, 70, 11, 89, 22, 67, 66, 3, 20, 67, 7, 16, 68, 3, 1, 24}, "0fe6bc", false, true));
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult getConnectionResult(Api<?> api) {
        Lock lock;
        this.zaj.lock();
        try {
            if (!isConnected() && !this.zap) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 4, 93, 91, 11, 71, 66, 12, 93, 67, 11, 88, 7, 69, 84, 80, 16, 112, 13, 11, 93, 80, 7, 71, 11, 10, 93, 103, 1, 64, 23, 9, 71, 21, 17, 93, 14, 0, 64, 70, 68, 116, 13, 10, 84, 89, 1, 114, 18, 12, 112, 89, 13, 86, 12, 17, 19, 92, 23, 19, 1, 10, 93, 91, 1, 80, 22, 0, 87}, "be35d3", -13329));
            }
            if (!this.zac.containsKey(api.zab())) {
                throw new IllegalArgumentException(api.zad() + NPStringFog.decode(new byte[]{70, 71, 84, 71, 23, 11, 3, 70, 80, 70, 23, 23, 3, 87, 92, 71, 67, 0, 20, 85, 81, 20, 64, 12, 18, 88, 21, 115, 88, 10, 1, 92, 80, 117, 71, 12, 37, 92, 92, 81, 89, 17}, "f0547e", true));
            }
            ConnectionResult connectionResultZad = ((zaca) Preconditions.checkNotNull(this.zal)).zad(api);
            if (connectionResultZad == null) {
                if (this.zap) {
                    connectionResultZad = ConnectionResult.RESULT_SUCCESS;
                    lock = this.zaj;
                } else {
                    Log.w(NPStringFog.decode(new byte[]{119, 94, 90, 4, 9, 6, 113, 65, 92, 32, 9, 10, 85, 95, 65, 42, 8, 19, 92}, "015cec", false), zaf());
                    Log.wtf(NPStringFog.decode(new byte[]{35, 95, 91, 83, 95, 3, 37, 64, 93, 119, 95, 15, 1, 94, 64, 125, 94, 22, 8}, "d0443f", 7.88794648E8d), api.zad() + NPStringFog.decode(new byte[]{67, 64, 0, 71, 69, 81, 16, 70, 0, 82, 16, 93, 13, 18, 2, 83, 68, 119, 12, 92, 11, 83, 83, 64, 10, 93, 11, 100, 85, 71, 22, 94, 17, 22, 89, 71, 67, 92, 10, 66, 16, 87, 12, 92, 11, 83, 83, 64, 6, 86, 69, 84, 69, 64, 67, 91, 22, 22, 94, 91, 23, 18, 21, 68, 85, 71, 6, 92, 17, 22, 89, 90, 67, 70, 13, 83, 16, 82, 2, 91, 9, 83, 84, 20, 67, 81, 10, 88, 94, 81, 0, 70, 12, 89, 94, 71, 67, 95, 4, 70}, "c2e604", 8.53148311E8d), new Exception());
                    connectionResultZad = new ConnectionResult(8, null);
                    lock = this.zaj;
                }
                lock.unlock();
            }
            return connectionResultZad;
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.zan;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zao;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasApi(Api<?> api) {
        return this.zac.containsKey(api.zab());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        Api.Client client = (Api.Client) this.zac.get(api.zab());
        return client != null && client.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        zaca zacaVar = this.zal;
        return zacaVar != null && zacaVar.zaw();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        zaca zacaVar = this.zal;
        return zacaVar != null && zacaVar.zax();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zak.zaj(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zak.zak(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zaca zacaVar = this.zal;
        return zacaVar != null && zacaVar.zay(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zaca zacaVar = this.zal;
        if (zacaVar != null) {
            zacaVar.zau();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zak.zaf(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zag(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> ListenerHolder<L> registerListener(L l) {
        this.zaj.lock();
        try {
            return this.zau.zaa(l, this.zao, NPStringFog.decode(new byte[]{47, 43, 111, 53, 58, 51, 36}, "ad0acc", 4.7398285E8f));
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(FragmentActivity fragmentActivity) {
        LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
        if (this.zam < 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 86, 15, 88, 4, 1, 24, 68, 23, 91, 17, 36, 77, 67, 12, 121, 0, 11, 89, 80, 6, 20, 3, 16, 76, 23, 2, 65, 21, 10, 85, 86, 23, 93, 2, 69, 84, 94, 5, 81, 2, 28, 91, 91, 6, 20, 12, 4, 86, 86, 4, 81, 12, 0, 86, 67, 67, 93, 18, 69, 86, 88, 23, 20, 4, 11, 89, 85, 15, 81, 5, 75}, "87c4ae", 1168882298L));
        }
        zak.zaa(lifecycleActivity).zae(this.zam);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zak.zah(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zai(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zaa(ConnectionResult connectionResult) {
        if (!this.zat.isPlayServicesPossiblyUpdating(this.zan, connectionResult.getErrorCode())) {
            zak();
        }
        if (this.zap) {
            return;
        }
        this.zak.zac(connectionResult);
        this.zak.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zab(Bundle bundle) {
        while (!this.zaa.isEmpty()) {
            execute((BaseImplementation.ApiMethodImpl) this.zaa.remove());
        }
        this.zak.zad(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zac(int i, boolean z) {
        if (i == 1) {
            if (z || this.zap) {
                i = 1;
            } else {
                this.zap = true;
                if (this.zab == null && !ClientLibraryUtils.isPackageSide()) {
                    try {
                        this.zab = this.zat.zac(this.zan.getApplicationContext(), new zabd(this));
                    } catch (SecurityException e) {
                    }
                }
                zabc zabcVar = this.zas;
                zabcVar.sendMessageDelayed(zabcVar.obtainMessage(1), this.zaq);
                zabc zabcVar2 = this.zas;
                zabcVar2.sendMessageDelayed(zabcVar2.obtainMessage(2), this.zar);
                i = 1;
            }
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zai.zab.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zadc.zaa);
        }
        this.zak.zae(i);
        this.zak.zaa();
        if (i == 2) {
            zan();
        }
    }

    final String zaf() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @ResultIgnorabilityUnspecified
    final boolean zak() {
        if (!this.zap) {
            return false;
        }
        this.zap = false;
        this.zas.removeMessages(2);
        this.zas.removeMessages(1);
        zabx zabxVar = this.zab;
        if (zabxVar != null) {
            zabxVar.zab();
            this.zab = null;
        }
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
        this.zaj.lock();
        try {
            if (this.zah == null) {
                this.zah = new HashSet();
            }
            this.zah.add(zadaVar);
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zap(zada zadaVar) {
        this.zaj.lock();
        try {
            Set set = this.zah;
            if (set == null) {
                Log.wtf(NPStringFog.decode(new byte[]{112, 9, 93, 81, 91, 7, 118, 22, 91, 117, 91, 11, 82, 8, 70, 127, 90, 18, 91}, "7f267b", -1262652730L), NPStringFog.decode(new byte[]{36, 70, 70, 82, 8, 73, 17, 87, 86, 23, 17, 86, 69, 64, 87, 90, 10, 79, 0, 18, 66, 82, 11, 93, 12, 92, 85, 23, 17, 75, 4, 92, 65, 81, 10, 75, 8, 18, 69, 95, 0, 87, 69, 92, 93, 23, 17, 75, 4, 92, 65, 81, 10, 75, 8, 65, 18, 86, 23, 92, 69, 64, 87, 80, 12, 74, 17, 87, 64, 82, 1, 23}, "e227e9", true, false), new Exception());
            } else if (set.remove(zadaVar)) {
                this.zaj.lock();
                Set set2 = this.zah;
                if (set2 == null) {
                    this.zaj.unlock();
                } else {
                    boolean zIsEmpty = set2.isEmpty();
                    this.zaj.unlock();
                    if (!(!zIsEmpty)) {
                    }
                }
                zaca zacaVar = this.zal;
                if (zacaVar != null) {
                    zacaVar.zat();
                }
            } else {
                Log.wtf(NPStringFog.decode(new byte[]{127, 90, 89, 85, 93, 0, 121, 69, 95, 113, 93, 12, 93, 91, 66, 123, 92, 21, 84}, "85621e", 3.9917155E8f), NPStringFog.decode(new byte[]{37, 82, 11, 10, 92, 82, 67, 71, 13, 70, 75, 83, 14, 92, 20, 3, 25, 70, 6, 93, 6, 15, 87, 81, 67, 71, 16, 7, 87, 69, 5, 92, 16, 11, 25, 27, 67, 71, 10, 15, 74, 22, 14, 82, 27, 70, 85, 83, 2, 87, 66, 18, 86, 22, 14, 86, 15, 9, 75, 79, 67, 95, 7, 7, 82, 69, 66}, "c3bf96", false), new Exception());
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            this.zaj.unlock();
        }
    }
}
