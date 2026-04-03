package com.google.firebase.database.core.utilities;

import com.google.firebase.database.snapshot.BooleanNode;
import com.google.firebase.database.snapshot.DoubleNode;
import com.google.firebase.database.snapshot.LeafNode;
import com.google.firebase.database.snapshot.LongNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.StringNode;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class NodeSizeEstimator {
    static final boolean $assertionsDisabled = false;
    private static final int LEAF_PRIORITY_OVERHEAD = 24;

    private static long estimateLeafNodeSize(LeafNode<?> leafNode) {
        long length = 8;
        if (!(leafNode instanceof DoubleNode) && !(leafNode instanceof LongNode)) {
            if (leafNode instanceof BooleanNode) {
                length = 4;
            } else {
                if (!(leafNode instanceof StringNode)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 12, 91, 13, 11, 71, 88, 66, 92, 6, 5, 86, 22, 12, 95, 7, 1, 16, 66, 27, 64, 6, 94, 16}, "6b0cd0", true) + leafNode.getClass());
                }
                length = ((long) ((String) leafNode.getValue()).length()) + 2;
            }
        }
        if (leafNode.getPriority().isEmpty()) {
            return length;
        }
        return estimateLeafNodeSize((LeafNode) leafNode.getPriority()) + 24 + length;
    }

    public static long estimateSerializedNodeSize(Node node) {
        long j;
        if (node.isEmpty()) {
            return 4L;
        }
        if (node.isLeafNode()) {
            return estimateLeafNodeSize((LeafNode) node);
        }
        long jEstimateSerializedNodeSize = 1;
        Iterator<NamedNode> it = node.iterator();
        while (true) {
            j = jEstimateSerializedNodeSize;
            if (!it.hasNext()) {
                break;
            }
            NamedNode next = it.next();
            jEstimateSerializedNodeSize = estimateSerializedNodeSize(next.getNode()) + j + ((long) next.getName().asString().length()) + 4;
        }
        return !node.getPriority().isEmpty() ? j + 12 + estimateLeafNodeSize((LeafNode) node.getPriority()) : j;
    }

    public static int nodeCount(Node node) {
        int iNodeCount = 0;
        if (node.isEmpty()) {
            return 0;
        }
        if (node.isLeafNode()) {
            return 1;
        }
        Iterator<NamedNode> it = node.iterator();
        while (true) {
            int i = iNodeCount;
            if (!it.hasNext()) {
                return i;
            }
            iNodeCount = nodeCount(it.next().getNode()) + i;
        }
    }
}
