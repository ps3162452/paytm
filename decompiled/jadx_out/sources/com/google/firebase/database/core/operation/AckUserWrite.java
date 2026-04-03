package com.google.firebase.database.core.operation;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.ChildKey;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class AckUserWrite extends Operation {
    private final ImmutableTree<Boolean> affectedTree;
    private final boolean revert;

    public AckUserWrite(Path path, ImmutableTree<Boolean> immutableTree, boolean z) {
        super(Operation.OperationType.AckUserWrite, OperationSource.USER, path);
        this.affectedTree = immutableTree;
        this.revert = z;
    }

    public ImmutableTree<Boolean> getAffectedTree() {
        return this.affectedTree;
    }

    public boolean isRevert() {
        return this.revert;
    }

    @Override // com.google.firebase.database.core.operation.Operation
    public Operation operationForChild(ChildKey childKey) {
        if (!this.path.isEmpty()) {
            Utilities.hardAssert(this.path.getFront().equals(childKey), NPStringFog.decode(new byte[]{88, 66, 92, 74, 87, 69, 94, 93, 87, 126, 89, 67, 116, 90, 80, 84, 82, 17, 84, 83, 85, 84, 83, 85, 23, 84, 86, 74, 22, 68, 89, 64, 92, 84, 87, 69, 82, 86, 25, 91, 94, 88, 91, 86, 23}, "729861", false));
            return new AckUserWrite(this.path.popFront(), this.affectedTree, this.revert);
        }
        if (this.affectedTree.getValue() == null) {
            return new AckUserWrite(Path.getEmptyPath(), this.affectedTree.subtree(new Path(childKey)), this.revert);
        }
        Utilities.hardAssert(this.affectedTree.getChildren().isEmpty(), NPStringFog.decode(new byte[]{83, 4, 80, 93, 87, 21, 87, 6, 98, 74, 81, 4, 18, 17, 94, 87, 65, 13, 86, 66, 88, 87, 64, 65, 90, 3, 64, 93, 20, 14, 68, 7, 68, 84, 85, 17, 66, 11, 88, 95, 20, 0, 84, 4, 83, 91, 64, 4, 86, 66, 70, 89, 64, 9, 65, 76}, "2b684a", true));
        return this;
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{120, 7, 9, 101, 18, 92, 75, 51, 16, 89, 21, 92, 25, 31, 66, 64, 0, 77, 81, 89, 71, 67, 77, 25, 75, 1, 20, 85, 19, 77, 4, 65, 17, 28, 65, 88, 95, 2, 7, 83, 21, 92, 93, 48, 16, 85, 4, 4, 28, 23, 66, 77}, "9db0a9", false, true), getPath(), Boolean.valueOf(this.revert), this.affectedTree);
    }
}
