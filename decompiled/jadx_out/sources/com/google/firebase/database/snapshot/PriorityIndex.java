package com.google.firebase.database.snapshot;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class PriorityIndex extends Index {
    private static final PriorityIndex INSTANCE = new PriorityIndex();

    private PriorityIndex() {
    }

    public static PriorityIndex getInstance() {
        return INSTANCE;
    }

    @Override // java.util.Comparator
    public int compare(NamedNode namedNode, NamedNode namedNode2) {
        return NodeUtilities.nameAndPriorityCompare(namedNode.getName(), namedNode.getNode().getPriority(), namedNode2.getName(), namedNode2.getNode().getPriority());
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof PriorityIndex;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public String getQueryDefinition() {
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{32, 81, 91, 69, 76, 24, 4, 85, 65, 66, 73, 77, 6, 66, 76, 66, 92, 93, 5, 89, 91, 11, 76, 81, 12, 94, 21, 13, 86, 24, 19, 66, 92, 13, 74, 81, 23, 73, 21, 11, 86, 92, 6, 72, 20}, "c05b88", -9.367622E8f));
    }

    public int hashCode() {
        return 3155577;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public boolean isDefinedOn(Node node) {
        return !node.getPriority().isEmpty();
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode makePost(ChildKey childKey, Node node) {
        return new NamedNode(childKey, new StringNode(NPStringFog.decode(new byte[]{111, 52, 51, 44, 121, 102, 125, 48, 56, 72, 102, 123, 103, 48, 60}, "4dae64", -580957221L), node));
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode maxPost() {
        return makePost(ChildKey.getMaxName(), Node.MAX_NODE);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{101, 68, 92, 87, 16, 13, 65, 79, 124, 86, 6, 1, 77}, "5658bd", -24946);
    }
}
