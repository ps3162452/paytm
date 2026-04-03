package com.google.firebase.database;

import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.Repo;
import com.google.firebase.database.core.ValidationPath;
import com.google.firebase.database.core.utilities.Pair;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.utilities.Validation;
import com.google.firebase.database.core.utilities.encoding.CustomClassMapper;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.util.Map;

/* JADX INFO: loaded from: classes57.dex */
public class OnDisconnect {
    private Path path;
    private Repo repo;

    OnDisconnect(Repo repo, Path path) {
        this.repo = repo;
        this.path = path;
    }

    private Task<Void> cancelInternal(DatabaseReference.CompletionListener completionListener) {
        Pair<Task<Void>, DatabaseReference.CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, pairWrapOnComplete) { // from class: com.google.firebase.database.OnDisconnect.3
            final OnDisconnect this$0;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$wrapped = pairWrapOnComplete;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.onDisconnectCancel(this.this$0.path, (DatabaseReference.CompletionListener) this.val$wrapped.getSecond());
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    private Task<Void> onDisconnectSetInternal(Object obj, Node node, DatabaseReference.CompletionListener completionListener) {
        Validation.validateWritablePath(this.path);
        ValidationPath.validateWithObject(this.path, obj);
        Object objConvertToPlainJavaTypes = CustomClassMapper.convertToPlainJavaTypes(obj);
        Validation.validateWritableObject(objConvertToPlainJavaTypes);
        Node nodeNodeFromJSON = NodeUtilities.NodeFromJSON(objConvertToPlainJavaTypes, node);
        Pair<Task<Void>, DatabaseReference.CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, nodeNodeFromJSON, pairWrapOnComplete) { // from class: com.google.firebase.database.OnDisconnect.1
            final OnDisconnect this$0;
            final Node val$node;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$node = nodeNodeFromJSON;
                this.val$wrapped = pairWrapOnComplete;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.onDisconnectSetValue(this.this$0.path, this.val$node, (DatabaseReference.CompletionListener) this.val$wrapped.getSecond());
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    private Task<Void> updateChildrenInternal(Map<String, Object> map, DatabaseReference.CompletionListener completionListener) {
        Map<Path, Node> andValidateUpdate = Validation.parseAndValidateUpdate(this.path, map);
        Pair<Task<Void>, DatabaseReference.CompletionListener> pairWrapOnComplete = Utilities.wrapOnComplete(completionListener);
        this.repo.scheduleNow(new Runnable(this, andValidateUpdate, pairWrapOnComplete, map) { // from class: com.google.firebase.database.OnDisconnect.2
            final OnDisconnect this$0;
            final Map val$parsedUpdate;
            final Map val$update;
            final Pair val$wrapped;

            {
                this.this$0 = this;
                this.val$parsedUpdate = andValidateUpdate;
                this.val$wrapped = pairWrapOnComplete;
                this.val$update = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.onDisconnectUpdate(this.this$0.path, this.val$parsedUpdate, (DatabaseReference.CompletionListener) this.val$wrapped.getSecond(), this.val$update);
            }
        });
        return pairWrapOnComplete.getFirst();
    }

    public Task<Void> cancel() {
        return cancelInternal(null);
    }

    public void cancel(DatabaseReference.CompletionListener completionListener) {
        cancelInternal(completionListener);
    }

    public Task<Void> removeValue() {
        return setValue(null);
    }

    public void removeValue(DatabaseReference.CompletionListener completionListener) {
        setValue((Object) null, completionListener);
    }

    public Task<Void> setValue(Object obj) {
        return onDisconnectSetInternal(obj, PriorityUtilities.NullPriority(), null);
    }

    public Task<Void> setValue(Object obj, double d) {
        return onDisconnectSetInternal(obj, PriorityUtilities.parsePriority(this.path, Double.valueOf(d)), null);
    }

    public Task<Void> setValue(Object obj, String str) {
        return onDisconnectSetInternal(obj, PriorityUtilities.parsePriority(this.path, str), null);
    }

    public void setValue(Object obj, double d, DatabaseReference.CompletionListener completionListener) {
        onDisconnectSetInternal(obj, PriorityUtilities.parsePriority(this.path, Double.valueOf(d)), completionListener);
    }

    public void setValue(Object obj, DatabaseReference.CompletionListener completionListener) {
        onDisconnectSetInternal(obj, PriorityUtilities.NullPriority(), completionListener);
    }

    public void setValue(Object obj, String str, DatabaseReference.CompletionListener completionListener) {
        onDisconnectSetInternal(obj, PriorityUtilities.parsePriority(this.path, str), completionListener);
    }

    public void setValue(Object obj, Map map, DatabaseReference.CompletionListener completionListener) {
        onDisconnectSetInternal(obj, PriorityUtilities.parsePriority(this.path, map), completionListener);
    }

    public Task<Void> updateChildren(Map<String, Object> map) {
        return updateChildrenInternal(map, null);
    }

    public void updateChildren(Map<String, Object> map, DatabaseReference.CompletionListener completionListener) {
        updateChildrenInternal(map, completionListener);
    }
}
