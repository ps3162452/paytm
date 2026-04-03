package com.google.firebase.database.core.operation;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.snapshot.ChildKey;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ListenComplete extends Operation {
    static final boolean $assertionsDisabled = false;

    public ListenComplete(OperationSource operationSource, Path path) {
        super(Operation.OperationType.ListenComplete, operationSource, path);
    }

    @Override // com.google.firebase.database.core.operation.Operation
    public Operation operationForChild(ChildKey childKey) {
        return this.path.isEmpty() ? new ListenComplete(this.source, Path.getEmptyPath()) : new ListenComplete(this.source, this.path.popFront());
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{117, 88, 18, 65, 83, 95, 122, 94, 12, 69, 90, 84, 77, 84, 65, 78, 22, 65, 88, 69, 9, 8, 19, 66, 21, 17, 18, 90, 67, 67, 90, 84, 92, 16, 69, 17, 68}, "91a561", 1.0167564E9f), getPath(), getSource());
    }
}
