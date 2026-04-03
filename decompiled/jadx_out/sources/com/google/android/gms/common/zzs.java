package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    private final String zza;

    @Nullable
    private final zzj zzb;
    private final boolean zzc;
    private final boolean zzd;

    zzs(String str, @Nullable IBinder iBinder, boolean z, boolean z2) {
        zzk zzkVar;
        this.zza = str;
        if (iBinder == null) {
            zzkVar = null;
        } else {
            try {
                IObjectWrapper iObjectWrapperZzd = com.google.android.gms.common.internal.zzz.zzg(iBinder).zzd();
                byte[] bArr = iObjectWrapperZzd == null ? null : (byte[]) ObjectWrapper.unwrap(iObjectWrapperZzd);
                if (bArr != null) {
                    zzkVar = new zzk(bArr);
                } else {
                    Log.e(NPStringFog.decode(new byte[]{35, 14, 90, 85, 85, 80, 39, 4, 71, 70, 80, 83, 13, 2, 84, 70, 92, 70, 53, 20, 80, 64, 64}, "da5295", -32549), NPStringFog.decode(new byte[]{122, 12, 23, 88, 80, 65, 87, 12, 22, 20, 65, 15, 78, 17, 3, 68, 20, 2, 92, 17, 22, 93, 82, 8, 90, 2, 22, 81}, "9cb44a", -1.6831875E9f));
                    zzkVar = null;
                }
            } catch (RemoteException e) {
                Log.e(NPStringFog.decode(new byte[]{35, 95, 87, 80, 91, 81, 39, 85, 74, 67, 94, 82, 13, 83, 89, 67, 82, 71, 53, 69, 93, 69, 78}, "d08774", 3.95263298E8d), NPStringFog.decode(new byte[]{115, 12, 23, 91, 92, 21, 94, 12, 22, 23, 77, 91, 71, 17, 3, 71, 24, 86, 85, 17, 22, 94, 94, 92, 83, 2, 22, 82}, "0cb785", 1.521283E9f), e);
                zzkVar = null;
            }
        }
        this.zzb = zzkVar;
        this.zzc = z;
        this.zzd = z2;
    }

    zzs(String str, @Nullable zzj zzjVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = zzjVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        zzj zzjVar = this.zzb;
        if (zzjVar == null) {
            Log.w(NPStringFog.decode(new byte[]{112, 9, 95, 2, 91, 93, 116, 3, 66, 17, 94, 94, 94, 5, 81, 17, 82, 75, 102, 19, 85, 23, 78}, "7f0e78", 5.7285696E7f), NPStringFog.decode(new byte[]{84, 92, 74, 77, 91, 83, 94, 90, 89, 77, 87, 21, 85, 80, 86, 93, 87, 71, 23, 80, 75, 25, 92, 64, 91, 85}, "798925", true));
            zzjVar = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, zzjVar, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
