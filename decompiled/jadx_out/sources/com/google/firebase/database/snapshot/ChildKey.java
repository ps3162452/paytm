package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.utilities.Utilities;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ChildKey implements Comparable<ChildKey> {
    static final boolean $assertionsDisabled = false;
    private final String key;
    private static final ChildKey MIN_KEY = new ChildKey(NPStringFog.decode(new byte[]{56, 40, 120, 45, 105, 123, 38, 60, 108}, "ce1c60", -1026502276L));
    private static final ChildKey MAX_KEY = new ChildKey(NPStringFog.decode(new byte[]{106, 120, 119, 105, 108, 46, 116, 108, 107}, "15613e", 8.87319835E8d));
    private static final ChildKey PRIORITY_CHILD_KEY = new ChildKey(NPStringFog.decode(new byte[]{30, 70, 23, 12, 86, 71, 89, 66, 28}, "06ee95", false));
    private static final ChildKey INFO_CHILD_KEY = new ChildKey(NPStringFog.decode(new byte[]{24, 88, 89, 2, 88}, "617d73", true));

    private static class IntegerChildKey extends ChildKey {
        private final int intValue;

        IntegerChildKey(String str, int i) {
            super(str);
            this.intValue = i;
        }

        @Override // com.google.firebase.database.snapshot.ChildKey, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(ChildKey childKey) {
            return super.compareTo(childKey);
        }

        @Override // com.google.firebase.database.snapshot.ChildKey
        protected int intValue() {
            return this.intValue;
        }

        @Override // com.google.firebase.database.snapshot.ChildKey
        protected boolean isInt() {
            return true;
        }

        @Override // com.google.firebase.database.snapshot.ChildKey
        public String toString() {
            return NPStringFog.decode(new byte[]{122, 11, 65, 85, 95, 93, 65, 38, 93, 89, 84, 92, 125, 4, 88, 85, 16, 26}, "3e5088", -290570444L) + ((ChildKey) this).key + NPStringFog.decode(new byte[]{22, 28}, "45b6c0", true, false);
        }
    }

    private ChildKey(String str) {
        this.key = str;
    }

    public static ChildKey fromString(String str) {
        Integer numTryParseInt = Utilities.tryParseInt(str);
        return numTryParseInt != null ? new IntegerChildKey(str, numTryParseInt.intValue()) : str.equals(NPStringFog.decode(new byte[]{75, 66, 67, 93, 90, 23, 12, 70, 72}, "e2145e", -1846720576L)) ? PRIORITY_CHILD_KEY : new ChildKey(str);
    }

    public static ChildKey getInfoKey() {
        return INFO_CHILD_KEY;
    }

    public static ChildKey getMaxName() {
        return MAX_KEY;
    }

    public static ChildKey getMinName() {
        return MIN_KEY;
    }

    public static ChildKey getPriorityKey() {
        return PRIORITY_CHILD_KEY;
    }

    public String asString() {
        return this.key;
    }

    @Override // java.lang.Comparable
    public int compareTo(ChildKey childKey) {
        ChildKey childKey2;
        if (this == childKey) {
            return 0;
        }
        ChildKey childKey3 = MIN_KEY;
        if (this == childKey3 || childKey == (childKey2 = MAX_KEY)) {
            return -1;
        }
        if (childKey == childKey3 || this == childKey2) {
            return 1;
        }
        if (!isInt()) {
            if (childKey.isInt()) {
                return 1;
            }
            return this.key.compareTo(childKey.key);
        }
        if (!childKey.isInt()) {
            return -1;
        }
        int iCompareInts = Utilities.compareInts(intValue(), childKey.intValue());
        return iCompareInts == 0 ? Utilities.compareInts(this.key.length(), childKey.key.length()) : iCompareInts;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ChildKey)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return this.key.equals(((ChildKey) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    protected int intValue() {
        return 0;
    }

    protected boolean isInt() {
        return false;
    }

    public boolean isPriorityChildName() {
        return equals(PRIORITY_CHILD_KEY);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{122, 93, 95, 94, 80, 125, 92, 76, 30, 16}, "956246", 1.914095657E9d) + this.key + NPStringFog.decode(new byte[]{27, 25}, "9053f1", true);
    }
}
