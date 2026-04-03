package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.events.Publisher;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatInfo;
import com.google.firebase.internal.DataCollectionConfigStorage;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.KotlinDetector;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
public class FirebaseApp {
    private final Context applicationContext;
    private final ComponentRuntime componentRuntime;
    private final Lazy<DataCollectionConfigStorage> dataCollectionConfigStorage;
    private final String name;
    private final FirebaseOptions options;
    public static final String DEFAULT_APP_NAME = NPStringFog.decode(new byte[]{105, 33, 114, 36, 121, 98, 126, 49, 106}, "2e7b87", 20990);
    private static final String FIREBASE_ANDROID = NPStringFog.decode(new byte[]{84, 12, 67, 82, 25, 3, 92, 1, 67, 88, 93, 6}, "2e174b", false);
    private static final String FIREBASE_COMMON = NPStringFog.decode(new byte[]{2, 93, 75, 83, 28, 82, 11, 70, 92}, "d49611", 1006533678L);
    private static final String KOTLIN = NPStringFog.decode(new byte[]{94, 94, 64, 85, 91, 11}, "51492e", false);
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{118, 94, 19, 87, 87, 5, 67, 82, 32, 66, 69}, "07a25d", true);
    private static final Object LOCK = new Object();
    private static final Executor UI_EXECUTOR = new UiExecutor();
    static final Map<String, FirebaseApp> INSTANCES = new ArrayMap();
    private final AtomicBoolean automaticResourceManagementEnabled = new AtomicBoolean(false);
    private final AtomicBoolean deleted = new AtomicBoolean();
    private final List<BackgroundStateChangeListener> backgroundStateChangeListeners = new CopyOnWriteArrayList();
    private final List<FirebaseAppLifecycleListener> lifecycleListeners = new CopyOnWriteArrayList();

    public interface BackgroundStateChangeListener {
        void onBackgroundStateChanged(boolean z);
    }

    private static class GlobalBackgroundStateListener implements BackgroundDetector.BackgroundStateChangeListener {
        private static AtomicReference<GlobalBackgroundStateListener> INSTANCE = new AtomicReference<>();

        private GlobalBackgroundStateListener() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void ensureBackgroundStateListenerRegistered(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (INSTANCE.get() == null) {
                    GlobalBackgroundStateListener globalBackgroundStateListener = new GlobalBackgroundStateListener();
                    if (FirebaseApp$GlobalBackgroundStateListener$$ExternalSyntheticBackportWithForwarding0.m(INSTANCE, null, globalBackgroundStateListener)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(globalBackgroundStateListener);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z) {
            synchronized (FirebaseApp.LOCK) {
                for (FirebaseApp firebaseApp : new ArrayList(FirebaseApp.INSTANCES.values())) {
                    if (firebaseApp.automaticResourceManagementEnabled.get()) {
                        firebaseApp.notifyBackgroundStateChangeListeners(z);
                    }
                }
            }
        }
    }

    private static class UiExecutor implements Executor {
        private static final Handler HANDLER = new Handler(Looper.getMainLooper());

        private UiExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            HANDLER.post(runnable);
        }
    }

    private static class UserUnlockReceiver extends BroadcastReceiver {
        private static AtomicReference<UserUnlockReceiver> INSTANCE = new AtomicReference<>();
        private final Context applicationContext;

        public UserUnlockReceiver(Context context) {
            this.applicationContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void ensureReceiverRegistered(Context context) {
            if (INSTANCE.get() == null) {
                UserUnlockReceiver userUnlockReceiver = new UserUnlockReceiver(context);
                if (FirebaseApp$GlobalBackgroundStateListener$$ExternalSyntheticBackportWithForwarding0.m(INSTANCE, null, userUnlockReceiver)) {
                    context.registerReceiver(userUnlockReceiver, new IntentFilter(NPStringFog.decode(new byte[]{4, 11, 1, 22, 86, 92, 1, 75, 12, 10, 77, 80, 11, 17, 75, 5, 90, 65, 12, 10, 11, 74, 108, 102, 32, 55, 58, 49, 119, 121, 42, 38, 46, 33, 125}, "eeed95", -2.141436336E9d)));
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.LOCK) {
                Iterator<FirebaseApp> it = FirebaseApp.INSTANCES.values().iterator();
                while (it.hasNext()) {
                    it.next().initializeAllApis();
                }
            }
            unregister();
        }

        public void unregister() {
            this.applicationContext.unregisterReceiver(this);
        }
    }

    protected FirebaseApp(Context context, String str, FirebaseOptions firebaseOptions) {
        this.applicationContext = (Context) Preconditions.checkNotNull(context);
        this.name = Preconditions.checkNotEmpty(str);
        this.options = (FirebaseOptions) Preconditions.checkNotNull(firebaseOptions);
        List<ComponentRegistrar> listDiscover = ComponentDiscovery.forContext(context, ComponentDiscoveryService.class).discover();
        String strDetectVersion = KotlinDetector.detectVersion();
        this.componentRuntime = new ComponentRuntime(UI_EXECUTOR, listDiscover, Component.of(context, Context.class, new Class[0]), Component.of(this, FirebaseApp.class, new Class[0]), Component.of(firebaseOptions, FirebaseOptions.class, new Class[0]), LibraryVersionComponent.create(NPStringFog.decode(new byte[]{2, 15, 68, 81, 73, 87, 10, 2, 68, 91, 13, 82}, "df64d6", false), ""), LibraryVersionComponent.create(NPStringFog.decode(new byte[]{87, 8, 23, 93, 25, 5, 94, 19, 0}, "1ae84f", false), NPStringFog.decode(new byte[]{82, 13, 22, 11, 76, 83}, "c488bb", -1.955369955E9d)), strDetectVersion != null ? LibraryVersionComponent.create(NPStringFog.decode(new byte[]{8, 93, 67, 9, 80, 87}, "c27e99", 1.9163603E9f), strDetectVersion) : null, DefaultUserAgentPublisher.component(), DefaultHeartBeatInfo.component());
        this.dataCollectionConfigStorage = new Lazy<>(FirebaseApp$$Lambda$1.lambdaFactory$(this, context));
    }

    private void checkNotDeleted() {
        Preconditions.checkState(!this.deleted.get(), NPStringFog.decode(new byte[]{126, 94, 64, 4, 82, 89, 75, 82, 115, 17, 64, 24, 79, 86, 65, 65, 84, 93, 84, 82, 70, 4, 84}, "872a08", false));
    }

    public static void clearInstancesForTest() {
        synchronized (LOCK) {
            INSTANCES.clear();
        }
    }

    private static List<String> getAllAppNames() {
        ArrayList arrayList = new ArrayList();
        synchronized (LOCK) {
            Iterator<FirebaseApp> it = INSTANCES.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getName());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<FirebaseApp> getApps(Context context) {
        ArrayList arrayList;
        synchronized (LOCK) {
            arrayList = new ArrayList(INSTANCES.values());
        }
        return arrayList;
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (LOCK) {
            firebaseApp = INSTANCES.get(DEFAULT_APP_NAME);
            if (firebaseApp == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 6, 87, 84, 65, 8, 67, 67, 119, 92, 70, 1, 85, 2, 66, 80, 117, 20, 71, 67, 88, 70, 20, 10, 88, 23, 17, 92, 90, 13, 67, 10, 80, 89, 93, 30, 82, 7, 17, 92, 90, 68, 67, 11, 88, 70, 20, 20, 69, 12, 82, 80, 71, 23, 23}, "7c154d", 596747808L) + ProcessUtils.getMyProcessName() + NPStringFog.decode(new byte[]{26, 68, 123, 4, 8, 87, 20, 23, 67, 23, 6, 18, 64, 11, 22, 6, 2, 94, 88, 68, 112, 12, 17, 87, 86, 5, 69, 0, 34, 66, 68, 74, 95, 11, 10, 70, 93, 5, 90, 12, 25, 87, 117, 20, 70, 77, 32, 93, 90, 16, 83, 29, 23, 27, 20, 2, 95, 23, 16, 70, 26}, "4d6ec2", true));
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp getInstance(String str) {
        FirebaseApp firebaseApp;
        synchronized (LOCK) {
            firebaseApp = INSTANCES.get(normalize(str));
            if (firebaseApp == null) {
                List<String> allAppNames = getAllAppNames();
                throw new IllegalStateException(String.format(NPStringFog.decode(new byte[]{127, 90, 69, 7, 0, 7, 74, 86, 118, 18, 18, 70, 78, 90, 67, 10, 66, 8, 88, 94, 82, 66, 71, 21, 25, 87, 88, 7, 17, 8, 30, 71, 23, 7, 26, 15, 74, 71, 25, 66, 71, 21}, "937bbf", -2.4305184E8f), str, allAppNames.isEmpty() ? "" : NPStringFog.decode(new byte[]{34, 69, 80, 10, 92, 83, 1, 95, 84, 67, 81, 66, 19, 19, 95, 2, 93, 87, 16, 9, 17}, "c31c02", -1.874898236E9d) + TextUtils.join(NPStringFog.decode(new byte[]{79, 70}, "cf2c9d", true, true), allAppNames)));
            }
        }
        return firebaseApp;
    }

    public static String getPersistenceKey(String str, FirebaseOptions firebaseOptions) {
        return Base64Utils.encodeUrlSafeNoPadding(str.getBytes(Charset.defaultCharset())) + NPStringFog.decode(new byte[]{78}, "e73210", -21850) + Base64Utils.encodeUrlSafeNoPadding(firebaseOptions.getApplicationId().getBytes(Charset.defaultCharset()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeAllApis() {
        if (!UserManagerCompat.isUserUnlocked(this.applicationContext)) {
            Log.i(LOG_TAG, NPStringFog.decode(new byte[]{113, 81, 65, 92, 87, 83, 21, 93, 89, 21, 112, 95, 71, 81, 84, 65, 20, 116, 90, 91, 67, 21, 121, 89, 81, 81, 13, 21, 68, 89, 70, 64, 71, 90, 90, 95, 91, 83, 23, 92, 90, 95, 65, 93, 86, 89, 93, 76, 84, 64, 94, 90, 90, 22, 90, 82, 23, 115, 93, 68, 80, 86, 86, 70, 81, 22, 116, 100, 126, 70, 20, 80, 90, 70, 23, 84, 68, 70, 21}, "547546", -97041707L) + getName());
            UserUnlockReceiver.ensureReceiverRegistered(this.applicationContext);
        } else {
            Log.i(LOG_TAG, NPStringFog.decode(new byte[]{115, 83, 21, 95, 5, 4, 23, 67, 13, 90, 9, 2, 92, 83, 7, 12, 70, 8, 89, 95, 23, 95, 7, 13, 94, 76, 10, 88, 1, 65, 86, 90, 15, 22, 32, 8, 69, 83, 1, 87, 21, 4, 23, 119, 51, 127, 21, 65, 81, 89, 17, 22, 7, 17, 71, 22}, "76c6fa", false, true) + getName());
            this.componentRuntime.initializeEagerComponents(isDefaultApp());
        }
    }

    public static FirebaseApp initializeApp(Context context) {
        synchronized (LOCK) {
            if (INSTANCES.containsKey(DEFAULT_APP_NAME)) {
                return getInstance();
            }
            FirebaseOptions firebaseOptionsFromResource = FirebaseOptions.fromResource(context);
            if (firebaseOptionsFromResource == null) {
                Log.w(LOG_TAG, NPStringFog.decode(new byte[]{124, 82, 0, 4, 20, 88, 76, 23, 32, 12, 19, 81, 90, 86, 21, 0, 32, 68, 72, 23, 0, 4, 8, 88, 93, 83, 70, 17, 14, 20, 81, 89, 15, 17, 8, 85, 84, 94, 28, 0, 65, 86, 93, 84, 7, 16, 18, 81, 24, 89, 9, 69, 5, 81, 94, 86, 19, 9, 21, 20, 87, 71, 18, 12, 14, 90, 75, 23, 17, 0, 19, 81, 24, 81, 9, 16, 15, 80, 22, 23, 50, 13, 8, 71, 24, 66, 21, 16, 0, 88, 84, 78, 70, 8, 4, 85, 86, 68, 70, 17, 9, 85, 76, 23, 5, 10, 12, 26, 95, 88, 9, 2, 13, 81, 22, 80, 11, 22, 91, 83, 87, 88, 1, 9, 4, 25, 75, 82, 20, 19, 8, 87, 93, 68, 70, 18, 0, 71, 24, 89, 9, 17, 65, 85, 72, 71, 10, 12, 4, 80, 24, 67, 9, 69, 24, 91, 77, 69, 70, 2, 19, 85, 92, 91, 3, 69, 17, 70, 87, 93, 3, 6, 21, 26}, "87fea4", 15456));
                return null;
            }
            return initializeApp(context, firebaseOptionsFromResource);
        }
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, DEFAULT_APP_NAME);
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        FirebaseApp firebaseApp;
        GlobalBackgroundStateListener.ensureBackgroundStateListenerRegistered(context);
        String strNormalize = normalize(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (LOCK) {
            Map<String, FirebaseApp> map = INSTANCES;
            Preconditions.checkState(!map.containsKey(strNormalize), NPStringFog.decode(new byte[]{112, 91, 16, 7, 7, 82, 69, 87, 35, 18, 21, 19, 88, 83, 15, 7, 69}, "62bbe3", -1.962717684E9d) + strNormalize + NPStringFog.decode(new byte[]{17, 88, 93, 17, 7, 4, 85, 64, 17, 6, 26, 12, 66, 77, 66, 66}, "191cbe", -1.9600562E9f));
            Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{114, 22, 71, 15, 15, 86, 82, 18, 94, 12, 8, 21, 80, 9, 89, 23, 3, 77, 71, 70, 84, 2, 8, 91, 92, 18, 23, 1, 3, 21, 93, 19, 91, 15, 72}, "3f7cf5", -1289035660L));
            firebaseApp = new FirebaseApp(context, strNormalize, firebaseOptions);
            map.put(strNormalize, firebaseApp);
        }
        firebaseApp.initializeAllApis();
        return firebaseApp;
    }

    static /* synthetic */ DataCollectionConfigStorage lambda$new$0(FirebaseApp firebaseApp, Context context) {
        return new DataCollectionConfigStorage(context, firebaseApp.getPersistenceKey(), (Publisher) firebaseApp.componentRuntime.get(Publisher.class));
    }

    private static String normalize(String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBackgroundStateChangeListeners(boolean z) {
        Log.d(LOG_TAG, NPStringFog.decode(new byte[]{126, 14, 64, 11, 95, 29, 89, 15, 83, 66, 91, 5, 83, 10, 83, 16, 86, 17, 94, 5, 20, 17, 77, 5, 68, 4, 20, 1, 81, 5, 94, 6, 81, 66, 85, 13, 67, 21, 81, 12, 92, 22, 67, 79}, "0a4b9d", 127082764L));
        Iterator<BackgroundStateChangeListener> it = this.backgroundStateChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onBackgroundStateChanged(z);
        }
    }

    private void notifyOnAppDeleted() {
        Iterator<FirebaseAppLifecycleListener> it = this.lifecycleListeners.iterator();
        while (it.hasNext()) {
            it.next().onDeleted(this.name, this.options);
        }
    }

    public void addBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        checkNotDeleted();
        if (this.automaticResourceManagementEnabled.get() && BackgroundDetector.getInstance().isInBackground()) {
            backgroundStateChangeListener.onBackgroundStateChanged(true);
        }
        this.backgroundStateChangeListeners.add(backgroundStateChangeListener);
    }

    public void addLifecycleEventListener(FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        checkNotDeleted();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.lifecycleListeners.add(firebaseAppLifecycleListener);
    }

    public void delete() {
        if (this.deleted.compareAndSet(false, true)) {
            synchronized (LOCK) {
                INSTANCES.remove(this.name);
            }
            notifyOnAppDeleted();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof FirebaseApp) {
            return this.name.equals(((FirebaseApp) obj).getName());
        }
        return false;
    }

    public <T> T get(Class<T> cls) {
        checkNotDeleted();
        return (T) this.componentRuntime.get(cls);
    }

    public Context getApplicationContext() {
        checkNotDeleted();
        return this.applicationContext;
    }

    public String getName() {
        checkNotDeleted();
        return this.name;
    }

    public FirebaseOptions getOptions() {
        checkNotDeleted();
        return this.options;
    }

    public String getPersistenceKey() {
        return Base64Utils.encodeUrlSafeNoPadding(getName().getBytes(Charset.defaultCharset())) + NPStringFog.decode(new byte[]{78}, "e85057", false) + Base64Utils.encodeUrlSafeNoPadding(getOptions().getApplicationId().getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public boolean isDataCollectionDefaultEnabled() {
        checkNotDeleted();
        return this.dataCollectionConfigStorage.get().isEnabled();
    }

    public boolean isDefaultApp() {
        return DEFAULT_APP_NAME.equals(getName());
    }

    public void removeBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        checkNotDeleted();
        this.backgroundStateChangeListeners.remove(backgroundStateChangeListener);
    }

    public void removeLifecycleEventListener(FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        checkNotDeleted();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.lifecycleListeners.remove(firebaseAppLifecycleListener);
    }

    public void setAutomaticResourceManagementEnabled(boolean z) {
        checkNotDeleted();
        if (this.automaticResourceManagementEnabled.compareAndSet(!z, z)) {
            boolean zIsInBackground = BackgroundDetector.getInstance().isInBackground();
            if (z && zIsInBackground) {
                notifyBackgroundStateChangeListeners(true);
            } else {
                if (z || !zIsInBackground) {
                    return;
                }
                notifyBackgroundStateChangeListeners(false);
            }
        }
    }

    public void setDataCollectionDefaultEnabled(Boolean bool) {
        checkNotDeleted();
        this.dataCollectionConfigStorage.get().setEnabled(bool);
    }

    @Deprecated
    public void setDataCollectionDefaultEnabled(boolean z) {
        setDataCollectionDefaultEnabled(Boolean.valueOf(z));
    }

    public String toString() {
        return Objects.toStringHelper(this).add(NPStringFog.decode(new byte[]{15, 85, 89, 6}, "a44c40", false), this.name).add(NPStringFog.decode(new byte[]{13, 72, 71, 15, 94, 10, 17}, "b83f1d", false), this.options).toString();
    }
}
