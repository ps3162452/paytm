package androidx.core.util;

import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f, S s) {
        this.first = f;
        this.second = s;
    }

    public static <A, B> Pair<A, B> create(A a, B b) {
        return new Pair<>(a, b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
    }

    public int hashCode() {
        F f = this.first;
        int iHashCode = f == null ? 0 : f.hashCode();
        S s = this.second;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{102, 7, 80, 65, 67}, "6f938b", 1.4116311E9f) + this.first + " " + this.second + NPStringFog.decode(new byte[]{74}, "774cd7", 1602682561L);
    }
}
