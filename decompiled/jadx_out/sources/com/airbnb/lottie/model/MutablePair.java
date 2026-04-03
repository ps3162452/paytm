package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class MutablePair<T> {

    @Nullable
    T first;

    @Nullable
    T second;

    private static boolean objectsEqual(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return objectsEqual(pair.first, this.first) && objectsEqual(pair.second, this.second);
    }

    public int hashCode() {
        return (this.first == null ? 0 : this.first.hashCode()) ^ (this.second != null ? this.second.hashCode() : 0);
    }

    public void set(T t, T t2) {
        this.first = t;
        this.second = t2;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{104, 83, 11, 23, 24}, "82bec0", false) + String.valueOf(this.first) + " " + String.valueOf(this.second) + NPStringFog.decode(new byte[]{31}, "bcb6f5", -3.86513447E8d);
    }
}
