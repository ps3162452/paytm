package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zacc extends zap {
    private TaskCompletionSource zad;

    private zacc(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.zad = new TaskCompletionSource();
        this.mLifecycleFragment.addCallback(NPStringFog.decode(new byte[]{38, 94, 65, 112, 21, 4, 8, 95, 83, 83, 10, 9, 8, 71, 75, 121, 6, 9, 17, 86, 64}, "a321ce", 29091), this);
    }

    public static zacc zaa(Activity activity) {
        LifecycleFragment fragment = getFragment(activity);
        zacc zaccVar = (zacc) fragment.getCallbackOrNull(NPStringFog.decode(new byte[]{35, 84, 22, 37, 78, 82, 13, 85, 4, 6, 81, 95, 13, 77, 28, 44, 93, 95, 20, 92, 23}, "d9ed83", 6.81749709E8d), zacc.class);
        if (zaccVar == null) {
            return new zacc(fragment);
        }
        if (!zaccVar.zad.getTask().isComplete()) {
            return zaccVar;
        }
        zaccVar.zad = new TaskCompletionSource();
        return zaccVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onDestroy() {
        super.onDestroy();
        this.zad.trySetException(new CancellationException(NPStringFog.decode(new byte[]{43, 93, 69, 76, 65, 0, 0, 70, 95, 78, 8, 21, 26, 18, 65, 89, 18, 65, 7, 87, 69, 76, 19, 14, 26, 87, 82, 24, 3, 4, 5, 93, 68, 93, 65, 38, 12, 93, 81, 84, 4, 65, 51, 94, 87, 65, 65, 18, 6, 64, 64, 81, 2, 4, 16, 18, 85, 87, 20, 13, 7, 18, 84, 93, 65, 12, 2, 86, 83, 24, 0, 23, 2, 91, 90, 89, 3, 13, 6, 28}, "c268aa", -723287164L)));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zab(ConnectionResult connectionResult, int i) {
        String errorMessage = connectionResult.getErrorMessage();
        if (errorMessage == null) {
            errorMessage = NPStringFog.decode(new byte[]{117, 75, 65, 13, 16, 68, 83, 86, 93, 12, 7, 7, 68, 80, 93, 5, 66, 16, 95, 25, 116, 13, 13, 3, 92, 92, 19, 50, 14, 5, 73, 25, 64, 7, 16, 18, 89, 90, 86, 17}, "093bbd", -11272);
        }
        this.zad.setException(new ApiException(new Status(connectionResult, errorMessage, connectionResult.getErrorCode())));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zac() {
        Activity lifecycleActivity = this.mLifecycleFragment.getLifecycleActivity();
        if (lifecycleActivity == null) {
            this.zad.trySetException(new ApiException(new Status(8)));
            return;
        }
        int iIsGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(lifecycleActivity);
        if (iIsGooglePlayServicesAvailable == 0) {
            this.zad.trySetResult(null);
        } else {
            if (this.zad.getTask().isComplete()) {
                return;
            }
            zah(new ConnectionResult(iIsGooglePlayServicesAvailable, null), 0);
        }
    }

    public final Task zad() {
        return this.zad.getTask();
    }
}
