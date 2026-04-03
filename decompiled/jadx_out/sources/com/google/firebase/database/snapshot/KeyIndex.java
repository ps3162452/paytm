package com.google.firebase.database.snapshot;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class KeyIndex extends Index {
    static final boolean $assertionsDisabled = false;
    private static final KeyIndex INSTANCE = new KeyIndex();

    private KeyIndex() {
    }

    public static KeyIndex getInstance() {
        return INSTANCE;
    }

    @Override // java.util.Comparator
    public int compare(NamedNode namedNode, NamedNode namedNode2) {
        return namedNode.getName().compareTo(namedNode2.getName());
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof KeyIndex;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public String getQueryDefinition() {
        return NPStringFog.decode(new byte[]{27, 91, 7, 26}, "50bcf6", 18337);
    }

    public int hashCode() {
        return 37;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public boolean isDefinedOn(Node node) {
        return true;
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode makePost(ChildKey childKey, Node node) {
        return new NamedNode(ChildKey.fromString((String) node.getValue()), EmptyNode.Empty());
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode maxPost() {
        return NamedNode.getMaxNode();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{125, 92, 27, 126, 8, 83, 83, 65}, "69b7f7", true, false);
    }
}
