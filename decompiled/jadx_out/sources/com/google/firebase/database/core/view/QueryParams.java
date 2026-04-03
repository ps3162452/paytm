package com.google.firebase.database.core.view;

import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.filter.IndexedFilter;
import com.google.firebase.database.core.view.filter.LimitedFilter;
import com.google.firebase.database.core.view.filter.NodeFilter;
import com.google.firebase.database.core.view.filter.RangedFilter;
import com.google.firebase.database.snapshot.BooleanNode;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.DoubleNode;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.Index;
import com.google.firebase.database.snapshot.LongNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityIndex;
import com.google.firebase.database.snapshot.PriorityUtilities;
import com.google.firebase.database.snapshot.StringNode;
import com.google.firebase.database.util.JsonMapper;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class QueryParams {
    static final boolean $assertionsDisabled = false;
    private Integer limit;
    private ViewFrom viewFrom;
    private static final String INDEX = NPStringFog.decode(new byte[]{10}, "c1adb9", true);
    private static final String INDEX_END_NAME = NPStringFog.decode(new byte[]{92, 15}, "9a8581", 1.0668429E9f);
    private static final String INDEX_END_VALUE = NPStringFog.decode(new byte[]{3, 73}, "f9d84a", false, false);
    private static final String INDEX_START_NAME = NPStringFog.decode(new byte[]{16, 92}, "c20120", 8.0916713E7d);
    private static final String INDEX_START_VALUE = NPStringFog.decode(new byte[]{74, 72}, "98cc6f", -1286005377L);
    private static final String LIMIT = NPStringFog.decode(new byte[]{84}, "810b19", false, false);
    private static final String VIEW_FROM = NPStringFog.decode(new byte[]{23, 95}, "a99031", -1.66719164E8d);
    public static final QueryParams DEFAULT_PARAMS = new QueryParams();
    private Node indexStartValue = null;
    private ChildKey indexStartName = null;
    private Node indexEndValue = null;
    private ChildKey indexEndName = null;
    private Index index = PriorityIndex.getInstance();
    private String jsonSerialization = null;

    /* JADX INFO: renamed from: com.google.firebase.database.core.view.QueryParams$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom;

        static {
            int[] iArr = new int[ViewFrom.values().length];
            $SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom = iArr;
            try {
                iArr[ViewFrom.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom[ViewFrom.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private enum ViewFrom {
        LEFT,
        RIGHT
    }

    private QueryParams copy() {
        QueryParams queryParams = new QueryParams();
        queryParams.limit = this.limit;
        queryParams.indexStartValue = this.indexStartValue;
        queryParams.indexStartName = this.indexStartName;
        queryParams.indexEndValue = this.indexEndValue;
        queryParams.indexEndName = this.indexEndName;
        queryParams.viewFrom = this.viewFrom;
        queryParams.index = this.index;
        return queryParams;
    }

    public static QueryParams fromQueryObject(Map<String, Object> map) {
        QueryParams queryParams = new QueryParams();
        queryParams.limit = (Integer) map.get(LIMIT);
        if (map.containsKey(INDEX_START_VALUE)) {
            queryParams.indexStartValue = normalizeValue(NodeUtilities.NodeFromJSON(map.get(INDEX_START_VALUE)));
            String str = (String) map.get(INDEX_START_NAME);
            if (str != null) {
                queryParams.indexStartName = ChildKey.fromString(str);
            }
        }
        if (map.containsKey(INDEX_END_VALUE)) {
            queryParams.indexEndValue = normalizeValue(NodeUtilities.NodeFromJSON(map.get(INDEX_END_VALUE)));
            String str2 = (String) map.get(INDEX_END_NAME);
            if (str2 != null) {
                queryParams.indexEndName = ChildKey.fromString(str2);
            }
        }
        String str3 = (String) map.get(VIEW_FROM);
        if (str3 != null) {
            queryParams.viewFrom = str3.equals(LIMIT) ? ViewFrom.LEFT : ViewFrom.RIGHT;
        }
        String str4 = (String) map.get(INDEX);
        if (str4 != null) {
            queryParams.index = Index.fromQueryDefinition(str4);
        }
        return queryParams;
    }

    private static Node normalizeValue(Node node) {
        if ((node instanceof StringNode) || (node instanceof BooleanNode) || (node instanceof DoubleNode) || (node instanceof EmptyNode)) {
            return node;
        }
        if (node instanceof LongNode) {
            return new DoubleNode(Double.valueOf(((Long) node.getValue()).doubleValue()), PriorityUtilities.NullPriority());
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 8, 81, 73, 72, 87, 91, 18, 81, 85, 24, 68, 89, 10, 65, 84, 24, 66, 89, 21, 71, 84, 92, 18, 76, 9, 20, 95, 87, 64, 85, 7, 88, 88, 66, 87, 110, 7, 88, 68, 93, 8, 24}, "8f4182", true) + node.getValue());
    }

    public QueryParams endAt(Node node, ChildKey childKey) {
        Utilities.hardAssert(!(node instanceof LongNode));
        QueryParams queryParamsCopy = copy();
        queryParamsCopy.indexEndValue = node;
        queryParamsCopy.indexEndName = childKey;
        return queryParamsCopy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        QueryParams queryParams = (QueryParams) obj;
        Integer num = this.limit;
        if (num == null ? queryParams.limit != null : !num.equals(queryParams.limit)) {
            return false;
        }
        Index index = this.index;
        if (index == null ? queryParams.index != null : !index.equals(queryParams.index)) {
            return false;
        }
        ChildKey childKey = this.indexEndName;
        if (childKey == null ? queryParams.indexEndName != null : !childKey.equals(queryParams.indexEndName)) {
            return false;
        }
        Node node = this.indexEndValue;
        if (node == null ? queryParams.indexEndValue != null : !node.equals(queryParams.indexEndValue)) {
            return false;
        }
        ChildKey childKey2 = this.indexStartName;
        if (childKey2 == null ? queryParams.indexStartName != null : !childKey2.equals(queryParams.indexStartName)) {
            return false;
        }
        Node node2 = this.indexStartValue;
        if (node2 == null ? queryParams.indexStartValue != null : !node2.equals(queryParams.indexStartValue)) {
            return false;
        }
        return isViewFromLeft() == queryParams.isViewFromLeft();
    }

    public Index getIndex() {
        return this.index;
    }

    public ChildKey getIndexEndName() {
        if (!hasEnd()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 80, 86, 93, 91, 76, 22, 86, 93, 71, 20, 81, 88, 85, 93, 75, 20, 93, 88, 85, 24, 93, 85, 85, 83, 17, 81, 85, 20, 75, 66, 80, 74, 71, 20, 80, 87, 66, 24, 93, 91, 76, 22, 83, 93, 86, 90, 24, 69, 84, 76}, "618348", true));
        }
        ChildKey childKey = this.indexEndName;
        return childKey != null ? childKey : ChildKey.getMaxName();
    }

    public Node getIndexEndValue() {
        if (hasEnd()) {
            return this.indexEndValue;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 89, 94, 8, 91, 67, 17, 95, 85, 18, 20, 94, 95, 92, 85, 30, 20, 82, 95, 92, 16, 16, 85, 91, 68, 93, 16, 15, 82, 23, 66, 76, 81, 20, 64, 23, 89, 89, 67, 70, 90, 88, 69, 24, 82, 3, 81, 89, 17, 75, 85, 18}, "180f47", false, true));
    }

    public ChildKey getIndexStartName() {
        if (!hasStart()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 4, 93, 15, 88, 70, 20, 2, 86, 21, 23, 91, 90, 1, 86, 25, 23, 65, 64, 4, 65, 21, 23, 92, 85, 8, 86, 65, 94, 84, 20, 22, 71, 0, 69, 70, 20, 13, 82, 18, 23, 92, 91, 17, 19, 3, 82, 87, 90, 69, 64, 4, 67}, "4e3a72", -1.9688643E9f));
        }
        ChildKey childKey = this.indexStartName;
        return childKey != null ? childKey : ChildKey.getMinName();
    }

    public Node getIndexStartValue() {
        if (hasStart()) {
            return this.indexStartValue;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 87, 13, 87, 88, 17, 25, 81, 6, 77, 23, 12, 87, 82, 6, 65, 23, 22, 77, 87, 17, 77, 23, 19, 88, 90, 22, 92, 23, 12, 95, 22, 16, 77, 86, 23, 77, 22, 11, 88, 68, 69, 87, 89, 23, 25, 85, 0, 92, 88, 67, 74, 82, 17}, "96c97e", -1395667744L));
    }

    public int getLimit() {
        if (hasLimit()) {
            return this.limit.intValue();
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 0, 90, 93, 90, 70, 23, 6, 81, 71, 21, 94, 94, 12, 93, 71, 21, 91, 81, 65, 88, 90, 88, 91, 67, 65, 92, 82, 70, 18, 89, 14, 64, 19, 87, 87, 82, 15, 20, 64, 80, 70}, "7a4352", true, false));
    }

    public NodeFilter getNodeFilter() {
        return loadsAllData() ? new IndexedFilter(getIndex()) : hasLimit() ? new LimitedFilter(this) : new RangedFilter(this);
    }

    public Map<String, Object> getWireProtocolParams() {
        HashMap map = new HashMap();
        if (hasStart()) {
            map.put(INDEX_START_VALUE, this.indexStartValue.getValue());
            ChildKey childKey = this.indexStartName;
            if (childKey != null) {
                map.put(INDEX_START_NAME, childKey.asString());
            }
        }
        if (hasEnd()) {
            map.put(INDEX_END_VALUE, this.indexEndValue.getValue());
            ChildKey childKey2 = this.indexEndName;
            if (childKey2 != null) {
                map.put(INDEX_END_NAME, childKey2.asString());
            }
        }
        Integer num = this.limit;
        if (num != null) {
            map.put(LIMIT, num);
            ViewFrom viewFrom = this.viewFrom;
            if (viewFrom == null) {
                viewFrom = hasStart() ? ViewFrom.LEFT : ViewFrom.RIGHT;
            }
            switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom[viewFrom.ordinal()]) {
                case 1:
                    map.put(VIEW_FROM, LIMIT);
                    break;
                case 2:
                    map.put(VIEW_FROM, NPStringFog.decode(new byte[]{74}, "8693f9", -1.4142577E9f));
                    break;
            }
        }
        if (!this.index.equals(PriorityIndex.getInstance())) {
            map.put(INDEX, this.index.getQueryDefinition());
        }
        return map;
    }

    public boolean hasAnchoredLimit() {
        return hasLimit() && this.viewFrom != null;
    }

    public boolean hasEnd() {
        return this.indexEndValue != null;
    }

    public boolean hasLimit() {
        return this.limit != null;
    }

    public boolean hasStart() {
        return this.indexStartValue != null;
    }

    public int hashCode() {
        Integer num = this.limit;
        int iIntValue = num != null ? num.intValue() : 0;
        int i = isViewFromLeft() ? 1231 : 1237;
        Node node = this.indexStartValue;
        int iHashCode = node != null ? node.hashCode() : 0;
        ChildKey childKey = this.indexStartName;
        int iHashCode2 = childKey != null ? childKey.hashCode() : 0;
        Node node2 = this.indexEndValue;
        int iHashCode3 = node2 != null ? node2.hashCode() : 0;
        ChildKey childKey2 = this.indexEndName;
        int iHashCode4 = childKey2 != null ? childKey2.hashCode() : 0;
        Index index = this.index;
        return (((((((((((iIntValue * 31) + i) * 31) + iHashCode) * 31) + iHashCode2) * 31) + iHashCode3) * 31) + iHashCode4) * 31) + (index != null ? index.hashCode() : 0);
    }

    public boolean isDefault() {
        return loadsAllData() && this.index.equals(PriorityIndex.getInstance());
    }

    public boolean isValid() {
        return (hasStart() && hasEnd() && hasLimit() && !hasAnchoredLimit()) ? false : true;
    }

    public boolean isViewFromLeft() {
        ViewFrom viewFrom = this.viewFrom;
        return viewFrom != null ? viewFrom == ViewFrom.LEFT : hasStart();
    }

    public QueryParams limitToFirst(int i) {
        QueryParams queryParamsCopy = copy();
        queryParamsCopy.limit = Integer.valueOf(i);
        queryParamsCopy.viewFrom = ViewFrom.LEFT;
        return queryParamsCopy;
    }

    public QueryParams limitToLast(int i) {
        QueryParams queryParamsCopy = copy();
        queryParamsCopy.limit = Integer.valueOf(i);
        queryParamsCopy.viewFrom = ViewFrom.RIGHT;
        return queryParamsCopy;
    }

    public boolean loadsAllData() {
        return (hasStart() || hasEnd() || hasLimit()) ? false : true;
    }

    public QueryParams orderBy(Index index) {
        QueryParams queryParamsCopy = copy();
        queryParamsCopy.index = index;
        return queryParamsCopy;
    }

    public QueryParams startAt(Node node, ChildKey childKey) {
        Utilities.hardAssert(!(node instanceof LongNode));
        QueryParams queryParamsCopy = copy();
        queryParamsCopy.indexStartValue = node;
        queryParamsCopy.indexStartName = childKey;
        return queryParamsCopy;
    }

    public String toJSON() {
        if (this.jsonSerialization == null) {
            try {
                this.jsonSerialization = JsonMapper.serializeJson(getWireProtocolParams());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return this.jsonSerialization;
    }

    public String toString() {
        return getWireProtocolParams().toString();
    }
}
