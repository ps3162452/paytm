package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.Path;
import java.util.Comparator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public abstract class Index implements Comparator<NamedNode> {
    public static Index fromQueryDefinition(String str) {
        if (str.equals(NPStringFog.decode(new byte[]{28, 19, 4, 10, 16, 80}, "2eefe5", -1.254737005E9d))) {
            return ValueIndex.getInstance();
        }
        if (str.equals(NPStringFog.decode(new byte[]{77, 9, 85, 24}, "cb0af0", 18074))) {
            return KeyIndex.getInstance();
        }
        if (str.equals(NPStringFog.decode(new byte[]{30, 70, 66, 15, 11, 65, 89, 66, 73}, "060fd3", -5629))) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{18, 67, 6, 19, 24, 32, 6, 80, 10, 15, 8, 16, 10, 89, 13, 65, 18, 12, 12, 67, 15, 5, 15, 67, 23, 22, 6, 23, 4, 22, 67, 84, 6, 65, 79, 20, 17, 95, 12, 19, 8, 16, 26, 22, 16, 8, 15, 7, 6, 22, 10, 21, 70, 23, 67, 66, 11, 4, 65, 0, 6, 80, 2, 20, 13, 16}, "c6caad", -19245));
        }
        return new PathIndex(new Path(str));
    }

    public int compare(NamedNode namedNode, NamedNode namedNode2, boolean z) {
        return z ? compare(namedNode2, namedNode) : compare(namedNode, namedNode2);
    }

    public abstract String getQueryDefinition();

    public boolean indexedValueChanged(Node node, Node node2) {
        return compare(new NamedNode(ChildKey.getMinName(), node), new NamedNode(ChildKey.getMinName(), node2)) != 0;
    }

    public abstract boolean isDefinedOn(Node node);

    public abstract NamedNode makePost(ChildKey childKey, Node node);

    public abstract NamedNode maxPost();

    public NamedNode minPost() {
        return NamedNode.getMinNode();
    }
}
