package com.google.firebase.database;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.Logger;
import com.google.firebase.database.core.DatabaseConfig;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.Repo;
import com.google.firebase.database.core.RepoInfo;
import com.google.firebase.database.core.RepoManager;
import com.google.firebase.database.core.utilities.ParsedUrl;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.utilities.Validation;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class FirebaseDatabase {
    private static final String SDK_VERSION = NPStringFog.decode(new byte[]{84, 13, 27, 10, 24, 6}, "e45967", 2.085535832E9d);
    private final FirebaseApp app;
    private final DatabaseConfig config;
    private Repo repo;
    private final RepoInfo repoInfo;

    FirebaseDatabase(FirebaseApp firebaseApp, RepoInfo repoInfo, DatabaseConfig databaseConfig) {
        this.app = firebaseApp;
        this.repoInfo = repoInfo;
        this.config = databaseConfig;
    }

    private void assertUnfrozen(String str) {
        if (this.repo != null) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{116, 85, 92, 10, 22, 70, 67, 91, 16}, "740fef", -6.3641628E7f) + str + NPStringFog.decode(new byte[]{31, 30, 21, 93, 70, 69, 67, 23, 87, 85, 19, 91, 86, 83, 80, 16, 81, 83, 81, 88, 71, 85, 19, 87, 89, 78, 21, 95, 71, 94, 82, 69, 21, 69, 64, 87, 80, 82, 21, 95, 85, 22, 113, 94, 71, 85, 81, 87, 68, 82, 113, 81, 71, 87, 85, 86, 70, 85, 19, 95, 89, 68, 65, 81, 93, 85, 82, 25}, "775036", 617216558L));
        }
    }

    static FirebaseDatabase createForTests(FirebaseApp firebaseApp, RepoInfo repoInfo, DatabaseConfig databaseConfig) {
        FirebaseDatabase firebaseDatabase = new FirebaseDatabase(firebaseApp, repoInfo, databaseConfig);
        firebaseDatabase.ensureRepo();
        return firebaseDatabase;
    }

    private void ensureRepo() {
        synchronized (this) {
            if (this.repo == null) {
                this.repo = RepoManager.createRepo(this.config, this.repoInfo, this);
            }
        }
    }

    public static FirebaseDatabase getInstance() {
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        if (firebaseApp != null) {
            return getInstance(firebaseApp, firebaseApp.getOptions().getDatabaseUrl());
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{106, 13, 20, 22, 9, 19, 64, 22, 65, 85, 5, 10, 95, 66, 39, 95, 22, 3, 81, 3, 18, 83, 37, 22, 67, 76, 8, 88, 13, 18, 90, 3, 13, 95, 30, 3, 27, 75, 65, 80, 13, 20, 64, 22, 79}, "3ba6df", true));
    }

    public static FirebaseDatabase getInstance(FirebaseApp firebaseApp) {
        return getInstance(firebaseApp, firebaseApp.getOptions().getDatabaseUrl());
    }

    public static FirebaseDatabase getInstance(FirebaseApp firebaseApp, String str) {
        FirebaseDatabase firebaseDatabase;
        synchronized (FirebaseDatabase.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    throw new DatabaseException(NPStringFog.decode(new byte[]{117, 81, 80, 89, 83, 81, 19, 68, 86, 21, 81, 80, 71, 16, 127, 92, 68, 80, 81, 81, 74, 80, 114, 84, 71, 81, 91, 84, 69, 80, 19, 89, 87, 70, 66, 84, 93, 83, 92, 15, 22, 102, 67, 85, 90, 92, 80, 76, 19, 116, 88, 65, 87, 87, 82, 67, 92, 96, 100, 121, 19, 71, 80, 65, 94, 92, 93, 16, 127, 92, 68, 80, 81, 81, 74, 80, 119, 69, 67, 16, 86, 71, 22, 83, 65, 95, 84, 21, 79, 90, 70, 66, 25, 82, 83, 65, 122, 94, 74, 65, 87, 91, 80, 85, 17, 28, 22, 86, 82, 92, 85, 27}, "309565", -8.54374482E8d));
                }
                ParsedUrl url = Utilities.parseUrl(str);
                if (!url.path.isEmpty()) {
                    throw new DatabaseException(NPStringFog.decode(new byte[]{98, 68, 0, 6, 91, 5, 88, 81, 1, 69, 118, 2, 69, 85, 7, 4, 65, 6, 17, 97, 55, 41, 18, 68}, "14ee2c", 847840940L) + str + NPStringFog.decode(new byte[]{67, 22, 90, 71, 21, 8, 10, 64, 82, 88, 92, 5, 74, 22, 122, 64, 21, 18, 12, 89, 70, 88, 81, 65, 20, 89, 90, 90, 65, 65, 16, 89, 19, 64, 93, 4, 68, 68, 92, 91, 65, 65, 11, 80, 19, 85, 21, 39, 13, 68, 86, 86, 84, 18, 1, 22, 119, 85, 65, 0, 6, 87, 64, 81, 21, 3, 17, 66, 19, 93, 65, 65, 13, 88, 80, 88, 64, 5, 1, 69, 19, 85, 21, 17, 5, 66, 91, 14, 21}, "d6345a", 1163536019L) + url.path.toString());
                }
                Preconditions.checkNotNull(firebaseApp, NPStringFog.decode(new byte[]{101, 71, 87, 67, 91, 92, 80, 81, 24, 115, 91, 74, 80, 87, 89, 70, 87, 121, 69, 69, 24, 88, 71, 75, 65, 21, 86, 90, 70, 24, 87, 80, 24, 91, 71, 84, 89, 27}, "558528", false, true));
                FirebaseDatabaseComponent firebaseDatabaseComponent = (FirebaseDatabaseComponent) firebaseApp.get(FirebaseDatabaseComponent.class);
                Preconditions.checkNotNull(firebaseDatabaseComponent, NPStringFog.decode(new byte[]{36, 8, 65, 93, 80, 7, 17, 4, 19, 124, 83, 18, 3, 3, 82, 75, 87, 70, 1, 14, 94, 72, 93, 8, 7, 15, 71, 24, 91, 21, 66, 15, 92, 76, 18, 22, 16, 4, 64, 93, 92, 18, 76}, "ba382f", false));
                firebaseDatabase = firebaseDatabaseComponent.get(url.repoInfo);
            } finally {
            }
        }
        return firebaseDatabase;
    }

    public static FirebaseDatabase getInstance(String str) {
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        if (firebaseApp != null) {
            return getInstance(firebaseApp, str);
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{110, 12, 23, 25, 94, 65, 68, 23, 66, 90, 82, 88, 91, 67, 36, 80, 65, 81, 85, 2, 17, 92, 114, 68, 71, 77, 11, 87, 90, 64, 94, 2, 14, 80, 73, 81, 31, 74, 66, 95, 90, 70, 68, 23, 76}, "7cb934", 10222));
    }

    public static String getSdkVersion() {
        return SDK_VERSION;
    }

    public FirebaseApp getApp() {
        return this.app;
    }

    DatabaseConfig getConfig() {
        return this.config;
    }

    public DatabaseReference getReference() {
        ensureRepo();
        return new DatabaseReference(this.repo, Path.getEmptyPath());
    }

    public DatabaseReference getReference(String str) {
        ensureRepo();
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{119, 87, 10, 30, 71, 70, 68, 87, 23, 74, 19, 8, 65, 90, 8, 25, 85, 9, 70, 22, 5, 75, 84, 19, 89, 83, 10, 77, 19, 65, 68, 87, 16, 81, 96, 18, 70, 95, 10, 94, 20, 70, 93, 88, 68, 127, 90, 20, 81, 84, 5, 74, 86, 34, 85, 66, 5, 91, 82, 21, 81, 24, 3, 92, 71, 52, 81, 80, 1, 75, 86, 8, 87, 83, 76, 16}, "46d93f", 1.7581729E9f));
        }
        Validation.validateRootPathString(str);
        return new DatabaseReference(this.repo, new Path(str));
    }

    public DatabaseReference getReferenceFromUrl(String str) {
        ensureRepo();
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{118, 84, 89, 19, 68, 22, 69, 84, 68, 71, 16, 88, 64, 89, 91, 20, 86, 89, 71, 21, 86, 70, 87, 67, 88, 80, 89, 64, 16, 17, 64, 71, 91, 19, 16, 95, 91, 21, 113, 93, 66, 83, 87, 84, 68, 81, 116, 87, 65, 84, 85, 85, 67, 83, 27, 82, 82, 64, 98, 83, 83, 80, 69, 81, 94, 85, 80, 115, 69, 91, 93, 99, 71, 89, 31, 29}, "557406", -1397051301L));
        }
        ParsedUrl url = Utilities.parseUrl(str);
        if (url.repoInfo.host.equals(this.repo.getRepoInfo().host)) {
            return new DatabaseReference(this.repo, url.path);
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{126, 93, 18, 88, 84, 8, 83, 19, 49, 107, 116, 65, 31}, "73d98a", -5.06812319E8d) + str + NPStringFog.decode(new byte[]{72, 23, 19, 81, 64, 23, 4, 83, 67, 68, 92, 68, 6, 82, 23, 98, 86, 2, 4, 69, 6, 94, 80, 1, 73, 30, 77, 16, 19, 49, 51, 123, 67, 71, 82, 23, 65, 82, 27, 64, 86, 7, 21, 82, 7, 16, 71, 11, 65, 90, 2, 68, 80, 12, 65, 84, 12, 94, 85, 13, 6, 66, 17, 85, 87, 68, 37, 86, 23, 81, 81, 5, 18, 82, 67, 101, 97, 40, 91, 23}, "a7c03d", true, false) + getReference().toString());
    }

    public void goOffline() {
        ensureRepo();
        RepoManager.interrupt(this.repo);
    }

    public void goOnline() {
        ensureRepo();
        RepoManager.resume(this.repo);
    }

    public void purgeOutstandingWrites() {
        ensureRepo();
        this.repo.scheduleNow(new Runnable(this) { // from class: com.google.firebase.database.FirebaseDatabase.1
            final FirebaseDatabase this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.purgeOutstandingWrites();
            }
        });
    }

    public void setLogLevel(Logger.Level level) {
        synchronized (this) {
            assertUnfrozen(NPStringFog.decode(new byte[]{75, 6, 18, 126, 86, 6, 116, 6, 16, 87, 85}, "8cf29a", false));
            this.config.setLogLevel(level);
        }
    }

    public void setPersistenceCacheSizeBytes(long j) {
        synchronized (this) {
            assertUnfrozen(NPStringFog.decode(new byte[]{65, 83, 65, 49, 3, 70, 65, 95, 70, 21, 3, 90, 81, 83, 118, 0, 5, 92, 87, 101, 92, 27, 3, 118, 75, 66, 80, 18}, "265af4", 5.168113E8f));
            this.config.setPersistenceCacheSizeBytes(j);
        }
    }

    public void setPersistenceEnabled(boolean z) {
        synchronized (this) {
            assertUnfrozen(NPStringFog.decode(new byte[]{16, 87, 16, 98, 92, 70, 16, 91, 23, 70, 92, 90, 0, 87, 33, 92, 88, 86, 15, 87, 0}, "c2d294", false, true));
            this.config.setPersistenceEnabled(z);
        }
    }
}
