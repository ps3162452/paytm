package androidx.core.location;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = NPStringFog.decode(new byte[]{1, 93, 7, 66, 91, 91, 4, 121, 5, 83, 71, 71, 2, 91, 31}, "c8f025", true);
    public static final String EXTRA_IS_MOCK = NPStringFog.decode(new byte[]{88, 9, 6, 92, 123, 91, 86, 7, 17, 94, 88, 90}, "5fe774", -1.9466962E9f);
    public static final String EXTRA_SPEED_ACCURACY = NPStringFog.decode(new byte[]{21, 20, 86, 82, 2, 34, 5, 7, 70, 69, 7, 0, 31}, "fd37fc", -1.685574236E9d);
    public static final String EXTRA_VERTICAL_ACCURACY = NPStringFog.decode(new byte[]{79, 80, 65, 77, 12, 86, 88, 89, 114, 90, 6, 64, 75, 84, 80, 64}, "9539e5", 1152182111L);
    private static Method sSetIsFromMockProviderMethod;

    private static class Api17Impl {
        private Api17Impl() {
        }

        static long getElapsedRealtimeNanos(Location location) {
            return location.getElapsedRealtimeNanos();
        }
    }

    private static class Api18Impl {
        private Api18Impl() {
        }

        static boolean isMock(Location location) {
            return location.isFromMockProvider();
        }
    }

    private static class Api26Impl {
        private Api26Impl() {
        }

        static float getBearingAccuracyDegrees(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        static float getSpeedAccuracyMetersPerSecond(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        static float getVerticalAccuracyMeters(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        static boolean hasBearingAccuracy(Location location) {
            return location.hasBearingAccuracy();
        }

        static boolean hasSpeedAccuracy(Location location) {
            return location.hasSpeedAccuracy();
        }

        static boolean hasVerticalAccuracy(Location location) {
            return location.hasVerticalAccuracy();
        }

        static void setBearingAccuracyDegrees(Location location, float f) {
            location.setBearingAccuracyDegrees(f);
        }

        static void setSpeedAccuracyMetersPerSecond(Location location, float f) {
            location.setSpeedAccuracyMetersPerSecond(f);
        }

        static void setVerticalAccuracyMeters(Location location, float f) {
            location.setVerticalAccuracyMeters(f);
        }
    }

    private LocationCompat() {
    }

    public static float getBearingAccuracyDegrees(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getBearingAccuracyDegrees(location);
        }
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras.getFloat(EXTRA_BEARING_ACCURACY, 0.0f);
        }
        return 0.0f;
    }

    public static long getElapsedRealtimeMillis(Location location) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TimeUnit.NANOSECONDS.toMillis(Api17Impl.getElapsedRealtimeNanos(location));
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - location.getTime();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jCurrentTimeMillis < 0) {
            return jElapsedRealtime;
        }
        if (jCurrentTimeMillis > jElapsedRealtime) {
            return 0L;
        }
        return jElapsedRealtime - jCurrentTimeMillis;
    }

    public static long getElapsedRealtimeNanos(Location location) {
        return Build.VERSION.SDK_INT >= 17 ? Api17Impl.getElapsedRealtimeNanos(location) : TimeUnit.MILLISECONDS.toNanos(getElapsedRealtimeMillis(location));
    }

    private static Method getSetIsFromMockProviderMethod() throws NoSuchMethodException {
        if (sSetIsFromMockProviderMethod == null) {
            Method declaredMethod = Location.class.getDeclaredMethod(NPStringFog.decode(new byte[]{17, 6, 22, 45, 71, 118, 16, 12, 15, 41, 91, 83, 9, 51, 16, 11, 66, 89, 6, 6, 16}, "bcbd40", -4731), Boolean.TYPE);
            sSetIsFromMockProviderMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return sSetIsFromMockProviderMethod;
    }

    public static float getSpeedAccuracyMetersPerSecond(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getSpeedAccuracyMetersPerSecond(location);
        }
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras.getFloat(EXTRA_SPEED_ACCURACY, 0.0f);
        }
        return 0.0f;
    }

    public static float getVerticalAccuracyMeters(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getVerticalAccuracyMeters(location);
        }
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras.getFloat(EXTRA_VERTICAL_ACCURACY, 0.0f);
        }
        return 0.0f;
    }

    public static boolean hasBearingAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasBearingAccuracy(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_BEARING_ACCURACY);
    }

    public static boolean hasSpeedAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasSpeedAccuracy(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_SPEED_ACCURACY);
    }

    public static boolean hasVerticalAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasVerticalAccuracy(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_VERTICAL_ACCURACY);
    }

    public static boolean isMock(Location location) {
        if (Build.VERSION.SDK_INT >= 18) {
            return Api18Impl.isMock(location);
        }
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras.getBoolean(EXTRA_IS_MOCK, false);
        }
        return false;
    }

    public static void setBearingAccuracyDegrees(Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setBearingAccuracyDegrees(location, f);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_BEARING_ACCURACY, f);
    }

    public static void setMock(Location location, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                getSetIsFromMockProviderMethod().invoke(location, Boolean.valueOf(z));
                return;
            } catch (IllegalAccessException e) {
                IllegalAccessError illegalAccessError = new IllegalAccessError();
                illegalAccessError.initCause(e);
                throw illegalAccessError;
            } catch (NoSuchMethodException e2) {
                NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
                noSuchMethodError.initCause(e2);
                throw noSuchMethodError;
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            if (z) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(EXTRA_IS_MOCK, true);
                location.setExtras(bundle);
                return;
            }
            return;
        }
        if (z) {
            extras.putBoolean(EXTRA_IS_MOCK, true);
            return;
        }
        extras.remove(EXTRA_IS_MOCK);
        if (extras.isEmpty()) {
            location.setExtras(null);
        }
    }

    public static void setSpeedAccuracyMetersPerSecond(Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setSpeedAccuracyMetersPerSecond(location, f);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_SPEED_ACCURACY, f);
    }

    public static void setVerticalAccuracyMeters(Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setVerticalAccuracyMeters(location, f);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_VERTICAL_ACCURACY, f);
    }
}
