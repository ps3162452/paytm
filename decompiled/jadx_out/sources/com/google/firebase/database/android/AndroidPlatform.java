package com.google.firebase.database.android;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.connection.ConnectionContext;
import com.google.firebase.database.connection.HostInfo;
import com.google.firebase.database.connection.PersistentConnection;
import com.google.firebase.database.connection.PersistentConnectionImpl;
import com.google.firebase.database.core.EventTarget;
import com.google.firebase.database.core.Platform;
import com.google.firebase.database.core.RunLoop;
import com.google.firebase.database.core.persistence.DefaultPersistenceManager;
import com.google.firebase.database.core.persistence.LRUCachePolicy;
import com.google.firebase.database.core.persistence.PersistenceManager;
import com.google.firebase.database.core.utilities.DefaultRunLoop;
import com.google.firebase.database.logging.AndroidLogger;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.logging.Logger;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class AndroidPlatform implements Platform {
    private static final String APP_IN_BACKGROUND_INTERRUPT_REASON = NPStringFog.decode(new byte[]{3, 68, 20, 109, 13, 15, 61, 86, 5, 81, 15, 6, 16, 91, 17, 92, 0}, "b4d2da", 8.88514815E8d);
    private final Context applicationContext;
    private final Set<String> createdPersistenceCaches = new HashSet();
    private final FirebaseApp firebaseApp;

    public AndroidPlatform(FirebaseApp firebaseApp) {
        this.firebaseApp = firebaseApp;
        if (firebaseApp != null) {
            this.applicationContext = firebaseApp.getApplicationContext();
            return;
        }
        Log.e(NPStringFog.decode(new byte[]{114, 80, 20, 92, 91, 84, 71, 92, 34, 88, 77, 84, 86, 88, 21, 92}, "49f995", false), NPStringFog.decode(new byte[]{22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22, 68, 68, 19, 17, 22, 22}, "77ee20", 1.340440299E9d));
        Log.e(NPStringFog.decode(new byte[]{118, 94, 66, 4, 4, 85, 67, 82, 116, 0, 18, 85, 82, 86, 67, 4}, "070af4", true), NPStringFog.decode(new byte[]{125, 106, 106, 123, 51, 11, 24, 97, 87, 65, 65, 92, 77, 75, 76, 20, 2, 80, 84, 84, 24, 114, 8, 67, 93, 90, 89, 71, 4, 112, 72, 72, 22, 93, 15, 88, 76, 81, 89, 88, 8, 75, 93, 121, 72, 68, 73, 24, 24, 90, 93, 82, 14, 67, 93, 24, 77, 71, 8, 95, 95, 24, 126, 93, 19, 84, 90, 89, 75, 81, 65, 117, 89, 76, 89, 86, 0, 66, 93, 22}, "8884a1", 8.273333E8f));
        Log.e(NPStringFog.decode(new byte[]{126, 11, 70, 87, 84, 89, 75, 7, 112, 83, 66, 89, 90, 3, 71, 87}, "8b4268", 1.1223174E9f), NPStringFog.decode(new byte[]{19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21, 24, 19, 67, 24, 19, 21}, "2492b9", 1.808701187E9d));
        throw new RuntimeException(NPStringFog.decode(new byte[]{104, 10, 23, 67, 88, 3, 84, 1, 66, 23, 89, 70, 82, 4, 14, 15, 22, 32, 88, 23, 7, 1, 87, 21, 84, 36, 18, 19, 24, 15, 95, 12, 22, 10, 87, 10, 88, 31, 7, 34, 70, 22, 25, 76, 66, 1, 83, 0, 94, 23, 7, 67, 67, 21, 88, 11, 5, 67, 112, 15, 67, 0, 0, 2, 69, 3, 17, 33, 3, 23, 87, 4, 80, 22, 7, 77}, "1ebc6f", -1.698389328E9d));
    }

    @Override // com.google.firebase.database.core.Platform
    public PersistenceManager createPersistenceManager(com.google.firebase.database.core.Context context, String str) {
        String sessionPersistenceKey = context.getSessionPersistenceKey();
        String str2 = str + NPStringFog.decode(new byte[]{104}, "712963", 8.0308685E8f) + sessionPersistenceKey;
        if (this.createdPersistenceCaches.contains(str2)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{55, 0, 22, 23, 11, 91, 10, 53, 0, 22, 17, 93, 23, 17, 0, 10, 1, 81, 47, 0, 28, 68, 69}, "deedb4", -30186) + sessionPersistenceKey + NPStringFog.decode(new byte[]{66, 21, 10, 2, 67, 69, 4, 89, 16, 6, 81, 1, 28, 21, 0, 6, 85, 11, 69, 64, 17, 6, 84, 75}, "e5bc0e", -1904708422L));
        }
        this.createdPersistenceCaches.add(str2);
        return new DefaultPersistenceManager(context, new SqlPersistenceStorageEngine(this.applicationContext, context, str2), new LRUCachePolicy(context.getPersistenceCacheSizeBytes()));
    }

    @Override // com.google.firebase.database.core.Platform
    public String getPlatformVersion() {
        return NPStringFog.decode(new byte[]{82, 89, 5, 16, 13, 11, 87, 26}, "37abbb", true, false) + FirebaseDatabase.getSdkVersion();
    }

    @Override // com.google.firebase.database.core.Platform
    public File getSSLCacheDirectory() {
        return this.applicationContext.getApplicationContext().getDir(NPStringFog.decode(new byte[]{65, 22, 85, 83, 4, 5, 90, 0}, "2e90ef", -15525), 0);
    }

    @Override // com.google.firebase.database.core.Platform
    public String getUserAgent(com.google.firebase.database.core.Context context) {
        return Build.VERSION.SDK_INT + NPStringFog.decode(new byte[]{27, 121, 13, 0, 75, 87, 93, 92}, "48cd98", -1040734361L);
    }

    @Override // com.google.firebase.database.core.Platform
    public EventTarget newEventTarget(com.google.firebase.database.core.Context context) {
        return new AndroidEventTarget();
    }

    @Override // com.google.firebase.database.core.Platform
    public Logger newLogger(com.google.firebase.database.core.Context context, Logger.Level level, List<String> list) {
        return new AndroidLogger(level, list);
    }

    @Override // com.google.firebase.database.core.Platform
    public PersistentConnection newPersistentConnection(com.google.firebase.database.core.Context context, ConnectionContext connectionContext, HostInfo hostInfo, PersistentConnection.Delegate delegate) {
        PersistentConnectionImpl persistentConnectionImpl = new PersistentConnectionImpl(connectionContext, hostInfo, delegate);
        this.firebaseApp.addBackgroundStateChangeListener(new FirebaseApp.BackgroundStateChangeListener(this, persistentConnectionImpl) { // from class: com.google.firebase.database.android.AndroidPlatform.2
            final AndroidPlatform this$0;
            final PersistentConnection val$connection;

            {
                this.this$0 = this;
                this.val$connection = persistentConnectionImpl;
            }

            @Override // com.google.firebase.FirebaseApp.BackgroundStateChangeListener
            public void onBackgroundStateChanged(boolean z) {
                if (z) {
                    this.val$connection.interrupt(NPStringFog.decode(new byte[]{85, 64, 68, 60, 91, 13, 107, 82, 85, 0, 89, 4, 70, 95, 65, 13, 86}, "404c2c", -2.097382E9f));
                } else {
                    this.val$connection.resume(NPStringFog.decode(new byte[]{4, 64, 20, 111, 10, 91, 58, 82, 5, 83, 8, 82, 23, 95, 17, 94, 7}, "e0d0c5", -32652));
                }
            }
        });
        return persistentConnectionImpl;
    }

    @Override // com.google.firebase.database.core.Platform
    public RunLoop newRunLoop(com.google.firebase.database.core.Context context) {
        return new DefaultRunLoop(this, context.getLogger(NPStringFog.decode(new byte[]{101, 22, 12, 120, 13, 94, 71}, "7cb4b1", true))) { // from class: com.google.firebase.database.android.AndroidPlatform.1
            final AndroidPlatform this$0;
            final LogWrapper val$logger;

            {
                this.this$0 = this;
                this.val$logger = logWrapper;
            }

            @Override // com.google.firebase.database.core.utilities.DefaultRunLoop
            public void handleException(Throwable th) {
                String strMessageForException = DefaultRunLoop.messageForException(th);
                this.val$logger.error(strMessageForException, th);
                new Handler(this.this$0.applicationContext.getMainLooper()).post(new Runnable(this, strMessageForException, th) { // from class: com.google.firebase.database.android.AndroidPlatform.1.1
                    final AnonymousClass1 this$1;
                    final Throwable val$e;
                    final String val$message;

                    {
                        this.this$1 = this;
                        this.val$message = strMessageForException;
                        this.val$e = th;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException(this.val$message, this.val$e);
                    }
                });
                getExecutorService().shutdownNow();
            }
        };
    }
}
