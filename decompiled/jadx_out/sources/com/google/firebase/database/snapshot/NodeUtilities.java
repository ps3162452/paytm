package com.google.firebase.database.snapshot;

import com.google.firebase.database.DatabaseException;

/* JADX INFO: loaded from: classes57.dex */
public class NodeUtilities {
    public static Node NodeFromJSON(Object obj) throws DatabaseException {
        return NodeFromJSON(obj, PriorityUtilities.NullPriority());
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01c4 A[PHI: r10
      0x01c4: PHI (r10v1 com.google.firebase.database.snapshot.Node) = (r10v0 com.google.firebase.database.snapshot.Node), (r10v3 com.google.firebase.database.snapshot.Node) binds: [B:4:0x0003, B:9:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.database.snapshot.Node NodeFromJSON(java.lang.Object r9, com.google.firebase.database.snapshot.Node r10) throws com.google.firebase.database.DatabaseException {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.snapshot.NodeUtilities.NodeFromJSON(java.lang.Object, com.google.firebase.database.snapshot.Node):com.google.firebase.database.snapshot.Node");
    }

    public static int nameAndPriorityCompare(ChildKey childKey, Node node, ChildKey childKey2, Node node2) {
        int iCompareTo = node.compareTo(node2);
        return iCompareTo != 0 ? iCompareTo : childKey.compareTo(childKey2);
    }
}
