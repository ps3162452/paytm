package com.google.firebase.database.core;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.android.AndroidPlatform;
import com.google.firebase.database.connection.ConnectionAuthTokenProvider;
import com.google.firebase.database.connection.ConnectionContext;
import com.google.firebase.database.connection.HostInfo;
import com.google.firebase.database.connection.PersistentConnection;
import com.google.firebase.database.core.AuthTokenProvider;
import com.google.firebase.database.core.persistence.NoopPersistenceManager;
import com.google.firebase.database.core.persistence.PersistenceManager;
import com.google.firebase.database.core.utilities.DefaultRunLoop;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.logging.Logger;
import java.io.File;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Context {
    private static final long DEFAULT_CACHE_SIZE = 10485760;
    protected AuthTokenProvider authTokenProvider;
    protected EventTarget eventTarget;
    protected FirebaseApp firebaseApp;
    private PersistenceManager forcedPersistenceManager;
    protected List<String> loggedComponents;
    protected Logger logger;
    protected boolean persistenceEnabled;
    protected String persistenceKey;
    private Platform platform;
    protected RunLoop runLoop;
    protected String userAgent;
    protected Logger.Level logLevel = Logger.Level.INFO;
    protected long cacheSize = DEFAULT_CACHE_SIZE;
    private boolean frozen = false;
    private boolean stopped = false;

    /* JADX INFO: renamed from: com.google.firebase.database.core.Context$1, reason: invalid class name */
    class AnonymousClass1 implements AuthTokenProvider.GetTokenCompletionListener {
        final ConnectionAuthTokenProvider.GetTokenCallback val$callback;
        final ScheduledExecutorService val$executorService;

        AnonymousClass1(ScheduledExecutorService scheduledExecutorService, ConnectionAuthTokenProvider.GetTokenCallback getTokenCallback) {
            this.val$executorService = scheduledExecutorService;
            this.val$callback = getTokenCallback;
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider.GetTokenCompletionListener
        public void onError(String str) {
            this.val$executorService.execute(Context$1$$Lambda$4.lambdaFactory$(this.val$callback, str));
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider.GetTokenCompletionListener
        public void onSuccess(String str) {
            this.val$executorService.execute(Context$1$$Lambda$1.lambdaFactory$(this.val$callback, str));
        }
    }

    private String buildUserAgent(String str) {
        return NPStringFog.decode(new byte[]{116, 95, 69, 6, 6, 3, 65, 83, 24}, "267cdb", 6.910871E8f) + NPStringFog.decode(new byte[]{80}, "ebddc1", -2.032605016E9d) + NPStringFog.decode(new byte[]{74}, "e55255", -2.9225819E7d) + FirebaseDatabase.getSdkVersion() + NPStringFog.decode(new byte[]{74}, "ea6dfa", -2.0997858E8f) + str;
    }

    private void ensureAuthTokenProvider() {
        Preconditions.checkNotNull(this.authTokenProvider, NPStringFog.decode(new byte[]{104, 88, 77, 24, 92, 17, 66, 67, 24, 74, 84, 3, 88, 68, 76, 93, 67, 68, 80, 89, 24, 89, 68, 16, 89, 99, 87, 83, 84, 10, 97, 69, 87, 78, 88, 0, 84, 69, 24, 90, 84, 2, 94, 69, 93, 24, 88, 10, 88, 67, 81, 89, 93, 13, 75, 94, 86, 95, 17, 39, 94, 89, 76, 93, 73, 16, 31}, "17881d", 4.3209235E8f));
    }

    private void ensureEventTarget() {
        if (this.eventTarget == null) {
            this.eventTarget = getPlatform().newEventTarget(this);
        }
    }

    private void ensureLogger() {
        if (this.logger == null) {
            this.logger = getPlatform().newLogger(this, this.logLevel, this.loggedComponents);
        }
    }

    private void ensureRunLoop() {
        if (this.runLoop == null) {
            this.runLoop = this.platform.newRunLoop(this);
        }
    }

    private void ensureSessionIdentifier() {
        if (this.persistenceKey == null) {
            this.persistenceKey = NPStringFog.decode(new byte[]{82, 84, 83, 5, 76, 14, 66}, "615d9b", true);
        }
    }

    private void ensureUserAgent() {
        if (this.userAgent == null) {
            this.userAgent = buildUserAgent(getPlatform().getUserAgent(this));
        }
    }

    private ScheduledExecutorService getExecutorService() {
        RunLoop runLoop = getRunLoop();
        if (runLoop instanceof DefaultRunLoop) {
            return ((DefaultRunLoop) runLoop).getExecutorService();
        }
        throw new RuntimeException(NPStringFog.decode(new byte[]{113, 66, 17, 67, 10, 95, 18, 69, 23, 89, 69, 94, 93, 88, 18, 68, 69, 83, 64, 82, 66, 89, 10, 70, 18, 68, 23, 71, 21, 93, 64, 67, 7, 83, 68}, "27b7e2", false, false));
    }

    private Platform getPlatform() {
        if (this.platform == null) {
            initializeAndroidPlatform();
        }
        return this.platform;
    }

    private void initServices() {
        ensureLogger();
        getPlatform();
        ensureUserAgent();
        ensureEventTarget();
        ensureRunLoop();
        ensureSessionIdentifier();
        ensureAuthTokenProvider();
    }

    private void initializeAndroidPlatform() {
        synchronized (this) {
            this.platform = new AndroidPlatform(this.firebaseApp);
        }
    }

    static /* synthetic */ void lambda$wrapAuthTokenProvider$0(AuthTokenProvider authTokenProvider, ScheduledExecutorService scheduledExecutorService, boolean z, ConnectionAuthTokenProvider.GetTokenCallback getTokenCallback) {
        authTokenProvider.getToken(z, new AnonymousClass1(scheduledExecutorService, getTokenCallback));
    }

    private void restartServices() {
        this.eventTarget.restart();
        this.runLoop.restart();
    }

    private static ConnectionAuthTokenProvider wrapAuthTokenProvider(AuthTokenProvider authTokenProvider, ScheduledExecutorService scheduledExecutorService) {
        return Context$$Lambda$1.lambdaFactory$(authTokenProvider, scheduledExecutorService);
    }

    protected void assertUnfrozen() {
        if (isFrozen()) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{117, 87, 83, 12, 4, 91, 91, 89, 67, 12, 13, 92, 75, 24, 67, 10, 66, 118, 89, 76, 86, 7, 3, 65, 93, 123, 88, 11, 4, 91, 95, 24, 88, 7, 8, 87, 91, 76, 68, 69, 15, 71, 75, 76, 23, 10, 1, 81, 77, 74, 23, 7, 7, 84, 87, 74, 82, 69, 22, 90, 93, 65, 23, 4, 16, 87, 24, 81, 89, 69, 23, 65, 93}, "887eb2", 5.3615092E7f));
        }
    }

    void forcePersistenceManager(PersistenceManager persistenceManager) {
        this.forcedPersistenceManager = persistenceManager;
    }

    void freeze() {
        synchronized (this) {
            if (!this.frozen) {
                this.frozen = true;
                initServices();
            }
        }
    }

    public AuthTokenProvider getAuthTokenProvider() {
        return this.authTokenProvider;
    }

    public ConnectionContext getConnectionContext() {
        return new ConnectionContext(getLogger(), wrapAuthTokenProvider(getAuthTokenProvider(), getExecutorService()), getExecutorService(), isPersistenceEnabled(), FirebaseDatabase.getSdkVersion(), getUserAgent(), this.firebaseApp.getOptions().getApplicationId(), getSSLCacheDirectory().getAbsolutePath());
    }

    public EventTarget getEventTarget() {
        return this.eventTarget;
    }

    public Logger.Level getLogLevel() {
        return this.logLevel;
    }

    public LogWrapper getLogger(String str) {
        return new LogWrapper(this.logger, str);
    }

    public LogWrapper getLogger(String str, String str2) {
        return new LogWrapper(this.logger, str, str2);
    }

    public Logger getLogger() {
        return this.logger;
    }

    public List<String> getOptDebugLogComponents() {
        return this.loggedComponents;
    }

    public long getPersistenceCacheSizeBytes() {
        return this.cacheSize;
    }

    PersistenceManager getPersistenceManager(String str) {
        PersistenceManager persistenceManager = this.forcedPersistenceManager;
        if (persistenceManager != null) {
            return persistenceManager;
        }
        if (!this.persistenceEnabled) {
            return new NoopPersistenceManager();
        }
        PersistenceManager persistenceManagerCreatePersistenceManager = this.platform.createPersistenceManager(this, str);
        if (persistenceManagerCreatePersistenceManager == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{104, 12, 23, 65, 95, 89, 71, 6, 66, 4, 89, 89, 83, 15, 7, 5, 23, 72, 84, 17, 17, 8, 68, 76, 84, 13, 1, 4, 27, 24, 83, 22, 22, 65, 71, 93, 67, 16, 11, 18, 67, 93, 95, 0, 7, 65, 94, 75, 17, 13, 13, 21, 23, 75, 68, 19, 18, 14, 69, 76, 84, 7, 66, 14, 89, 24, 69, 11, 11, 18, 23, 72, 93, 2, 22, 7, 88, 74, 92, 77}, "1cba78", true));
        }
        return persistenceManagerCreatePersistenceManager;
    }

    public String getPlatformVersion() {
        return getPlatform().getPlatformVersion();
    }

    public RunLoop getRunLoop() {
        return this.runLoop;
    }

    public File getSSLCacheDirectory() {
        return getPlatform().getSSLCacheDirectory();
    }

    public String getSessionPersistenceKey() {
        return this.persistenceKey;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public boolean isFrozen() {
        return this.frozen;
    }

    public boolean isPersistenceEnabled() {
        return this.persistenceEnabled;
    }

    public boolean isStopped() {
        return this.stopped;
    }

    public PersistentConnection newPersistentConnection(HostInfo hostInfo, PersistentConnection.Delegate delegate) {
        return getPlatform().newPersistentConnection(this, getConnectionContext(), hostInfo, delegate);
    }

    public void requireStarted() {
        if (this.stopped) {
            restartServices();
            this.stopped = false;
        }
    }

    void stop() {
        this.stopped = true;
        this.eventTarget.shutdown();
        this.runLoop.shutdown();
    }
}
