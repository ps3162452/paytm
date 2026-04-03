package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.tracing.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes29.dex */
public final class AppInitializer {
    private static volatile AppInitializer sInstance;
    final Context mContext;
    final Set<Class<? extends Initializer<?>>> mDiscovered = new HashSet();
    final Map<Class<?>, Object> mInitialized = new HashMap();
    private static final String SECTION_NAME = NPStringFog.decode(new byte[]{49, 18, 81, 70, 18, 77, 18}, "bf04f8", false);
    private static final Object sLock = new Object();

    AppInitializer(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static AppInitializer getInstance(Context context) {
        if (sInstance == null) {
            synchronized (sLock) {
                if (sInstance == null) {
                    sInstance = new AppInitializer(context);
                }
            }
        }
        return sInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void discoverAndInitialize() {
        try {
            try {
                Trace.beginSection(SECTION_NAME);
                Bundle bundle = this.mContext.getPackageManager().getProviderInfo(new ComponentName(this.mContext.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                String string = this.mContext.getString(R.string.androidx_startup);
                if (bundle != null) {
                    HashSet hashSet = new HashSet();
                    for (String str : bundle.keySet()) {
                        if (string.equals(bundle.getString(str, null))) {
                            Class<?> cls = Class.forName(str);
                            if (Initializer.class.isAssignableFrom(cls)) {
                                this.mDiscovered.add((Class<? extends Initializer<?>>) cls);
                                doInitialize(cls, hashSet);
                            }
                        }
                    }
                }
            } finally {
                Trace.endSection();
            }
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
            throw new StartupException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0080 A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, blocks: (B:6:0x0009, B:7:0x0010, B:9:0x0016, B:11:0x001e, B:23:0x0058, B:24:0x005d, B:35:0x0079, B:36:0x0080, B:37:0x00a1, B:13:0x0022, B:15:0x003b, B:16:0x003f, B:18:0x0045, B:20:0x0053, B:31:0x0066), top: B:41:0x0009, outer: #0, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016 A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, blocks: (B:6:0x0009, B:7:0x0010, B:9:0x0016, B:11:0x001e, B:23:0x0058, B:24:0x005d, B:35:0x0079, B:36:0x0080, B:37:0x00a1, B:13:0x0022, B:15:0x003b, B:16:0x003f, B:18:0x0045, B:20:0x0053, B:31:0x0066), top: B:41:0x0009, outer: #0, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    <T> T doInitialize(java.lang.Class<? extends androidx.startup.Initializer<?>> r6, java.util.Set<java.lang.Class<?>> r7) {
        /*
            r5 = this;
            java.lang.Object r2 = androidx.startup.AppInitializer.sLock
            monitor-enter(r2)
            boolean r0 = androidx.tracing.Trace.isEnabled()     // Catch: java.lang.Throwable -> L63
            if (r0 == 0) goto L10
            java.lang.String r0 = r6.getSimpleName()     // Catch: java.lang.Throwable -> L5e
            androidx.tracing.Trace.beginSection(r0)     // Catch: java.lang.Throwable -> L5e
        L10:
            boolean r0 = r7.contains(r6)     // Catch: java.lang.Throwable -> L5e
            if (r0 != 0) goto L80
            java.util.Map<java.lang.Class<?>, java.lang.Object> r0 = r5.mInitialized     // Catch: java.lang.Throwable -> L5e
            boolean r0 = r0.containsKey(r6)     // Catch: java.lang.Throwable -> L5e
            if (r0 != 0) goto L79
            r7.add(r6)     // Catch: java.lang.Throwable -> L5e
            r0 = 0
            java.lang.Class[] r0 = new java.lang.Class[r0]     // Catch: java.lang.Throwable -> L57
            java.lang.reflect.Constructor r0 = r6.getDeclaredConstructor(r0)     // Catch: java.lang.Throwable -> L57
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L57
            java.lang.Object r0 = r0.newInstance(r1)     // Catch: java.lang.Throwable -> L57
            androidx.startup.Initializer r0 = (androidx.startup.Initializer) r0     // Catch: java.lang.Throwable -> L57
            java.util.List r1 = r0.dependencies()     // Catch: java.lang.Throwable -> L57
            boolean r3 = r1.isEmpty()     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L66
            java.util.Iterator r3 = r1.iterator()     // Catch: java.lang.Throwable -> L57
        L3f:
            boolean r1 = r3.hasNext()     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L66
            java.lang.Object r1 = r3.next()     // Catch: java.lang.Throwable -> L57
            java.lang.Class r1 = (java.lang.Class) r1     // Catch: java.lang.Throwable -> L57
            java.util.Map<java.lang.Class<?>, java.lang.Object> r4 = r5.mInitialized     // Catch: java.lang.Throwable -> L57
            boolean r4 = r4.containsKey(r1)     // Catch: java.lang.Throwable -> L57
            if (r4 != 0) goto L3f
            r5.doInitialize(r1, r7)     // Catch: java.lang.Throwable -> L57
            goto L3f
        L57:
            r0 = move-exception
            androidx.startup.StartupException r1 = new androidx.startup.StartupException     // Catch: java.lang.Throwable -> L5e
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L5e
            throw r1     // Catch: java.lang.Throwable -> L5e
        L5e:
            r0 = move-exception
            androidx.tracing.Trace.endSection()     // Catch: java.lang.Throwable -> L63
            throw r0     // Catch: java.lang.Throwable -> L63
        L63:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L63
            throw r0
        L66:
            android.content.Context r1 = r5.mContext     // Catch: java.lang.Throwable -> L57
            java.lang.Object r0 = r0.create(r1)     // Catch: java.lang.Throwable -> L57
            r7.remove(r6)     // Catch: java.lang.Throwable -> L57
            java.util.Map<java.lang.Class<?>, java.lang.Object> r1 = r5.mInitialized     // Catch: java.lang.Throwable -> L57
            r1.put(r6, r0)     // Catch: java.lang.Throwable -> L57
        L74:
            androidx.tracing.Trace.endSection()     // Catch: java.lang.Throwable -> L63
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L63
            return r0
        L79:
            java.util.Map<java.lang.Class<?>, java.lang.Object> r0 = r5.mInitialized     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r0 = r0.get(r6)     // Catch: java.lang.Throwable -> L5e
            goto L74
        L80:
            r0 = 37
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L5e
            r0 = {x00a2: FILL_ARRAY_DATA , data: [38, 3, 93, 11, 10, 70, 69, 11, 93, 12, 17, 91, 4, 14, 90, 31, 0, 18, 64, 17, 29, 69, 38, 75, 6, 14, 86, 69, 1, 87, 17, 7, 80, 17, 0, 86, 75} // fill-array     // Catch: java.lang.Throwable -> L5e
            java.lang.String r1 = "eb3ee2"
            r3 = 1
            java.lang.String r0 = n.NPStringFog.decode(r0, r1, r3)     // Catch: java.lang.Throwable -> L5e
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5e
            r3 = 0
            java.lang.String r4 = r6.getName()     // Catch: java.lang.Throwable -> L5e
            r1[r3] = r4     // Catch: java.lang.Throwable -> L5e
            java.lang.String r0 = java.lang.String.format(r0, r1)     // Catch: java.lang.Throwable -> L5e
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L5e
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L5e
            throw r1     // Catch: java.lang.Throwable -> L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.startup.AppInitializer.doInitialize(java.lang.Class, java.util.Set):java.lang.Object");
    }

    public <T> T initializeComponent(Class<? extends Initializer<T>> cls) {
        return (T) doInitialize(cls, new HashSet());
    }

    public boolean isEagerlyInitialized(Class<? extends Initializer<?>> cls) {
        return this.mDiscovered.contains(cls);
    }
}
