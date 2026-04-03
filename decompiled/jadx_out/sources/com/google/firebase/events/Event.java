package com.google.firebase.events;

import com.google.firebase.components.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
public class Event<T> {
    private final T payload;
    private final Class<T> type;

    public Event(Class<T> cls, T t) {
        this.type = (Class) Preconditions.checkNotNull(cls);
        this.payload = (T) Preconditions.checkNotNull(t);
    }

    public T getPayload() {
        return this.payload;
    }

    public Class<T> getType() {
        return this.type;
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{113, 65, 85, 95, 70, 66, 64, 78, 64, 84, 8, 25, 17, 68, 28, 17, 66, 88, 77, 91, 95, 80, 86, 3, 20, 18, 67, 76}, "470129", -1.6000294E9f), this.type, this.payload);
    }
}
