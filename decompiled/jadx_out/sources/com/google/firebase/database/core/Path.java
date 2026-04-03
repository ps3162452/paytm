package com.google.firebase.database.core;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Path implements Iterable<ChildKey>, Comparable<Path> {
    static final boolean $assertionsDisabled = false;
    private static final Path EMPTY_PATH = new Path("");
    private final int end;
    private final ChildKey[] pieces;
    private final int start;

    public Path(String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{27}, "49e775", -1.710529508E9d), -1);
        int i = 0;
        for (String str2 : strArrSplit) {
            if (str2.length() > 0) {
                i++;
            }
        }
        this.pieces = new ChildKey[i];
        int i2 = 0;
        for (String str3 : strArrSplit) {
            if (str3.length() > 0) {
                this.pieces[i2] = ChildKey.fromString(str3);
                i2++;
            }
        }
        this.start = 0;
        this.end = this.pieces.length;
    }

    public Path(List<String> list) {
        this.pieces = new ChildKey[list.size()];
        Iterator<String> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.pieces[i] = ChildKey.fromString(it.next());
            i++;
        }
        this.start = 0;
        this.end = list.size();
    }

    public Path(ChildKey... childKeyArr) {
        this.pieces = (ChildKey[]) Arrays.copyOf(childKeyArr, childKeyArr.length);
        this.start = 0;
        this.end = childKeyArr.length;
        for (ChildKey childKey : childKeyArr) {
        }
    }

    private Path(ChildKey[] childKeyArr, int i, int i2) {
        this.pieces = childKeyArr;
        this.start = i;
        this.end = i2;
    }

    public static Path getEmptyPath() {
        return EMPTY_PATH;
    }

    public static Path getRelative(Path path, Path path2) {
        ChildKey front = path.getFront();
        ChildKey front2 = path2.getFront();
        if (front == null) {
            return path2;
        }
        if (front.equals(front2)) {
            return getRelative(path.popFront(), path2.popFront());
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{113, 120, 55, 39, 51, 121, 121, 122, 67, 39, 51, 101, 119, 100, 89, 66}, "86cba7", 895357820L) + path2 + NPStringFog.decode(new byte[]{19, 12, 70, 19, 93, 86, 71, 69, 86, 92, 93, 77, 82, 12, 91, 86, 87, 25, 90, 11, 21}, "3e5339", false, false) + path);
    }

    public List<String> asList() {
        ArrayList arrayList = new ArrayList(size());
        Iterator<ChildKey> it = iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().asString());
        }
        return arrayList;
    }

    public Path child(Path path) {
        int size = size() + path.size();
        ChildKey[] childKeyArr = new ChildKey[size];
        System.arraycopy(this.pieces, this.start, childKeyArr, 0, size());
        System.arraycopy(path.pieces, path.start, childKeyArr, size(), path.size());
        return new Path(childKeyArr, 0, size);
    }

    public Path child(ChildKey childKey) {
        int size = size();
        ChildKey[] childKeyArr = new ChildKey[size + 1];
        System.arraycopy(this.pieces, this.start, childKeyArr, 0, size);
        childKeyArr[size] = childKey;
        return new Path(childKeyArr, 0, size + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r1 != r2) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        if (r0 != r5.end) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
    
        if (r1 != r2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        return 1;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(com.google.firebase.database.core.Path r5) {
        /*
            r4 = this;
            int r1 = r4.start
            int r0 = r5.start
        L4:
            int r2 = r4.end
            if (r1 >= r2) goto L21
            int r3 = r5.end
            if (r0 >= r3) goto L21
            com.google.firebase.database.snapshot.ChildKey[] r2 = r4.pieces
            r2 = r2[r1]
            com.google.firebase.database.snapshot.ChildKey[] r3 = r5.pieces
            r3 = r3[r0]
            int r2 = r2.compareTo(r3)
            if (r2 == 0) goto L1c
            r0 = r2
        L1b:
            return r0
        L1c:
            int r1 = r1 + 1
            int r0 = r0 + 1
            goto L4
        L21:
            if (r1 != r2) goto L29
            int r3 = r5.end
            if (r0 != r3) goto L29
            r0 = 0
            goto L1b
        L29:
            if (r1 != r2) goto L2d
            r0 = -1
            goto L1b
        L2d:
            r0 = 1
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.core.Path.compareTo(com.google.firebase.database.core.Path):int");
    }

    public boolean contains(Path path) {
        if (size() > path.size()) {
            return false;
        }
        int i = this.start;
        int i2 = path.start;
        while (i < this.end) {
            if (!this.pieces[i].equals(path.pieces[i2])) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Path)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Path path = (Path) obj;
        if (size() != path.size()) {
            return false;
        }
        int i = this.start;
        for (int i2 = path.start; i < this.end && i2 < path.end; i2++) {
            if (!this.pieces[i].equals(path.pieces[i2])) {
                return false;
            }
            i++;
        }
        return true;
    }

    public ChildKey getBack() {
        if (isEmpty()) {
            return null;
        }
        return this.pieces[this.end - 1];
    }

    public ChildKey getFront() {
        if (isEmpty()) {
            return null;
        }
        return this.pieces[this.start];
    }

    public Path getParent() {
        if (isEmpty()) {
            return null;
        }
        return new Path(this.pieces, this.start, this.end - 1);
    }

    public int hashCode() {
        int iHashCode = 0;
        for (int i = this.start; i < this.end; i++) {
            iHashCode = (iHashCode * 37) + this.pieces[i].hashCode();
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.start >= this.end;
    }

    @Override // java.lang.Iterable
    public Iterator<ChildKey> iterator() {
        return new Iterator<ChildKey>(this) { // from class: com.google.firebase.database.core.Path.1
            int offset;
            final Path this$0;

            {
                this.this$0 = this;
                this.offset = this.start;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.offset < this.this$0.end;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public ChildKey next() {
                if (!hasNext()) {
                    throw new NoSuchElementException(NPStringFog.decode(new byte[]{123, 91, 20, 93, 89, 65, 80, 20, 81, 92, 83, 94, 80, 90, 64, 67, 24}, "544063", false, true));
                }
                ChildKey[] childKeyArr = this.this$0.pieces;
                int i = this.offset;
                ChildKey childKey = childKeyArr[i];
                this.offset = i + 1;
                return childKey;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{113, 81, 10, 17, 71, 65, 64, 85, 9, 89, 69, 4, 18, 83, 11, 91, 67, 14, 92, 85, 10, 66, 19, 7, 64, 95, 9, 22, 90, 12, 95, 69, 16, 87, 81, 13, 87, 16, 52, 87, 71, 9, 19}, "20d63a", -6944));
            }
        };
    }

    public Path popFront() {
        int i = this.start;
        if (!isEmpty()) {
            i++;
        }
        return new Path(this.pieces, i, this.end);
    }

    public int size() {
        return this.end - this.start;
    }

    public String toString() {
        if (isEmpty()) {
            return NPStringFog.decode(new byte[]{23}, "8412ce", 1369548399L);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = this.start; i < this.end; i++) {
            sb.append(NPStringFog.decode(new byte[]{30}, "18cc00", -1944006870L));
            sb.append(this.pieces[i].asString());
        }
        return sb.toString();
    }

    public String wireFormat() {
        if (isEmpty()) {
            return NPStringFog.decode(new byte[]{27}, "437eeb", -1.612463295E9d);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = this.start; i < this.end; i++) {
            if (i > this.start) {
                sb.append(NPStringFog.decode(new byte[]{29}, "2b178f", true));
            }
            sb.append(this.pieces[i].asString());
        }
        return sb.toString();
    }
}
