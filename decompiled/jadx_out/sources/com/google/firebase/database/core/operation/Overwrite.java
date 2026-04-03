package com.google.firebase.database.core.operation;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.Node;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Overwrite extends Operation {
    private final Node snapshot;

    public Overwrite(OperationSource operationSource, Path path, Node node) {
        super(Operation.OperationType.Overwrite, operationSource, path);
        this.snapshot = node;
    }

    public Node getSnapshot() {
        return this.snapshot;
    }

    @Override // com.google.firebase.database.core.operation.Operation
    public Operation operationForChild(ChildKey childKey) {
        return this.path.isEmpty() ? new Overwrite(this.source, Path.getEmptyPath(), this.snapshot.getImmediateChild(childKey)) : new Overwrite(this.source, this.path.popFront(), this.snapshot);
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{41, 20, 7, 65, 68, 20, 15, 22, 7, 19, 72, 70, 22, 3, 22, 91, 14, 67, 21, 78, 66, 64, 92, 19, 20, 1, 7, 14, 22, 21, 74, 66, 17, 93, 82, 22, 21, 10, 13, 71, 14, 67, 21, 66, 31}, "fbb33f", 1.83092517E8d), getPath(), getSource(), this.snapshot);
    }
}
