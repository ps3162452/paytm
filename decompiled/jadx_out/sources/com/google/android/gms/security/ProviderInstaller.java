package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = NPStringFog.decode(new byte[]{113, 12, 70, 34, 13, 16, 83, 62, 122, 17, 7, 12, 101, 50, 121}, "6a5abb", -32360);
    private static final GoogleApiAvailabilityLight zza = GoogleApiAvailabilityLight.getInstance();
    private static final Object zzb = new Object();
    private static Method zzc = null;
    private static Method zzd = null;

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Context moduleContext;
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{37, 90, 95, 16, 3, 29, 18, 21, 92, 17, 21, 17, 70, 91, 94, 16, 70, 7, 3, 21, 95, 17, 10, 9}, "f51dfe", 1.519012935E9d));
        zza.verifyGooglePlayServicesIsAvailable(context, 11925000);
        synchronized (zzb) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                moduleContext = DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, NPStringFog.decode(new byte[]{81, 90, 95, 30, 1, 14, 93, 82, 94, 85, 72, 0, 92, 81, 64, 95, 15, 5, 28, 82, 95, 67, 72, 17, 64, 90, 68, 89, 2, 4, 64, 92, 92, 67, 18, 0, 94, 89, 87, 66, 72, 5, 75, 91, 83, 93, 15, 21, 87}, "2520fa", 2.04327396E9d)).getModuleContext();
            } catch (DynamiteModule.LoadingException e) {
                Log.w(NPStringFog.decode(new byte[]{51, 69, 89, 79, 80, 82, 6, 69, 127, 87, 74, 66, 2, 91, 90, 92, 75}, "c76996", -6.30934008E8d), NPStringFog.decode(new byte[]{35, 3, 11, 93, 86, 92, 69, 22, 13, 17, 95, 87, 4, 6, 66, 65, 65, 87, 19, 11, 6, 84, 65, 81, 11, 17, 22, 80, 95, 84, 0, 16, 66, 92, 92, 92, 16, 14, 7, 11, 19}, "ebb138", -1.7517772E7d).concat(String.valueOf(e.getMessage())));
                moduleContext = null;
            }
            if (moduleContext != null) {
                zzc(moduleContext, context, NPStringFog.decode(new byte[]{91, 12, 12, 26, 83, 11, 87, 4, 13, 81, 26, 5, 86, 7, 19, 91, 93, 0, 22, 4, 12, 71, 26, 20, 74, 12, 23, 93, 80, 1, 74, 10, 15, 71, 64, 5, 84, 15, 4, 70, 26, 52, 74, 12, 23, 93, 80, 1, 74, 42, 15, 71, 64, 5, 84, 15, 4, 70, 125, 9, 72, 15}, "8ca44d", false));
                return;
            }
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    if (zzd == null) {
                        zzd = zzb(remoteContext, NPStringFog.decode(new byte[]{5, 94, 90, 24, 95, 10, 9, 86, 91, 83, 22, 4, 8, 85, 69, 89, 81, 1, 72, 86, 90, 69, 22, 6, 9, 92, 90, 89, 86, 75, 21, 84, 84, 67, 74, 12, 18, 72, 25, 102, 74, 10, 16, 88, 83, 83, 74, 44, 8, 66, 67, 87, 84, 9, 3, 67, 126, 91, 72, 9}, "f1768e", 1.5038871E9f), NPStringFog.decode(new byte[]{64, 81, 20, 90, 69, 77, 96, 81, 21, 64, 82, 74, 70, 103, 16, 84, 67, 74}, "24d579", 4.778439E8f), new Class[]{Context.class, Long.TYPE, Long.TYPE});
                    }
                    zzd.invoke(null, context, Long.valueOf(jElapsedRealtime), Long.valueOf(jElapsedRealtime2));
                } catch (Exception e2) {
                    Log.w(NPStringFog.decode(new byte[]{51, 65, 11, 70, 13, 0, 6, 65, 45, 94, 23, 16, 2, 95, 8, 85, 22}, "c3d0dd", 1246631086L), NPStringFog.decode(new byte[]{112, 0, 93, 91, 7, 0, 22, 21, 91, 23, 16, 1, 70, 14, 70, 67, 66, 22, 83, 16, 65, 82, 17, 16, 22, 18, 64, 86, 22, 23, 12, 65}, "6a47bd", true).concat(String.valueOf(e2.getMessage())));
                }
            }
            if (remoteContext != null) {
                zzc(remoteContext, context, NPStringFog.decode(new byte[]{84, 90, 9, 25, 4, 10, 88, 82, 8, 82, 77, 4, 89, 81, 22, 88, 10, 1, 25, 82, 9, 68, 77, 6, 88, 88, 9, 88, 13, 75, 68, 80, 7, 66, 17, 12, 67, 76, 74, 103, 17, 10, 65, 92, 0, 82, 17, 44, 89, 70, 16, 86, 15, 9, 82, 71, 45, 90, 19, 9}, "75d7ce", 15039));
            } else {
                Log.e(NPStringFog.decode(new byte[]{50, 22, 14, 68, 10, 82, 7, 22, 40, 92, 16, 66, 3, 8, 13, 87, 17}, "bda2c6", -9.29787044E8d), NPStringFog.decode(new byte[]{35, 80, 10, 84, 7, 1, 69, 69, 12, 24, 5, 0, 17, 17, 17, 93, 15, 10, 17, 84, 67, 91, 13, 11, 17, 84, 27, 76}, "e1c8be", 6.412963E8f));
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{112, 11, 13, 70, 82, 79, 71, 68, 14, 71, 68, 67, 19, 10, 12, 70, 23, 85, 86, 68, 13, 71, 91, 91}, "3dc277", false, true));
        Preconditions.checkNotNull(providerInstallListener, NPStringFog.decode(new byte[]{45, 15, 71, 69, 84, 87, 4, 20, 20, 92, 68, 74, 21, 70, 90, 94, 69, 25, 3, 3, 20, 95, 68, 85, 13}, "af4119", 1732600450L));
        Preconditions.checkMainThread(NPStringFog.decode(new byte[]{124, 20, 66, 21, 23, 90, 84, 65, 82, 0, 91, 84, 84, 5, 17, 14, 89, 24, 69, 9, 84, 65, 98, 113, 17, 21, 89, 19, 82, 89, 85}, "1a1a78", -1.2793562E9f));
        new zza(context, providerInstallListener).execute(new Void[0]);
    }

    private static Method zzb(Context context, String str, String str2, Class[] clsArr) throws NoSuchMethodException, ClassNotFoundException {
        return context.getClassLoader().loadClass(str).getMethod(str2, clsArr);
    }

    private static void zzc(Context context, Context context2, String str) throws GooglePlayServicesNotAvailableException {
        try {
            if (zzc == null) {
                zzc = zzb(context, str, NPStringFog.decode(new byte[]{93, 86, 65, 93, 75, 18, 100, 74, 93, 78, 80, 2, 81, 74}, "48289f", 1.362556727E9d), new Class[]{Context.class});
            }
            zzc.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable(NPStringFog.decode(new byte[]{54, 70, 90, 19, 12, 7, 3, 70, 124, 11, 22, 23, 7, 88, 89, 0, 23}, "f45eec", false), 6)) {
                Log.e(NPStringFog.decode(new byte[]{51, 75, 13, 79, 95, 1, 6, 75, 43, 87, 69, 17, 2, 85, 14, 92, 68}, "c9b96e", 2.0993455E9f), NPStringFog.decode(new byte[]{119, 2, 11, 92, 83, 81, 17, 23, 13, 16, 95, 91, 66, 23, 3, 92, 90, 21, 65, 17, 13, 70, 95, 81, 84, 17, 88, 16}, "1cb065", false, true).concat(String.valueOf(cause == null ? e.getMessage() : cause.getMessage())));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
