package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;
import java.util.Set;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@CheckReturnValue
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
public class GoogleSignatureVerifier {

    @Nullable
    private static GoogleSignatureVerifier zza;

    @Nullable
    private static volatile Set zzb;
    private final Context zzc;
    private volatile String zzd;

    public GoogleSignatureVerifier(Context context) {
        this.zzc = context.getApplicationContext();
    }

    public static GoogleSignatureVerifier getInstance(Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (zza == null) {
                    zzn.zze(context);
                    zza = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zza;
    }

    @Nullable
    static final zzj zza(PackageInfo packageInfo, zzj... zzjVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w(NPStringFog.decode(new byte[]{38, 88, 11, 83, 89, 7, 50, 94, 3, 90, 84, 22, 20, 69, 1, 98, 80, 16, 8, 81, 13, 81, 71}, "a7d45b", -1.690985124E9d), NPStringFog.decode(new byte[]{51, 81, 84, 88, 84, 5, 6, 16, 95, 82, 70, 66, 14, 95, 69, 86, 21, 22, 11, 81, 89, 19, 90, 12, 6, 16, 68, 90, 82, 12, 2, 68, 66, 65, 80, 76}, "c0735b", true));
            return null;
        }
        zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzjVarArr.length; i++) {
            if (zzjVarArr[i].equals(zzkVar)) {
                return zzjVarArr[i];
            }
        }
        return null;
    }

    public static final boolean zzb(PackageInfo packageInfo, boolean z) {
        if (z && packageInfo != null && (NPStringFog.decode(new byte[]{6, 14, 9, 79, 86, 87, 1, 19, 11, 8, 83, 23, 19, 4, 10, 5, 94, 87, 2}, "eada79", -1172955708L).equals(packageInfo.packageName) || NPStringFog.decode(new byte[]{83, 13, 11, 25, 82, 13, 95, 5, 10, 82, 27, 3, 94, 6, 20, 88, 92, 6, 30, 5, 11, 68}, "0bf75b", true).equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? zza(packageInfo, zzm.zza) : zza(packageInfo, zzm.zza[0])) != null) {
                return true;
            }
        }
        return false;
    }

    private final zzx zzc(String str, boolean z, boolean z2) {
        zzx zzxVarZzc;
        if (str == null) {
            return zzx.zzc(NPStringFog.decode(new byte[]{87, 22, 9, 90, 68, 21, 82, 4}, "9ce6de", -22101));
        }
        if (str.equals(this.zzd)) {
            return zzx.zzb();
        }
        if (zzn.zzg()) {
            zzxVarZzc = zzn.zzb(str, GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.zzc.getPackageManager().getPackageInfo(str, 64);
                boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc);
                if (packageInfo == null) {
                    zzxVarZzc = zzx.zzc(NPStringFog.decode(new byte[]{91, 17, 95, 13, 16, 20, 94, 3}, "5d3a0d", -18764));
                } else if (packageInfo.signatures == null || packageInfo.signatures.length != 1) {
                    zzxVarZzc = zzx.zzc(NPStringFog.decode(new byte[]{17, 11, 93, 1, 84, 4, 66, 1, 86, 20, 76, 65, 16, 7, 66, 19, 81, 19, 7, 6}, "bb3f8a", -1.6111316E9f));
                } else {
                    zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
                    String str2 = packageInfo.packageName;
                    zzxVarZzc = zzn.zza(str2, zzkVar, zHonorsDebugCertificates, false);
                    if (zzxVarZzc.zza && packageInfo.applicationInfo != null && (packageInfo.applicationInfo.flags & 2) != 0 && zzn.zza(str2, zzkVar, false, true).zza) {
                        zzxVarZzc = zzx.zzc(NPStringFog.decode(new byte[]{84, 3, 83, 65, 2, 80, 81, 4, 93, 81, 69, 69, 85, 10, 84, 85, 22, 82, 16, 5, 84, 70, 17, 23, 81, 22, 65, 20, 23, 82, 90, 3, 82, 64, 0, 83}, "0f14e7", 1.000229168E9d));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return zzx.zzd(NPStringFog.decode(new byte[]{12, 11, 18, 73, 89, 84, 66}, "bd2923", -1.6765955E9f).concat(str), e);
            }
        }
        if (!zzxVarZzc.zza) {
            return zzxVarZzc;
        }
        this.zzd = str;
        return zzxVarZzc;
    }

    public boolean isGooglePublicSignedPackage(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzb(packageInfo, false)) {
            return true;
        }
        if (!zzb(packageInfo, true)) {
            return false;
        }
        if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc)) {
            return true;
        }
        Log.w(NPStringFog.decode(new byte[]{35, 92, 90, 95, 85, 92, 55, 90, 82, 86, 88, 77, 17, 65, 80, 110, 92, 75, 13, 85, 92, 93, 75}, "d35899", -2.133877248E9d), NPStringFog.decode(new byte[]{55, 87, 68, 17, 21, 88, 6, 75, 68, 69, 89, 65, 6, 92, 16, 17, 24, 82, 0, 81, 82, 21, 76, 86, 7, 18, 88, 11, 24, 71, 11, 91, 68, 69, 90, 70, 10, 94, 83, 75}, "c27e83", 1.978898558E9d));
        return false;
    }

    public boolean isPackageGoogleSigned(String str) {
        zzx zzxVarZzc = zzc(str, false, false);
        zzxVarZzc.zze();
        return zzxVarZzc.zza;
    }

    public boolean isUidGoogleSigned(int i) {
        zzx zzxVarZzc;
        int length;
        String[] packagesForUid = this.zzc.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            zzxVarZzc = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    Preconditions.checkNotNull(zzxVarZzc);
                    break;
                }
                zzxVarZzc = zzc(packagesForUid[i2], false, false);
                if (zzxVarZzc.zza) {
                    break;
                }
                i2++;
            }
        } else {
            zzxVarZzc = zzx.zzc(NPStringFog.decode(new byte[]{8, 88, 16, 69, 83, 85, 21}, "f70582", -3.8555638E8f));
        }
        zzxVarZzc.zze();
        return zzxVarZzc.zza;
    }
}
