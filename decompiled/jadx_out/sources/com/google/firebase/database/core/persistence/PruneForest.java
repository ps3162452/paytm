package com.google.firebase.database.core.persistence;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.Predicate;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.Iterator;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class PruneForest {
    private final ImmutableTree<Boolean> pruneForest;
    private static final Predicate<Boolean> KEEP_PREDICATE = new Predicate<Boolean>() { // from class: com.google.firebase.database.core.persistence.PruneForest.1
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(Boolean bool) {
            return !bool.booleanValue();
        }
    };
    private static final Predicate<Boolean> PRUNE_PREDICATE = new Predicate<Boolean>() { // from class: com.google.firebase.database.core.persistence.PruneForest.2
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(Boolean bool) {
            return bool.booleanValue();
        }
    };
    private static final ImmutableTree<Boolean> PRUNE_TREE = new ImmutableTree<>(true);
    private static final ImmutableTree<Boolean> KEEP_TREE = new ImmutableTree<>(false);

    public PruneForest() {
        this.pruneForest = ImmutableTree.emptyInstance();
    }

    private PruneForest(ImmutableTree<Boolean> immutableTree) {
        this.pruneForest = immutableTree;
    }

    private PruneForest doAll(Path path, Set<ChildKey> set, ImmutableTree<Boolean> immutableTree) {
        ImmutableTree<Boolean> immutableTreeSubtree = this.pruneForest.subtree(path);
        ImmutableSortedMap<ChildKey, ImmutableTree<Boolean>> children = immutableTreeSubtree.getChildren();
        Iterator<ChildKey> it = set.iterator();
        while (true) {
            ImmutableSortedMap<ChildKey, ImmutableTree<Boolean>> immutableSortedMap = children;
            if (!it.hasNext()) {
                return new PruneForest(this.pruneForest.setTree(path, new ImmutableTree<>(immutableTreeSubtree.getValue(), immutableSortedMap)));
            }
            children = immutableSortedMap.insert(it.next(), immutableTree);
        }
    }

    public boolean affectsPath(Path path) {
        return (this.pruneForest.rootMostValue(path) == null && this.pruneForest.subtree(path).isEmpty()) ? false : true;
    }

    public PruneForest child(Path path) {
        return path.isEmpty() ? this : child(path.getFront()).child(path.popFront());
    }

    public PruneForest child(ChildKey childKey) {
        ImmutableTree<Boolean> child = this.pruneForest.getChild(childKey);
        return new PruneForest(child == null ? new ImmutableTree<>(this.pruneForest.getValue()) : (child.getValue() != null || this.pruneForest.getValue() == null) ? child : child.set(Path.getEmptyPath(), this.pruneForest.getValue()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PruneForest) && this.pruneForest.equals(((PruneForest) obj).pruneForest);
    }

    public <T> T foldKeptNodes(T t, ImmutableTree.TreeVisitor<Void, T> treeVisitor) {
        return (T) this.pruneForest.fold(t, new ImmutableTree.TreeVisitor<Boolean, T>(this, treeVisitor) { // from class: com.google.firebase.database.core.persistence.PruneForest.3
            final PruneForest this$0;
            final ImmutableTree.TreeVisitor val$treeVisitor;

            {
                this.this$0 = this;
                this.val$treeVisitor = treeVisitor;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public T onNodeValue(Path path, Boolean bool, T t2) {
                return !bool.booleanValue() ? (T) this.val$treeVisitor.onNodeValue(path, null, t2) : t2;
            }
        });
    }

    public int hashCode() {
        return this.pruneForest.hashCode();
    }

    public PruneForest keep(Path path) {
        return this.pruneForest.rootMostValueMatching(path, KEEP_PREDICATE) != null ? this : new PruneForest(this.pruneForest.setTree(path, KEEP_TREE));
    }

    public PruneForest keepAll(Path path, Set<ChildKey> set) {
        return this.pruneForest.rootMostValueMatching(path, KEEP_PREDICATE) != null ? this : doAll(path, set, KEEP_TREE);
    }

    public PruneForest prune(Path path) {
        if (this.pruneForest.rootMostValueMatching(path, KEEP_PREDICATE) == null) {
            return this.pruneForest.rootMostValueMatching(path, PRUNE_PREDICATE) != null ? this : new PruneForest(this.pruneForest.setTree(path, PRUNE_TREE));
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 0, 92, 23, 65, 16, 17, 19, 71, 94, 80, 16, 17, 0, 70, 88, 21, 68, 9, 0, 70, 16, 66, 81, 18, 65, 89, 85, 69, 68, 65, 17, 64, 85, 67, 89, 14, 20, 65, 92, 76, 17}, "aa2050", 4632));
    }

    public PruneForest pruneAll(Path path, Set<ChildKey> set) {
        if (this.pruneForest.rootMostValueMatching(path, KEEP_PREDICATE) == null) {
            return this.pruneForest.rootMostValueMatching(path, PRUNE_PREDICATE) != null ? this : doAll(path, set, PRUNE_TREE);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 5, 11, 31, 64, 19, 17, 22, 16, 86, 81, 19, 17, 5, 17, 80, 20, 71, 9, 5, 17, 24, 67, 82, 18, 68, 14, 93, 68, 71, 65, 20, 23, 93, 66, 90, 14, 17, 22, 84, 77, 18}, "ade843", false, false));
    }

    public boolean prunesAnything() {
        return this.pruneForest.containsMatchingValue(PRUNE_PREDICATE);
    }

    public boolean shouldKeep(Path path) {
        Boolean boolLeafMostValue = this.pruneForest.leafMostValue(path);
        return (boolLeafMostValue == null || boolLeafMostValue.booleanValue()) ? false : true;
    }

    public boolean shouldPruneUnkeptDescendants(Path path) {
        Boolean boolLeafMostValue = this.pruneForest.leafMostValue(path);
        return boolLeafMostValue != null && boolLeafMostValue.booleanValue();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{76, 51, 75, 22, 11, 87, 113, 12, 75, 6, 22, 70, 13}, "7c9ce2", -714968667L) + this.pruneForest.toString() + NPStringFog.decode(new byte[]{69}, "838e11", true, true);
    }
}
