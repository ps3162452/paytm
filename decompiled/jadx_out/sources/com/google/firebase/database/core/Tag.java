package com.google.firebase.database.core;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class Tag {
    private final long tagNumber;

    public Tag(long j) {
        this.tagNumber = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.tagNumber == ((Tag) obj).tagNumber;
    }

    public long getTagNumber() {
        return this.tagNumber;
    }

    public int hashCode() {
        long j = this.tagNumber;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{108, 83, 80, 79, 18, 89, 95, 124, 66, 89, 4, 93, 74, 15}, "8274f8", true) + this.tagNumber + '}';
    }
}
