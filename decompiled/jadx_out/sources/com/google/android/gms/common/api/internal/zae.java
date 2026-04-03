package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zae extends zai {
    protected final BaseImplementation.ApiMethodImpl zaa;

    public zae(int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        super(i);
        this.zaa = (BaseImplementation.ApiMethodImpl) Preconditions.checkNotNull(apiMethodImpl, NPStringFog.decode(new byte[]{44, 77, 88, 8, 68, 9, 7, 76, 92, 11, 0, 23, 66, 89, 70, 1, 68, 10, 13, 76, 20, 22, 17, 10, 12, 89, 86, 8, 1, 74}, "b84ddd", 2.0453166E9f));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        try {
            this.zaa.setFailedResult(status);
        } catch (IllegalStateException e) {
            Log.w(NPStringFog.decode(new byte[]{116, 64, 13, 122, 2, 13, 89, 98, 17, 87, 13, 4, 71}, "50d9ca", true), NPStringFog.decode(new byte[]{113, 26, 1, 3, 73, 18, 93, 13, 12, 70, 75, 3, 68, 13, 16, 18, 80, 8, 83, 66, 4, 7, 80, 10, 65, 16, 7}, "4bbf9f", true, false), e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        try {
            this.zaa.setFailedResult(new Status(10, exc.getClass().getSimpleName() + NPStringFog.decode(new byte[]{9, 65}, "3a92fc", 16441) + exc.getLocalizedMessage()));
        } catch (IllegalStateException e) {
            Log.w(NPStringFog.decode(new byte[]{112, 17, 81, 114, 5, 85, 93, 51, 77, 95, 10, 92, 67}, "1a81d9", 1.99938748E9d), NPStringFog.decode(new byte[]{115, 74, 86, 83, 70, 68, 95, 93, 91, 22, 68, 85, 70, 93, 71, 66, 95, 94, 81, 18, 83, 87, 95, 92, 67, 64, 80}, "625660", -1209), e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq zabqVar) throws DeadObjectException {
        try {
            this.zaa.run(zabqVar.zaf());
        } catch (RuntimeException e) {
            zae(e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(zaad zaadVar, boolean z) {
        zaadVar.zac(this.zaa, z);
    }
}
