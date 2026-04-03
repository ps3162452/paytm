package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import n.NPStringFog;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes59.dex */
public final class zabv extends zaag {

    @NotOnlyInitialized
    private final GoogleApi zaa;

    public zabv(GoogleApi googleApi) {
        super(NPStringFog.decode(new byte[]{123, 81, 71, 94, 94, 80, 22, 93, 64, 22, 95, 91, 66, 20, 64, 67, 65, 68, 89, 70, 71, 83, 85, 20, 84, 77, 19, 85, 94, 90, 88, 81, 80, 66, 88, 91, 88, 88, 86, 69, 66, 20, 85, 88, 90, 83, 95, 64, 24, 20, 114, 102, 120, 71, 22, 71, 70, 70, 65, 91, 68, 64, 90, 88, 86, 20, 85, 91, 93, 88, 84, 87, 66, 93, 92, 88, 93, 81, 69, 71, 19, 85, 93, 93, 83, 90, 71, 22, 92, 65, 69, 64, 19, 88, 94, 64, 22, 87, 82, 90, 93, 20, 66, 92, 90, 69, 17, 89, 83, 64, 91, 89, 85, 26}, "643614", false));
        this.zaa = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        return (T) this.zaa.doRead(t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        return (T) this.zaa.doWrite(t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.zaa.getApplicationContext();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zaa.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zap(zada zadaVar) {
    }
}
