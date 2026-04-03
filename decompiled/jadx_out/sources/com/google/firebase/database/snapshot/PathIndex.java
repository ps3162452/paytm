package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.Path;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class PathIndex extends Index {
    private final Path indexPath;

    public PathIndex(Path path) {
        if (path.size() == 1 && path.getFront().isPriorityChildName()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 83, 91, 67, 67, 20, 2, 64, 80, 5, 67, 81, 65, 98, 84, 16, 95, 125, 15, 86, 80, 28, 23, 67, 8, 70, 93, 68, 16, 26, 17, 64, 92, 11, 69, 93, 21, 75, 18, 68, 86, 71, 65, 89, 80, 29, 25, 20, 49, 94, 80, 5, 68, 81, 65, 71, 70, 1, 23, 100, 19, 91, 90, 22, 94, 64, 24, 123, 91, 0, 82, 76, 65, 91, 91, 23, 67, 81, 0, 86, 20}, "a25d74", true, true));
        }
        this.indexPath = path;
    }

    @Override // java.util.Comparator
    public int compare(NamedNode namedNode, NamedNode namedNode2) {
        int iCompareTo = namedNode.getNode().getChild(this.indexPath).compareTo(namedNode2.getNode().getChild(this.indexPath));
        return iCompareTo == 0 ? namedNode.getName().compareTo(namedNode2.getName()) : iCompareTo;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.indexPath.equals(((PathIndex) obj).indexPath);
    }

    @Override // com.google.firebase.database.snapshot.Index
    public String getQueryDefinition() {
        return this.indexPath.wireFormat();
    }

    public int hashCode() {
        return this.indexPath.hashCode();
    }

    @Override // com.google.firebase.database.snapshot.Index
    public boolean isDefinedOn(Node node) {
        return !node.getChild(this.indexPath).isEmpty();
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode makePost(ChildKey childKey, Node node) {
        return new NamedNode(childKey, EmptyNode.Empty().updateChild(this.indexPath, node));
    }

    @Override // com.google.firebase.database.snapshot.Index
    public NamedNode maxPost() {
        return new NamedNode(ChildKey.getMaxName(), EmptyNode.Empty().updateChild(this.indexPath, Node.MAX_NODE));
    }
}
