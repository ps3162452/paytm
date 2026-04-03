package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.wrappers.Wrappers;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class UidVerifier {
    private UidVerifier() {
    }

    public static boolean isGooglePlayServicesUid(Context context, int i) {
        if (!uidHasPackageName(context, i, NPStringFog.decode(new byte[]{87, 95, 84, 27, 6, 86, 91, 87, 85, 80, 79, 88, 90, 84, 75, 90, 8, 93, 26, 87, 84, 70}, "4095a9", -2.110372523E9d))) {
            return false;
        }
        try {
            return GoogleSignatureVerifier.getInstance(context).isGooglePublicSignedPackage(context.getPackageManager().getPackageInfo(NPStringFog.decode(new byte[]{0, 88, 12, 30, 2, 89, 12, 80, 13, 85, 75, 87, 13, 83, 19, 95, 12, 82, 77, 80, 12, 67}, "c7a0e6", true), 64));
        } catch (PackageManager.NameNotFoundException e) {
            if (!Log.isLoggable(NPStringFog.decode(new byte[]{103, 93, 86, 97, 4, 75, 91, 82, 91, 82, 19}, "2427a9", -8.4304E8f), 3)) {
                return false;
            }
            Log.d(NPStringFog.decode(new byte[]{55, 92, 0, 103, 84, 64, 11, 83, 13, 84, 67}, "b5d112", -962340717L), NPStringFog.decode(new byte[]{96, 4, 5, 10, 85, 95, 85, 69, 11, 0, 90, 89, 87, 0, 20, 65, 87, 89, 94, 66, 18, 65, 82, 81, 94, 1, 70, 6, 91, 87, 87, 9, 3, 65, 68, 84, 81, 28, 70, 18, 81, 74, 70, 12, 5, 4, 71, 24, 64, 4, 5, 10, 85, 95, 85, 73, 70, 5, 81, 94, 81, 16, 10, 21, 93, 86, 87, 69, 18, 14, 20, 94, 81, 9, 21, 4}, "0efa48", 1.291434559E9d));
            return false;
        }
    }

    public static boolean uidHasPackageName(Context context, int i, String str) {
        return Wrappers.packageManager(context).zza(i, str);
    }
}
