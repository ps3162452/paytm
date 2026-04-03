package androidx.core.location;

import android.content.Context;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.function.Predicate;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LocationManagerCompat {
    private static final long GET_CURRENT_LOCATION_TIMEOUT_MS = 30000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final long PRE_N_LOOPER_TIMEOUT_S = 5;
    private static Field sContextField;
    static final WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> sLocationListeners = new WeakHashMap<>();
    private static Method sRequestLocationUpdatesExecutorMethod;
    private static Method sRequestLocationUpdatesLooperMethod;

    private static class Api28Impl {
        private Api28Impl() {
        }

        static String getGnssHardwareModelName(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        static int getGnssYearOfHardware(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }

        static boolean isLocationEnabled(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    private static class Api30Impl {
        private Api30Impl() {
        }

        static void getCurrentLocation(LocationManager locationManager, String str, CancellationSignal cancellationSignal, Executor executor, final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null;
            consumer.getClass();
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer(consumer) { // from class: androidx.core.location.LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0
                public final Consumer f$0;

                {
                    this.f$0 = consumer;
                }

                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.accept((Location) obj);
                }
            });
        }
    }

    private static class Api31Impl {
        private Api31Impl() {
        }

        static boolean hasProvider(LocationManager locationManager, String str) {
            return locationManager.hasProvider(str);
        }

        static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequest locationRequest, Executor executor, LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CancellableLocationListener implements LocationListener {
        private Consumer<Location> mConsumer;
        private final Executor mExecutor;
        private final LocationManager mLocationManager;
        private final Handler mTimeoutHandler = new Handler(Looper.getMainLooper());
        Runnable mTimeoutRunnable;
        private boolean mTriggered;

        CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.mLocationManager = locationManager;
            this.mExecutor = executor;
            this.mConsumer = consumer;
        }

        private void cleanup() {
            this.mConsumer = null;
            this.mLocationManager.removeUpdates(this);
            Runnable runnable = this.mTimeoutRunnable;
            if (runnable != null) {
                this.mTimeoutHandler.removeCallbacks(runnable);
                this.mTimeoutRunnable = null;
            }
        }

        public void cancel() {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                cleanup();
            }
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                final Consumer<Location> consumer = this.mConsumer;
                this.mExecutor.execute(new Runnable(consumer, location) { // from class: androidx.core.location.LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda0
                    public final Consumer f$0;
                    public final Location f$1;

                    {
                        this.f$0 = consumer;
                        this.f$1 = location;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.accept(this.f$1);
                    }
                });
                cleanup();
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public void startTimeout(long j) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                Runnable runnable = new Runnable(this) { // from class: androidx.core.location.LocationManagerCompat.CancellableLocationListener.1
                    final CancellableLocationListener this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$0.mTimeoutRunnable = null;
                        this.this$0.onLocationChanged((Location) null);
                    }
                };
                this.mTimeoutRunnable = runnable;
                this.mTimeoutHandler.postDelayed(runnable, j);
            }
        }
    }

    private static class GnssLazyLoader {
        static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();

        private GnssLazyLoader() {
        }
    }

    private static class GnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, NPStringFog.decode(new byte[]{89, 11, 64, 0, 92, 92, 84, 69, 88, 20, 92, 89, 16, 6, 87, 13, 92, 87, 81, 6, 93}, "0e6a05", 2558831.0d));
            this.mCallback = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            this.mCallback.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.mCallback.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.mCallback.onStopped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class GpsStatusTransport implements GpsStatus.Listener {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;
        private final LocationManager mLocationManager;

        GpsStatusTransport(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, NPStringFog.decode(new byte[]{91, 15, 64, 87, 8, 80, 86, 65, 88, 67, 8, 85, 18, 2, 87, 90, 8, 91, 83, 2, 93}, "2a66d9", -2.067351942E9d));
            this.mLocationManager = locationManager;
            this.mCallback = callback;
        }

        public /* synthetic */ void lambda$onGpsStatusChanged$0$LocationManagerCompat$GpsStatusTransport(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        public /* synthetic */ void lambda$onGpsStatusChanged$1$LocationManagerCompat$GpsStatusTransport(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        public /* synthetic */ void lambda$onGpsStatusChanged$2$LocationManagerCompat$GpsStatusTransport(Executor executor, int i) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i);
        }

        public /* synthetic */ void lambda$onGpsStatusChanged$3$LocationManagerCompat$GpsStatusTransport(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(gnssStatusCompat);
        }

        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
            }
            switch (i) {
                case 1:
                    executor.execute(new Runnable(this, executor) { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0
                        public final LocationManagerCompat.GpsStatusTransport f$0;
                        public final Executor f$1;

                        {
                            this.f$0 = this;
                            this.f$1 = executor;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onGpsStatusChanged$0$LocationManagerCompat$GpsStatusTransport(this.f$1);
                        }
                    });
                    break;
                case 2:
                    executor.execute(new Runnable(this, executor) { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda1
                        public final LocationManagerCompat.GpsStatusTransport f$0;
                        public final Executor f$1;

                        {
                            this.f$0 = this;
                            this.f$1 = executor;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onGpsStatusChanged$1$LocationManagerCompat$GpsStatusTransport(this.f$1);
                        }
                    });
                    break;
                case 3:
                    GpsStatus gpsStatus = this.mLocationManager.getGpsStatus(null);
                    if (gpsStatus != null) {
                        final int timeToFirstFix = gpsStatus.getTimeToFirstFix();
                        executor.execute(new Runnable(this, executor, timeToFirstFix) { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2
                            public final LocationManagerCompat.GpsStatusTransport f$0;
                            public final Executor f$1;
                            public final int f$2;

                            {
                                this.f$0 = this;
                                this.f$1 = executor;
                                this.f$2 = timeToFirstFix;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onGpsStatusChanged$2$LocationManagerCompat$GpsStatusTransport(this.f$1, this.f$2);
                            }
                        });
                    }
                    break;
                case 4:
                    GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
                    if (gpsStatus2 != null) {
                        final GnssStatusCompat gnssStatusCompatWrap = GnssStatusCompat.wrap(gpsStatus2);
                        executor.execute(new Runnable(this, executor, gnssStatusCompatWrap) { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda3
                            public final LocationManagerCompat.GpsStatusTransport f$0;
                            public final Executor f$1;
                            public final GnssStatusCompat f$2;

                            {
                                this.f$0 = this;
                                this.f$1 = executor;
                                this.f$2 = gnssStatusCompatWrap;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onGpsStatusChanged$3$LocationManagerCompat$GpsStatusTransport(this.f$1, this.f$2);
                            }
                        });
                    }
                    break;
            }
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }
    }

    private static final class InlineHandlerExecutor implements Executor {
        private final Handler mHandler;

        InlineHandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                runnable.run();
            } else {
                if (this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                    return;
                }
                throw new RejectedExecutionException(this.mHandler + NPStringFog.decode(new byte[]{69, 15, 17, 22, 69, 13, 16, 18, 22, 95, 88, 2, 69, 2, 13, 65, 88}, "efb66e", -7.9121842E7d));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LocationListenerTransport implements LocationListener {
        final Executor mExecutor;
        volatile LocationListenerCompat mListener;

        LocationListenerTransport(LocationListenerCompat locationListenerCompat, Executor executor) {
            this.mListener = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, NPStringFog.decode(new byte[]{88, 91, 66, 86, 84, 93, 85, 21, 90, 66, 84, 88, 17, 89, 93, 68, 76, 81, 95, 80, 70}, "154784", true));
            this.mExecutor = executor;
        }

        static /* synthetic */ boolean lambda$register$0(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        static /* synthetic */ boolean lambda$unregister$1(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        public /* synthetic */ void lambda$onFlushComplete$4$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, int i) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onFlushComplete(i);
        }

        public /* synthetic */ void lambda$onLocationChanged$2$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, Location location) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged(location);
        }

        public /* synthetic */ void lambda$onLocationChanged$3$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, List list) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged((List<Location>) list);
        }

        public /* synthetic */ void lambda$onProviderDisabled$7$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, String str) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderDisabled(str);
        }

        public /* synthetic */ void lambda$onProviderEnabled$6$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, String str) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderEnabled(str);
        }

        public /* synthetic */ void lambda$onStatusChanged$5$LocationManagerCompat$LocationListenerTransport(LocationListenerCompat locationListenerCompat, String str, int i, Bundle bundle) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onStatusChanged(str, i, bundle);
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, i) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final int f$2;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFlushComplete$4$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, location) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final Location f$2;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = location;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLocationChanged$2$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final List<Location> list) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, list) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final List f$2;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = list;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLocationChanged$3$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(final String str) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, str) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final String f$2;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProviderDisabled$7$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(final String str) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, str) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final String f$2;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProviderEnabled$6$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i, final Bundle bundle) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable(this, locationListenerCompat, str, i, bundle) { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4
                public final LocationManagerCompat.LocationListenerTransport f$0;
                public final LocationListenerCompat f$1;
                public final String f$2;
                public final int f$3;
                public final Bundle f$4;

                {
                    this.f$0 = this;
                    this.f$1 = locationListenerCompat;
                    this.f$2 = str;
                    this.f$3 = i;
                    this.f$4 = bundle;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStatusChanged$5$LocationManagerCompat$LocationListenerTransport(this.f$1, this.f$2, this.f$3, this.f$4);
                }
            });
        }

        public void register() {
            List<WeakReference<LocationListenerTransport>> arrayList = LocationManagerCompat.sLocationListeners.get(this.mListener);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                LocationManagerCompat.sLocationListeners.put(this.mListener, arrayList);
            } else if (Build.VERSION.SDK_INT >= 24) {
                arrayList.removeIf(new Predicate() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda6
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return LocationManagerCompat.LocationListenerTransport.lambda$register$0((WeakReference) obj);
                    }
                });
            } else {
                Iterator<WeakReference<LocationListenerTransport>> it = arrayList.iterator();
                while (it.hasNext()) {
                    if (it.next().get() == null) {
                        it.remove();
                    }
                }
            }
            arrayList.add(new WeakReference<>(this));
        }

        public boolean unregister() {
            LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return false;
            }
            this.mListener = null;
            List<WeakReference<LocationListenerTransport>> list = LocationManagerCompat.sLocationListeners.get(locationListenerCompat);
            if (list != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    list.removeIf(new Predicate() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda7
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return LocationManagerCompat.LocationListenerTransport.lambda$unregister$1((WeakReference) obj);
                        }
                    });
                } else {
                    Iterator<WeakReference<LocationListenerTransport>> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().get() == null) {
                            it.remove();
                        }
                    }
                }
                if (list.isEmpty()) {
                    LocationManagerCompat.sLocationListeners.remove(locationListenerCompat);
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class PreRGnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, NPStringFog.decode(new byte[]{94, 93, 65, 89, 85, 10, 83, 19, 89, 77, 85, 15, 23, 80, 86, 84, 85, 1, 86, 80, 92}, "73789c", true, true));
            this.mCallback = callback;
        }

        public /* synthetic */ void lambda$onFirstFix$2$LocationManagerCompat$PreRGnssStatusTransport(Executor executor, int i) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i);
        }

        public /* synthetic */ void lambda$onSatelliteStatusChanged$3$LocationManagerCompat$PreRGnssStatusTransport(Executor executor, GnssStatus gnssStatus) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        public /* synthetic */ void lambda$onStarted$0$LocationManagerCompat$PreRGnssStatusTransport(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        public /* synthetic */ void lambda$onStopped$1$LocationManagerCompat$PreRGnssStatusTransport(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable(this, executor, i) { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda2
                public final LocationManagerCompat.PreRGnssStatusTransport f$0;
                public final Executor f$1;
                public final int f$2;

                {
                    this.f$0 = this;
                    this.f$1 = executor;
                    this.f$2 = i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFirstFix$2$LocationManagerCompat$PreRGnssStatusTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable(this, executor, gnssStatus) { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda3
                public final LocationManagerCompat.PreRGnssStatusTransport f$0;
                public final Executor f$1;
                public final GnssStatus f$2;

                {
                    this.f$0 = this;
                    this.f$1 = executor;
                    this.f$2 = gnssStatus;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSatelliteStatusChanged$3$LocationManagerCompat$PreRGnssStatusTransport(this.f$1, this.f$2);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable(this, executor) { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda0
                public final LocationManagerCompat.PreRGnssStatusTransport f$0;
                public final Executor f$1;

                {
                    this.f$0 = this;
                    this.f$1 = executor;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStarted$0$LocationManagerCompat$PreRGnssStatusTransport(this.f$1);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable(this, executor) { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda1
                public final LocationManagerCompat.PreRGnssStatusTransport f$0;
                public final Executor f$1;

                {
                    this.f$0 = this;
                    this.f$1 = executor;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStopped$1$LocationManagerCompat$PreRGnssStatusTransport(this.f$1);
                }
            });
        }

        public void register(Executor executor) {
            Preconditions.checkArgument(executor != null, NPStringFog.decode(new byte[]{91, 88, 65, 86, 89, 90, 86, 22, 89, 66, 89, 95, 18, 83, 79, 82, 86, 70, 70, 89, 69}, "267753", true, true));
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }
    }

    private LocationManagerCompat() {
    }

    public static void getCurrentLocation(LocationManager locationManager, String str, CancellationSignal cancellationSignal, Executor executor, final Consumer<Location> consumer) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.getCurrentLocation(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        final Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < MAX_CURRENT_LOCATION_AGE_MS) {
            executor.execute(new Runnable(consumer, lastKnownLocation) { // from class: androidx.core.location.LocationManagerCompat$$ExternalSyntheticLambda0
                public final Consumer f$0;
                public final Location f$1;

                {
                    this.f$0 = consumer;
                    this.f$1 = lastKnownLocation;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.accept(this.f$1);
                }
            });
            return;
        }
        CancellableLocationListener cancellableLocationListener = new CancellableLocationListener(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, cancellableLocationListener, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(cancellableLocationListener) { // from class: androidx.core.location.LocationManagerCompat.1
                final CancellableLocationListener val$listener;

                {
                    this.val$listener = cancellableLocationListener;
                }

                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    this.val$listener.cancel();
                }
            });
        }
        cancellableLocationListener.startTimeout(GET_CURRENT_LOCATION_TIMEOUT_MS);
    }

    public static String getGnssHardwareModelName(LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getGnssHardwareModelName(locationManager);
        }
        return null;
    }

    public static int getGnssYearOfHardware(LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getGnssYearOfHardware(locationManager);
        }
        return 0;
    }

    public static boolean hasProvider(LocationManager locationManager, String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.hasProvider(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        try {
            return locationManager.getProvider(str) != null;
        } catch (SecurityException e) {
            return false;
        }
    }

    public static boolean isLocationEnabled(LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.isLocationEnabled(locationManager);
        }
        if (Build.VERSION.SDK_INT <= 19) {
            try {
                if (sContextField == null) {
                    Field declaredField = LocationManager.class.getDeclaredField(NPStringFog.decode(new byte[]{89, 118, 10, 89, 66, 1, 76, 65}, "45e76d", -1.9910831E9f));
                    sContextField = declaredField;
                    declaredField.setAccessible(true);
                }
                Context context = (Context) sContextField.get(locationManager);
                if (context != null) {
                    return Build.VERSION.SDK_INT == 19 ? Settings.Secure.getInt(context.getContentResolver(), NPStringFog.decode(new byte[]{89, 94, 84, 5, 68, 91, 90, 95, 104, 9, 95, 86, 80}, "517d02", -1.900384912E9d), 0) != 0 : !TextUtils.isEmpty(Settings.Secure.getString(context.getContentResolver(), NPStringFog.decode(new byte[]{14, 95, 80, 3, 22, 94, 13, 94, 108, 18, 16, 88, 20, 89, 87, 7, 16, 68, 61, 81, 95, 14, 13, 64, 7, 84}, "b03bb7", -21662)));
                }
            } catch (ClassCastException e) {
            } catch (IllegalAccessException e2) {
            } catch (NoSuchFieldException e3) {
            } catch (SecurityException e4) {
            }
        }
        return locationManager.isProviderEnabled(NPStringFog.decode(new byte[]{86, 4, 77, 21, 89, 75, 83}, "8a9b69", 31533)) || locationManager.isProviderEnabled(NPStringFog.decode(new byte[]{94, 18, 16}, "9bc289", true, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x0180 A[Catch: all -> 0x016b, TryCatch #11 {all -> 0x016b, blocks: (B:52:0x00be, B:54:0x00cc, B:56:0x00da, B:88:0x0178, B:90:0x0180, B:92:0x0188, B:93:0x018e, B:94:0x018f, B:95:0x0194, B:96:0x0195, B:97:0x019b, B:80:0x0144, B:81:0x016a), top: B:111:0x00be }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0195 A[Catch: all -> 0x016b, TryCatch #11 {all -> 0x016b, blocks: (B:52:0x00be, B:54:0x00cc, B:56:0x00da, B:88:0x0178, B:90:0x0180, B:92:0x0188, B:93:0x018e, B:94:0x018f, B:95:0x0194, B:96:0x0195, B:97:0x019b, B:80:0x0144, B:81:0x016a), top: B:111:0x00be }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean registerGnssStatusCallback(final android.location.LocationManager r16, android.os.Handler r17, java.util.concurrent.Executor r18, androidx.core.location.GnssStatusCompat.Callback r19) {
        /*
            Method dump skipped, instruction units count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.location.LocationManagerCompat.registerGnssStatusCallback(android.location.LocationManager, android.os.Handler, java.util.concurrent.Executor, androidx.core.location.GnssStatusCompat$Callback):boolean");
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback, Handler handler) {
        return Build.VERSION.SDK_INT >= 30 ? registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback) : registerGnssStatusCallback(locationManager, new InlineHandlerExecutor(handler), callback);
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, Executor executor, GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, null, executor, callback);
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        return registerGnssStatusCallback(locationManager, new Handler(looperMyLooper), executor, callback);
    }

    public static void removeUpdates(LocationManager locationManager, LocationListenerCompat locationListenerCompat) {
        WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> weakHashMap = sLocationListeners;
        synchronized (weakHashMap) {
            List<WeakReference<LocationListenerTransport>> listRemove = weakHashMap.remove(locationListenerCompat);
            if (listRemove != null) {
                Iterator<WeakReference<LocationListenerTransport>> it = listRemove.iterator();
                while (it.hasNext()) {
                    LocationListenerTransport locationListenerTransport = it.next().get();
                    if (locationListenerTransport != null && locationListenerTransport.unregister()) {
                        locationManager.removeUpdates(locationListenerTransport);
                    }
                }
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    public static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod(NPStringFog.decode(new byte[]{69, 93, 67, 69, 1, 75, 67, 116, 93, 83, 5, 76, 94, 87, 92, 101, 20, 92, 86, 76, 87, 67}, "7820d8", -8.33031E8f), LocationRequest.class, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                    return;
                }
            } catch (IllegalAccessException e) {
            } catch (NoSuchMethodException e2) {
            } catch (UnsupportedOperationException e3) {
            } catch (InvocationTargetException e4) {
            }
        }
        locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
    }

    public static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) {
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                if (sRequestLocationUpdatesExecutorMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod(NPStringFog.decode(new byte[]{67, 7, 72, 23, 80, 18, 69, 46, 86, 1, 84, 21, 88, 13, 87, 55, 69, 5, 80, 22, 92, 17}, "1b9b5a", -8.5660045E8f), LocationRequest.class, Executor.class, LocationListener.class);
                    sRequestLocationUpdatesExecutorMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesExecutorMethod.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                    return;
                }
            } catch (IllegalAccessException e) {
            } catch (NoSuchMethodException e2) {
            } catch (UnsupportedOperationException e3) {
            } catch (InvocationTargetException e4) {
            }
        }
        LocationListenerTransport locationListenerTransport = new LocationListenerTransport(locationListenerCompat, executor);
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod2 = LocationManager.class.getDeclaredMethod(NPStringFog.decode(new byte[]{19, 0, 20, 23, 87, 67, 21, 41, 10, 1, 83, 68, 8, 10, 11, 55, 66, 84, 0, 17, 0, 17}, "aeeb20", 1924781348L), LocationRequest.class, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                }
                LocationRequest locationRequest2 = locationRequestCompat.toLocationRequest(str);
                if (locationRequest2 != null) {
                    synchronized (sLocationListeners) {
                        sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest2, locationListenerTransport, Looper.getMainLooper());
                        locationListenerTransport.register();
                    }
                    return;
                }
            } catch (IllegalAccessException e5) {
            } catch (NoSuchMethodException e6) {
            } catch (UnsupportedOperationException e7) {
            } catch (InvocationTargetException e8) {
            }
        }
        synchronized (sLocationListeners) {
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerTransport, Looper.getMainLooper());
            locationListenerTransport.register();
        }
    }

    public static void unregisterGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            synchronized (GnssLazyLoader.sGnssStatusListeners) {
                GnssStatus.Callback callback2 = (GnssStatusTransport) GnssLazyLoader.sGnssStatusListeners.remove(callback);
                if (callback2 != null) {
                    locationManager.unregisterGnssStatusCallback(callback2);
                }
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            synchronized (GnssLazyLoader.sGnssStatusListeners) {
                PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) GnssLazyLoader.sGnssStatusListeners.remove(callback);
                if (preRGnssStatusTransport != null) {
                    preRGnssStatusTransport.unregister();
                    locationManager.unregisterGnssStatusCallback(preRGnssStatusTransport);
                }
            }
            return;
        }
        synchronized (GnssLazyLoader.sGnssStatusListeners) {
            GpsStatusTransport gpsStatusTransport = (GpsStatusTransport) GnssLazyLoader.sGnssStatusListeners.remove(callback);
            if (gpsStatusTransport != null) {
                gpsStatusTransport.unregister();
                locationManager.removeGpsStatusListener(gpsStatusTransport);
            }
        }
    }
}
