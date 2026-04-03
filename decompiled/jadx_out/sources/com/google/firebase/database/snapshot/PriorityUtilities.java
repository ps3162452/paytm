package com.google.firebase.database.snapshot;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.core.Path;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class PriorityUtilities {
    public static Node NullPriority() {
        return EmptyNode.Empty();
    }

    public static boolean isValidPriority(Node node) {
        return node.getPriority().isEmpty() && (node.isEmpty() || (node instanceof DoubleNode) || (node instanceof StringNode) || (node instanceof DeferredValueNode));
    }

    public static Node parsePriority(Path path, Object obj) {
        Node nodeNodeFromJSON = NodeUtilities.NodeFromJSON(obj);
        if (nodeNodeFromJSON instanceof LongNode) {
            nodeNodeFromJSON = new DoubleNode(Double.valueOf(((Long) nodeNodeFromJSON.getValue()).longValue()), NullPriority());
        }
        if (isValidPriority(nodeNodeFromJSON)) {
            return nodeNodeFromJSON;
        }
        throw new DatabaseException((path != null ? NPStringFog.decode(new byte[]{52, 81, 70, 80, 24, 65}, "d0288f", 2.001886248E9d) + path + NPStringFog.decode(new byte[]{21}, "285d66", 13565) : NPStringFog.decode(new byte[]{125, 12, 1, 93}, "3ce8c2", -1.020168645E9d)) + NPStringFog.decode(new byte[]{20, 5, 91, 15, 65, 81, 93, 8, 71, 65, 92, 94, 66, 7, 88, 8, 81, 16, 68, 20, 93, 14, 71, 89, 64, 31, 14, 65, 120, 69, 71, 18, 20, 3, 80, 16, 85, 70, 71, 21, 71, 89, 90, 1, 24, 65, 81, 95, 65, 4, 88, 4, 25, 16, 103, 3, 70, 23, 80, 66, 98, 7, 88, 20, 80, 28, 20, 9, 70, 65, 91, 69, 88, 10}, "4f4a50", 2070589051L));
    }

    public static Node parsePriority(Object obj) {
        return parsePriority(null, obj);
    }
}
