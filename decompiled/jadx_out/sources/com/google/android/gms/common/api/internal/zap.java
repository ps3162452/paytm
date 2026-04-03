package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {
    protected volatile boolean zaa;
    protected final AtomicReference zab;
    protected final GoogleApiAvailability zac;
    private final Handler zad;

    zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.zab = new AtomicReference(null);
        this.zad = new com.google.android.gms.internal.base.zau(Looper.getMainLooper());
        this.zac = googleApiAvailability;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaa(ConnectionResult connectionResult, int i) {
        this.zab.set(null);
        zab(connectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zad() {
        this.zab.set(null);
        zac();
    }

    private static final int zae(zam zamVar) {
        if (zamVar == null) {
            return -1;
        }
        return zamVar.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onActivityResult(int i, int i2, Intent intent) {
        zam zamVar = (zam) this.zab.get();
        switch (i) {
            case 1:
                if (i2 == -1) {
                    zad();
                    return;
                } else if (i2 == 0) {
                    if (zamVar != null) {
                        zaa(new ConnectionResult(intent != null ? intent.getIntExtra(NPStringFog.decode(new byte[]{8, 89, 55, 87, 68, 94, 88, 16, 17, 91, 88, 95, 114, 4, 12, 94, 66, 67, 81, 32, 23, 64, 88, 67, 112, 0, 17, 83, 94, 93, 10, 91}, "4ee271", -6.928447E8f), 13) : 13, null, zamVar.zab().toString()), zae(zamVar));
                        return;
                    }
                    return;
                }
            case 2:
                int iIsGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(getActivity());
                if (iIsGooglePlayServicesAvailable == 0) {
                    zad();
                    return;
                } else {
                    if (zamVar == null) {
                        return;
                    }
                    if (zamVar.zab().getErrorCode() == 18 && iIsGooglePlayServicesAvailable == 18) {
                        return;
                    }
                }
        }
        if (zamVar != null) {
            zaa(zamVar.zab(), zamVar.zaa());
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        zaa(new ConnectionResult(13, null), zae((zam) this.zab.get()));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zab.set(bundle.getBoolean(NPStringFog.decode(new byte[]{74, 3, 71, 94, 88, 68, 81, 8, 83, 110, 81, 64, 74, 9, 70}, "8f4142", -2.0297631E9f), false) ? new zam(new ConnectionResult(bundle.getInt(NPStringFog.decode(new byte[]{85, 85, 11, 95, 7, 81, 108, 71, 22, 82, 22, 64, 64}, "34b3b5", -1.9145802E9f)), (PendingIntent) bundle.getParcelable(NPStringFog.decode(new byte[]{3, 85, 93, 10, 81, 81, 58, 70, 81, 21, 91, 89, 16, 64, 93, 9, 90}, "e44f45", -1619538845L))), bundle.getInt(NPStringFog.decode(new byte[]{87, 83, 88, 91, 6, 2, 110, 81, 93, 94, 6, 8, 69, 109, 88, 83}, "1217cf", true, true), -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        zam zamVar = (zam) this.zab.get();
        if (zamVar == null) {
            return;
        }
        bundle.putBoolean(NPStringFog.decode(new byte[]{19, 87, 21, 9, 14, 23, 8, 92, 1, 57, 7, 19, 19, 93, 20}, "a2ffba", 1.057322E9f), true);
        bundle.putInt(NPStringFog.decode(new byte[]{94, 80, 94, 88, 6, 6, 103, 82, 91, 93, 6, 12, 76, 110, 94, 80}, "8174cb", 884681083L), zamVar.zaa());
        bundle.putInt(NPStringFog.decode(new byte[]{86, 2, 91, 91, 87, 0, 111, 16, 70, 86, 70, 17, 67}, "0c272d", 254825623L), zamVar.zab().getErrorCode());
        bundle.putParcelable(NPStringFog.decode(new byte[]{0, 85, 10, 93, 92, 86, 57, 70, 6, 66, 86, 94, 19, 64, 10, 94, 87}, "f4c192", -7373), zamVar.zab().getResolution());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.zaa = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.zaa = false;
    }

    protected abstract void zab(ConnectionResult connectionResult, int i);

    protected abstract void zac();

    public final void zah(ConnectionResult connectionResult, int i) {
        zam zamVar = new zam(connectionResult, i);
        AtomicReference atomicReference = this.zab;
        while (!zap$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, zamVar)) {
            if (atomicReference.get() != null) {
                return;
            }
        }
        this.zad.post(new zao(this, zamVar));
    }
}
