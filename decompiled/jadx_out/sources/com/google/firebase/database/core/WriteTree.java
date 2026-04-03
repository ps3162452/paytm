package com.google.firebase.database.core;

import com.google.firebase.database.core.utilities.Predicate;
import com.google.firebase.database.core.view.CacheNode;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes57.dex */
public class WriteTree {
    static final boolean $assertionsDisabled = false;
    private static final Predicate<UserWriteRecord> DEFAULT_FILTER = new Predicate<UserWriteRecord>() { // from class: com.google.firebase.database.core.WriteTree.2
        @Override // com.google.firebase.database.core.utilities.Predicate
        public boolean evaluate(UserWriteRecord userWriteRecord) {
            return userWriteRecord.isVisible();
        }
    };
    private CompoundWrite visibleWrites = CompoundWrite.emptyWrite();
    private List<UserWriteRecord> allWrites = new ArrayList();
    private Long lastWriteId = -1L;

    private static CompoundWrite layerTree(List<UserWriteRecord> list, Predicate<UserWriteRecord> predicate, Path path) {
        CompoundWrite compoundWriteAddWrite;
        CompoundWrite compoundWriteEmptyWrite = CompoundWrite.emptyWrite();
        for (UserWriteRecord userWriteRecord : list) {
            if (predicate.evaluate(userWriteRecord)) {
                Path path2 = userWriteRecord.getPath();
                if (userWriteRecord.isOverwrite()) {
                    if (path.contains(path2)) {
                        compoundWriteAddWrite = compoundWriteEmptyWrite.addWrite(Path.getRelative(path, path2), userWriteRecord.getOverwrite());
                    } else if (path2.contains(path)) {
                        compoundWriteEmptyWrite = compoundWriteEmptyWrite.addWrite(Path.getEmptyPath(), userWriteRecord.getOverwrite().getChild(Path.getRelative(path2, path)));
                    } else {
                        compoundWriteAddWrite = compoundWriteEmptyWrite;
                    }
                    compoundWriteEmptyWrite = compoundWriteAddWrite;
                } else if (path.contains(path2)) {
                    compoundWriteEmptyWrite = compoundWriteEmptyWrite.addWrites(Path.getRelative(path, path2), userWriteRecord.getMerge());
                } else if (path2.contains(path)) {
                    Path relative = Path.getRelative(path2, path);
                    if (relative.isEmpty()) {
                        compoundWriteEmptyWrite = compoundWriteEmptyWrite.addWrites(Path.getEmptyPath(), userWriteRecord.getMerge());
                    } else {
                        Node completeNode = userWriteRecord.getMerge().getCompleteNode(relative);
                        if (completeNode != null) {
                            compoundWriteEmptyWrite = compoundWriteEmptyWrite.addWrite(Path.getEmptyPath(), completeNode);
                        }
                    }
                }
            }
        }
        return compoundWriteEmptyWrite;
    }

    private boolean recordContainsPath(UserWriteRecord userWriteRecord, Path path) {
        if (userWriteRecord.isOverwrite()) {
            return userWriteRecord.getPath().contains(path);
        }
        Iterator<Map.Entry<Path, Node>> it = userWriteRecord.getMerge().iterator();
        while (it.hasNext()) {
            if (userWriteRecord.getPath().child(it.next().getKey()).contains(path)) {
                return true;
            }
        }
        return false;
    }

    private void resetTree() {
        this.visibleWrites = layerTree(this.allWrites, DEFAULT_FILTER, Path.getEmptyPath());
        if (this.allWrites.size() <= 0) {
            this.lastWriteId = -1L;
        } else {
            this.lastWriteId = Long.valueOf(this.allWrites.get(r0.size() - 1).getWriteId());
        }
    }

    public void addMerge(Path path, CompoundWrite compoundWrite, Long l) {
        this.allWrites.add(new UserWriteRecord(l.longValue(), path, compoundWrite));
        this.visibleWrites = this.visibleWrites.addWrites(path, compoundWrite);
        this.lastWriteId = l;
    }

    public void addOverwrite(Path path, Node node, Long l, boolean z) {
        this.allWrites.add(new UserWriteRecord(l.longValue(), path, node, z));
        if (z) {
            this.visibleWrites = this.visibleWrites.addWrite(path, node);
        }
        this.lastWriteId = l;
    }

    public Node calcCompleteChild(Path path, ChildKey childKey, CacheNode cacheNode) {
        Path pathChild = path.child(childKey);
        Node completeNode = this.visibleWrites.getCompleteNode(pathChild);
        if (completeNode != null) {
            return completeNode;
        }
        if (cacheNode.isCompleteForChild(childKey)) {
            return this.visibleWrites.childCompoundWrite(pathChild).apply(cacheNode.getNode().getImmediateChild(childKey));
        }
        return null;
    }

    public Node calcCompleteEventCache(Path path, Node node) {
        return calcCompleteEventCache(path, node, new ArrayList());
    }

    public Node calcCompleteEventCache(Path path, Node node, List<Long> list) {
        return calcCompleteEventCache(path, node, list, false);
    }

    public Node calcCompleteEventCache(Path path, Node node, List<Long> list, boolean z) {
        if (list.isEmpty() && !z) {
            Node completeNode = this.visibleWrites.getCompleteNode(path);
            if (completeNode != null) {
                return completeNode;
            }
            CompoundWrite compoundWriteChildCompoundWrite = this.visibleWrites.childCompoundWrite(path);
            if (compoundWriteChildCompoundWrite.isEmpty()) {
                return node;
            }
            if (node == null && !compoundWriteChildCompoundWrite.hasCompleteWrite(Path.getEmptyPath())) {
                return null;
            }
            if (node == null) {
                node = EmptyNode.Empty();
            }
            return compoundWriteChildCompoundWrite.apply(node);
        }
        CompoundWrite compoundWriteChildCompoundWrite2 = this.visibleWrites.childCompoundWrite(path);
        if (!z && compoundWriteChildCompoundWrite2.isEmpty()) {
            return node;
        }
        if (!z && node == null && !compoundWriteChildCompoundWrite2.hasCompleteWrite(Path.getEmptyPath())) {
            return null;
        }
        CompoundWrite compoundWriteLayerTree = layerTree(this.allWrites, new Predicate<UserWriteRecord>(this, z, list, path) { // from class: com.google.firebase.database.core.WriteTree.1
            final WriteTree this$0;
            final boolean val$includeHiddenWrites;
            final Path val$treePath;
            final List val$writeIdsToExclude;

            {
                this.this$0 = this;
                this.val$includeHiddenWrites = z;
                this.val$writeIdsToExclude = list;
                this.val$treePath = path;
            }

            @Override // com.google.firebase.database.core.utilities.Predicate
            public boolean evaluate(UserWriteRecord userWriteRecord) {
                return (userWriteRecord.isVisible() || this.val$includeHiddenWrites) && !this.val$writeIdsToExclude.contains(Long.valueOf(userWriteRecord.getWriteId())) && (userWriteRecord.getPath().contains(this.val$treePath) || this.val$treePath.contains(userWriteRecord.getPath()));
            }
        }, path);
        if (node == null) {
            node = EmptyNode.Empty();
        }
        return compoundWriteLayerTree.apply(node);
    }

    public Node calcCompleteEventChildren(Path path, Node node) {
        Node nodeUpdateImmediateChild;
        Node nodeEmpty = EmptyNode.Empty();
        Node completeNode = this.visibleWrites.getCompleteNode(path);
        if (completeNode == null) {
            CompoundWrite compoundWriteChildCompoundWrite = this.visibleWrites.childCompoundWrite(path);
            Iterator<NamedNode> it = node.iterator();
            while (true) {
                nodeUpdateImmediateChild = nodeEmpty;
                if (!it.hasNext()) {
                    break;
                }
                NamedNode next = it.next();
                nodeEmpty = nodeUpdateImmediateChild.updateImmediateChild(next.getName(), compoundWriteChildCompoundWrite.childCompoundWrite(new Path(next.getName())).apply(next.getNode()));
            }
            for (NamedNode namedNode : compoundWriteChildCompoundWrite.getCompleteChildren()) {
                nodeUpdateImmediateChild = nodeUpdateImmediateChild.updateImmediateChild(namedNode.getName(), namedNode.getNode());
            }
            return nodeUpdateImmediateChild;
        }
        if (completeNode.isLeafNode()) {
            return nodeEmpty;
        }
        Iterator<NamedNode> it2 = completeNode.iterator();
        while (true) {
            Node node2 = nodeEmpty;
            if (!it2.hasNext()) {
                return node2;
            }
            NamedNode next2 = it2.next();
            nodeEmpty = node2.updateImmediateChild(next2.getName(), next2.getNode());
        }
    }

    public Node calcEventCacheAfterServerOverwrite(Path path, Path path2, Node node, Node node2) {
        Path pathChild = path.child(path2);
        if (this.visibleWrites.hasCompleteWrite(pathChild)) {
            return null;
        }
        CompoundWrite compoundWriteChildCompoundWrite = this.visibleWrites.childCompoundWrite(pathChild);
        return compoundWriteChildCompoundWrite.isEmpty() ? node2.getChild(path2) : compoundWriteChildCompoundWrite.apply(node2.getChild(path2));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.firebase.database.snapshot.NamedNode calcNextNodeAfterPost(com.google.firebase.database.core.Path r5, com.google.firebase.database.snapshot.Node r6, com.google.firebase.database.snapshot.NamedNode r7, boolean r8, com.google.firebase.database.snapshot.Index r9) {
        /*
            r4 = this;
            r1 = 0
            com.google.firebase.database.core.CompoundWrite r0 = r4.visibleWrites
            com.google.firebase.database.core.CompoundWrite r2 = r0.childCompoundWrite(r5)
            com.google.firebase.database.core.Path r0 = com.google.firebase.database.core.Path.getEmptyPath()
            com.google.firebase.database.snapshot.Node r0 = r2.getCompleteNode(r0)
            if (r0 == 0) goto L31
        L11:
            java.util.Iterator r2 = r0.iterator()
        L15:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L38
            java.lang.Object r0 = r2.next()
            com.google.firebase.database.snapshot.NamedNode r0 = (com.google.firebase.database.snapshot.NamedNode) r0
            int r3 = r9.compare(r0, r7, r8)
            if (r3 <= 0) goto L39
            if (r1 == 0) goto L2f
            int r3 = r9.compare(r0, r1, r8)
            if (r3 >= 0) goto L39
        L2f:
            r1 = r0
            goto L15
        L31:
            if (r6 == 0) goto L38
            com.google.firebase.database.snapshot.Node r0 = r2.apply(r6)
            goto L11
        L38:
            return r1
        L39:
            r0 = r1
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.core.WriteTree.calcNextNodeAfterPost(com.google.firebase.database.core.Path, com.google.firebase.database.snapshot.Node, com.google.firebase.database.snapshot.NamedNode, boolean, com.google.firebase.database.snapshot.Index):com.google.firebase.database.snapshot.NamedNode");
    }

    public WriteTreeRef childWrites(Path path) {
        return new WriteTreeRef(path, this);
    }

    public Node getCompleteWriteData(Path path) {
        return this.visibleWrites.getCompleteNode(path);
    }

    public UserWriteRecord getWrite(long j) {
        for (UserWriteRecord userWriteRecord : this.allWrites) {
            if (userWriteRecord.getWriteId() == j) {
                return userWriteRecord;
            }
        }
        return null;
    }

    public List<UserWriteRecord> purgeAllWrites() {
        ArrayList arrayList = new ArrayList(this.allWrites);
        this.visibleWrites = CompoundWrite.emptyWrite();
        this.allWrites = new ArrayList();
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean removeWrite(long r10) {
        /*
            r9 = this;
            r5 = 1
            r2 = 0
            r3 = 0
            java.util.List<com.google.firebase.database.core.UserWriteRecord> r0 = r9.allWrites
            java.util.Iterator r4 = r0.iterator()
            r1 = r2
        La:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L1f
            java.lang.Object r0 = r4.next()
            com.google.firebase.database.core.UserWriteRecord r0 = (com.google.firebase.database.core.UserWriteRecord) r0
            long r6 = r0.getWriteId()
            int r6 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r6 != 0) goto L58
            r3 = r0
        L1f:
            java.util.List<com.google.firebase.database.core.UserWriteRecord> r0 = r9.allWrites
            r0.remove(r3)
            boolean r6 = r3.isVisible()
            java.util.List<com.google.firebase.database.core.UserWriteRecord> r0 = r9.allWrites
            int r0 = r0.size()
            int r0 = r0 + (-1)
            r7 = r0
            r4 = r2
        L32:
            if (r6 == 0) goto L6d
            if (r7 < 0) goto L6d
            java.util.List<com.google.firebase.database.core.UserWriteRecord> r0 = r9.allWrites
            java.lang.Object r0 = r0.get(r7)
            com.google.firebase.database.core.UserWriteRecord r0 = (com.google.firebase.database.core.UserWriteRecord) r0
            boolean r8 = r0.isVisible()
            if (r8 == 0) goto Lb5
            if (r7 < r1) goto L5c
            com.google.firebase.database.core.Path r8 = r3.getPath()
            boolean r8 = r9.recordContainsPath(r0, r8)
            if (r8 == 0) goto L5c
            r0 = r4
            r4 = r2
        L52:
            int r6 = r7 + (-1)
            r7 = r6
            r6 = r4
            r4 = r0
            goto L32
        L58:
            int r0 = r1 + 1
            r1 = r0
            goto La
        L5c:
            com.google.firebase.database.core.Path r8 = r3.getPath()
            com.google.firebase.database.core.Path r0 = r0.getPath()
            boolean r0 = r8.contains(r0)
            if (r0 == 0) goto Lb5
            r0 = r5
            r4 = r6
            goto L52
        L6d:
            if (r6 != 0) goto L71
            r5 = r2
        L70:
            return r5
        L71:
            if (r4 == 0) goto L77
            r9.resetTree()
            goto L70
        L77:
            boolean r0 = r3.isOverwrite()
            if (r0 == 0) goto L8a
            com.google.firebase.database.core.CompoundWrite r0 = r9.visibleWrites
            com.google.firebase.database.core.Path r1 = r3.getPath()
            com.google.firebase.database.core.CompoundWrite r0 = r0.removeWrite(r1)
            r9.visibleWrites = r0
            goto L70
        L8a:
            com.google.firebase.database.core.CompoundWrite r0 = r3.getMerge()
            java.util.Iterator r1 = r0.iterator()
        L92:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L70
            java.lang.Object r0 = r1.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r0 = r0.getKey()
            com.google.firebase.database.core.Path r0 = (com.google.firebase.database.core.Path) r0
            com.google.firebase.database.core.CompoundWrite r2 = r9.visibleWrites
            com.google.firebase.database.core.Path r4 = r3.getPath()
            com.google.firebase.database.core.Path r0 = r4.child(r0)
            com.google.firebase.database.core.CompoundWrite r0 = r2.removeWrite(r0)
            r9.visibleWrites = r0
            goto L92
        Lb5:
            r0 = r4
            r4 = r6
            goto L52
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.core.WriteTree.removeWrite(long):boolean");
    }

    public Node shadowingWrite(Path path) {
        return this.visibleWrites.getCompleteNode(path);
    }
}
