package com.google.firebase.database.core.operation;

import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.snapshot.ChildKey;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Merge extends Operation {
    private final CompoundWrite children;

    public Merge(OperationSource operationSource, Path path, CompoundWrite compoundWrite) {
        super(Operation.OperationType.Merge, operationSource, path);
        this.children = compoundWrite;
    }

    public CompoundWrite getChildren() {
        return this.children;
    }

    @Override // com.google.firebase.database.core.operation.Operation
    public Operation operationForChild(ChildKey childKey) {
        if (!this.path.isEmpty()) {
            if (this.path.getFront().equals(childKey)) {
                return new Merge(this.source, this.path.popFront(), this.children);
            }
            return null;
        }
        CompoundWrite compoundWriteChildCompoundWrite = this.children.childCompoundWrite(new Path(childKey));
        if (compoundWriteChildCompoundWrite.isEmpty()) {
            return null;
        }
        return compoundWriteChildCompoundWrite.rootWrite() != null ? new Overwrite(this.source, Path.getEmptyPath(), compoundWriteChildCompoundWrite.rootWrite()) : new Merge(this.source, Path.getEmptyPath(), compoundWriteChildCompoundWrite);
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{123, 4, 17, 6, 85, 16, 77, 65, 19, 0, 68, 88, 11, 68, 16, 77, 16, 67, 89, 20, 17, 2, 85, 13, 19, 18, 79, 65, 83, 88, 95, 13, 7, 19, 85, 94, 11, 68, 16, 65, 77}, "6aca00", 1.289320947E9d), getPath(), getSource(), this.children);
    }
}
