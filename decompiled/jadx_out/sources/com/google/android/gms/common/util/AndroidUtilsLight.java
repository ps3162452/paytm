package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class AndroidUtilsLight {
    private static volatile int zza = -1;

    @Deprecated
    public static byte[] getPackageCertificateHashBytes(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest messageDigestZza;
        PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
        if (packageInfo.signatures == null || packageInfo.signatures.length != 1 || (messageDigestZza = zza(NPStringFog.decode(new byte[]{106, 112, 34, 1}, "98c08c", 1.592457942E9d))) == null) {
            return null;
        }
        return messageDigestZza.digest(packageInfo.signatures[0].toByteArray());
    }

    public static MessageDigest zza(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                return null;
            }
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
            i = i2 + 1;
        }
    }
}
