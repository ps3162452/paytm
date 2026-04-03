package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.LeafNode;
import com.google.firebase.database.snapshot.Node;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class StringNode extends LeafNode<StringNode> {
    private final String value;

    /* JADX INFO: renamed from: com.google.firebase.database.snapshot.StringNode$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion;

        static {
            int[] iArr = new int[Node.HashVersion.values().length];
            $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion = iArr;
            try {
                iArr[Node.HashVersion.V1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion[Node.HashVersion.V2.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public StringNode(String str, Node node) {
        super(node);
        this.value = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.firebase.database.snapshot.LeafNode
    public int compareLeafValues(StringNode stringNode) {
        return this.value.compareTo(stringNode.value);
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    public boolean equals(Object obj) {
        if (!(obj instanceof StringNode)) {
            return false;
        }
        StringNode stringNode = (StringNode) obj;
        return this.value.equals(stringNode.value) && this.priority.equals(stringNode.priority);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public String getHashRepresentation(Node.HashVersion hashVersion) {
        switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion[hashVersion.ordinal()]) {
            case 1:
                return getPriorityHash(hashVersion) + NPStringFog.decode(new byte[]{22, 76, 74, 8, 15, 1, 95}, "e88aaf", -1182904373L) + this.value;
            case 2:
                return getPriorityHash(hashVersion) + NPStringFog.decode(new byte[]{71, 64, 70, 10, 15, 84, 14}, "444ca3", -2.1266835E9f) + Utilities.stringHashV2Representation(this.value);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 8, 21, 87, 94, 93, 85, 70, 11, 87, 65, 92, 17, 16, 6, 68, 65, 93, 94, 8, 67, 80, 93, 70, 17, 21, 23, 68, 91, 90, 86, 70, 13, 89, 86, 81, 11, 70}, "1fc624", -1623667447L) + hashVersion);
        }
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    protected LeafNode.LeafType getLeafType() {
        return LeafNode.LeafType.String;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Object getValue() {
        return this.value;
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    public int hashCode() {
        return this.value.hashCode() + this.priority.hashCode();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public StringNode updatePriority(Node node) {
        return new StringNode(this.value, node);
    }
}
