package com.google.firebase.database.core.persistence;

import com.google.firebase.database.core.view.QuerySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class TrackedQuery {
    public final boolean active;
    public final boolean complete;
    public final long id;
    public final long lastUse;
    public final QuerySpec querySpec;

    public TrackedQuery(long j, QuerySpec querySpec, long j2, boolean z, boolean z2) {
        this.id = j;
        if (querySpec.loadsAllData() && !querySpec.isDefault()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 81, 15, 67, 22, 66, 6, 66, 4, 5, 22, 7, 69, 100, 19, 5, 1, 9, 0, 84, 48, 17, 7, 16, 28, 16, 7, 11, 16, 66, 4, 16, 15, 11, 12, 79, 1, 85, 7, 5, 23, 14, 17, 16, 16, 17, 7, 16, 28, 16, 21, 12, 3, 22, 69, 92, 14, 5, 6, 17, 69, 81, 13, 8, 66, 6, 4, 68, 0}, "e0adbb", false, false));
        }
        this.querySpec = querySpec;
        this.lastUse = j2;
        this.complete = z;
        this.active = z2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        TrackedQuery trackedQuery = (TrackedQuery) obj;
        return this.id == trackedQuery.id && this.querySpec.equals(trackedQuery.querySpec) && this.lastUse == trackedQuery.lastUse && this.complete == trackedQuery.complete && this.active == trackedQuery.active;
    }

    public int hashCode() {
        return (((((((Long.valueOf(this.id).hashCode() * 31) + this.querySpec.hashCode()) * 31) + Long.valueOf(this.lastUse).hashCode()) * 31) + Boolean.valueOf(this.complete).hashCode()) * 31) + Boolean.valueOf(this.active).hashCode();
    }

    public TrackedQuery setActiveState(boolean z) {
        return new TrackedQuery(this.id, this.querySpec, this.lastUse, this.complete, z);
    }

    public TrackedQuery setComplete() {
        return new TrackedQuery(this.id, this.querySpec, this.lastUse, true, this.active);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{100, 65, 3, 84, 95, 6, 84, 98, 23, 82, 70, 26, 75, 90, 6, 10}, "03b74c", -25453) + this.id + NPStringFog.decode(new byte[]{72, 70, 69, 65, 0, 23, 29, 53, 68, 81, 6, 88}, "df44ee", -15687) + this.querySpec + NPStringFog.decode(new byte[]{21, 21, 9, 89, 68, 16, 108, 70, 0, 5}, "95e87d", -1.7600877E9f) + this.lastUse + NPStringFog.decode(new byte[]{26, 17, 81, 94, 91, 21, 90, 84, 70, 84, 11}, "61216e", -875824367L) + this.complete + NPStringFog.decode(new byte[]{79, 25, 5, 81, 23, 91, 21, 92, 89}, "c9d2c2", false) + this.active + NPStringFog.decode(new byte[]{30}, "c07225", 208203805L);
    }

    public TrackedQuery updateLastUse(long j) {
        return new TrackedQuery(this.id, this.querySpec, j, this.complete, this.active);
    }
}
