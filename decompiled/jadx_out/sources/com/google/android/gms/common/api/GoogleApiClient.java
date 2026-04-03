package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zabe;
import com.google.android.gms.common.api.internal.zada;
import com.google.android.gms.common.api.internal.zak;
import com.google.android.gms.common.api.internal.zat;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
@Deprecated
public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    public static final String DEFAULT_ACCOUNT = NPStringFog.decode(new byte[]{8, 9, 87, 80, 95, 0, 65, 89, 71, 21, 88, 2, 87, 90, 70, 91, 77, 95, 10}, "45359a", false, false);
    private static final Set zaa = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    public static final class Builder {
        private Account zaa;
        private final Set zab;
        private final Set zac;
        private int zad;
        private View zae;
        private String zaf;
        private String zag;
        private final Map zah;
        private final Context zai;
        private final Map zaj;
        private LifecycleActivity zak;
        private int zal;
        private OnConnectionFailedListener zam;
        private Looper zan;
        private GoogleApiAvailability zao;
        private Api.AbstractClientBuilder zap;
        private final ArrayList zaq;
        private final ArrayList zar;

        public Builder(Context context) {
            this.zab = new HashSet();
            this.zac = new HashSet();
            this.zah = new ArrayMap();
            this.zaj = new ArrayMap();
            this.zal = -1;
            this.zao = GoogleApiAvailability.getInstance();
            this.zap = com.google.android.gms.signin.zad.zac;
            this.zaq = new ArrayList();
            this.zar = new ArrayList();
            this.zai = context;
            this.zan = context.getMainLooper();
            this.zaf = context.getPackageName();
            this.zag = context.getClass().getName();
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            Preconditions.checkNotNull(connectionCallbacks, NPStringFog.decode(new byte[]{123, 17, 64, 70, 65, 20, 68, 11, 69, 91, 5, 1, 22, 5, 19, 81, 14, 10, 88, 1, 80, 70, 4, 0, 22, 8, 90, 65, 21, 1, 88, 1, 65}, "6d32ad", -1.7036205E9f));
            this.zaq.add(connectionCallbacks);
            Preconditions.checkNotNull(onConnectionFailedListener, NPStringFog.decode(new byte[]{125, 76, 21, 77, 70, 66, 66, 86, 16, 80, 2, 87, 16, 88, 70, 90, 9, 92, 94, 92, 5, 77, 15, 93, 94, 25, 0, 88, 15, 94, 85, 93, 70, 85, 15, 65, 68, 92, 8, 92, 20}, "09f9f2", 1.947358957E9d));
            this.zar.add(onConnectionFailedListener);
        }

        private final void zab(Api api, Api.ApiOptions apiOptions, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), NPStringFog.decode(new byte[]{117, 82, 75, 92, 17, 90, 91, 90, 93, 87, 69, 25, 85, 70, 81, 85, 85, 92, 69, 19, 85, 76, 66, 77, 23, 93, 87, 77, 17, 91, 82, 19, 86, 76, 93, 85}, "738919", 13140))).getImpliedScopes(apiOptions));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.zah.put(api, new com.google.android.gms.common.internal.zab(hashSet));
        }

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{118, 66, 94, 67, 89, 65, 68, 70, 23, 13, 91, 64, 23, 80, 82, 67, 90, 65, 91, 94}, "727c44", 1895257591L));
            this.zaj.put(api, null);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), NPStringFog.decode(new byte[]{32, 82, 75, 6, 24, 91, 14, 90, 93, 13, 76, 24, 0, 70, 81, 15, 92, 93, 16, 19, 85, 22, 75, 76, 66, 93, 87, 23, 24, 90, 7, 19, 86, 22, 84, 84}, "b38c88", 1.7916562E9f))).getImpliedScopes(null);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> api, O o) {
            Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{121, 67, 91, 16, 11, 67, 75, 71, 18, 94, 9, 66, 24, 81, 87, 16, 8, 67, 84, 95}, "8320f6", false));
            Preconditions.checkNotNull(o, NPStringFog.decode(new byte[]{40, 22, 94, 9, 16, 12, 22, 23, 91, 10, 94, 16, 70, 2, 64, 0, 16, 13, 9, 23, 18, 21, 85, 17, 11, 10, 70, 17, 85, 7, 70, 5, 93, 23, 16, 23, 14, 10, 65, 69, 113, 19, 15}, "fc2e0c", 5.850561E8f));
            this.zaj.put(api, o);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), NPStringFog.decode(new byte[]{33, 81, 16, 84, 65, 83, 15, 89, 6, 95, 21, 16, 1, 69, 10, 93, 5, 85, 17, 16, 14, 68, 18, 68, 67, 94, 12, 69, 65, 82, 6, 16, 13, 68, 13, 92}, "c0c1a0", true, true))).getImpliedScopes(o);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
            Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{35, 70, 81, 19, 14, 64, 17, 66, 24, 93, 12, 65, 66, 84, 93, 19, 13, 64, 14, 90}, "b683c5", false, false));
            Preconditions.checkNotNull(o, NPStringFog.decode(new byte[]{123, 64, 90, 14, 23, 87, 69, 65, 95, 13, 89, 75, 21, 84, 68, 7, 23, 86, 90, 65, 22, 18, 82, 74, 88, 92, 66, 22, 82, 92, 21, 83, 89, 16, 23, 76, 93, 92, 69, 66, 118, 72, 92}, "556b78", false, false));
            this.zaj.put(api, o);
            zab(api, o, scopeArr);
            return this;
        }

        public <T extends Api.ApiOptions.NotRequiredOptions> Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{113, 21, 10, 67, 95, 67, 67, 17, 67, 13, 93, 66, 16, 7, 6, 67, 92, 67, 92, 9}, "0ecc26", true));
            this.zaj.put(api, null);
            zab(api, null, scopeArr);
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            Preconditions.checkNotNull(connectionCallbacks, NPStringFog.decode(new byte[]{41, 90, 74, 67, 85, 90, 0, 65, 25, 90, 69, 71, 17, 19, 87, 88, 68, 20, 7, 86, 25, 89, 69, 88, 9}, "e39704", -1.7590203E9f));
            this.zaq.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            Preconditions.checkNotNull(onConnectionFailedListener, NPStringFog.decode(new byte[]{127, 10, 75, 21, 92, 93, 86, 17, 24, 12, 76, 64, 71, 67, 86, 14, 77, 19, 81, 6, 24, 15, 76, 95, 95}, "3c8a93", 1742399861L));
            this.zar.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(Scope scope) {
            Preconditions.checkNotNull(scope, NPStringFog.decode(new byte[]{107, 80, 14, 17, 1, 20, 85, 70, 18, 21, 68, 90, 87, 71, 65, 3, 1, 20, 86, 70, 13, 13}, "83aad4", -2.993888E8f));
            this.zab.add(scope);
            return this;
        }

        @ResultIgnorabilityUnspecified
        public GoogleApiClient build() {
            Preconditions.checkArgument(!this.zaj.isEmpty(), NPStringFog.decode(new byte[]{95, 70, 68, 22, 25, 5, 83, 95, 91, 66, 88, 2, 86, 114, 71, 11, 17, 79, 18, 71, 88, 66, 88, 2, 86, 19, 86, 22, 25, 10, 87, 82, 68, 22, 25, 9, 92, 86, 23, 35, 105, 47}, "237b9f", -1.9247539E9f));
            ClientSettings clientSettingsZaa = zaa();
            Map mapZad = clientSettingsZaa.zad();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            Api api = null;
            for (Api api2 : this.zaj.keySet()) {
                Object obj = this.zaj.get(api2);
                boolean z2 = mapZad.get(api2) != null;
                arrayMap.put(api2, Boolean.valueOf(z2));
                zat zatVar = new zat(api2, z2);
                arrayList.add(zatVar);
                Api.AbstractClientBuilder abstractClientBuilder = (Api.AbstractClientBuilder) Preconditions.checkNotNull(api2.zaa());
                Api.Client clientBuildClient = abstractClientBuilder.buildClient(this.zai, this.zan, clientSettingsZaa, obj, (ConnectionCallbacks) zatVar, (OnConnectionFailedListener) zatVar);
                arrayMap2.put(api2.zab(), clientBuildClient);
                boolean z3 = abstractClientBuilder.getPriority() == 1 ? obj != null : z;
                if (!clientBuildClient.providesSignIn()) {
                    z = z3;
                } else {
                    if (api != null) {
                        throw new IllegalStateException(api2.zad() + NPStringFog.decode(new byte[]{20, 7, 89, 88, 87, 10, 64, 68, 90, 83, 25, 16, 71, 1, 92, 22, 78, 12, 64, 12, 24}, "4d869e", 3.10223198E8d) + api.zad());
                    }
                    z = z3;
                    api = api2;
                }
            }
            if (api != null) {
                if (z) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{51, 80, 76, 12, 23, 67, 23, 80, 86, 3, 23}, "d98d76", -1.839423E9f) + api.zad() + NPStringFog.decode(new byte[]{29, 20, 112, 4, 92, 81, 66, 123, 71, 17, 88, 91, 95, 71, 23, 6, 80, 90, 17, 91, 89, 9, 72, 20, 83, 81, 23, 22, 65, 81, 82, 93, 81, 12, 84, 80, 17, 67, 94, 17, 89, 93, 95, 20, 112, 10, 94, 83, 93, 81, 100, 12, 86, 90, 120, 90, 120, 21, 69, 93, 94, 90, 68, 75, 115, 65, 88, 88, 83, 0, 67}, "147e14", -1986481420L));
                }
                Preconditions.checkState(this.zaa == null, NPStringFog.decode(new byte[]{41, 65, 22, 77, 24, 90, 11, 64, 69, 74, 93, 64, 68, 85, 11, 25, 89, 87, 7, 91, 16, 87, 76, 20, 13, 90, 69, 126, 87, 91, 3, 88, 0, 120, 72, 93, 39, 88, 12, 92, 86, 64, 74, 118, 16, 80, 84, 80, 1, 70, 69, 78, 80, 81, 10, 20, 16, 74, 81, 90, 3, 20, 64, 74, 22, 20, 55, 81, 17, 25, 89, 87, 7, 91, 16, 87, 76, 20, 13, 90, 69, 126, 87, 91, 3, 88, 0, 106, 81, 83, 10, 125, 11, 118, 72, 64, 13, 91, 11, 74, 22, 118, 17, 93, 9, 93, 93, 70, 68, 93, 11, 74, 76, 81, 5, 80}, "d4e984", false), api.zad());
                Preconditions.checkState(this.zab.equals(this.zac), NPStringFog.decode(new byte[]{126, 22, 69, 71, 65, 13, 92, 23, 22, 64, 4, 23, 19, 16, 85, 92, 17, 6, 64, 67, 95, 93, 65, 36, 92, 12, 81, 95, 4, 34, 67, 10, 117, 95, 8, 6, 93, 23, 24, 113, 20, 10, 95, 7, 83, 65, 65, 20, 91, 6, 88, 19, 20, 16, 90, 13, 81, 19, 68, 16, 29, 67, 101, 86, 21, 67, 82, 0, 85, 92, 20, 13, 71, 67, 95, 93, 65, 36, 92, 12, 81, 95, 4, 48, 90, 4, 88, 122, 15, 44, 67, 23, 95, 92, 15, 16, 29, 33, 67, 90, 13, 7, 86, 17, 22, 90, 15, 16, 71, 6, 87, 87, 79}, "3c63ac", 5.76969921E8d), api.zad());
            }
            zabe zabeVar = new zabe(this.zai, new ReentrantLock(), this.zan, clientSettingsZaa, this.zao, this.zap, arrayMap, this.zaq, this.zar, arrayMap2, this.zal, zabe.zad(arrayMap2.values(), true), arrayList);
            synchronized (GoogleApiClient.zaa) {
                GoogleApiClient.zaa.add(zabeVar);
            }
            if (this.zal >= 0) {
                zak.zaa(this.zak).zad(this.zal, zabeVar, this.zam);
            }
            return zabeVar;
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, int i, OnConnectionFailedListener onConnectionFailedListener) {
            LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
            Preconditions.checkArgument(i >= 0, NPStringFog.decode(new byte[]{82, 95, 93, 80, 86, 22, 120, 87, 20, 88, 77, 17, 69, 19, 86, 80, 24, 12, 94, 93, 25, 91, 93, 5, 80, 71, 93, 67, 93}, "13458b", -5.14164693E8d));
            this.zal = i;
            this.zam = onConnectionFailedListener;
            this.zak = lifecycleActivity;
            return this;
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, OnConnectionFailedListener onConnectionFailedListener) {
            enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
            return this;
        }

        public Builder setAccountName(String str) {
            this.zaa = str == null ? null : new Account(str, NPStringFog.decode(new byte[]{82, 86, 92, 76, 5, 10, 94, 94, 93, 7}, "191bbe", true));
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.zad = i;
            return this;
        }

        public Builder setHandler(Handler handler) {
            Preconditions.checkNotNull(handler, NPStringFog.decode(new byte[]{112, 7, 89, 6, 90, 84, 74, 70, 90, 23, 69, 69, 24, 8, 88, 22, 22, 83, 93, 70, 89, 23, 90, 93}, "8f7b61", false));
            this.zan = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View view) {
            Preconditions.checkNotNull(view, NPStringFog.decode(new byte[]{96, 81, 3, 18, 66, 14, 67, 75, 18, 69, 12, 12, 66, 24, 4, 0, 66, 13, 67, 84, 10}, "68febc", 11251));
            this.zae = view;
            return this;
        }

        public Builder useDefaultAccount() {
            setAccountName(NPStringFog.decode(new byte[]{90, 11, 1, 3, 94, 81, 19, 91, 17, 70, 89, 83, 5, 88, 16, 8, 76, 14, 88}, "f7ef80", -1.255719122E9d));
            return this;
        }

        public final ClientSettings zaa() {
            SignInOptions signInOptions = SignInOptions.zaa;
            if (this.zaj.containsKey(com.google.android.gms.signin.zad.zag)) {
                signInOptions = (SignInOptions) this.zaj.get(com.google.android.gms.signin.zad.zag);
            }
            return new ClientSettings(this.zaa, this.zab, this.zah, this.zad, this.zae, this.zaf, this.zag, signInOptions, false);
        }
    }

    @Deprecated
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    }

    @Deprecated
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
            String str2 = str + "  ";
            int i = 0;
            for (GoogleApiClient googleApiClient : set) {
                printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{36, 9, 9, 86, 91, 6, 34, 22, 15, 114, 91, 10, 6, 8, 18, 18}, "cff17c", 10674)).println(i);
                googleApiClient.dump(str2, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public static Set<GoogleApiClient> getAllClients() {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
        }
        return set;
    }

    @ResultIgnorabilityUnspecified
    public abstract ConnectionResult blockingConnect();

    @ResultIgnorabilityUnspecified
    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @ResultIgnorabilityUnspecified
    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        throw new UnsupportedOperationException();
    }

    @ResultIgnorabilityUnspecified
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new UnsupportedOperationException();
    }

    public <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public boolean hasApi(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    public boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    public void maybeSignOut() {
        throw new UnsupportedOperationException();
    }

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <L> ListenerHolder<L> registerListener(L l) {
        throw new UnsupportedOperationException();
    }

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public void zao(zada zadaVar) {
        throw new UnsupportedOperationException();
    }

    public void zap(zada zadaVar) {
        throw new UnsupportedOperationException();
    }
}
