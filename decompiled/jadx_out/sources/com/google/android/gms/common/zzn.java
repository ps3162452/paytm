package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.errorprone.annotations.CheckReturnValue;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@CheckReturnValue
final class zzn {
    private static volatile zzag zze;
    private static Context zzg;
    static final zzl zza = new zzf(zzj.zze(NPStringFog.decode(new byte[]{85, -6, -77, 61, -5, -66, 85, -6, -77, 59, -6, -122, -89, -104, 50, 58, 57, 52, 103, 44, 33, -6, -78, 83, 109, 75, -14, -127, 23, -12, -21, 105, -14, -107}, "e81886", 1127751063L)));
    static final zzl zzb = new zzg(zzj.zze(NPStringFog.decode(new byte[]{4, -10, -29, 49, 53, 9, -10, -74, 98, -12, -99, -5, -108, 55, 99, 54, 51, 59, 32, 55, -93, -108, -13, -117, -10, -103, -94, -96, -14, -104, 70, -9, -21, 92, -14, -107}, "44a719", -868496397L)));
    static final zzl zzc = new zzh(zzj.zze(NPStringFog.decode(new byte[]{83, -10, -75, 103, 37, 81, -95, -74, 52, 72, -92, -63, 96, 54, 54, 97, 100, 104, 99, -9, -75, -96, -58, -93, -28, 114, 83, 41, 86, -93, -18, 4}, "c47cfa", -1283069927L)));
    static final zzl zzd = new zzi(zzj.zze(NPStringFog.decode(new byte[]{4, -96, -26, 61, -10, -54, 4, -96, -26, 58, -10, -14, -10, -62, 103, 59, 53, 96, 54, 107, 100, -6, -95, -96, -79, -96, -36, 85, 73, -95, -89, 44, -89, -116, 4}, "4bd94b", -357226598L)));
    private static final Object zzf = new Object();

    static zzx zza(String str, zzj zzjVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzh(str, zzjVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    static zzx zzb(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, true);
    }

    static zzx zzc(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, false);
    }

    static /* synthetic */ String zzd(boolean z, String str, zzj zzjVar) throws Exception {
        String strDecode = true != (!z && zzh(str, zzjVar, true, false).zza) ? NPStringFog.decode(new byte[]{12, 92, 77, 65, 4, 88, 14, 92, 78, 4, 1}, "b39ae4", -2.109689944E9d) : NPStringFog.decode(new byte[]{5, 83, 1, 70, 84, 65, 2, 83, 17, 71, 19, 19, 4, 92, 6, 80, 71, 4, 5}, "a6c33a", 1.149670273E9d);
        MessageDigest messageDigestZza = AndroidUtilsLight.zza(NPStringFog.decode(new byte[]{55, 45, 34, 75, 83, 81, 82}, "decfad", -8.770321E8f));
        Preconditions.checkNotNull(messageDigestZza);
        return String.format(NPStringFog.decode(new byte[]{68, 68, 11, 68, 73, 91, 6, 10, 20, 23, 21, 16, 18, 95, 80, 86, 12, 6, 92, 18, 66, 72, 25, 81, 21, 92, 12, 65, 74, 28, 65, 65, 84, 22, 4, 21, 18}, "a71d90", -7578), strDecode, str, Hex.bytesToStringLowercase(messageDigestZza.digest(zzjVar.zzf())), Boolean.valueOf(z), NPStringFog.decode(new byte[]{4, 5, 87, 5, 7, 2, 5, 7, 77, 86, 87, 94, 70, 82}, "57c062", false, true));
    }

    static void zze(Context context) {
        synchronized (zzn.class) {
            try {
                if (zzg != null) {
                    Log.w(NPStringFog.decode(new byte[]{116, 89, 95, 86, 95, 84, 112, 83, 66, 69, 90, 87, 90, 85, 81, 69, 86, 66}, "360131", -1.8493308E9f), NPStringFog.decode(new byte[]{38, 86, 93, 4, 13, 0, 34, 92, 64, 23, 8, 3, 8, 90, 83, 23, 4, 22, 65, 81, 83, 16, 65, 7, 4, 92, 92, 67, 8, 11, 8, 77, 91, 2, 13, 12, 27, 92, 86, 67, 0, 9, 19, 92, 83, 7, 24}, "a92cae", false));
                } else {
                    if (context != null) {
                        zzg = context.getApplicationContext();
                    }
                }
            } finally {
            }
        }
    }

    static boolean zzf() {
        boolean zZzg;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzj();
                zZzg = zze.zzg();
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e(NPStringFog.decode(new byte[]{119, 95, 90, 86, 88, 80, 115, 85, 71, 69, 93, 83, 89, 83, 84, 69, 81, 70}, "005145", 1953065954L), NPStringFog.decode(new byte[]{39, 7, 88, 84, 87, 2, 65, 18, 94, 24, 85, 3, 21, 70, 118, 87, 93, 1, 13, 3, 17, 91, 87, 20, 21, 15, 87, 81, 81, 7, 21, 3, 66, 24, 84, 20, 14, 11, 17, 74, 87, 11, 14, 18, 84}, "af182f", -16427), e);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            zZzg = false;
        }
        return zZzg;
    }

    static boolean zzg() {
        boolean zZzi = false;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzj();
                zZzi = zze.zzi();
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e(NPStringFog.decode(new byte[]{36, 9, 12, 86, 9, 93, 32, 3, 17, 69, 12, 94, 10, 5, 2, 69, 0, 75}, "cfc1e8", true, false), NPStringFog.decode(new byte[]{126, 7, 89, 8, 93, 5, 24, 18, 95, 68, 95, 4, 76, 70, 119, 11, 87, 6, 84, 3, 16, 7, 93, 19, 76, 15, 86, 13, 91, 0, 76, 3, 67, 68, 94, 19, 87, 11, 16, 22, 93, 12, 87, 18, 85}, "8f0d8a", -30903), e);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
        return zZzi;
    }

    private static zzx zzh(final String str, final zzj zzjVar, final boolean z, boolean z2) {
        try {
            zzj();
            Preconditions.checkNotNull(zzg);
            try {
                return zze.zzh(new zzs(str, zzjVar, z, z2), ObjectWrapper.wrap(zzg.getPackageManager())) ? zzx.zzb() : new zzv(new Callable(z, str, zzjVar) { // from class: com.google.android.gms.common.zze
                    public final boolean zza;
                    public final String zzb;
                    public final zzj zzc;

                    {
                        this.zza = z;
                        this.zzb = str;
                        this.zzc = zzjVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzn.zzd(this.zza, this.zzb, this.zzc);
                    }
                }, null);
            } catch (RemoteException e) {
                Log.e(NPStringFog.decode(new byte[]{117, 9, 92, 3, 94, 86, 113, 3, 65, 16, 91, 85, 91, 5, 82, 16, 87, 64}, "2f3d23", -2.033907691E9d), NPStringFog.decode(new byte[]{36, 81, 10, 9, 3, 85, 66, 68, 12, 69, 1, 84, 22, 16, 36, 10, 9, 86, 14, 85, 67, 6, 3, 67, 22, 89, 5, 12, 5, 80, 22, 85, 16, 69, 0, 67, 13, 93, 67, 23, 3, 92, 13, 68, 6}, "b0cef1", 1035075025L), e);
                return zzx.zzd(NPStringFog.decode(new byte[]{85, 89, 82, 20, 92, 4, 24, 85, 87, 13, 92}, "866a0a", -74437859L), e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e(NPStringFog.decode(new byte[]{36, 13, 88, 5, 8, 86, 32, 7, 69, 22, 13, 85, 10, 1, 86, 22, 1, 64}, "cb7bd3", true), NPStringFog.decode(new byte[]{39, 86, 12, 9, 7, 82, 65, 67, 10, 69, 5, 83, 21, 23, 34, 10, 13, 81, 13, 82, 69, 6, 7, 68, 21, 94, 3, 12, 1, 87, 21, 82, 22, 69, 4, 68, 14, 90, 69, 23, 7, 91, 14, 67, 0}, "a7eeb6", -2.0007668E9f), e2);
            return zzx.zzd(NPStringFog.decode(new byte[]{84, 90, 83, 69, 13, 87, 25, 92, 89, 89, 21, 8, 25}, "9570a2", true).concat(String.valueOf(e2.getMessage())), e2);
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    private static zzx zzi(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        zzx zzxVarZzd;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzj();
                zzo zzoVar = new zzo(str, z, false, ObjectWrapper.wrap(zzg), false, true);
                try {
                    zzq zzqVarZze = z4 ? zze.zze(zzoVar) : zze.zzf(zzoVar);
                    if (zzqVarZze.zzb()) {
                        zzxVarZzd = zzx.zzf(zzqVarZze.zzc());
                    } else {
                        String strZza = zzqVarZze.zza();
                        PackageManager.NameNotFoundException nameNotFoundException = zzqVarZze.zzd() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (strZza == null) {
                            strZza = NPStringFog.decode(new byte[]{93, 65, 17, 90, 65, 16, 91, 91, 6, 86, 88, 89, 86, 84, 67, 69, 82, 83, 83, 82, 4, 80, 19, 83, 93, 65, 23, 92, 85, 89, 91, 82, 23, 80}, "83c530", true);
                        }
                        zzxVarZzd = zzx.zzg(zzqVarZze.zzc(), zzqVarZze.zzd(), strZza, nameNotFoundException);
                    }
                } catch (RemoteException e) {
                    Log.e(NPStringFog.decode(new byte[]{33, 88, 92, 86, 85, 1, 37, 82, 65, 69, 80, 2, 15, 84, 82, 69, 92, 23}, "f7319d", 4.1685056E8f), NPStringFog.decode(new byte[]{39, 85, 81, 14, 93, 80, 65, 64, 87, 66, 95, 81, 21, 20, 127, 13, 87, 83, 13, 81, 24, 1, 93, 70, 21, 93, 94, 11, 91, 85, 21, 81, 75, 66, 94, 70, 14, 89, 24, 16, 93, 89, 14, 64, 93}, "a48b84", -3.5645504E8f), e);
                    zzxVarZzd = zzx.zzd(NPStringFog.decode(new byte[]{93, 89, 5, 20, 84, 80, 16, 85, 0, 13, 84}, "06aa85", -1.4306359E9f), e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                Log.e(NPStringFog.decode(new byte[]{116, 86, 87, 82, 8, 80, 112, 92, 74, 65, 13, 83, 90, 90, 89, 65, 1, 70}, "3985d5", -9.799041E8f), NPStringFog.decode(new byte[]{126, 82, 94, 10, 93, 93, 24, 71, 88, 70, 95, 92, 76, 19, 112, 9, 87, 94, 84, 86, 23, 5, 93, 75, 76, 90, 81, 15, 91, 88, 76, 86, 68, 70, 94, 75, 87, 94, 23, 20, 93, 84, 87, 71, 82}, "837f89", -1.613820019E9d), e2);
                zzxVarZzd = zzx.zzd(NPStringFog.decode(new byte[]{9, 13, 1, 71, 84, 84, 68, 11, 11, 91, 76, 11, 68}, "dbe281", 3.07707152E8d).concat(String.valueOf(e2.getMessage())), e2);
            }
            return zzxVarZzd;
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    private static void zzj() throws DynamiteModule.LoadingException {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            if (zze == null) {
                zze = zzaf.zzb(DynamiteModule.load(zzg, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, NPStringFog.decode(new byte[]{1, 95, 91, 30, 83, 14, 13, 87, 90, 85, 26, 0, 12, 84, 68, 95, 93, 5, 76, 87, 91, 67, 26, 6, 13, 95, 81, 92, 81, 2, 7, 66, 66, 89, 82, 8, 1, 81, 66, 85, 71}, "b0604a", 22099)).instantiate(NPStringFog.decode(new byte[]{81, 86, 84, 25, 2, 86, 93, 94, 85, 82, 75, 88, 92, 93, 75, 88, 12, 93, 28, 94, 84, 68, 75, 90, 93, 84, 84, 88, 11, 23, 117, 86, 86, 80, 9, 92, 113, 92, 75, 67, 12, 95, 91, 90, 88, 67, 0, 74, 123, 84, 73, 91}, "2997e9", 1.461995137E9d)));
            }
        }
    }
}
