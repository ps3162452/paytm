package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
abstract class zzj extends com.google.android.gms.common.internal.zzz {
    private final int zza;

    protected zzj(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.zza = Arrays.hashCode(bArr);
    }

    protected static byte[] zze(String str) {
        try {
            return str.getBytes(NPStringFog.decode(new byte[]{40, 106, 118, 78, 14, 90, 84, 0, 20, 82}, "a99c6b", 1.720196326E9d));
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        IObjectWrapper iObjectWrapperZzd;
        if (obj == null || !(obj instanceof com.google.android.gms.common.internal.zzaa)) {
            return false;
        }
        try {
            com.google.android.gms.common.internal.zzaa zzaaVar = (com.google.android.gms.common.internal.zzaa) obj;
            if (zzaaVar.zzc() == this.zza && (iObjectWrapperZzd = zzaaVar.zzd()) != null) {
                return Arrays.equals(zzf(), (byte[]) ObjectWrapper.unwrap(iObjectWrapperZzd));
            }
            return false;
        } catch (RemoteException e) {
            Log.e(NPStringFog.decode(new byte[]{36, 86, 93, 5, 88, 83, 32, 92, 64, 22, 93, 80, 10, 90, 83, 22, 81, 69}, "c92b46", 1778984581L), NPStringFog.decode(new byte[]{114, 81, 88, 94, 81, 84, 20, 68, 94, 18, 83, 85, 64, 16, 118, 93, 91, 87, 88, 85, 17, 81, 81, 66, 64, 89, 87, 91, 87, 81, 64, 85, 66, 18, 82, 66, 91, 93, 17, 64, 81, 93, 91, 68, 84}, "401240", true, true), e);
            return false;
        }
    }

    public final int hashCode() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() {
        return ObjectWrapper.wrap(zzf());
    }

    abstract byte[] zzf();
}
