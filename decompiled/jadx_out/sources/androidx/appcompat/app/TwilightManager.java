package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = NPStringFog.decode(new byte[]{49, 17, 81, 89, 92, 87, 13, 18, 117, 84, 91, 81, 2, 3, 74}, "ef8550", -17891);
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    private static class TwilightState {
        boolean isNight;
        long nextUpdate;
        long todaySunrise;
        long todaySunset;
        long tomorrowSunrise;
        long yesterdaySunset;

        TwilightState() {
        }
    }

    TwilightManager(Context context, LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    static TwilightManager getInstance(Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService(NPStringFog.decode(new byte[]{94, 9, 82, 87, 17, 88, 93, 8}, "2f16e1", 1157969900L)));
        }
        return sInstance;
    }

    private Location getLastKnownLocation() {
        Location lastKnownLocationForProvider = PermissionChecker.checkSelfPermission(this.mContext, NPStringFog.decode(new byte[]{5, 13, 93, 75, 86, 88, 0, 77, 73, 92, 75, 92, 13, 16, 74, 80, 86, 95, 74, 34, 122, 122, 124, 98, 55, 60, 122, 118, 120, 99, 55, 38, 102, 117, 118, 114, 37, 55, 112, 118, 119}, "dc9991", false, true)) == 0 ? getLastKnownLocationForProvider(NPStringFog.decode(new byte[]{92, 93, 21, 20, 13, 19, 89}, "28acba", 86560614L)) : null;
        Location lastKnownLocationForProvider2 = PermissionChecker.checkSelfPermission(this.mContext, NPStringFog.decode(new byte[]{5, 94, 7, 64, 13, 10, 0, 30, 19, 87, 16, 14, 13, 67, 16, 91, 13, 13, 74, 113, 32, 113, 39, 48, 55, 111, 37, 123, 44, 38, 59, 124, 44, 113, 35, 55, 45, 127, 45}, "d0c2bc", 13436)) == 0 ? getLastKnownLocationForProvider(NPStringFog.decode(new byte[]{84, 68, 69}, "346c99", true, false)) : null;
        if (lastKnownLocationForProvider2 != null && lastKnownLocationForProvider != null) {
            return lastKnownLocationForProvider2.getTime() > lastKnownLocationForProvider.getTime() ? lastKnownLocationForProvider2 : lastKnownLocationForProvider;
        }
        if (lastKnownLocationForProvider2 == null) {
            lastKnownLocationForProvider2 = lastKnownLocationForProvider;
        }
        return lastKnownLocationForProvider2;
    }

    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
        } catch (Exception e) {
            Log.d(TAG, NPStringFog.decode(new byte[]{115, 85, 15, 8, 7, 84, 21, 64, 9, 68, 5, 85, 65, 20, 10, 5, 17, 68, 21, 95, 8, 11, 21, 94, 21, 88, 9, 7, 3, 68, 92, 91, 8}, "54fdb0", 2003292163L), e);
        }
        return null;
    }

    private boolean isStateValid() {
        return this.mTwilightState.nextUpdate > System.currentTimeMillis();
    }

    static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    private void updateState(Location location) {
        long j;
        TwilightState twilightState = this.mTwilightState;
        long jCurrentTimeMillis = System.currentTimeMillis();
        TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
        twilightCalculator.calculateTwilight(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = twilightCalculator.state == 1;
        long j3 = twilightCalculator.sunrise;
        long j4 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = twilightCalculator.sunrise;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            j = (jCurrentTimeMillis > j4 ? 0 + j5 : jCurrentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        twilightState.isNight = z;
        twilightState.yesterdaySunset = j2;
        twilightState.todaySunrise = j3;
        twilightState.todaySunset = j4;
        twilightState.tomorrowSunrise = j5;
        twilightState.nextUpdate = j;
    }

    boolean isNight() {
        TwilightState twilightState = this.mTwilightState;
        if (isStateValid()) {
            return twilightState.isNight;
        }
        Location lastKnownLocation = getLastKnownLocation();
        if (lastKnownLocation != null) {
            updateState(lastKnownLocation);
            return twilightState.isNight;
        }
        Log.i(TAG, NPStringFog.decode(new byte[]{33, 11, 69, 14, 1, 24, 12, 11, 68, 66, 2, 93, 22, 68, 92, 3, 22, 76, 66, 15, 94, 13, 18, 86, 66, 8, 95, 1, 4, 76, 11, 11, 94, 76, 69, 108, 10, 13, 67, 66, 12, 75, 66, 20, 66, 13, 7, 89, 0, 8, 73, 66, 7, 93, 1, 5, 69, 17, 0, 24, 22, 12, 85, 66, 4, 72, 18, 68, 84, 13, 0, 75, 66, 10, 95, 22, 69, 80, 3, 18, 85, 66, 4, 86, 27, 68, 92, 13, 6, 89, 22, 13, 95, 12, 69, 72, 7, 22, 93, 11, 22, 75, 11, 11, 94, 17, 75, 24, 36, 5, 92, 14, 12, 86, 5, 68, 82, 3, 6, 83, 66, 16, 95, 66, 13, 89, 16, 0, 83, 13, 1, 93, 6, 68, 67, 23, 11, 74, 11, 23, 85, 77, 22, 77, 12, 23, 85, 22, 69, 78, 3, 8, 69, 7, 22, 22}, "bd0be8", true, false));
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
