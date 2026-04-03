package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.NodeSizeEstimator;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.ChildrenNode;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class CompoundHash {
    private final List<String> hashes;
    private final List<Path> posts;

    static class CompoundHashBuilder {
        private int currentPathDepth;
        private final SplitStrategy splitStrategy;
        private StringBuilder optHashValueBuilder = null;
        private Stack<ChildKey> currentPath = new Stack<>();
        private int lastLeafDepth = -1;
        private boolean needsComma = true;
        private final List<Path> currentPaths = new ArrayList();
        private final List<String> currentHashes = new ArrayList();

        public CompoundHashBuilder(SplitStrategy splitStrategy) {
            this.splitStrategy = splitStrategy;
        }

        private void appendKey(StringBuilder sb, ChildKey childKey) {
            sb.append(Utilities.stringHashV2Representation(childKey.asString()));
        }

        private Path currentPath(int i) {
            ChildKey[] childKeyArr = new ChildKey[i];
            for (int i2 = 0; i2 < i; i2++) {
                childKeyArr[i2] = this.currentPath.get(i2);
            }
            return new Path(childKeyArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endChild() {
            this.currentPathDepth--;
            if (buildingRange()) {
                this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{27}, "264545", 1.4286876E9f));
            }
            this.needsComma = true;
        }

        private void endRange() {
            Utilities.hardAssert(buildingRange(), NPStringFog.decode(new byte[]{113, 3, 8, 23, 69, 20, 87, 12, 2, 16, 67, 85, 92, 5, 3, 16, 70, 93, 70, 10, 9, 69, 69, 20, 65, 22, 7, 66, 69, 93, 92, 5, 70, 81, 17, 70, 83, 12, 1, 85, 16}, "2bf014", true));
            for (int i = 0; i < this.currentPathDepth; i++) {
                this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{24}, "1a6562", 1.8392043E9d));
            }
            this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{72}, "af9b7c", true, false));
            Path pathCurrentPath = currentPath(this.lastLeafDepth);
            this.currentHashes.add(Utilities.sha1HexDigest(this.optHashValueBuilder.toString()));
            this.currentPaths.add(pathCurrentPath);
            this.optHashValueBuilder = null;
        }

        private void ensureRange() {
            if (buildingRange()) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            this.optHashValueBuilder = sb;
            sb.append(NPStringFog.decode(new byte[]{27}, "3966bb", true, true));
            Iterator<ChildKey> it = currentPath(this.currentPathDepth).iterator();
            while (it.hasNext()) {
                appendKey(this.optHashValueBuilder, it.next());
                this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{88, 29}, "b5930a", 1.0490495E9f));
            }
            this.needsComma = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishHashing() {
            Utilities.hardAssert(this.currentPathDepth == 0, NPStringFog.decode(new byte[]{119, 7, 12, 65, 22, 18, 82, 15, 12, 15, 17, 90, 20, 14, 3, 21, 10, 91, 90, 1, 66, 15, 12, 18, 64, 14, 7, 70, 15, 91, 80, 2, 14, 3, 66, 66, 70, 9, 1, 3, 17, 65, 93, 8, 5, 70, 3, 18, 87, 14, 11, 10, 6}, "4fbfb2", true));
            if (buildingRange()) {
                endRange();
            }
            this.currentHashes.add("");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processLeaf(LeafNode<?> leafNode) {
            ensureRange();
            this.lastLeafDepth = this.currentPathDepth;
            this.optHashValueBuilder.append(leafNode.getHashRepresentation(Node.HashVersion.V2));
            this.needsComma = true;
            if (this.splitStrategy.shouldSplit(this)) {
                endRange();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startChild(ChildKey childKey) {
            ensureRange();
            if (this.needsComma) {
                this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{29}, "1f1624", -19341));
            }
            appendKey(this.optHashValueBuilder, childKey);
            this.optHashValueBuilder.append(NPStringFog.decode(new byte[]{12, 30}, "6656d8", -32020));
            if (this.currentPathDepth == this.currentPath.size()) {
                this.currentPath.add(childKey);
            } else {
                this.currentPath.set(this.currentPathDepth, childKey);
            }
            this.currentPathDepth++;
            this.needsComma = false;
        }

        public boolean buildingRange() {
            return this.optHashValueBuilder != null;
        }

        public int currentHashLength() {
            return this.optHashValueBuilder.length();
        }

        public Path currentPath() {
            return currentPath(this.currentPathDepth);
        }
    }

    private static class SimpleSizeSplitStrategy implements SplitStrategy {
        private final long splitThreshold;

        public SimpleSizeSplitStrategy(Node node) {
            this.splitThreshold = Math.max(512L, (long) Math.sqrt(100 * NodeSizeEstimator.estimateSerializedNodeSize(node)));
        }

        @Override // com.google.firebase.database.snapshot.CompoundHash.SplitStrategy
        public boolean shouldSplit(CompoundHashBuilder compoundHashBuilder) {
            return ((long) compoundHashBuilder.currentHashLength()) > this.splitThreshold && (compoundHashBuilder.currentPath().isEmpty() || !compoundHashBuilder.currentPath().getBack().equals(ChildKey.getPriorityKey()));
        }
    }

    public interface SplitStrategy {
        boolean shouldSplit(CompoundHashBuilder compoundHashBuilder);
    }

    private CompoundHash(List<Path> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 19, 94, 0, 93, 17, 18, 9, 85, 66, 72, 12, 65, 18, 64, 66, 86, 6, 87, 2, 19, 22, 87, 67, 80, 3, 19, 12, 21, 82, 18, 0, 92, 16, 24, 13, 18, 14, 82, 17, 80, 6, 65, 70, 90, 12, 24, 32, 93, 11, 67, 13, 77, 13, 86, 46, 82, 17, 80}, "2f3b8c", 1714008867L));
        }
        this.posts = list;
        this.hashes = list2;
    }

    public static CompoundHash fromNode(Node node) {
        return fromNode(node, new SimpleSizeSplitStrategy(node));
    }

    public static CompoundHash fromNode(Node node, SplitStrategy splitStrategy) {
        if (node.isEmpty()) {
            return new CompoundHash(Collections.emptyList(), Collections.singletonList(""));
        }
        CompoundHashBuilder compoundHashBuilder = new CompoundHashBuilder(splitStrategy);
        processNode(node, compoundHashBuilder);
        compoundHashBuilder.finishHashing();
        return new CompoundHash(compoundHashBuilder.currentPaths, compoundHashBuilder.currentHashes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processNode(Node node, CompoundHashBuilder compoundHashBuilder) {
        if (node.isLeafNode()) {
            compoundHashBuilder.processLeaf((LeafNode) node);
        } else {
            if (node.isEmpty()) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 84, 86, 69, 21, 17, 91, 84, 84, 1, 20, 93, 89, 65, 93, 66, 9, 80, 75, 93, 24, 13, 15, 17, 93, 88, 72, 22, 24, 17, 86, 90, 92, 7, 64}, "858ba1", true, false));
            }
            if (!(node instanceof ChildrenNode)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 25, 21, 93, 90, 22, 7, 5, 69, 91, 81, 11, 14, 5, 23, 93, 87, 66, 12, 14, 1, 93, 21, 66, 0, 20, 17, 24, 94, 13, 22, 91, 69}, "bae89b", 2.119280523E9d) + node);
            }
            ((ChildrenNode) node).forEachChild(new ChildrenNode.ChildVisitor(compoundHashBuilder) { // from class: com.google.firebase.database.snapshot.CompoundHash.1
                final CompoundHashBuilder val$state;

                {
                    this.val$state = compoundHashBuilder;
                }

                @Override // com.google.firebase.database.snapshot.ChildrenNode.ChildVisitor
                public void visitChild(ChildKey childKey, Node node2) {
                    this.val$state.startChild(childKey);
                    CompoundHash.processNode(node2, this.val$state);
                    this.val$state.endChild();
                }
            }, true);
        }
    }

    public List<String> getHashes() {
        return Collections.unmodifiableList(this.hashes);
    }

    public List<Path> getPosts() {
        return Collections.unmodifiableList(this.posts);
    }
}
