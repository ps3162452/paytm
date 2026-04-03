package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.base.R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zac {
    private static final SimpleArrayMap zaa = new SimpleArrayMap();
    private static Locale zab;

    public static String zaa(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return !TextUtils.isEmpty(str) ? str : packageName;
        }
    }

    public static String zab(Context context) {
        return context.getResources().getString(R.string.common_google_play_services_notification_channel_name);
    }

    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_button);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_button);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_button);
            default:
                return resources.getString(android.R.string.ok);
        }
    }

    public static String zad(Context context, int i) {
        Resources resources = context.getResources();
        String strZaa = zaa(context);
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_text, strZaa);
            case 2:
                return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, strZaa);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_text, strZaa);
            case 4:
            case 6:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                return resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue, strZaa);
            case 5:
                return zah(context, NPStringFog.decode(new byte[]{91, 13, 14, 94, 92, 89, 103, 5, 12, 92, 84, 91, 93, 61, 19, 95, 82, 78, 103, 17, 6, 65, 69, 94, 91, 7, 16, 108, 90, 89, 78, 3, 15, 90, 87, 104, 89, 1, 0, 92, 70, 89, 76, 61, 23, 86, 75, 67}, "8bc337", true), strZaa);
            case 7:
                return zah(context, NPStringFog.decode(new byte[]{84, 11, 94, 9, 14, 89, 104, 3, 92, 11, 6, 91, 82, 59, 67, 8, 0, 78, 104, 23, 86, 22, 23, 94, 84, 1, 64, 59, 15, 82, 67, 19, 92, 22, 10, 104, 82, 22, 65, 11, 19, 104, 67, 1, 75, 16}, "7d3da7", true), strZaa);
            case 9:
                return resources.getString(R.string.common_google_play_services_unsupported_text, strZaa);
            case 16:
                return zah(context, NPStringFog.decode(new byte[]{82, 9, 12, 95, 94, 93, 110, 1, 14, 93, 86, 95, 84, 57, 17, 94, 80, 74, 110, 21, 4, 64, 71, 90, 82, 3, 18, 109, 80, 67, 88, 57, 20, 92, 80, 69, 80, 15, 13, 83, 83, 95, 84, 57, 21, 87, 73, 71}, "1fa213", 2.145697907E9d), strZaa);
            case 17:
                return zah(context, NPStringFog.decode(new byte[]{85, 86, 15, 94, 86, 8, 105, 94, 13, 92, 94, 10, 83, 102, 18, 95, 88, 31, 105, 74, 7, 65, 79, 15, 85, 92, 17, 108, 74, 15, 81, 87, 61, 90, 87, 57, 80, 88, 11, 95, 92, 2, 105, 77, 7, 75, 77}, "69b39f", false, false), strZaa);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, strZaa);
            case 20:
                return zah(context, NPStringFog.decode(new byte[]{83, 93, 92, 95, 94, 92, 111, 85, 94, 93, 86, 94, 85, 109, 65, 94, 80, 75, 111, 65, 84, 64, 71, 91, 83, 87, 66, 109, 67, 87, 67, 70, 67, 91, 82, 70, 85, 86, 110, 66, 67, 93, 86, 91, 93, 87, 110, 70, 85, 74, 69}, "021212", -1.5126077E9f), strZaa);
        }
    }

    public static String zae(Context context, int i) {
        return (i == 6 || i == 19) ? zah(context, NPStringFog.decode(new byte[]{80, 95, 90, 11, 90, 15, 108, 87, 88, 9, 82, 13, 86, 111, 71, 10, 84, 24, 108, 67, 82, 20, 67, 8, 80, 85, 68, 57, 71, 4, 64, 95, 91, 19, 65, 8, 92, 94, 104, 20, 80, 16, 70, 89, 69, 3, 81, 62, 71, 85, 79, 18}, "307f5a", 9.050602E8f), zaa(context)) : zad(context, i);
    }

    public static String zaf(Context context, int i) {
        String strZai = i == 6 ? zai(context, NPStringFog.decode(new byte[]{0, 9, 8, 88, 9, 94, 60, 1, 10, 90, 1, 92, 6, 57, 21, 89, 7, 73, 60, 21, 0, 71, 16, 89, 0, 3, 22, 106, 20, 85, 16, 9, 9, 64, 18, 89, 12, 8, 58, 71, 3, 65, 22, 15, 23, 80, 2, 111, 23, 15, 17, 89, 3}, "cfe5f0", 1.0098642E9f)) : zag(context, i);
        return strZai == null ? context.getResources().getString(R.string.common_google_play_services_notification_ticker) : strZai;
    }

    public static String zag(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
            case 6:
            case 18:
                break;
            case 5:
                Log.e(NPStringFog.decode(new byte[]{116, 13, 90, 2, 10, 83, 114, 18, 92, 36, 16, 87, 90, 14, 84, 7, 15, 90, 90, 22, 76}, "3b5ef6", 1.9045645E9f), NPStringFog.decode(new byte[]{39, 89, 70, 12, 13, 78, 7, 91, 15, 1, 67, 89, 5, 84, 9, 16, 13, 76, 70, 64, 7, 22, 67, 75, 22, 82, 5, 12, 5, 81, 3, 83, 70, 18, 11, 93, 8, 23, 5, 10, 13, 86, 3, 84, 18, 12, 13, 95, 72, 23, 54, 9, 6, 89, 21, 82, 70, 21, 17, 87, 16, 94, 2, 0, 67, 89, 70, 65, 7, 9, 10, 92, 70, 86, 5, 6, 12, 77, 8, 67, 72}, "f7fec8", true, true));
                break;
            case 7:
                Log.e(NPStringFog.decode(new byte[]{35, 14, 12, 87, 91, 92, 37, 17, 10, 113, 65, 88, 13, 13, 2, 82, 94, 85, 13, 21, 26}, "dac079", false), NPStringFog.decode(new byte[]{40, 82, 65, 18, 13, 23, 13, 23, 80, 23, 16, 10, 20, 23, 90, 6, 1, 16, 20, 69, 80, 1, 76, 69, 54, 91, 80, 4, 17, 0, 70, 69, 80, 17, 16, 28, 70, 69, 80, 20, 23, 0, 21, 67, 21, 9, 3, 17, 3, 69, 27}, "f75ebe", true, false));
                break;
            case 8:
                Log.e(NPStringFog.decode(new byte[]{114, 91, 13, 5, 84, 86, 116, 68, 11, 35, 78, 82, 92, 88, 3, 0, 81, 95, 92, 64, 27}, "54bb83", true, false), NPStringFog.decode(new byte[]{121, 91, 66, 92, 17, 86, 81, 89, 22, 92, 17, 74, 95, 71, 22, 86, 0, 91, 69, 71, 68, 92, 7, 22, 16, 101, 90, 92, 2, 75, 85, 21, 69, 92, 6, 24, 92, 90, 81, 74, 67, 94, 95, 71, 22, 93, 6, 76, 81, 92, 90, 92, 7, 24, 89, 91, 80, 86, 17, 85, 81, 65, 95, 86, 13}, "0569c8", false));
                break;
            case 9:
                Log.e(NPStringFog.decode(new byte[]{36, 94, 91, 82, 14, 93, 34, 65, 93, 116, 20, 89, 10, 93, 85, 87, 11, 84, 10, 69, 77}, "c145b8", true, false), NPStringFog.decode(new byte[]{37, 12, 10, 1, 95, 87, 66, 51, 9, 7, 74, 18, 17, 6, 23, 16, 90, 81, 7, 16, 69, 15, 64, 18, 11, 13, 19, 7, 95, 91, 6, 77, 69, 37, 82, 92, 12, 12, 17, 70, 65, 87, 1, 12, 19, 3, 65, 28}, "bcef32", 1.163807115E9d));
                break;
            case 10:
                Log.e(NPStringFog.decode(new byte[]{112, 10, 9, 87, 88, 92, 118, 21, 15, 113, 66, 88, 94, 9, 7, 82, 93, 85, 94, 17, 31}, "7ef049", false, true), NPStringFog.decode(new byte[]{37, 81, 67, 87, 91, 92, 17, 81, 71, 18, 82, 65, 19, 91, 71, 18, 88, 80, 2, 65, 71, 64, 82, 87, 79, 20, 101, 94, 82, 82, 18, 81, 21, 65, 82, 86, 65, 88, 90, 85, 68, 19, 7, 91, 71, 18, 83, 86, 21, 85, 92, 94, 82, 87, 65, 93, 91, 84, 88, 65, 12, 85, 65, 91, 88, 93}, "a45273", false));
                break;
            case 11:
                Log.e(NPStringFog.decode(new byte[]{36, 95, 89, 95, 92, 86, 34, 64, 95, 121, 70, 82, 10, 92, 87, 90, 89, 95, 10, 68, 79}, "c06803", true), NPStringFog.decode(new byte[]{53, 13, 92, 69, 5, 70, 17, 9, 80, 6, 5, 66, 8, 10, 87, 69, 13, 69, 65, 11, 86, 17, 68, 90, 8, 6, 92, 11, 23, 83, 5, 69, 77, 10, 68, 66, 9, 0, 25, 16, 23, 83, 19, 75}, "ae9ed6", 1.6123255E9f));
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e(NPStringFog.decode(new byte[]{127, 90, 9, 85, 9, 87, 121, 69, 15, 115, 19, 83, 81, 89, 7, 80, 12, 94, 81, 65, 31}, "85f2e2", true), NPStringFog.decode(new byte[]{98, 10, 6, 78, 20, 6, 84, 16, 6, 82, 68, 6, 69, 22, 12, 68, 68, 0, 88, 0, 6, 22}, "7dc6dc", 1.418271139E9d) + i);
                break;
            case 16:
                Log.e(NPStringFog.decode(new byte[]{38, 95, 94, 94, 89, 4, 32, 64, 88, 120, 67, 0, 8, 92, 80, 91, 92, 13, 8, 68, 72}, "a0195a", 1897925915L), NPStringFog.decode(new byte[]{127, 13, 6, 17, 87, 4, 16, 23, 11, 84, 24, 35, 96, 42, 67, 82, 87, 15, 64, 12, 13, 84, 86, 22, 67, 67, 26, 94, 77, 66, 81, 23, 23, 84, 85, 18, 68, 6, 7, 17, 76, 13, 16, 0, 12, 95, 86, 7, 83, 23, 67, 69, 87, 66, 89, 16, 67, 95, 87, 22, 16, 2, 21, 80, 81, 14, 81, 1, 15, 84, 22}, "0cc18b", true));
                break;
            case 17:
                Log.e(NPStringFog.decode(new byte[]{117, 13, 89, 4, 13, 87, 115, 18, 95, 34, 23, 83, 91, 14, 87, 1, 8, 94, 91, 22, 79}, "2b6ca2", 18737), NPStringFog.decode(new byte[]{103, 90, 6, 21, 23, 65, 86, 81, 10, 83, 13, 84, 87, 18, 2, 86, 7, 94, 70, 92, 23, 21, 7, 94, 70, 94, 7, 21, 10, 94, 71, 18, 1, 80, 68, 66, 90, 85, 13, 80, 0, 17, 90, 92, 77}, "32c5d1", -618157551L));
                break;
            case 20:
                Log.e(NPStringFog.decode(new byte[]{113, 90, 88, 82, 8, 81, 119, 69, 94, 116, 18, 85, 95, 89, 86, 87, 13, 88, 95, 65, 78}, "6575d4", 28705), NPStringFog.decode(new byte[]{100, 91, 92, 69, 81, 76, 66, 65, 92, 11, 70, 25, 69, 64, 92, 23, 18, 73, 66, 92, 95, 12, 94, 92, 16, 90, 74, 69, 64, 92, 67, 71, 75, 12, 81, 77, 85, 87, 25, 4, 92, 93, 16, 80, 86, 16, 94, 93, 16, 93, 86, 17, 18, 76, 67, 86, 25, 4, 71, 77, 88, 86, 87, 17, 91, 90, 81, 71, 92, 1, 18, 95, 85, 82, 77, 16, 64, 92, 67, 29}, "039e29", -31325));
                break;
        }
        return null;
    }

    private static String zah(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String strZai = zai(context, str);
        if (strZai == null) {
            strZai = resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strZai, str2);
    }

    private static String zai(Context context, String str) {
        SimpleArrayMap simpleArrayMap = zaa;
        synchronized (simpleArrayMap) {
            Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
            if (!locale.equals(zab)) {
                simpleArrayMap.clear();
                zab = locale;
            }
            String str2 = (String) simpleArrayMap.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, NPStringFog.decode(new byte[]{75, 67, 70, 8, 13, 86}, "874ac1", 556830109L), NPStringFog.decode(new byte[]{80, 13, 94, 25, 95, 89, 92, 5, 95, 82, 22, 87, 93, 6, 65, 88, 81, 82, 29, 5, 94, 68}, "3b3786", true));
            if (identifier == 0) {
                Log.w(NPStringFog.decode(new byte[]{116, 9, 89, 3, 85, 4, 114, 22, 95, 37, 79, 0, 90, 10, 87, 6, 80, 13, 90, 18, 79}, "3f6d9a", 2.0485747E9f), NPStringFog.decode(new byte[]{126, 92, 75, 70, 10, 8, 84, 21, 74, 80, 16, 9, 70, 71, 91, 80, 89, 70}, "3585cf", -1.4378513E9f) + str);
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                simpleArrayMap.put(str, string);
                return string;
            }
            Log.w(NPStringFog.decode(new byte[]{33, 86, 11, 4, 9, 86, 39, 73, 13, 34, 19, 82, 15, 85, 5, 1, 12, 95, 15, 77, 29}, "f9dce3", -6.07639958E8d), NPStringFog.decode(new byte[]{34, 90, 18, 66, 93, 90, 21, 65, 31, 66, 74, 82, 22, 90, 19, 16, 91, 82, 95, 21}, "e5fb87", -1091353213L) + str);
            return null;
        }
    }
}
