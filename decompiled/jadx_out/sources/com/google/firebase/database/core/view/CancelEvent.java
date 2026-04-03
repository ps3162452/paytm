package com.google.firebase.database.core.view;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.core.EventRegistration;
import com.google.firebase.database.core.Path;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class CancelEvent implements Event {
    private final DatabaseError error;
    private final EventRegistration eventRegistration;
    private final Path path;

    public CancelEvent(EventRegistration eventRegistration, DatabaseError databaseError, Path path) {
        this.eventRegistration = eventRegistration;
        this.path = path;
        this.error = databaseError;
    }

    @Override // com.google.firebase.database.core.view.Event
    public void fire() {
        this.eventRegistration.fireCancelEvent(this.error);
    }

    @Override // com.google.firebase.database.core.view.Event
    public Path getPath() {
        return this.path;
    }

    @Override // com.google.firebase.database.core.view.Event
    public String toString() {
        return getPath() + NPStringFog.decode(new byte[]{95, 32, 120, 122, 37, 36, 41}, "ec94fa", true, true);
    }
}
