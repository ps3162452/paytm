package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzo {
    private static final Uri zza = new Uri.Builder().scheme(NPStringFog.decode(new byte[]{82, 89, 90, 23, 87, 92, 69}, "164c22", 5.11521058E8d)).authority(NPStringFog.decode(new byte[]{83, 91, 94, 76, 95, 10, 95, 83, 95, 7, 22, 4, 94, 80, 65, 13, 81, 1, 30, 83, 94, 17, 22, 6, 88, 93, 94, 7, 74, 4}, "043b8e", 15044)).build();
    private final String zzb;
    private final String zzc;
    private final ComponentName zzd;
    private final int zze;
    private final boolean zzf;

    public zzo(ComponentName componentName, int i) {
        this.zzb = null;
        this.zzc = null;
        Preconditions.checkNotNull(componentName);
        this.zzd = componentName;
        this.zze = 4225;
        this.zzf = false;
    }

    public zzo(String str, int i, boolean z) {
        this(str, NPStringFog.decode(new byte[]{0, 89, 91, 75, 82, 11, 12, 81, 90, 0, 27, 5, 13, 82, 68, 10, 92, 0, 77, 81, 91, 22}, "c66e5d", -2.61114719E8d), 4225, false);
    }

    public zzo(String str, String str2, int i, boolean z) {
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        Preconditions.checkNotEmpty(str2);
        this.zzc = str2;
        this.zzd = null;
        this.zze = 4225;
        this.zzf = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        if (Objects.equal(this.zzb, zzoVar.zzb) && Objects.equal(this.zzc, zzoVar.zzc) && Objects.equal(this.zzd, zzoVar.zzd)) {
            int i = zzoVar.zze;
            if (this.zzf == zzoVar.zzf) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb, this.zzc, this.zzd, 4225, Boolean.valueOf(this.zzf));
    }

    public final String toString() {
        String str = this.zzb;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.zzd);
        return this.zzd.flattenToString();
    }

    public final ComponentName zza() {
        return this.zzd;
    }

    public final Intent zzb(Context context) {
        Intent intent;
        Bundle bundleCall;
        if (this.zzb == null) {
            return new Intent().setComponent(this.zzd);
        }
        if (this.zzf) {
            Bundle bundle = new Bundle();
            bundle.putString(NPStringFog.decode(new byte[]{66, 81, 65, 21, 12, 1, 84, 117, 80, 23, 12, 13, 95, 118, 70, 13, 1, 14, 84, 127, 86, 26}, "143ceb", false, false), this.zzb);
            try {
                bundleCall = context.getContentResolver().call(zza, NPStringFog.decode(new byte[]{23, 0, 71, 21, 15, 0, 1, 44, 91, 23, 3, 13, 16, 38, 84, 15, 10}, "de5cfc", -1.9205054E8d), (String) null, bundle);
            } catch (IllegalArgumentException e) {
                Log.w(NPStringFog.decode(new byte[]{116, 92, 15, 15, 86, 1, 67, 90, 14, 15, 96, 22, 86, 71, 20, 18, 112, 13, 89, 85, 8, 6}, "73aa3b", 815), NPStringFog.decode(new byte[]{119, 75, 12, 5, 11, 95, 80, 18, 11, 10, 18, 83, 93, 70, 66, 22, 3, 69, 92, 94, 23, 16, 15, 89, 93, 18, 4, 5, 15, 90, 86, 86, 88, 68}, "32bdf6", false).concat(e.toString()));
                bundleCall = null;
            }
            intent = bundleCall == null ? null : (Intent) bundleCall.getParcelable(NPStringFog.decode(new byte[]{22, 1, 23, 16, 94, 86, 0, 54, 0, 21, 71, 90, 11, 23, 0, 47, 89, 65, 0, 10, 17, 45, 82, 76}, "edef75", -336982891L));
            if (intent == null) {
                Log.w(NPStringFog.decode(new byte[]{32, 11, 95, 11, 82, 82, 23, 13, 94, 11, 100, 69, 2, 16, 68, 22, 116, 94, 13, 2, 88, 2}, "cd1e71", true), NPStringFog.decode(new byte[]{113, 78, 90, 81, 11, 89, 86, 23, 88, 95, 9, 91, 64, 71, 20, 86, 9, 66, 21, 94, 90, 68, 3, 94, 65, 23, 82, 81, 15, 92, 80, 83, 20, 86, 9, 66, 21, 86, 87, 68, 15, 95, 91, 13, 20}, "5740f0", true).concat(String.valueOf(this.zzb)));
            }
        } else {
            intent = null;
        }
        return intent == null ? new Intent(this.zzb).setPackage(this.zzc) : intent;
    }

    public final String zzc() {
        return this.zzc;
    }
}
