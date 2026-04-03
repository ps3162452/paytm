package androidx.core.content;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.ObjectsCompat;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class ContextCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{113, 95, 93, 71, 81, 65, 70, 115, 92, 94, 68, 88, 70}, "203349", 19865);
    private static final Object sLock = new Object();
    private static final Object sSync = new Object();
    private static TypedValue sTempValue;

    static class Api16Impl {
        private Api16Impl() {
        }

        static void startActivities(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        static void startActivity(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    static class Api19Impl {
        private Api19Impl() {
        }

        static File[] getExternalCacheDirs(Context context) {
            return context.getExternalCacheDirs();
        }

        static File[] getExternalFilesDirs(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        static File[] getObbDirs(Context context) {
            return context.getObbDirs();
        }
    }

    static class Api21Impl {
        private Api21Impl() {
        }

        static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }

        static Drawable getDrawable(Context context, int i) {
            return context.getDrawable(i);
        }

        static File getNoBackupFilesDir(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static int getColor(Context context, int i) {
            return context.getColor(i);
        }

        static <T> T getSystemService(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        static String getSystemServiceName(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    static class Api24Impl {
        private Api24Impl() {
        }

        static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        static File getDataDir(Context context) {
            return context.getDataDir();
        }

        static boolean isDeviceProtectedStorage(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    static class Api26Impl {
        private Api26Impl() {
        }

        static ComponentName startForegroundService(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    static class Api28Impl {
        private Api28Impl() {
        }

        static Executor getMainExecutor(Context context) {
            return context.getMainExecutor();
        }
    }

    static class Api30Impl {
        private Api30Impl() {
        }

        static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }
    }

    private static final class LegacyServiceMapHolder {
        static final HashMap<Class<?>, String> SERVICES;

        static {
            HashMap<Class<?>, String> map = new HashMap<>();
            SERVICES = map;
            if (Build.VERSION.SDK_INT >= 22) {
                map.put(SubscriptionManager.class, NPStringFog.decode(new byte[]{65, 86, 8, 1, 64, 91, 90, 93, 29, 59, 67, 70, 87, 64, 7, 22, 89, 67, 65, 90, 11, 10, 111, 64, 80, 65, 18, 13, 83, 86}, "53dd03", 1.351207212E9d));
                map.put(UsageStatsManager.class, NPStringFog.decode(new byte[]{65, 18, 0, 4, 0, 69, 64, 0, 21, 16}, "4aace6", false, false));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                map.put(AppWidgetManager.class, NPStringFog.decode(new byte[]{83, 68, 67, 71, 94, 5, 85, 81, 71}, "24307a", 1.9215145E9f));
                map.put(BatteryManager.class, NPStringFog.decode(new byte[]{6, 5, 67, 76, 92, 66, 29, 9, 86, 86, 88, 87, 1, 22}, "dd7890", -2517));
                map.put(CameraManager.class, NPStringFog.decode(new byte[]{81, 81, 15, 1, 65, 81}, "20bd30", -8.1697786E8f));
                map.put(JobScheduler.class, NPStringFog.decode(new byte[]{92, 10, 84, 70, 90, 91, 83, 1, 67, 89, 92, 65}, "6e6593", true, true));
                map.put(LauncherApps.class, NPStringFog.decode(new byte[]{9, 84, 22, 12, 87, 12, 0, 71, 2, 18, 68, 23}, "e5cb4d", -2.059603122E9d));
                map.put(MediaProjectionManager.class, NPStringFog.decode(new byte[]{93, 93, 6, 94, 3, 62, 64, 74, 13, 93, 7, 2, 68, 81, 13, 89}, "08b7ba", -2102075310L));
                map.put(MediaSessionManager.class, NPStringFog.decode(new byte[]{92, 81, 92, 13, 89, 108, 66, 81, 75, 23, 81, 92, 95}, "148d83", 1.552921239E9d));
                map.put(RestrictionsManager.class, NPStringFog.decode(new byte[]{75, 6, 18, 70, 17, 80, 90, 23, 8, 93, 13, 74}, "9ca2c9", 3858));
                map.put(TelecomManager.class, NPStringFog.decode(new byte[]{18, 81, 89, 0, 5, 9, 11}, "f45eff", false));
                map.put(TvInputManager.class, NPStringFog.decode(new byte[]{22, 19, 108, 93, 10, 69, 23, 17}, "be34d5", false, true));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                map.put(AppOpsManager.class, NPStringFog.decode(new byte[]{89, 72, 17, 92, 18, 22}, "88a3be", -1.6629363E9f));
                map.put(CaptioningManager.class, NPStringFog.decode(new byte[]{91, 3, 64, 22, 89, 87, 86, 11, 94, 5}, "8b0b08", 1226777357L));
                map.put(ConsumerIrManager.class, NPStringFog.decode(new byte[]{6, 94, 90, 22, 23, 84, 0, 67, 107, 12, 16}, "e14eb9", 9.34724655E8d));
                map.put(PrintManager.class, NPStringFog.decode(new byte[]{66, 75, 15, 13, 68}, "29fc06", -14360));
            }
            if (Build.VERSION.SDK_INT >= 18) {
                map.put(BluetoothManager.class, NPStringFog.decode(new byte[]{81, 13, 70, 6, 16, 12, 92, 21, 91}, "3a3cdc", true, true));
            }
            if (Build.VERSION.SDK_INT >= 17) {
                map.put(DisplayManager.class, NPStringFog.decode(new byte[]{92, 10, 74, 18, 94, 0, 65}, "8c9b2a", -458811159L));
                map.put(UserManager.class, NPStringFog.decode(new byte[]{16, 66, 82, 68}, "e17689", true));
            }
            if (Build.VERSION.SDK_INT >= 16) {
                map.put(InputManager.class, NPStringFog.decode(new byte[]{10, 90, 70, 16, 16}, "c46ede", true));
                map.put(MediaRouter.class, NPStringFog.decode(new byte[]{89, 82, 7, 80, 83, 107, 70, 88, 22, 77, 87, 70}, "47c924", -21996));
                map.put(NsdManager.class, NPStringFog.decode(new byte[]{21, 82, 74, 65, 80, 82, 3, 83, 81, 68, 90, 94, 16, 82, 74, 78}, "f78791", true));
            }
            map.put(AccessibilityManager.class, NPStringFog.decode(new byte[]{87, 87, 0, 84, 22, 17, 95, 86, 10, 93, 12, 22, 79}, "64c1eb", -2113840099L));
            map.put(AccountManager.class, NPStringFog.decode(new byte[]{86, 82, 84, 90, 67, 95, 67}, "717561", 3098));
            map.put(ActivityManager.class, NPStringFog.decode(new byte[]{2, 0, 64, 10, 21, 13, 23, 26}, "cc4ccd", 1627281144L));
            map.put(AlarmManager.class, NPStringFog.decode(new byte[]{87, 10, 7, 70, 89}, "6ff448", -1.466287949E9d));
            map.put(AudioManager.class, NPStringFog.decode(new byte[]{80, 70, 0, 94, 92}, "13d73b", -1.971176062E9d));
            map.put(ClipboardManager.class, NPStringFog.decode(new byte[]{85, 85, 80, 70, 7, 14, 87, 75, 93}, "6996ea", true));
            map.put(ConnectivityManager.class, NPStringFog.decode(new byte[]{86, 14, 15, 10, 4, 84, 65, 8, 23, 13, 21, 78}, "5aada7", -1653742624L));
            map.put(DevicePolicyManager.class, NPStringFog.decode(new byte[]{85, 93, 65, 80, 1, 81, 110, 72, 88, 85, 11, 87, 72}, "1879b4", 1.558930709E9d));
            map.put(DownloadManager.class, NPStringFog.decode(new byte[]{85, 88, 79, 86, 15, 9, 80, 83}, "1788cf", -30096));
            map.put(DropBoxManager.class, NPStringFog.decode(new byte[]{2, 22, 92, 69, 80, 88, 30}, "fd3527", -1.3354241E9f));
            map.put(InputMethodManager.class, NPStringFog.decode(new byte[]{81, 11, 65, 20, 65, 105, 85, 0, 69, 9, 90, 82}, "8e1a56", 987707880L));
            map.put(KeyguardManager.class, NPStringFog.decode(new byte[]{10, 86, 75, 84, 23, 89, 19, 87}, "a323b8", 1.467119927E9d));
            map.put(LayoutInflater.class, NPStringFog.decode(new byte[]{91, 83, 31, 12, 70, 64, 104, 91, 8, 5, 95, 85, 67, 87, 20}, "72fc34", 1.25450601E9d));
            map.put(LocationManager.class, NPStringFog.decode(new byte[]{8, 92, 81, 85, 68, 93, 11, 93}, "d32404", 1612076662L));
            map.put(NfcManager.class, NPStringFog.decode(new byte[]{13, 5, 7}, "ccdae3", 12979));
            map.put(NotificationManager.class, NPStringFog.decode(new byte[]{91, 90, 23, 8, 3, 81, 86, 84, 23, 8, 10, 86}, "55cae8", 3.73916807E8d));
            map.put(PowerManager.class, NPStringFog.decode(new byte[]{65, 12, 64, 93, 75}, "1c7896", -9064));
            map.put(SearchManager.class, NPStringFog.decode(new byte[]{22, 3, 89, 19, 91, 12}, "ef8a8d", 1.3090492E9f));
            map.put(SensorManager.class, NPStringFog.decode(new byte[]{18, 81, 94, 64, 92, 17}, "a4033c", true, false));
            map.put(StorageManager.class, NPStringFog.decode(new byte[]{64, 66, 91, 19, 80, 85, 86}, "364a12", -7477));
            map.put(TelephonyManager.class, NPStringFog.decode(new byte[]{17, 10, 13, 11, 85}, "abbe0d", -1.420296936E9d));
            map.put(TextServicesManager.class, NPStringFog.decode(new byte[]{76, 7, 75, 66, 17, 3, 74, 20, 90, 85, 7, 21}, "8b36bf", 7.7312349E7d));
            map.put(UiModeManager.class, NPStringFog.decode(new byte[]{68, 80, 84, 89, 85, 84}, "199611", 1593853417L));
            map.put(UsbManager.class, NPStringFog.decode(new byte[]{64, 22, 1}, "5ecaf4", -1.873109531E9d));
            map.put(Vibrator.class, NPStringFog.decode(new byte[]{21, 12, 83, 20, 4, 68, 12, 23}, "ce1fe0", false));
            map.put(WallpaperManager.class, NPStringFog.decode(new byte[]{20, 89, 95, 14, 64, 7, 19, 93, 65}, "c83b0f", 1.302325651E9d));
            map.put(WifiP2pManager.class, NPStringFog.decode(new byte[]{64, 94, 3, 95, 70, 4, 71}, "77e666", 2.0669523E8f));
            map.put(WifiManager.class, NPStringFog.decode(new byte[]{67, 10, 86, 90}, "4c03b8", 1.93897336E9d));
            map.put(WindowManager.class, NPStringFog.decode(new byte[]{19, 15, 91, 7, 92, 20}, "df5c3c", true, true));
        }

        private LegacyServiceMapHolder() {
        }
    }

    protected ContextCompat() {
    }

    public static int checkSelfPermission(Context context, String str) {
        ObjectsCompat.requireNonNull(str, NPStringFog.decode(new byte[]{72, 6, 75, 89, 80, 68, 75, 10, 86, 90, 25, 90, 77, 16, 77, 20, 91, 82, 24, 13, 86, 90, 20, 89, 77, 15, 85}, "8c9497", -29680));
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static Context createDeviceProtectedStorageContext(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.createDeviceProtectedStorageContext(context);
        }
        return null;
    }

    private static File createFilesDir(File file) {
        synchronized (sSync) {
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    Log.w(TAG, NPStringFog.decode(new byte[]{97, 87, 4, 3, 93, 82, 20, 77, 10, 65, 82, 69, 81, 88, 17, 4, 17, 81, 93, 85, 0, 18, 17, 68, 65, 91, 1, 8, 67, 23}, "49ea17", true) + file.getPath());
                }
            }
        }
        return file;
    }

    public static String getAttributionTag(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getAttributionTag(context);
        }
        return null;
    }

    public static File getCodeCacheDir(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.getCodeCacheDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, NPStringFog.decode(new byte[]{84, 9, 2, 93, 57, 87, 86, 5, 14, 93}, "7ff8f4", false, true)));
    }

    public static int getColor(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getColor(context, i) : context.getResources().getColor(i);
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        return ResourcesCompat.getColorStateList(context.getResources(), i, context.getTheme());
    }

    public static File getDataDir(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.getDataDir(context);
        }
        String str = context.getApplicationInfo().dataDir;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static Drawable getDrawable(Context context, int i) {
        int i2;
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.getDrawable(context, i);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (sLock) {
            if (sTempValue == null) {
                sTempValue = new TypedValue();
            }
            context.getResources().getValue(i, sTempValue, true);
            i2 = sTempValue.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    public static File[] getExternalCacheDirs(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getExternalCacheDirs(context) : new File[]{context.getExternalCacheDir()};
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getExternalFilesDirs(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    public static Executor getMainExecutor(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? Api28Impl.getMainExecutor(context) : ExecutorCompat.create(new Handler(context.getMainLooper()));
    }

    public static File getNoBackupFilesDir(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.getNoBackupFilesDir(context) : createFilesDir(new File(context.getApplicationInfo().dataDir, NPStringFog.decode(new byte[]{10, 87, 109, 4, 80, 84, 15, 77, 66}, "d82f17", -5.82307924E8d)));
    }

    public static File[] getObbDirs(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.getObbDirs(context) : new File[]{context.getObbDir()};
    }

    public static <T> T getSystemService(Context context, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return (T) Api23Impl.getSystemService(context, cls);
        }
        String systemServiceName = getSystemServiceName(context, cls);
        if (systemServiceName != null) {
            return (T) context.getSystemService(systemServiceName);
        }
        return null;
    }

    public static String getSystemServiceName(Context context, Class<?> cls) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getSystemServiceName(context, cls) : LegacyServiceMapHolder.SERVICES.get(cls);
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.isDeviceProtectedStorage(context);
        }
        return false;
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.startActivities(context, intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    public static void startActivity(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.startActivity(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }
}
