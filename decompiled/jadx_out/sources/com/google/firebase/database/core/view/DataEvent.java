package com.google.firebase.database.core.view;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.core.EventRegistration;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.view.Event;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DataEvent implements Event {
    private final EventRegistration eventRegistration;
    private final Event.EventType eventType;
    private final String prevName;
    private final DataSnapshot snapshot;

    public DataEvent(Event.EventType eventType, EventRegistration eventRegistration, DataSnapshot dataSnapshot, String str) {
        this.eventType = eventType;
        this.eventRegistration = eventRegistration;
        this.snapshot = dataSnapshot;
        this.prevName = str;
    }

    @Override // com.google.firebase.database.core.view.Event
    public void fire() {
        this.eventRegistration.fireEvent(this);
    }

    public Event.EventType getEventType() {
        return this.eventType;
    }

    @Override // com.google.firebase.database.core.view.Event
    public Path getPath() {
        Path path = this.snapshot.getRef().getPath();
        return this.eventType == Event.EventType.VALUE ? path : path.getParent();
    }

    public String getPreviousName() {
        return this.prevName;
    }

    public DataSnapshot getSnapshot() {
        return this.snapshot;
    }

    @Override // com.google.firebase.database.core.view.Event
    public String toString() {
        return this.eventType == Event.EventType.VALUE ? getPath() + NPStringFog.decode(new byte[]{2, 66}, "8b8593", 1.285169894E9d) + this.eventType + NPStringFog.decode(new byte[]{8, 65}, "2a6ccf", 1.402931E9f) + this.snapshot.getValue(true) : getPath() + NPStringFog.decode(new byte[]{15, 16}, "5085bb", -8.49243986E8d) + this.eventType + NPStringFog.decode(new byte[]{89, 69, 67, 25}, "ce89c1", -1705266523L) + this.snapshot.getKey() + NPStringFog.decode(new byte[]{9, 16}, "30d0be", 884288002L) + this.snapshot.getValue(true) + NPStringFog.decode(new byte[]{69, 73}, "e409a8", true, true);
    }
}
