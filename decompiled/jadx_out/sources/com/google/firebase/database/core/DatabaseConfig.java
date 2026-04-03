package com.google.firebase.database.core;

import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.Logger;
import com.google.firebase.database.logging.Logger;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DatabaseConfig extends Context {

    /* JADX INFO: renamed from: com.google.firebase.database.core.DatabaseConfig$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$Logger$Level;

        static {
            int[] iArr = new int[Logger.Level.values().length];
            $SwitchMap$com$google$firebase$database$Logger$Level = iArr;
            try {
                iArr[Logger.Level.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$Logger$Level[Logger.Level.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$firebase$database$Logger$Level[Logger.Level.WARN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$firebase$database$Logger$Level[Logger.Level.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$firebase$database$Logger$Level[Logger.Level.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public void setAuthTokenProvider(AuthTokenProvider authTokenProvider) {
        this.authTokenProvider = authTokenProvider;
    }

    public void setDebugLogComponents(List<String> list) {
        synchronized (this) {
            assertUnfrozen();
            setLogLevel(Logger.Level.DEBUG);
            this.loggedComponents = list;
        }
    }

    public void setEventTarget(EventTarget eventTarget) {
        synchronized (this) {
            assertUnfrozen();
            this.eventTarget = eventTarget;
        }
    }

    public void setFirebaseApp(FirebaseApp firebaseApp) {
        synchronized (this) {
            this.firebaseApp = firebaseApp;
        }
    }

    public void setLogLevel(Logger.Level level) {
        synchronized (this) {
            assertUnfrozen();
            switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$Logger$Level[level.ordinal()]) {
                case 1:
                    this.logLevel = Logger.Level.DEBUG;
                    break;
                case 2:
                    this.logLevel = Logger.Level.INFO;
                    break;
                case 3:
                    this.logLevel = Logger.Level.WARN;
                    break;
                case 4:
                    this.logLevel = Logger.Level.ERROR;
                    break;
                case 5:
                    this.logLevel = Logger.Level.NONE;
                    break;
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 11, 90, 92, 13, 21, 90, 69, 93, 93, 5, 66, 88, 0, 71, 87, 14, 88, 20}, "4e12bb", -921) + level);
            }
        }
    }

    public void setLogger(com.google.firebase.database.logging.Logger logger) {
        synchronized (this) {
            assertUnfrozen();
            this.logger = logger;
        }
    }

    public void setPersistenceCacheSizeBytes(long j) {
        synchronized (this) {
            assertUnfrozen();
            if (j < 1048576) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{50, 13, 80, 24, 89, 8, 8, 12, 88, 77, 89, 65, 5, 4, 86, 80, 81, 65, 21, 12, 79, 93, 20, 12, 19, 22, 65, 24, 86, 4, 70, 4, 65, 24, 88, 4, 7, 22, 65, 24, 5, 44, 36}, "fe584a", -4208));
            }
            if (j > 104857600) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{37, 88, 16, 83, 6, 84, 16, 84, 66, 114, 5, 65, 2, 83, 3, 69, 1, 21, 0, 68, 16, 68, 1, 91, 23, 93, 27, 22, 0, 90, 6, 66, 12, 17, 16, 21, 16, 68, 18, 70, 11, 71, 23, 17, 3, 22, 7, 84, 0, 89, 7, 22, 23, 92, 25, 84, 66, 90, 5, 71, 4, 84, 16, 22, 16, 93, 2, 95, 66, 7, 84, 5, 46, 115}, "c1b6d5", true, false));
            }
            this.cacheSize = j;
        }
    }

    public void setPersistenceEnabled(boolean z) {
        synchronized (this) {
            assertUnfrozen();
            this.persistenceEnabled = z;
        }
    }

    public void setRunLoop(RunLoop runLoop) {
        this.runLoop = runLoop;
    }

    public void setSessionPersistenceKey(String str) {
        synchronized (this) {
            assertUnfrozen();
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{50, 81, 74, 69, 10, 94, 15, 20, 80, 82, 6, 95, 21, 93, 95, 95, 6, 67, 65, 93, 74, 22, 13, 94, 21, 20, 88, 90, 15, 94, 22, 81, 93, 22, 23, 94, 65, 86, 92, 22, 6, 92, 17, 64, 64, 22, 12, 67, 65, 90, 76, 90, 15, 16}, "a496c1", true));
            }
            this.persistenceKey = str;
        }
    }
}
