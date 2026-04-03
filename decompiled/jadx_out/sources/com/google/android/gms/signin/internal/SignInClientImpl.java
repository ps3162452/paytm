package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class SignInClientImpl extends GmsClient<zaf> implements com.google.android.gms.signin.zae {
    public static final int zaa = 0;
    private final boolean zab;
    private final ClientSettings zac;
    private final Bundle zad;
    private final Integer zae;

    public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zab = true;
        this.zac = clientSettings;
        this.zad = bundle;
        this.zae = clientSettings.zab();
    }

    public static Bundle createBundleFromClientSettings(ClientSettings clientSettings) {
        clientSettings.zaa();
        Integer numZab = clientSettings.zab();
        Bundle bundle = new Bundle();
        bundle.putParcelable(NPStringFog.decode(new byte[]{80, 95, 8, 27, 81, 13, 92, 87, 9, 80, 24, 3, 93, 84, 23, 90, 95, 6, 29, 87, 8, 70, 24, 17, 90, 87, 11, 92, 88, 76, 90, 94, 17, 80, 68, 12, 82, 92, 75, 86, 90, 11, 86, 94, 17, 103, 83, 19, 70, 85, 22, 65, 83, 6, 114, 83, 6, 90, 67, 12, 71}, "30e56b", 2.1809965E8f), clientSettings.getAccount());
        if (numZab != null) {
            bundle.putInt(NPStringFog.decode(new byte[]{81, 10, 94, 31, 94, 94, 93, 2, 95, 84, 23, 80, 92, 1, 65, 94, 80, 85, 28, 2, 94, 66, 23, 82, 93, 8, 94, 94, 87, 31, 91, 11, 71, 84, 75, 95, 83, 9, 29, 114, 85, 88, 87, 11, 71, 98, 92, 69, 70, 12, 93, 86, 74, 31, 65, 0, 64, 66, 80, 94, 92, 44, 87}, "2e3191", -1.8104828E9f), numZab.intValue());
        }
        bundle.putBoolean(NPStringFog.decode(new byte[]{81, 86, 14, 30, 4, 10, 93, 94, 15, 85, 77, 4, 92, 93, 17, 95, 10, 1, 28, 94, 14, 67, 77, 22, 91, 94, 13, 89, 13, 75, 91, 87, 23, 85, 17, 11, 83, 85, 77, 95, 5, 3, 94, 80, 13, 85, 34, 6, 81, 92, 16, 67, 49, 0, 67, 76, 6, 67, 23, 0, 86}, "29c0ce", -3.04083092E8d), false);
        bundle.putBoolean(NPStringFog.decode(new byte[]{91, 86, 88, 26, 82, 90, 87, 94, 89, 81, 27, 84, 86, 93, 71, 91, 92, 81, 22, 94, 88, 71, 27, 70, 81, 94, 91, 93, 91, 27, 81, 87, 65, 81, 71, 91, 89, 85, 27, 93, 81, 97, 87, 82, 80, 90, 103, 80, 73, 76, 80, 71, 65, 80, 92}, "895455", -2.7587783E7d), false);
        bundle.putString(NPStringFog.decode(new byte[]{82, 10, 94, 77, 94, 94, 94, 2, 95, 6, 23, 80, 95, 1, 65, 12, 80, 85, 31, 2, 94, 16, 23, 66, 88, 2, 93, 10, 87, 31, 88, 11, 71, 6, 75, 95, 80, 9, 29, 16, 92, 67, 71, 0, 65, 32, 85, 88, 84, 11, 71, 42, 93}, "1e3c91", 6.28252775E8d), null);
        bundle.putBoolean(NPStringFog.decode(new byte[]{87, 87, 92, 29, 94, 91, 91, 95, 93, 86, 23, 85, 90, 92, 67, 92, 80, 80, 26, 95, 92, 64, 23, 71, 93, 95, 95, 90, 87, 26, 93, 86, 69, 86, 75, 90, 85, 84, 31, 70, 74, 81, 100, 74, 94, 94, 73, 64, 121, 87, 85, 86, 127, 91, 70, 121, 68, 71, 81, 119, 91, 92, 84}, "481394", 921747237L), true);
        bundle.putBoolean(NPStringFog.decode(new byte[]{1, 13, 95, 26, 95, 88, 13, 5, 94, 81, 22, 86, 12, 6, 64, 91, 81, 83, 76, 5, 95, 71, 22, 68, 11, 5, 92, 93, 86, 25, 11, 12, 70, 81, 74, 89, 3, 14, 28, 82, 87, 69, 1, 7, 113, 91, 92, 82, 36, 13, 64, 102, 93, 81, 16, 7, 65, 92, 108, 88, 9, 7, 92}, "bb2487", 1772249522L), false);
        bundle.putString(NPStringFog.decode(new byte[]{85, 11, 12, 28, 85, 13, 89, 3, 13, 87, 28, 3, 88, 0, 19, 93, 91, 6, 24, 3, 12, 65, 28, 17, 95, 3, 15, 91, 92, 76, 95, 10, 21, 87, 64, 12, 87, 8, 79, 90, 93, 17, 66, 1, 5, 118, 93, 15, 87, 13, 15}, "6da22b", 31796), null);
        bundle.putString(NPStringFog.decode(new byte[]{0, 86, 88, 76, 85, 10, 12, 94, 89, 7, 28, 4, 13, 93, 71, 13, 91, 1, 77, 94, 88, 17, 28, 22, 10, 94, 91, 11, 92, 75, 10, 87, 65, 7, 64, 11, 2, 85, 27, 14, 93, 2, 48, 92, 70, 17, 91, 10, 13, 112, 81}, "c95b2e", 14118), null);
        bundle.putBoolean(NPStringFog.decode(new byte[]{90, 94, 95, 31, 3, 87, 86, 86, 94, 84, 74, 89, 87, 85, 64, 94, 13, 92, 23, 86, 95, 66, 74, 75, 80, 86, 92, 88, 10, 22, 80, 95, 70, 84, 22, 86, 88, 93, 28, 70, 5, 81, 77, 119, 93, 67, 37, 91, 90, 84, 65, 66, 48, 87, 82, 84, 92, 99, 1, 94, 75, 84, 65, 89}, "9121d8", -13872), false);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{86, 93, 88, 76, 80, 10, 90, 85, 89, 7, 25, 4, 91, 86, 71, 13, 94, 1, 27, 85, 88, 17, 25, 22, 92, 85, 91, 11, 89, 75, 92, 92, 65, 7, 69, 11, 84, 94, 27, 43, 100, 12, 82, 92, 124, 12, 100, 0, 71, 68, 92, 1, 82}, "525b7e", true));
        return iInterfaceQueryLocalInterface instanceof zaf ? (zaf) iInterfaceQueryLocalInterface : new zaf(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle getGetServiceRequestExtraArgs() {
        if (!getContext().getPackageName().equals(this.zac.getRealClientPackageName())) {
            this.zad.putString(NPStringFog.decode(new byte[]{91, 14, 95, 25, 82, 90, 87, 6, 94, 82, 27, 84, 86, 5, 64, 88, 92, 81, 22, 6, 95, 68, 27, 70, 81, 6, 92, 94, 91, 27, 81, 15, 70, 82, 71, 91, 89, 13, 28, 69, 80, 84, 84, 34, 94, 94, 80, 91, 76, 49, 83, 84, 94, 84, 95, 4, 124, 86, 88, 80}, "8a2755", true, false), this.zac.getRealClientPackageName());
        }
        return this.zad;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return NPStringFog.decode(new byte[]{87, 88, 15, 30, 2, 11, 91, 80, 14, 85, 75, 5, 90, 83, 16, 95, 12, 0, 26, 80, 15, 67, 75, 23, 93, 80, 12, 89, 11, 74, 93, 89, 22, 85, 23, 10, 85, 91, 76, 121, 54, 13, 83, 89, 43, 94, 54, 1, 70, 65, 11, 83, 0}, "47b0ed", 3.646163E7d);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return NPStringFog.decode(new byte[]{5, 95, 14, 26, 3, 9, 9, 87, 15, 81, 74, 7, 8, 84, 17, 91, 13, 2, 72, 87, 14, 71, 74, 21, 15, 87, 13, 93, 10, 72, 21, 85, 17, 66, 13, 5, 3, 30, 48, 96, 37, 52, 50}, "f0c4df", 1.7187831E9f);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return this.zab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zaa() {
        try {
            ((zaf) getService()).zae(((Integer) Preconditions.checkNotNull(this.zae)).intValue());
        } catch (RemoteException e) {
            Log.w(NPStringFog.decode(new byte[]{101, 11, 84, 93, 112, 95, 117, 14, 90, 86, 87, 69, 127, 15, 67, 95}, "6b3391", 179841606L), NPStringFog.decode(new byte[]{96, 80, 15, 89, 67, 92, 18, 70, 7, 68, 65, 80, 81, 80, 66, 70, 69, 86, 80, 84, 0, 90, 78, 25, 86, 92, 7, 82, 23, 78, 90, 80, 12, 22, 84, 85, 87, 84, 16, 119, 84, 90, 93, 64, 12, 66, 113, 75, 93, 88, 49, 83, 68, 74, 91, 90, 12, 101, 67, 86, 64, 80, 66, 95, 68, 25, 81, 84, 14, 90, 82, 93}, "25b679", -1020021134L));
        }
    }

    @Override // com.google.android.gms.signin.zae
    public final void zab() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zac(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            ((zaf) getService()).zaf(iAccountAccessor, ((Integer) Preconditions.checkNotNull(this.zae)).intValue(), z);
        } catch (RemoteException e) {
            Log.w(NPStringFog.decode(new byte[]{98, 12, 84, 90, 112, 94, 114, 9, 90, 81, 87, 68, 120, 8, 67, 88}, "1e3490", 1208108575L), NPStringFog.decode(new byte[]{106, 83, 88, 95, 66, 93, 24, 69, 80, 66, 64, 81, 91, 83, 21, 64, 68, 87, 90, 87, 87, 92, 79, 24, 92, 95, 80, 84, 22, 79, 80, 83, 91, 16, 69, 89, 78, 83, 113, 85, 80, 89, 77, 90, 65, 113, 85, 91, 87, 67, 91, 68, 22, 81, 75, 22, 86, 81, 90, 84, 93, 82}, "865068", 25534));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zad(zae zaeVar) {
        Preconditions.checkNotNull(zaeVar, NPStringFog.decode(new byte[]{35, 28, 64, 3, 82, 65, 15, 10, 87, 70, 80, 21, 16, 5, 92, 15, 85, 21, 47, 55, 89, 1, 95, 124, 8, 39, 81, 10, 93, 87, 7, 7, 91, 21}, "fd0f15", -2057631295L));
        try {
            Account accountOrDefault = this.zac.getAccountOrDefault();
            ((zaf) getService()).zag(new zai(1, new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.zae)).intValue(), NPStringFog.decode(new byte[]{10, 88, 84, 1, 5, 2, 67, 8, 68, 68, 2, 0, 85, 11, 69, 10, 23, 93, 8}, "6d0dcc", 1422439028L).equals(accountOrDefault.name) ? Storage.getInstance(getContext()).getSavedDefaultGoogleSignInAccount() : null)), zaeVar);
        } catch (RemoteException e) {
            Log.w(NPStringFog.decode(new byte[]{100, 8, 6, 15, 120, 87, 116, 13, 8, 4, 95, 77, 126, 12, 17, 13}, "7aaa19", 1.6303537E9f), NPStringFog.decode(new byte[]{99, 86, 92, 10, 70, 92, 17, 64, 84, 23, 68, 80, 82, 86, 17, 21, 64, 86, 83, 82, 83, 9, 75, 25, 85, 90, 84, 1, 18, 78, 89, 86, 95, 69, 65, 80, 86, 93, 120, 11, 18, 80, 66, 19, 82, 4, 94, 85, 84, 87}, "131e29", -929509863L));
            try {
                zaeVar.zab(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException e2) {
                Log.wtf(NPStringFog.decode(new byte[]{50, 10, 84, 93, 122, 13, 34, 15, 90, 86, 93, 23, 40, 14, 67, 95}, "ac333c", 976970358L), NPStringFog.decode(new byte[]{44, 100, 12, 1, 90, 113, 11, 116, 4, 10, 88, 90, 4, 84, 14, 21, 23, 87, 11, 100, 12, 1, 90, 113, 11, 116, 10, 11, 68, 84, 0, 67, 0, 70, 71, 80, 10, 66, 9, 2, 20, 90, 0, 23, 0, 30, 81, 91, 16, 67, 0, 2, 20, 94, 23, 88, 8, 70, 64, 80, 0, 23, 22, 7, 89, 93, 69, 71, 23, 9, 87, 93, 22, 68, 73, 70, 65, 86, 0, 79, 21, 3, 87, 76, 0, 83, 69, 52, 81, 85, 10, 67, 0, 35, 76, 91, 0, 71, 17, 15, 91, 86, 75}, "e7ef48", true, true), e);
            }
        }
    }
}
