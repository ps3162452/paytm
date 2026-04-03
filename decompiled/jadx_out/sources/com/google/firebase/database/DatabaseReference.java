package com.google.firebase.database;

import com.google.android.gms.tasks.Task;
import com.google.firebase.database.Transaction;
import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.DatabaseConfig;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.Repo;
import com.google.firebase.database.core.RepoManager;
import com.google.firebase.database.core.ValidationPath;
import com.google.firebase.database.core.utilities.Pair;
import com.google.firebase.database.core.utilities.ParsedUrl;
import com.google.firebase.database.core.utilities.PushIdGenerator;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.utilities.Validation;
import com.google.firebase.database.core.utilities.encoding.CustomClassMapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DatabaseReference extends Query {
    private static DatabaseConfig defaultConfig;

    public interface CompletionListener {
        void onComplete(DatabaseError databaseError, DatabaseReference databaseReference);
    }

    DatabaseReference(Repo repo, Path path) {
        super(repo, path);
    }

    private DatabaseReference(ParsedUrl parsedUrl, DatabaseConfig databaseConfig) {
        this(RepoManager.getRepo(databaseConfig, parsedUrl.repoInfo), parsedUrl.path);
    }

    DatabaseReference(String str, DatabaseConfig databaseConfig) {
        this(Utilities.parseUrl(str), databaseConfig);
    }

    private static DatabaseConfig getDefaultConfig() {
        DatabaseConfig databaseConfig;
        synchronized (DatabaseReference.class) {
            try {
                if (defaultConfig == null) {
                    defaultConfig = new DatabaseConfig();
                }
                databaseConfig = defaultConfig;
            } catch (Throwable th) {
                throw th;
            }
        }
        return databaseConfig;
    }

    public static void goOffline() {
        goOffline(getDefaultConfig());
    }

    static void goOffline(DatabaseConfig databaseConfig) {
        RepoManager.interrupt(databaseConfig);
    }

    public static void goOnline() {
        goOnline(getDefaultConfig());
    }

    static void goOnline(DatabaseConfig databaseConfig) {
        RepoManager.resume(databaseConfig);
    }

    private Task<Void> setPriorityInternal(Node node, CompletionListener completionListener) {
        Validation.validateWritablePath(getPath());
        Pair<Task<Void>, CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, node, pairWrapOnComplete) { // from class: com.google.firebase.database.DatabaseReference.2
            final DatabaseReference this$0;
            final Node val$priority;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$priority = node;
                this.val$wrapped = pairWrapOnComplete;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.setValue(this.this$0.getPath().child(ChildKey.getPriorityKey()), this.val$priority, (CompletionListener) this.val$wrapped.getSecond());
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    private Task<Void> setValueInternal(Object obj, Node node, CompletionListener completionListener) {
        Validation.validateWritablePath(getPath());
        ValidationPath.validateWithObject(getPath(), obj);
        Object objConvertToPlainJavaTypes = CustomClassMapper.convertToPlainJavaTypes(obj);
        Validation.validateWritableObject(objConvertToPlainJavaTypes);
        Node nodeNodeFromJSON = NodeUtilities.NodeFromJSON(objConvertToPlainJavaTypes, node);
        Pair<Task<Void>, CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, nodeNodeFromJSON, pairWrapOnComplete) { // from class: com.google.firebase.database.DatabaseReference.1
            final DatabaseReference this$0;
            final Node val$node;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$node = nodeNodeFromJSON;
                this.val$wrapped = pairWrapOnComplete;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.setValue(this.this$0.getPath(), this.val$node, (CompletionListener) this.val$wrapped.getSecond());
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    private Task<Void> updateChildrenInternal(Map<String, Object> map, CompletionListener completionListener) {
        if (map == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{37, 87, 13, 21, 70, 25, 22, 87, 16, 65, 18, 87, 19, 90, 15, 18, 84, 86, 20, 22, 2, 64, 85, 76, 11, 83, 13, 70, 18, 30, 19, 70, 7, 83, 70, 92, 65, 22, 10, 92, 18, 76, 22, 82, 2, 70, 87, 122, 14, 95, 15, 86, 64, 92, 8, 30, 74}, "f6c229", 4.7157167E7d));
        }
        Map<String, Object> mapConvertToPlainJavaTypes = CustomClassMapper.convertToPlainJavaTypes(map);
        CompoundWrite compoundWriteFromPathMerge = CompoundWrite.fromPathMerge(Validation.parseAndValidateUpdate(getPath(), mapConvertToPlainJavaTypes));
        Pair<Task<Void>, CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, compoundWriteFromPathMerge, pairWrapOnComplete, mapConvertToPlainJavaTypes) { // from class: com.google.firebase.database.DatabaseReference.3
            final DatabaseReference this$0;
            final Map val$bouncedUpdate;
            final CompoundWrite val$merge;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$merge = compoundWriteFromPathMerge;
                this.val$wrapped = pairWrapOnComplete;
                this.val$bouncedUpdate = mapConvertToPlainJavaTypes;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.updateChildren(this.this$0.getPath(), this.val$merge, (CompletionListener) this.val$wrapped.getSecond(), this.val$bouncedUpdate);
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    public DatabaseReference child(String str) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{32, 4, 8, 18, 71, 16, 19, 4, 21, 70, 19, 94, 22, 9, 10, 21, 85, 95, 17, 69, 7, 71, 84, 69, 14, 0, 8, 65, 19, 23, 19, 4, 18, 93, 96, 68, 17, 12, 8, 82, 20, 16, 10, 11, 70, 86, 91, 89, 15, 1, 78, 28}, "cef530", -13481));
        }
        if (getPath().isEmpty()) {
            Validation.validateRootPathString(str);
        } else {
            Validation.validatePathString(str);
        }
        return new DatabaseReference(this.repo, getPath().child(new Path(str)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof DatabaseReference) && toString().equals(obj.toString());
    }

    public FirebaseDatabase getDatabase() {
        return this.repo.getDatabase();
    }

    public String getKey() {
        if (getPath().isEmpty()) {
            return null;
        }
        return getPath().getBack().asString();
    }

    public DatabaseReference getParent() {
        Path parent = getPath().getParent();
        if (parent != null) {
            return new DatabaseReference(this.repo, parent);
        }
        return null;
    }

    public DatabaseReference getRoot() {
        return new DatabaseReference(this.repo, new Path(""));
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public OnDisconnect onDisconnect() {
        Validation.validateWritablePath(getPath());
        return new OnDisconnect(this.repo, getPath());
    }

    public DatabaseReference push() {
        return new DatabaseReference(this.repo, getPath().child(ChildKey.fromString(PushIdGenerator.generatePushChildName(this.repo.getServerTime()))));
    }

    public Task<Void> removeValue() {
        return setValue(null);
    }

    public void removeValue(CompletionListener completionListener) {
        setValue((Object) null, completionListener);
    }

    public void runTransaction(Transaction.Handler handler) {
        runTransaction(handler, true);
    }

    public void runTransaction(Transaction.Handler handler, boolean z) {
        if (handler == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{114, 81, 89, 31, 17, 18, 65, 81, 68, 75, 69, 92, 68, 92, 91, 24, 3, 93, 67, 16, 86, 74, 2, 71, 92, 85, 89, 76, 69, 21, 89, 81, 89, 92, 9, 87, 67, 23, 23, 81, 11, 18, 67, 69, 89, 108, 23, 83, 95, 67, 86, 91, 17, 91, 94, 94, 31, 17}, "1078e2", true, false));
        }
        Validation.validateWritablePath(getPath());
        this.repo.scheduleNow(new Runnable(this, handler, z) { // from class: com.google.firebase.database.DatabaseReference.4
            final DatabaseReference this$0;
            final boolean val$fireLocalEvents;
            final Transaction.Handler val$handler;

            {
                this.this$0 = this;
                this.val$handler = handler;
                this.val$fireLocalEvents = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.startTransaction(this.this$0.getPath(), this.val$handler, this.val$fireLocalEvents);
            }
        });
    }

    void setHijackHash(boolean z) {
        this.repo.scheduleNow(new Runnable(this, z) { // from class: com.google.firebase.database.DatabaseReference.5
            final DatabaseReference this$0;
            final boolean val$hijackHash;

            {
                this.this$0 = this;
                this.val$hijackHash = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.setHijackHash(this.val$hijackHash);
            }
        });
    }

    public Task<Void> setPriority(Object obj) {
        return setPriorityInternal(PriorityUtilities.parsePriority(this.path, obj), null);
    }

    public void setPriority(Object obj, CompletionListener completionListener) {
        setPriorityInternal(PriorityUtilities.parsePriority(this.path, obj), completionListener);
    }

    public Task<Void> setValue(Object obj) {
        return setValueInternal(obj, PriorityUtilities.parsePriority(this.path, null), null);
    }

    public Task<Void> setValue(Object obj, Object obj2) {
        return setValueInternal(obj, PriorityUtilities.parsePriority(this.path, obj2), null);
    }

    public void setValue(Object obj, CompletionListener completionListener) {
        setValueInternal(obj, PriorityUtilities.parsePriority(this.path, null), completionListener);
    }

    public void setValue(Object obj, Object obj2, CompletionListener completionListener) {
        setValueInternal(obj, PriorityUtilities.parsePriority(this.path, obj2), completionListener);
    }

    public String toString() {
        DatabaseReference parent = getParent();
        if (parent == null) {
            return this.repo.toString();
        }
        try {
            return parent.toString() + NPStringFog.decode(new byte[]{27}, "46078f", 1.0173887E9f) + URLEncoder.encode(getKey(), NPStringFog.decode(new byte[]{108, 50, 118, 78, 8}, "9f0c04", true, false)).replace(NPStringFog.decode(new byte[]{25}, "2a584b", -3.1384298E8f), NPStringFog.decode(new byte[]{23, 83, 1}, "2a1326", -1.8120431E9f));
        } catch (UnsupportedEncodingException e) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{32, 88, 92, 91, 83, 93, 70, 77, 90, 23, 99, 107, 42, 124, 91, 84, 89, 93, 3, 25, 94, 82, 79, 3, 70}, "f95769", -765556075L) + getKey(), e);
        }
    }

    public Task<Void> updateChildren(Map<String, Object> map) {
        return updateChildrenInternal(map, null);
    }

    public void updateChildren(Map<String, Object> map, CompletionListener completionListener) {
        updateChildrenInternal(map, completionListener);
    }
}
