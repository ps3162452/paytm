package com.google.firebase.database.core.utilities;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Tree<T> {
    static final boolean $assertionsDisabled = false;
    private ChildKey name;
    private TreeNode<T> node;
    private Tree<T> parent;

    public interface TreeFilter<T> {
        boolean filterTreeNode(Tree<T> tree);
    }

    public interface TreeVisitor<T> {
        void visitTree(Tree<T> tree);
    }

    public Tree() {
        this(null, null, new TreeNode());
    }

    public Tree(ChildKey childKey, Tree<T> tree, TreeNode<T> treeNode) {
        this.name = childKey;
        this.parent = tree;
        this.node = treeNode;
    }

    private void updateChild(ChildKey childKey, Tree<T> tree) {
        boolean zIsEmpty = tree.isEmpty();
        boolean zContainsKey = this.node.children.containsKey(childKey);
        if (zIsEmpty && zContainsKey) {
            this.node.children.remove(childKey);
            updateParents();
        } else {
            if (zIsEmpty || zContainsKey) {
                return;
            }
            this.node.children.put(childKey, tree.node);
            updateParents();
        }
    }

    private void updateParents() {
        Tree<T> tree = this.parent;
        if (tree != null) {
            tree.updateChild(this.name, this);
        }
    }

    public boolean forEachAncestor(TreeFilter<T> treeFilter) {
        return forEachAncestor(treeFilter, false);
    }

    public boolean forEachAncestor(TreeFilter<T> treeFilter, boolean z) {
        if (!z) {
            this = this.parent;
        }
        while (this != null) {
            if (treeFilter.filterTreeNode(this)) {
                return true;
            }
            this = this.parent;
        }
        return false;
    }

    public void forEachChild(TreeVisitor<T> treeVisitor) {
        Object[] array = this.node.children.entrySet().toArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= array.length) {
                return;
            }
            Map.Entry entry = (Map.Entry) array[i2];
            treeVisitor.visitTree(new Tree<>((ChildKey) entry.getKey(), this, (TreeNode) entry.getValue()));
            i = i2 + 1;
        }
    }

    public void forEachDescendant(TreeVisitor<T> treeVisitor) {
        forEachDescendant(treeVisitor, false, false);
    }

    public void forEachDescendant(TreeVisitor<T> treeVisitor, boolean z) {
        forEachDescendant(treeVisitor, z, false);
    }

    public void forEachDescendant(TreeVisitor<T> treeVisitor, boolean z, boolean z2) {
        if (z && !z2) {
            treeVisitor.visitTree(this);
        }
        forEachChild(new TreeVisitor<T>(this, treeVisitor, z2) { // from class: com.google.firebase.database.core.utilities.Tree.1
            final Tree this$0;
            final boolean val$childrenFirst;
            final TreeVisitor val$visitor;

            {
                this.this$0 = this;
                this.val$visitor = treeVisitor;
                this.val$childrenFirst = z2;
            }

            @Override // com.google.firebase.database.core.utilities.Tree.TreeVisitor
            public void visitTree(Tree<T> tree) {
                tree.forEachDescendant(this.val$visitor, true, this.val$childrenFirst);
            }
        });
        if (z && z2) {
            treeVisitor.visitTree(this);
        }
    }

    public ChildKey getName() {
        return this.name;
    }

    public Tree<T> getParent() {
        return this.parent;
    }

    public Path getPath() {
        Tree<T> tree = this.parent;
        return tree != null ? tree.getPath().child(this.name) : this.name != null ? new Path(this.name) : Path.getEmptyPath();
    }

    public T getValue() {
        return this.node.value;
    }

    public boolean hasChildren() {
        return !this.node.children.isEmpty();
    }

    public boolean isEmpty() {
        return this.node.value == null && this.node.children.isEmpty();
    }

    public TreeNode<T> lastNodeOnPath(Path path) {
        TreeNode<T> treeNode = this.node;
        ChildKey front = path.getFront();
        while (front != null) {
            TreeNode<T> treeNode2 = treeNode.children.containsKey(front) ? treeNode.children.get(front) : null;
            if (treeNode2 == null) {
                return treeNode;
            }
            path = path.popFront();
            TreeNode<T> treeNode3 = treeNode2;
            front = path.getFront();
            treeNode = treeNode3;
        }
        return treeNode;
    }

    public void setValue(T t) {
        this.node.value = t;
        updateParents();
    }

    public Tree<T> subTree(Path path) {
        ChildKey front = path.getFront();
        while (front != null) {
            Tree<T> tree = new Tree<>(front, this, this.node.children.containsKey(front) ? this.node.children.get(front) : new TreeNode<>());
            path = path.popFront();
            front = path.getFront();
            this = tree;
        }
        return this;
    }

    public String toString() {
        return toString("");
    }

    String toString(String str) {
        ChildKey childKey = this.name;
        return str + (childKey == null ? NPStringFog.decode(new byte[]{88, 3, 88, 86, 95, 7}, "db6919", 2028487767L) : childKey.asString()) + "\n" + this.node.toString(str + "\t");
    }
}
