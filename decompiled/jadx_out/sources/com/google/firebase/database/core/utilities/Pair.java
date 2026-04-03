package com.google.firebase.database.core.utilities;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class Pair<T, U> {
    private final T first;
    private final U second;

    public Pair(T t, U u) {
        this.first = t;
        this.second = u;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Pair pair = (Pair) obj;
        T t = this.first;
        if (t == null ? pair.first != null : !t.equals(pair.first)) {
            return false;
        }
        U u = this.second;
        if (u != null) {
            if (u.equals(pair.second)) {
                return true;
            }
        } else if (pair.second == null) {
            return true;
        }
        return false;
    }

    public T getFirst() {
        return this.first;
    }

    public U getSecond() {
        return this.second;
    }

    public int hashCode() {
        T t = this.first;
        int iHashCode = t != null ? t.hashCode() : 0;
        U u = this.second;
        return (iHashCode * 31) + (u != null ? u.hashCode() : 0);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{96, 2, 12, 23, 27}, "0cee3f", 28556) + this.first + NPStringFog.decode(new byte[]{27}, "74a386", 1976537884L) + this.second + NPStringFog.decode(new byte[]{24}, "163e60", 2.1253898E9f);
    }
}
