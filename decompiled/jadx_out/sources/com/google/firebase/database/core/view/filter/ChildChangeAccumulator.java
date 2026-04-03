package com.google.firebase.database.core.view.filter;

import com.google.firebase.database.core.view.Change;
import com.google.firebase.database.core.view.Event;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ChildChangeAccumulator {
    static final boolean $assertionsDisabled = false;
    private final Map<ChildKey, Change> changeMap = new HashMap();

    public List<Change> getChanges() {
        return new ArrayList(this.changeMap.values());
    }

    public void trackChildChange(Change change) {
        Event.EventType eventType = change.getEventType();
        ChildKey childKey = change.getChildKey();
        if (!this.changeMap.containsKey(childKey)) {
            this.changeMap.put(change.getChildKey(), change);
            return;
        }
        Change change2 = this.changeMap.get(childKey);
        Event.EventType eventType2 = change2.getEventType();
        if (eventType == Event.EventType.CHILD_ADDED && eventType2 == Event.EventType.CHILD_REMOVED) {
            this.changeMap.put(change.getChildKey(), Change.childChangedChange(childKey, change.getIndexedNode(), change2.getIndexedNode()));
            return;
        }
        if (eventType == Event.EventType.CHILD_REMOVED && eventType2 == Event.EventType.CHILD_ADDED) {
            this.changeMap.remove(childKey);
            return;
        }
        if (eventType == Event.EventType.CHILD_REMOVED && eventType2 == Event.EventType.CHILD_CHANGED) {
            this.changeMap.put(childKey, Change.childRemovedChange(childKey, change2.getOldIndexedNode()));
            return;
        }
        if (eventType == Event.EventType.CHILD_CHANGED && eventType2 == Event.EventType.CHILD_ADDED) {
            this.changeMap.put(childKey, Change.childAddedChange(childKey, change.getIndexedNode()));
        } else {
            if (eventType != Event.EventType.CHILD_CHANGED || eventType2 != Event.EventType.CHILD_CHANGED) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{44, 9, 88, 82, 82, 81, 9, 69, 87, 88, 88, 82, 12, 11, 85, 67, 92, 95, 11, 69, 91, 81, 21, 83, 13, 4, 90, 80, 80, 67, 95, 69}, "ee4750", -4496) + change + NPStringFog.decode(new byte[]{25, 91, 7, 81, 67, 66, 75, 81, 0, 18, 87, 86, 77, 81, 22, 18}, "94d260", 8.29283799E8d) + change2);
            }
            this.changeMap.put(childKey, Change.childChangedChange(childKey, change.getIndexedNode(), change2.getOldIndexedNode()));
        }
    }
}
