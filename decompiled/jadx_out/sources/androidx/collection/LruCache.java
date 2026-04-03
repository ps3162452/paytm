package androidx.collection;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes5.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 87, 65, 103, 10, 75, 4, 22, 5, 9, 67, 1}, "a694c1", -1184800128L));
        }
        this.maxSize = i;
        this.map = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int safeSizeOf(K k, V v) {
        int iSizeOf = sizeOf(k, v);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{45, 6, 4, 2, 18, 89, 21, 6, 67, 16, 15, 74, 6, 89, 67}, "ccccf0", -9.64742396E8d) + k + NPStringFog.decode(new byte[]{88}, "ea11d1", true) + v);
    }

    protected V create(K k) {
        return null;
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.createCount;
        }
        return i;
    }

    protected void entryRemoved(boolean z, K k, V v, V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.evictionCount;
        }
        return i;
    }

    public final V get(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{93, 4, 29, 67, 12, 5, 22, 15, 17, 15, 93}, "6adc18", true));
        }
        synchronized (this) {
            V v = this.map.get(k);
            if (v != null) {
                this.hitCount++;
                return v;
            }
            this.missCount++;
            V vCreate = create(k);
            if (vCreate == null) {
                return null;
            }
            synchronized (this) {
                this.createCount++;
                vPut = this.map.put(k, vCreate);
                if (vPut != null) {
                    this.map.put(k, vPut);
                } else {
                    this.size += safeSizeOf(k, vCreate);
                }
            }
            if (vPut != null) {
                entryRemoved(false, k, vCreate, vPut);
                return vPut;
            }
            trimToSize(this.maxSize);
            return vCreate;
        }
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.hitCount;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.maxSize;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.missCount;
        }
        return i;
    }

    public final V put(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{90, 92, 27, 23, 91, 9, 17, 87, 23, 91, 10, 20, 77, 69, 66, 65, 7, 88, 68, 92, 66, 10, 91, 20, 95, 76, 14, 91}, "19b7f4", false));
        }
        synchronized (this) {
            this.putCount++;
            this.size += safeSizeOf(k, v);
            vPut = this.map.put(k, v);
            if (vPut != null) {
                this.size -= safeSizeOf(k, vPut);
            }
        }
        if (vPut != null) {
            entryRemoved(false, k, vPut, v);
        }
        trimToSize(this.maxSize);
        return vPut;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.putCount;
        }
        return i;
    }

    public final V remove(K k) {
        V vRemove;
        if (k == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{9, 92, 28, 65, 5, 12, 66, 87, 16, 13, 84}, "b9ea81", -1.473567359E9d));
        }
        synchronized (this) {
            vRemove = this.map.remove(k);
            if (vRemove != null) {
                this.size -= safeSizeOf(k, vRemove);
            }
        }
        if (vRemove != null) {
            entryRemoved(false, k, vRemove, null);
        }
        return vRemove;
    }

    public void resize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{90, 0, 76, 50, 94, 28, 82, 65, 8, 92, 23, 86}, "7a4a7f", true, true));
        }
        synchronized (this) {
            this.maxSize = i;
        }
        trimToSize(i);
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.size;
        }
        return i;
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.map);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String str;
        synchronized (this) {
            int i = this.hitCount;
            int i2 = this.missCount + i;
            str = String.format(Locale.US, NPStringFog.decode(new byte[]{41, 19, 16, 34, 7, 80, 13, 4, 62, 12, 7, 75, 54, 8, 31, 4, 91, 22, 1, 77, 13, 8, 18, 64, 88, 68, 1, 77, 11, 90, 22, 18, 0, 18, 91, 22, 1, 77, 13, 8, 18, 97, 4, 21, 0, 92, 67, 87, 64, 68, 56}, "eaeaf3", false), Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + n.NPStringFog.decode(new byte[]{25, 21, 81, 66, 92, 45, 81, 78, 17, 24, 80, 17, 23, 20, 93, 72, 86, 16, 67, 15, 86, 95, 25, 11, 89, 5, 87, 86, 74, 11, 68, 18, 93, 86, 77, 66, 69, 3, 75, 77, 85, 22, 68, 71}, "7f889b", true, true));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r7) {
        /*
            r6 = this;
            r4 = 1
        L1:
            monitor-enter(r6)
            int r0 = r6.size     // Catch: java.lang.Throwable -> L7e
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch: java.lang.Throwable -> L7e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L7e
            if (r0 == 0) goto L12
            int r0 = r6.size     // Catch: java.lang.Throwable -> L7e
            if (r0 != 0) goto L52
        L12:
            int r0 = r6.size     // Catch: java.lang.Throwable -> L7e
            if (r0 <= r7) goto L1e
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch: java.lang.Throwable -> L7e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L7e
            if (r0 == 0) goto L20
        L1e:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7e
            return
        L20:
            java.util.LinkedHashMap<K, V> r0 = r6.map     // Catch: java.lang.Throwable -> L7e
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L7e
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L7e
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L7e
            java.util.LinkedHashMap<K, V> r2 = r6.map     // Catch: java.lang.Throwable -> L7e
            r2.remove(r1)     // Catch: java.lang.Throwable -> L7e
            int r2 = r6.size     // Catch: java.lang.Throwable -> L7e
            int r3 = r6.safeSizeOf(r1, r0)     // Catch: java.lang.Throwable -> L7e
            int r2 = r2 - r3
            r6.size = r2     // Catch: java.lang.Throwable -> L7e
            int r2 = r6.evictionCount     // Catch: java.lang.Throwable -> L7e
            int r2 = r2 + 1
            r6.evictionCount = r2     // Catch: java.lang.Throwable -> L7e
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7e
            r2 = 0
            r6.entryRemoved(r4, r1, r0, r2)
            goto L1
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L7e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7e
            r1.<init>()     // Catch: java.lang.Throwable -> L7e
            java.lang.Class r2 = r6.getClass()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L7e
            r1.append(r2)     // Catch: java.lang.Throwable -> L7e
            r2 = 44
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L7e
            r2 = {x0082: FILL_ARRAY_DATA , data: [25, 21, 81, 66, 92, 45, 81, 78, 17, 24, 80, 17, 23, 20, 93, 72, 86, 16, 67, 15, 86, 95, 25, 11, 89, 5, 87, 86, 74, 11, 68, 18, 93, 86, 77, 66, 69, 3, 75, 77, 85, 22, 68, 71} // fill-array     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = "7f889b"
            r4 = 1
            r5 = 1
            java.lang.String r2 = n.NPStringFog.decode(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L7e
            r1.append(r2)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7e
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L7e
            throw r0     // Catch: java.lang.Throwable -> L7e
        L7e:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7e
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }
}
