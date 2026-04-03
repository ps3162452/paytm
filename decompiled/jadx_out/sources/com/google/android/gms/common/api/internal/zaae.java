package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaae extends zap {
    private final ArraySet zad;
    private final GoogleApiManager zae;

    zaae(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.zad = new ArraySet();
        this.zae = googleApiManager;
        this.mLifecycleFragment.addCallback(NPStringFog.decode(new byte[]{34, 13, 95, 13, 93, 1, 21, 11, 94, 13, 84, 7, 18, 17, 125, 10, 94, 7, 2, 27, 82, 15, 93, 42, 4, 14, 65, 6, 74}, "ab1c8b", -1.969677817E9d), this);
    }

    public static void zad(Activity activity, GoogleApiManager googleApiManager, ApiKey apiKey) {
        LifecycleFragment fragment = getFragment(activity);
        zaae zaaeVar = (zaae) fragment.getCallbackOrNull(NPStringFog.decode(new byte[]{116, 14, 91, 95, 80, 86, 67, 8, 90, 95, 89, 80, 68, 18, 121, 88, 83, 80, 84, 24, 86, 93, 80, 125, 82, 13, 69, 84, 71}, "7a5155", -490941759L), zaae.class);
        if (zaaeVar == null) {
            zaaeVar = new zaae(fragment, googleApiManager, GoogleApiAvailability.getInstance());
        }
        Preconditions.checkNotNull(apiKey, NPStringFog.decode(new byte[]{119, 19, 10, 114, 4, 79, 22, 0, 2, 87, 15, 89, 66, 67, 1, 92, 65, 88, 67, 15, 15}, "6cc9a6", -1606561669L));
        zaaeVar.zad.add(apiKey);
        googleApiManager.zaA(zaaeVar);
    }

    private final void zae() {
        if (this.zad.isEmpty()) {
            return;
        }
        this.zae.zaA(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onResume() {
        super.onResume();
        zae();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        zae();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        this.zae.zaB(this);
    }

    final ArraySet zaa() {
        return this.zad;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zab(ConnectionResult connectionResult, int i) {
        this.zae.zax(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zac() {
        this.zae.zay();
    }
}
