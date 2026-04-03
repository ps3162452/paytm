package com.google.firebase.database.core;

import com.google.firebase.database.core.ValueProvider;
import com.google.firebase.database.core.utilities.Clock;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.ChildrenNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ServerValues {
    public static final String NAME_OP_INCREMENT = NPStringFog.decode(new byte[]{10, 13, 91, 65, 1, 94, 6, 13, 76}, "cc83d3", false);
    public static final String NAME_OP_TIMESTAMP = NPStringFog.decode(new byte[]{22, 8, 92, 85, 74, 66, 3, 12, 65}, "ba1096", 1.497399177E9d);
    public static final String NAME_SUBKEY_SERVERVALUE = NPStringFog.decode(new byte[]{22, 68, 78}, "878e6f", -1.4471562E9f);

    private static boolean canBeRepresentedAsLong(Number number) {
        return ((number instanceof Double) || (number instanceof Float)) ? false : true;
    }

    public static Map<String, Object> generateServerValues(Clock clock) {
        HashMap map = new HashMap();
        map.put(NAME_OP_TIMESTAMP, Long.valueOf(clock.millis()));
        return map;
    }

    static Object resolveComplexDeferredValue(Map<String, Object> map, ValueProvider valueProvider, Map<String, Object> map2) {
        if (!map.containsKey(NAME_OP_INCREMENT)) {
            return null;
        }
        Object obj = map.get(NAME_OP_INCREMENT);
        if (!(obj instanceof Number)) {
            return null;
        }
        Number number = (Number) obj;
        Node node = valueProvider.node();
        if (!node.isLeafNode() || !(node.getValue() instanceof Number)) {
            return number;
        }
        Number number2 = (Number) node.getValue();
        if (canBeRepresentedAsLong(number) && canBeRepresentedAsLong(number2)) {
            long jLongValue = number.longValue();
            long jLongValue2 = number2.longValue();
            long j = jLongValue + jLongValue2;
            if (((jLongValue ^ j) & (jLongValue2 ^ j)) >= 0) {
                return Long.valueOf(j);
            }
        }
        return Double.valueOf(number2.doubleValue() + number.doubleValue());
    }

    public static Object resolveDeferredLeafValue(Object obj, ValueProvider valueProvider, Map<String, Object> map) {
        if (!(obj instanceof Map)) {
            return obj;
        }
        Map map2 = (Map) obj;
        if (!map2.containsKey(NAME_SUBKEY_SERVERVALUE)) {
            return obj;
        }
        Object obj2 = map2.get(NAME_SUBKEY_SERVERVALUE);
        Object objResolveScalarDeferredValue = obj2 instanceof String ? resolveScalarDeferredValue((String) obj2, map) : obj2 instanceof Map ? resolveComplexDeferredValue((Map) obj2, valueProvider, map) : null;
        return objResolveScalarDeferredValue != null ? objResolveScalarDeferredValue : obj;
    }

    public static CompoundWrite resolveDeferredValueMerge(CompoundWrite compoundWrite, SyncTree syncTree, Path path, Map<String, Object> map) {
        CompoundWrite compoundWriteEmptyWrite = CompoundWrite.emptyWrite();
        Iterator<Map.Entry<Path, Node>> it = compoundWrite.iterator();
        while (true) {
            CompoundWrite compoundWrite2 = compoundWriteEmptyWrite;
            if (!it.hasNext()) {
                return compoundWrite2;
            }
            Map.Entry<Path, Node> next = it.next();
            compoundWriteEmptyWrite = compoundWrite2.addWrite(next.getKey(), resolveDeferredValueSnapshot(next.getValue(), new ValueProvider.DeferredValueProvider(syncTree, path.child(next.getKey())), map));
        }
    }

    public static Node resolveDeferredValueSnapshot(Node node, SyncTree syncTree, Path path, Map<String, Object> map) {
        return resolveDeferredValueSnapshot(node, new ValueProvider.DeferredValueProvider(syncTree, path), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Node resolveDeferredValueSnapshot(Node node, ValueProvider valueProvider, Map<String, Object> map) {
        Object value = node.getPriority().getValue();
        Object objResolveDeferredLeafValue = resolveDeferredLeafValue(value, valueProvider.getImmediateChild(ChildKey.fromString(NPStringFog.decode(new byte[]{30, 72, 17, 11, 93, 71, 89, 76, 26}, "08cb25", true))), map);
        if (node.isLeafNode()) {
            Object objResolveDeferredLeafValue2 = resolveDeferredLeafValue(node.getValue(), valueProvider, map);
            return (objResolveDeferredLeafValue2.equals(node.getValue()) && Utilities.equals(objResolveDeferredLeafValue, value)) ? node : NodeUtilities.NodeFromJSON(objResolveDeferredLeafValue2, PriorityUtilities.parsePriority(objResolveDeferredLeafValue));
        }
        if (node.isEmpty()) {
            return node;
        }
        ChildrenNode childrenNode = (ChildrenNode) node;
        SnapshotHolder snapshotHolder = new SnapshotHolder(childrenNode);
        childrenNode.forEachChild(new ChildrenNode.ChildVisitor(valueProvider, map, snapshotHolder) { // from class: com.google.firebase.database.core.ServerValues.1
            final ValueProvider val$existing;
            final SnapshotHolder val$holder;
            final Map val$serverValues;

            {
                this.val$existing = valueProvider;
                this.val$serverValues = map;
                this.val$holder = snapshotHolder;
            }

            @Override // com.google.firebase.database.snapshot.ChildrenNode.ChildVisitor
            public void visitChild(ChildKey childKey, Node node2) {
                Node nodeResolveDeferredValueSnapshot = ServerValues.resolveDeferredValueSnapshot(node2, this.val$existing.getImmediateChild(childKey), (Map<String, Object>) this.val$serverValues);
                if (nodeResolveDeferredValueSnapshot != node2) {
                    this.val$holder.update(new Path(childKey.asString()), nodeResolveDeferredValueSnapshot);
                }
            }
        });
        return !snapshotHolder.getRootNode().getPriority().equals(objResolveDeferredLeafValue) ? snapshotHolder.getRootNode().updatePriority(PriorityUtilities.parsePriority(objResolveDeferredLeafValue)) : snapshotHolder.getRootNode();
    }

    public static Node resolveDeferredValueSnapshot(Node node, Node node2, Map<String, Object> map) {
        return resolveDeferredValueSnapshot(node, new ValueProvider.ExistingValueProvider(node2), map);
    }

    static Object resolveScalarDeferredValue(String str, Map<String, Object> map) {
        if (NAME_OP_TIMESTAMP.equals(str) && map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }
}
