package com.google.firebase.database.core;

import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.InternalHelpers;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class RepoManager {
    private static final RepoManager instance = new RepoManager();
    private final Map<Context, Map<String, Repo>> repos = new HashMap();

    private Repo createLocalRepo(Context context, RepoInfo repoInfo, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        Repo repo;
        context.freeze();
        String str = NPStringFog.decode(new byte[]{10, 64, 68, 20, 23, 14, 77, 27}, "b40dd4", -1.596648775E9d) + repoInfo.host + NPStringFog.decode(new byte[]{73}, "f2ae36", 6.09323235E8d) + repoInfo.namespace;
        synchronized (this.repos) {
            if (!this.repos.containsKey(context)) {
                this.repos.put(context, new HashMap());
            }
            Map<String, Repo> map = this.repos.get(context);
            if (map.containsKey(str)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 16, 85, 7, 64, 87, 127, 13, 83, 7, 88, 96, 86, 18, 95, 78, 29, 18, 80, 3, 92, 10, 81, 86, 19, 4, 95, 20, 20, 87, 75, 11, 67, 18, 93, 92, 84, 66, 66, 3, 68, 93, 29}, "3b0f42", false, true));
            }
            repo = new Repo(repoInfo, context, firebaseDatabase);
            map.put(str, repo);
        }
        return repo;
    }

    public static Repo createRepo(Context context, RepoInfo repoInfo, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        return instance.createLocalRepo(context, repoInfo, firebaseDatabase);
    }

    private Repo getLocalRepo(Context context, RepoInfo repoInfo) throws DatabaseException {
        Repo repo;
        context.freeze();
        String str = NPStringFog.decode(new byte[]{9, 23, 66, 69, 67, 13, 78, 76}, "ac6507", 3180) + repoInfo.host + NPStringFog.decode(new byte[]{28}, "369819", -540351255L) + repoInfo.namespace;
        synchronized (this.repos) {
            if (!this.repos.containsKey(context) || !this.repos.get(context).containsKey(str)) {
                InternalHelpers.createDatabaseForTests(FirebaseApp.getInstance(), repoInfo, (DatabaseConfig) context);
            }
            repo = this.repos.get(context).get(str);
        }
        return repo;
    }

    public static Repo getRepo(Context context, RepoInfo repoInfo) throws DatabaseException {
        return instance.getLocalRepo(context, repoInfo);
    }

    public static void interrupt(Context context) {
        instance.interruptInternal(context);
    }

    public static void interrupt(Repo repo) {
        repo.scheduleNow(new Runnable(repo) { // from class: com.google.firebase.database.core.RepoManager.1
            final Repo val$repo;

            {
                this.val$repo = repo;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$repo.interrupt();
            }
        });
    }

    private void interruptInternal(Context context) {
        RunLoop runLoop = context.getRunLoop();
        if (runLoop != null) {
            runLoop.scheduleNow(new Runnable(this, context) { // from class: com.google.firebase.database.core.RepoManager.3
                final RepoManager this$0;
                final Context val$ctx;

                {
                    this.this$0 = this;
                    this.val$ctx = context;
                }

                @Override // java.lang.Runnable
                public void run() {
                    synchronized (this.this$0.repos) {
                        if (this.this$0.repos.containsKey(this.val$ctx)) {
                            boolean z = true;
                            for (Repo repo : ((Map) this.this$0.repos.get(this.val$ctx)).values()) {
                                repo.interrupt();
                                z = z && !repo.hasListeners();
                            }
                            if (z) {
                                this.val$ctx.stop();
                            }
                        }
                    }
                }
            });
        }
    }

    public static void resume(Context context) {
        instance.resumeInternal(context);
    }

    public static void resume(Repo repo) {
        repo.scheduleNow(new Runnable(repo) { // from class: com.google.firebase.database.core.RepoManager.2
            final Repo val$repo;

            {
                this.val$repo = repo;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$repo.resume();
            }
        });
    }

    private void resumeInternal(Context context) {
        RunLoop runLoop = context.getRunLoop();
        if (runLoop != null) {
            runLoop.scheduleNow(new Runnable(this, context) { // from class: com.google.firebase.database.core.RepoManager.4
                final RepoManager this$0;
                final Context val$ctx;

                {
                    this.this$0 = this;
                    this.val$ctx = context;
                }

                @Override // java.lang.Runnable
                public void run() {
                    synchronized (this.this$0.repos) {
                        if (this.this$0.repos.containsKey(this.val$ctx)) {
                            Iterator it = ((Map) this.this$0.repos.get(this.val$ctx)).values().iterator();
                            while (it.hasNext()) {
                                ((Repo) it.next()).resume();
                            }
                        }
                    }
                }
            });
        }
    }
}
