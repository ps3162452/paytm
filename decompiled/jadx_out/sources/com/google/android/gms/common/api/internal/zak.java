package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zak extends zap {
    private final SparseArray zad;

    private zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.zad = new SparseArray();
        this.mLifecycleFragment.addCallback(NPStringFog.decode(new byte[]{36, 16, 68, 11, 125, 7, 11, 4, 87, 1, 120, 3, 9, 21, 85, 22}, "ee0d0f", false), this);
    }

    public static zak zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment fragment = getFragment(lifecycleActivity);
        zak zakVar = (zak) fragment.getCallbackOrNull(NPStringFog.decode(new byte[]{39, 68, 77, 86, 43, 81, 8, 80, 94, 92, 46, 85, 10, 65, 92, 75}, "f199f0", 1505113762L), zak.class);
        return zakVar != null ? zakVar : new zak(fragment);
    }

    private final zaj zai(int i) {
        if (this.zad.size() <= i) {
            return null;
        }
        SparseArray sparseArray = this.zad;
        return (zaj) sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zajVarZai = zai(i);
            if (zajVarZai != null) {
                printWriter.append((CharSequence) str).append((CharSequence) NPStringFog.decode(new byte[]{119, 86, 95, 6, 95, 83, 113, 73, 89, 34, 95, 95, 85, 87, 68, 65, 16}, "090a36", -274435765L)).print(zajVarZai.zaa);
                printWriter.println(NPStringFog.decode(new byte[]{13}, "70b466", 7.389738E8f));
                zajVarZai.zab.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        Log.d(NPStringFog.decode(new byte[]{37, 70, 16, 11, 44, 0, 10, 82, 3, 1, 41, 4, 8, 67, 1, 22}, "d3ddaa", 1799772955L), NPStringFog.decode(new byte[]{91, 91, 98, 70, 7, 68, 64, 21}, "4512f6", false, true) + this.zaa + " " + String.valueOf(this.zad));
        if (this.zab.get() == null) {
            for (int i = 0; i < this.zad.size(); i++) {
                zaj zajVarZai = zai(i);
                if (zajVarZai != null) {
                    zajVarZai.zab.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zajVarZai = zai(i);
            if (zajVarZai != null) {
                zajVarZai.zab.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zab(ConnectionResult connectionResult, int i) {
        Log.w(NPStringFog.decode(new byte[]{116, 66, 18, 94, 116, 84, 91, 86, 1, 84, 113, 80, 89, 71, 3, 67}, "57f195", false), NPStringFog.decode(new byte[]{98, 89, 17, 87, 66, 10, 91, 65, 6, 86, 17, 0, 69, 69, 12, 64, 17, 18, 95, 94, 15, 87, 17, 6, 88, 89, 13, 87, 82, 17, 94, 89, 4, 18, 82, 9, 94, 82, 13, 70, 31, 69, 100, 67, 12, 66, 65, 12, 89, 80, 67, 83, 68, 17, 88, 26, 14, 83, 95, 4, 80, 82, 77}, "77c21e", false, true));
        if (i < 0) {
            Log.wtf(NPStringFog.decode(new byte[]{116, 19, 71, 94, 122, 7, 91, 7, 84, 84, 127, 3, 89, 22, 86, 67}, "5f317f", -861647755L), NPStringFog.decode(new byte[]{32, 66, 16, 9, 116, 4, 15, 86, 3, 3, 117, 12, 7, 82, 7, 31, 90, 9, 4, 127, 1, 10, 73, 0, 19, 23, 22, 3, 90, 0, 8, 65, 1, 2, 25, 10, 15, 114, 22, 20, 86, 23, 51, 82, 23, 9, 85, 16, 21, 94, 11, 8, 127, 4, 8, 91, 1, 2, 25, 6, 0, 91, 8, 4, 88, 6, 10, 23, 6, 19, 77, 69, 15, 88, 68, 0, 88, 12, 13, 94, 10, 1, 25, 6, 13, 94, 1, 8, 77, 69, 40, 115, 68, 15, 74, 69, 18, 82, 16}, "a7df9e", TypedValues.Transition.TYPE_STAGGERED), new Exception());
            return;
        }
        zaj zajVar = (zaj) this.zad.get(i);
        if (zajVar != null) {
            zae(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zajVar.zac;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zac() {
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zajVarZai = zai(i);
            if (zajVarZai != null) {
                zajVarZai.zab.connect();
            }
        }
    }

    public final void zad(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(googleApiClient, NPStringFog.decode(new byte[]{33, 94, 13, 83, 84, 81, 39, 65, 11, 119, 84, 93, 3, 95, 22, 20, 81, 90, 21, 69, 3, 90, 91, 81, 70, 82, 3, 90, 86, 91, 18, 17, 0, 81, 24, 90, 19, 93, 14}, "f1b484", 11503));
        Preconditions.checkState(this.zad.indexOfKey(i) < 0, NPStringFog.decode(new byte[]{112, 90, 68, 80, 5, 85, 72, 22, 91, 84, 10, 80, 86, 95, 88, 82, 68, 80, 17, 113, 89, 90, 3, 93, 84, 119, 70, 92, 39, 93, 88, 83, 88, 65, 68, 70, 88, 66, 94, 21, 13, 85, 17}, "1665d1", -2.001924705E9d) + i);
        zam zamVar = (zam) this.zab.get();
        Log.d(NPStringFog.decode(new byte[]{117, 76, 17, 14, 120, 5, 90, 88, 2, 4, 125, 1, 88, 73, 0, 19}, "49ea5d", -1.3683684E9f), NPStringFog.decode(new byte[]{23, 17, 82, 71, 64, 93, 10, 2, 19, 116, 65, 64, 11, 40, 82, 91, 85, 83, 1, 69, 85, 90, 70, 20, 7, 9, 90, 80, 90, 64, 68}, "de3544", 1.636992443E9d) + i + " " + this.zaa + " " + String.valueOf(zamVar));
        zaj zajVar = new zaj(this, i, googleApiClient, onConnectionFailedListener);
        googleApiClient.registerConnectionFailedListener(zajVar);
        this.zad.put(i, zajVar);
        if (this.zaa && zamVar == null) {
            Log.d(NPStringFog.decode(new byte[]{117, 23, 69, 95, 41, 88, 90, 3, 86, 85, 44, 92, 88, 18, 84, 66}, "4b10d9", -1.578294359E9d), NPStringFog.decode(new byte[]{2, 13, 11, 11, 80, 85, 21, 11, 11, 2, 21}, "abee56", -29627).concat(googleApiClient.toString()));
            googleApiClient.connect();
        }
    }

    public final void zae(int i) {
        zaj zajVar = (zaj) this.zad.get(i);
        this.zad.remove(i);
        if (zajVar != null) {
            zajVar.zab.unregisterConnectionFailedListener(zajVar);
            zajVar.zab.disconnect();
        }
    }
}
