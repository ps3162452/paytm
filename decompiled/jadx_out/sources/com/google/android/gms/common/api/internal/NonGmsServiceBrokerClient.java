package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {
    private static final String zaa = NonGmsServiceBrokerClient.class.getSimpleName();
    private final String zab;
    private final String zac;
    private final ComponentName zad;
    private final Context zae;
    private final ConnectionCallbacks zaf;
    private final Handler zag;
    private final OnConnectionFailedListener zah;
    private IBinder zai;
    private boolean zaj;
    private String zak;
    private String zal;

    public NonGmsServiceBrokerClient(Context context, Looper looper, ComponentName componentName, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, null, null, componentName, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r9 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private NonGmsServiceBrokerClient(android.content.Context r5, android.os.Looper r6, java.lang.String r7, java.lang.String r8, android.content.ComponentName r9, com.google.android.gms.common.api.internal.ConnectionCallbacks r10, com.google.android.gms.common.api.internal.OnConnectionFailedListener r11) {
        /*
            r4 = this;
            r0 = 0
            r4.<init>()
            r1 = 0
            r4.zaj = r1
            r4.zak = r0
            r4.zae = r5
            com.google.android.gms.internal.base.zau r1 = new com.google.android.gms.internal.base.zau
            r1.<init>(r6)
            r4.zag = r1
            r4.zaf = r10
            r4.zah = r11
            if (r7 == 0) goto L24
            if (r8 == 0) goto L24
            if (r9 != 0) goto L26
            r9 = r0
        L1d:
            r4.zab = r7
            r4.zac = r8
            r4.zad = r9
            return
        L24:
            if (r9 != 0) goto L1d
        L26:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = 54
            byte[] r1 = new byte[r1]
            r1 = {x003c: FILL_ARRAY_DATA , data: [117, 19, 71, 70, 22, 21, 72, 3, 87, 91, 80, 31, 24, 3, 93, 70, 94, 3, 74, 70, 68, 83, 85, 13, 89, 1, 81, 18, 89, 20, 24, 5, 91, 95, 70, 9, 86, 3, 90, 70, 26, 70, 90, 19, 64, 18, 88, 9, 76, 70, 86, 93, 66, 14} // fill-array
            java.lang.String r2 = "8f426f"
            r3 = 317(0x13d, float:4.44E-43)
            java.lang.String r1 = n.NPStringFog.decode(r1, r2, r3)
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, String str, String str2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, str, str2, null, connectionCallbacks, onConnectionFailedListener);
    }

    private final void zad() {
        if (Thread.currentThread() != this.zag.getLooper().getThread()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 94, 94, 21, 65, 91, 92, 66, 95, 9, 5, 22, 74, 94, 88, 19, 13, 82, 25, 89, 89, 10, 24, 22, 75, 67, 89, 70, 14, 88, 25, 66, 95, 3, 65, 120, 86, 88, 112, 11, 18, 101, 92, 68, 65, 15, 2, 83, 123, 68, 88, 13, 4, 68, 122, 90, 94, 3, 15, 66, 30, 69, 23, 14, 0, 88, 93, 90, 82, 20, 65, 66, 81, 68, 82, 7, 5, 24}, "967fa6", false));
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        zad();
        String.valueOf(this.zai);
        if (isConnected()) {
            try {
                disconnect(NPStringFog.decode(new byte[]{80, 11, 91, 10, 82, 5, 71, 76, 28, 68, 84, 7, 95, 8, 80, 0, 23, 17, 91, 1, 91, 68, 86, 10, 65, 1, 84, 0, 78, 70, 80, 11, 91, 10, 82, 5, 71, 1, 81}, "3d5d7f", true));
            } catch (Exception e) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.zad;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.zab).setAction(this.zac);
            }
            boolean zBindService = this.zae.bindService(intent, this, GmsClientSupervisor.getDefaultBindFlags());
            this.zaj = zBindService;
            if (!zBindService) {
                this.zai = null;
                this.zah.onConnectionFailed(new ConnectionResult(16));
            }
            String.valueOf(this.zai);
        } catch (SecurityException e2) {
            this.zaj = false;
            this.zai = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        zad();
        String.valueOf(this.zai);
        try {
            this.zae.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        this.zaj = false;
        this.zai = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect(String str) {
        zad();
        this.zak = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    public IBinder getBinder() {
        zad();
        return this.zai;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getEndpointPackageName() {
        String str = this.zab;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.zad);
        return this.zad.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getLastDisconnectMessage() {
        return this.zak;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set<Scope> getScopesForConnectionlessNonSignIn() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final IBinder getServiceBrokerBinder() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Intent getSignInIntent() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnected() {
        zad();
        return this.zai != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnecting() {
        zad();
        return this.zaj;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.zag.post(new Runnable(this, iBinder) { // from class: com.google.android.gms.common.api.internal.zacg
            public final NonGmsServiceBrokerClient zaa;
            public final IBinder zab;

            {
                this.zaa = this;
                this.zab = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zaa.zaa(this.zab);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zag.post(new Runnable(this) { // from class: com.google.android.gms.common.api.internal.zacf
            public final NonGmsServiceBrokerClient zaa;

            {
                this.zaa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zaa.zab();
            }
        });
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void onUserSignOut(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean providesSignIn() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return false;
    }

    final /* synthetic */ void zaa(IBinder iBinder) {
        this.zaj = false;
        this.zai = iBinder;
        String.valueOf(iBinder);
        this.zaf.onConnected(new Bundle());
    }

    final /* synthetic */ void zab() {
        this.zaj = false;
        this.zai = null;
        String.valueOf((Object) null);
        this.zaf.onConnectionSuspended(1);
    }

    public final void zac(String str) {
        this.zal = str;
    }
}
