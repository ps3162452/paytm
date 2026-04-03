package com.google.firebase.database.core;

import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.InternalHelpers;
import com.google.firebase.database.core.view.Change;
import com.google.firebase.database.core.view.DataEvent;
import com.google.firebase.database.core.view.Event;
import com.google.firebase.database.core.view.QuerySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ChildEventRegistration extends EventRegistration {
    private final ChildEventListener eventListener;
    private final Repo repo;
    private final QuerySpec spec;

    /* JADX INFO: renamed from: com.google.firebase.database.core.ChildEventRegistration$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$core$view$Event$EventType;

        static {
            int[] iArr = new int[Event.EventType.values().length];
            $SwitchMap$com$google$firebase$database$core$view$Event$EventType = iArr;
            try {
                iArr[Event.EventType.CHILD_ADDED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$view$Event$EventType[Event.EventType.CHILD_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$view$Event$EventType[Event.EventType.CHILD_MOVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$view$Event$EventType[Event.EventType.CHILD_REMOVED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ChildEventRegistration(Repo repo, ChildEventListener childEventListener, QuerySpec querySpec) {
        this.repo = repo;
        this.eventListener = childEventListener;
        this.spec = querySpec;
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public EventRegistration clone(QuerySpec querySpec) {
        return new ChildEventRegistration(this.repo, this.eventListener, querySpec);
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public DataEvent createEvent(Change change, QuerySpec querySpec) {
        return new DataEvent(change.getEventType(), this, InternalHelpers.createDataSnapshot(InternalHelpers.createReference(this.repo, querySpec.getPath().child(change.getChildKey())), change.getIndexedNode()), change.getPrevName() != null ? change.getPrevName().asString() : null);
    }

    public boolean equals(Object obj) {
        return (obj instanceof ChildEventRegistration) && ((ChildEventRegistration) obj).eventListener.equals(this.eventListener) && ((ChildEventRegistration) obj).repo.equals(this.repo) && ((ChildEventRegistration) obj).spec.equals(this.spec);
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public void fireCancelEvent(DatabaseError databaseError) {
        this.eventListener.onCancelled(databaseError);
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public void fireEvent(DataEvent dataEvent) {
        if (isZombied()) {
        }
        switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$core$view$Event$EventType[dataEvent.getEventType().ordinal()]) {
            case 1:
                this.eventListener.onChildAdded(dataEvent.getSnapshot(), dataEvent.getPreviousName());
                break;
            case 2:
                this.eventListener.onChildChanged(dataEvent.getSnapshot(), dataEvent.getPreviousName());
                break;
            case 3:
                this.eventListener.onChildMoved(dataEvent.getSnapshot(), dataEvent.getPreviousName());
                break;
            case 4:
                this.eventListener.onChildRemoved(dataEvent.getSnapshot());
                break;
        }
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public QuerySpec getQuerySpec() {
        return this.spec;
    }

    @Override // com.google.firebase.database.core.EventRegistration
    Repo getRepo() {
        return this.repo;
    }

    public int hashCode() {
        return (((this.eventListener.hashCode() * 31) + this.repo.hashCode()) * 31) + this.spec.hashCode();
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public boolean isSameListener(EventRegistration eventRegistration) {
        return (eventRegistration instanceof ChildEventRegistration) && ((ChildEventRegistration) eventRegistration).eventListener.equals(this.eventListener);
    }

    @Override // com.google.firebase.database.core.EventRegistration
    public boolean respondsTo(Event.EventType eventType) {
        return eventType != Event.EventType.VALUE;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{123, 9, 90, 14, 86, 124, 78, 4, 93, 22, 96, 92, 95, 8, 64, 22, 64, 88, 76, 8, 92, 12}, "8a3b29", 8.59129634E8d);
    }
}
