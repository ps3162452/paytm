package androidx.core.location;

import android.location.LocationRequest;
import android.os.Build;
import androidx.core.util.Preconditions;
import androidx.core.util.TimeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LocationRequestCompat {
    private static final long IMPLICIT_MIN_UPDATE_INTERVAL = -1;
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;
    private static Method sCreateFromDeprecatedProviderMethod;
    private static Method sSetExpireInMethod;
    private static Method sSetFastestIntervalMethod;
    private static Method sSetNumUpdatesMethod;
    private static Method sSetQualityMethod;
    final long mDurationMillis;
    final long mIntervalMillis;
    final long mMaxUpdateDelayMillis;
    final int mMaxUpdates;
    final float mMinUpdateDistanceMeters;
    final long mMinUpdateIntervalMillis;
    final int mQuality;

    public static final class Builder {
        private long mDurationMillis;
        private long mIntervalMillis;
        private long mMaxUpdateDelayMillis;
        private int mMaxUpdates;
        private float mMinUpdateDistanceMeters;
        private long mMinUpdateIntervalMillis;
        private int mQuality;

        public Builder(long j) {
            setIntervalMillis(j);
            this.mQuality = 102;
            this.mDurationMillis = LocationRequestCompat.PASSIVE_INTERVAL;
            this.mMaxUpdates = Integer.MAX_VALUE;
            this.mMinUpdateIntervalMillis = -1L;
            this.mMinUpdateDistanceMeters = 0.0f;
            this.mMaxUpdateDelayMillis = 0L;
        }

        public Builder(LocationRequestCompat locationRequestCompat) {
            this.mIntervalMillis = locationRequestCompat.mIntervalMillis;
            this.mQuality = locationRequestCompat.mQuality;
            this.mDurationMillis = locationRequestCompat.mDurationMillis;
            this.mMaxUpdates = locationRequestCompat.mMaxUpdates;
            this.mMinUpdateIntervalMillis = locationRequestCompat.mMinUpdateIntervalMillis;
            this.mMinUpdateDistanceMeters = locationRequestCompat.mMinUpdateDistanceMeters;
            this.mMaxUpdateDelayMillis = locationRequestCompat.mMaxUpdateDelayMillis;
        }

        public LocationRequestCompat build() {
            Preconditions.checkState((this.mIntervalMillis == LocationRequestCompat.PASSIVE_INTERVAL && this.mMinUpdateIntervalMillis == -1) ? false : true, NPStringFog.decode(new byte[]{67, 89, 18, 18, 90, 21, 86, 24, 13, 14, 80, 2, 71, 81, 14, 15, 19, 17, 86, 73, 20, 4, 64, 23, 64, 24, 12, 20, 64, 23, 19, 80, 0, 23, 86, 67, 82, 86, 65, 4, 75, 19, 95, 81, 2, 8, 71, 67, 94, 81, 15, 8, 94, 22, 94, 24, 20, 17, 87, 2, 71, 93, 65, 8, 93, 23, 86, 74, 23, 0, 95}, "38aa3c", -11963));
            long j = this.mIntervalMillis;
            return new LocationRequestCompat(j, this.mQuality, this.mDurationMillis, this.mMaxUpdates, Math.min(this.mMinUpdateIntervalMillis, j), this.mMinUpdateDistanceMeters, this.mMaxUpdateDelayMillis);
        }

        public Builder clearMinUpdateIntervalMillis() {
            this.mMinUpdateIntervalMillis = -1L;
            return this;
        }

        public Builder setDurationMillis(long j) {
            this.mDurationMillis = Preconditions.checkArgumentInRange(j, 1L, LocationRequestCompat.PASSIVE_INTERVAL, NPStringFog.decode(new byte[]{6, 22, 19, 3, 69, 8, 13, 13, 44, 11, 93, 13, 11, 16}, "bcab1a", false));
            return this;
        }

        public Builder setIntervalMillis(long j) {
            this.mIntervalMillis = Preconditions.checkArgumentInRange(j, 0L, LocationRequestCompat.PASSIVE_INTERVAL, NPStringFog.decode(new byte[]{91, 11, 71, 7, 71, 23, 83, 9, 126, 11, 89, 13, 91, 22}, "2e3b5a", -386708863L));
            return this;
        }

        public Builder setMaxUpdateDelayMillis(long j) {
            this.mMaxUpdateDelayMillis = j;
            this.mMaxUpdateDelayMillis = Preconditions.checkArgumentInRange(j, 0L, LocationRequestCompat.PASSIVE_INTERVAL, NPStringFog.decode(new byte[]{15, 4, 79, 100, 68, 86, 3, 17, 82, 117, 81, 94, 3, 28, 122, 88, 88, 94, 11, 22}, "be7142", true, true));
            return this;
        }

        public Builder setMaxUpdates(int i) {
            this.mMaxUpdates = Preconditions.checkArgumentInRange(i, 1, Integer.MAX_VALUE, NPStringFog.decode(new byte[]{85, 84, 78, 96, 67, 82, 89, 65, 83, 70}, "856536", true));
            return this;
        }

        public Builder setMinUpdateDistanceMeters(float f) {
            this.mMinUpdateDistanceMeters = f;
            this.mMinUpdateDistanceMeters = Preconditions.checkArgumentInRange(f, 0.0f, Float.MAX_VALUE, NPStringFog.decode(new byte[]{95, 91, 91, 97, 18, 1, 83, 70, 80, 112, 11, 22, 70, 83, 91, 87, 7, 40, 87, 70, 80, 70, 17}, "2254be", -6.3641466E8f));
            return this;
        }

        public Builder setMinUpdateIntervalMillis(long j) {
            this.mMinUpdateIntervalMillis = Preconditions.checkArgumentInRange(j, 0L, LocationRequestCompat.PASSIVE_INTERVAL, NPStringFog.decode(new byte[]{15, 80, 11, 108, 65, 7, 3, 77, 0, 112, 95, 23, 7, 75, 19, 88, 93, 46, 11, 85, 9, 80, 66}, "b9e91c", -1035202970L));
            return this;
        }

        public Builder setQuality(int i) {
            Preconditions.checkArgument(i == 104 || i == 102 || i == 100, NPStringFog.decode(new byte[]{65, 19, 0, 13, 95, 23, 73, 70, 12, 20, 69, 23, 16, 4, 4, 65, 87, 67, 84, 3, 7, 8, 88, 6, 84, 70, 48, 52, 119, 47, 121, 50, 56, 65, 85, 12, 94, 21, 21, 0, 88, 23, 28, 70, 15, 14, 66, 67, 21, 2}, "0faa6c", -2.1466744E9f), Integer.valueOf(i));
            this.mQuality = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Quality {
    }

    LocationRequestCompat(long j, int i, long j2, int i2, long j3, float f, long j4) {
        this.mIntervalMillis = j;
        this.mQuality = i;
        this.mMinUpdateIntervalMillis = j3;
        this.mDurationMillis = j2;
        this.mMaxUpdates = i2;
        this.mMinUpdateDistanceMeters = f;
        this.mMaxUpdateDelayMillis = j4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequestCompat)) {
            return false;
        }
        LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
        return this.mQuality == locationRequestCompat.mQuality && this.mIntervalMillis == locationRequestCompat.mIntervalMillis && this.mMinUpdateIntervalMillis == locationRequestCompat.mMinUpdateIntervalMillis && this.mDurationMillis == locationRequestCompat.mDurationMillis && this.mMaxUpdates == locationRequestCompat.mMaxUpdates && Float.compare(locationRequestCompat.mMinUpdateDistanceMeters, this.mMinUpdateDistanceMeters) == 0 && this.mMaxUpdateDelayMillis == locationRequestCompat.mMaxUpdateDelayMillis;
    }

    public long getDurationMillis() {
        return this.mDurationMillis;
    }

    public long getIntervalMillis() {
        return this.mIntervalMillis;
    }

    public long getMaxUpdateDelayMillis() {
        return this.mMaxUpdateDelayMillis;
    }

    public int getMaxUpdates() {
        return this.mMaxUpdates;
    }

    public float getMinUpdateDistanceMeters() {
        return this.mMinUpdateDistanceMeters;
    }

    public long getMinUpdateIntervalMillis() {
        long j = this.mMinUpdateIntervalMillis;
        return j == -1 ? this.mIntervalMillis : j;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public int hashCode() {
        int i = this.mQuality;
        long j = this.mIntervalMillis;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.mMinUpdateIntervalMillis;
        return (((i * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public LocationRequest toLocationRequest() {
        return new LocationRequest.Builder(this.mIntervalMillis).setQuality(this.mQuality).setMinUpdateIntervalMillis(this.mMinUpdateIntervalMillis).setDurationMillis(this.mDurationMillis).setMaxUpdates(this.mMaxUpdates).setMinUpdateDistanceMeters(this.mMinUpdateDistanceMeters).setMaxUpdateDelayMillis(this.mMaxUpdateDelayMillis).build();
    }

    public LocationRequest toLocationRequest(String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return toLocationRequest();
        }
        try {
            if (sCreateFromDeprecatedProviderMethod == null) {
                Method declaredMethod = LocationRequest.class.getDeclaredMethod(NPStringFog.decode(new byte[]{5, 23, 84, 85, 16, 6, 32, 23, 94, 89, 32, 6, 22, 23, 84, 87, 5, 23, 3, 1, 97, 70, 11, 21, 15, 1, 84, 70}, "fe14dc", -411071557L), String.class, Long.TYPE, Float.TYPE, Boolean.TYPE);
                sCreateFromDeprecatedProviderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            LocationRequest locationRequest = (LocationRequest) sCreateFromDeprecatedProviderMethod.invoke(null, str, Long.valueOf(this.mIntervalMillis), Float.valueOf(this.mMinUpdateDistanceMeters), false);
            if (locationRequest == null) {
                return null;
            }
            if (sSetQualityMethod == null) {
                Method declaredMethod2 = LocationRequest.class.getDeclaredMethod(NPStringFog.decode(new byte[]{18, 4, 66, 105, 67, 4, 13, 8, 66, 65}, "aa686e", -1.647207293E9d), Integer.TYPE);
                sSetQualityMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            sSetQualityMethod.invoke(locationRequest, Integer.valueOf(this.mQuality));
            if (getMinUpdateIntervalMillis() != this.mIntervalMillis) {
                if (sSetFastestIntervalMethod == null) {
                    Method declaredMethod3 = LocationRequest.class.getDeclaredMethod(NPStringFog.decode(new byte[]{18, 82, 70, 117, 4, 75, 21, 82, 65, 71, 44, 86, 21, 82, 64, 69, 4, 84}, "a723e8", 16632), Long.TYPE);
                    sSetFastestIntervalMethod = declaredMethod3;
                    declaredMethod3.setAccessible(true);
                }
                sSetFastestIntervalMethod.invoke(locationRequest, Long.valueOf(this.mMinUpdateIntervalMillis));
            }
            if (this.mMaxUpdates < Integer.MAX_VALUE) {
                if (sSetNumUpdatesMethod == null) {
                    Method declaredMethod4 = LocationRequest.class.getDeclaredMethod(NPStringFog.decode(new byte[]{23, 93, 16, 47, 70, 89, 49, 72, 0, 0, 71, 81, 23}, "d8da34", -4.94351689E8d), Integer.TYPE);
                    sSetNumUpdatesMethod = declaredMethod4;
                    declaredMethod4.setAccessible(true);
                }
                sSetNumUpdatesMethod.invoke(locationRequest, Integer.valueOf(this.mMaxUpdates));
            }
            if (this.mDurationMillis >= PASSIVE_INTERVAL) {
                return locationRequest;
            }
            if (sSetExpireInMethod == null) {
                Method declaredMethod5 = LocationRequest.class.getDeclaredMethod(NPStringFog.decode(new byte[]{21, 93, 65, 119, 26, 67, 15, 74, 80, 123, 12}, "f852b3", 878267949L), Long.TYPE);
                sSetExpireInMethod = declaredMethod5;
                declaredMethod5.setAccessible(true);
            }
            sSetExpireInMethod.invoke(locationRequest, Long.valueOf(this.mDurationMillis));
            return locationRequest;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{107, 85, 67, 23, 80, 68, 77, 107}, "902b57", false));
        if (this.mIntervalMillis != PASSIVE_INTERVAL) {
            sb.append(NPStringFog.decode(new byte[]{116}, "445229", 1.249189755E9d));
            TimeUtils.formatDuration(this.mIntervalMillis, sb);
            switch (this.mQuality) {
                case 100:
                    sb.append(NPStringFog.decode(new byte[]{21, 123, 120, 36, 123, 106, 116, 112, 114, 54, 97, 116, 118, 106}, "531c35", false));
                    break;
                case 102:
                    sb.append(NPStringFog.decode(new byte[]{21, 116, 120, 47, 116, 121, 118, 115, 125}, "569c57", 1.52006299E9d));
                    break;
                case 104:
                    sb.append(NPStringFog.decode(new byte[]{69, 126, 127, 49, 105, 101, 42, 101, 117, 52}, "e20f65", 1.9891557E9f));
                    break;
            }
        } else {
            sb.append(NPStringFog.decode(new byte[]{50, 118, 49, 103, 126, 102, 39}, "b7b470", false, true));
        }
        if (this.mDurationMillis != PASSIVE_INTERVAL) {
            sb.append(NPStringFog.decode(new byte[]{20, 69, 92, 69, 71, 5, 76, 12, 87, 94, 8}, "8e805d", 4.5924646E8f));
            TimeUtils.formatDuration(this.mDurationMillis, sb);
        }
        if (this.mMaxUpdates != Integer.MAX_VALUE) {
            sb.append(NPStringFog.decode(new byte[]{72, 67, 91, 3, 76, 96, 20, 7, 87, 22, 81, 70, 89}, "dc6b45", 1666890349L));
            sb.append(this.mMaxUpdates);
        }
        long j = this.mMinUpdateIntervalMillis;
        if (j != -1 && j < this.mIntervalMillis) {
            sb.append(NPStringFog.decode(new byte[]{73, 68, 8, 81, 91, 100, 21, 0, 4, 76, 80, 120, 11, 16, 0, 74, 67, 80, 9, 89}, "ede851", -5.1667603E8f));
            TimeUtils.formatDuration(this.mMinUpdateIntervalMillis, sb);
        }
        if (this.mMinUpdateDistanceMeters > 0.0d) {
            sb.append(NPStringFog.decode(new byte[]{77, 25, 15, 80, 11, 52, 17, 93, 3, 77, 0, 37, 8, 74, 22, 88, 11, 2, 4, 4}, "a9b9ea", 54305585L));
            sb.append(this.mMinUpdateDistanceMeters);
        }
        if (this.mMaxUpdateDelayMillis / 2 > this.mIntervalMillis) {
            sb.append(NPStringFog.decode(new byte[]{73, 69, 95, 3, 30, 101, 21, 1, 83, 22, 3, 116, 0, 9, 83, 27, 91}, "ee2bf0", 5.08742359E8d));
            TimeUtils.formatDuration(this.mMaxUpdateDelayMillis, sb);
        }
        sb.append(']');
        return sb.toString();
    }
}
