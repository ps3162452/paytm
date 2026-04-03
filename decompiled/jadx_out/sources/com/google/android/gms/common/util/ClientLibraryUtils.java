package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.wrappers.Wrappers;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class ClientLibraryUtils {
    private ClientLibraryUtils() {
    }

    public static int getClientVersion(Context context, String str) {
        Bundle bundle;
        PackageInfo packageInfo = getPackageInfo(context, str);
        if (packageInfo == null || packageInfo.applicationInfo == null || (bundle = packageInfo.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt(NPStringFog.decode(new byte[]{5, 87, 9, 77, 80, 88, 9, 95, 8, 6, 25, 86, 8, 92, 22, 12, 94, 83, 72, 95, 9, 16, 25, 65, 3, 74, 23, 10, 88, 89}, "f8dc77", false), -1);
    }

    public static PackageInfo getPackageInfo(Context context, String str) {
        try {
            return Wrappers.packageManager(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean isPackageSide() {
        return false;
    }
}
