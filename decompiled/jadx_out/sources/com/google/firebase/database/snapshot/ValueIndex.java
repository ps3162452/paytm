package com.google.firebase.database.snapshot;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ValueIndex extends Index {
    private static final ValueIndex INSTANCE = new ValueIndex();

    private ValueIndex() {
    }

    public static ValueIndex getInstance() {
        return INSTANCE;
    }

    @Override // java.util.Comparator
    public int compare(NamedNode namedNode, NamedNode namedNode2) {
        int iCompareTo = namedNode.getNode().compareTo(namedNode2.getNode());
        return iCompareTo == 0 ? namedNode.getName().compareTo(namedNode2.getName()) : iCompareTo;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof ValueIndex;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public String getQueryDefinition() {
        return NPStringFog.decode(new byte[]{25, 70, 82, 94, 19, 6}, "7032fc", -3.6893666E7d);
    }

    public int hashCode() {
        return 4;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public boolean isDefinedOn(Node node) {
        return true;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode makePost(ChildKey childKey, Node node) {
        return new NamedNode(childKey, node);
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode maxPost() {
        return new NamedNode(ChildKey.getMaxName(), Node.MAX_NODE);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{102, 85, 88, 69, 83, 123, 94, 80, 81, 72}, "044062", false);
    }
}
