package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@CheckReturnValue
@RestrictedInheritance(allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
public class PackageSignatureVerifier {
    static volatile zzac zza;
    private static zzad zzb;

    private static zzad zza() {
        zzad zzadVar;
        synchronized (zzad.class) {
            try {
                if (zzb == null) {
                    zzb = new zzad();
                }
                zzadVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadVar;
    }

    public PackageVerificationResult queryPackageSignatureVerified(Context context, String str) {
        boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        zza();
        if (!zzn.zzf()) {
            throw new zzae();
        }
        String strConcat = String.valueOf(str).concat(true != zHonorsDebugCertificates ? NPStringFog.decode(new byte[]{79, 8}, "b8bea1", 2.006259508E9d) : NPStringFog.decode(new byte[]{24, 87}, "5f73b3", false));
        if (zza != null && zza.zza.equals(strConcat)) {
            return zza.zzb;
        }
        zza();
        zzx zzxVarZzc = zzn.zzc(str, zHonorsDebugCertificates, false, false);
        if (zzxVarZzc.zza) {
            zza = new zzac(strConcat, PackageVerificationResult.zzd(str, zzxVarZzc.zzd));
            return zza.zzb;
        }
        Preconditions.checkNotNull(zzxVarZzc.zzb);
        return PackageVerificationResult.zza(str, zzxVarZzc.zzb, zzxVarZzc.zzc);
    }

    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(Context context, String str) {
        try {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            packageVerificationResultQueryPackageSignatureVerified.zzb();
            return packageVerificationResultQueryPackageSignatureVerified;
        } catch (SecurityException e) {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            if (!packageVerificationResultQueryPackageSignatureVerified2.zzc()) {
                return packageVerificationResultQueryPackageSignatureVerified2;
            }
            Log.e(NPStringFog.decode(new byte[]{96, 94, 95, 107, 11, 4, 94, 84, 76, 77, 16, 6, 102, 80, 74, 81, 4, 10, 85, 71}, "0588bc", 1.8369142E9f), NPStringFog.decode(new byte[]{115, 88, 71, 19, 0, 9, 85, 92, 74, 19, 20, 0, 71, 66, 95, 71, 70, 1, 65, 69, 90, 93, 1, 69, 68, 86, 80, 88, 7, 2, 81, 23, 64, 90, 1, 11, 85, 67, 70, 65, 3, 69, 66, 82, 65, 90, 0, 12, 87, 86, 71, 90, 9, 11}, "4733fe", 1.629612363E9d), e);
            return packageVerificationResultQueryPackageSignatureVerified2;
        }
    }
}
