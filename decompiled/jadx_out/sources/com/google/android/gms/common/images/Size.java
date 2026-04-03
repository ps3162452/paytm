package com.google.android.gms.common.images;

import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class Size {
    private final int zaa;
    private final int zab;

    public Size(int i, int i2) {
        this.zaa = i;
        this.zab = i2;
    }

    public static Size parseSize(String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 17, 20, 10, 88, 82, 18, 8, 19, 16, 66, 21, 92, 10, 18, 67, 84, 80, 18, 11, 19, 15, 90}, "2efc65", true, false));
        }
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(120);
        }
        if (iIndexOf < 0) {
            throw zaa(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException e) {
            throw zaa(str);
        }
    }

    private static NumberFormatException zaa(String str) {
        throw new NumberFormatException(NPStringFog.decode(new byte[]{40, 88, 69, 81, 91, 89, 5, 22, 96, 89, 77, 85, 91, 22, 17}, "a63070", -598481090L) + str + NPStringFog.decode(new byte[]{64}, "bfef81", true));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.zaa == size.zaa && this.zab == size.zab;
    }

    public int getHeight() {
        return this.zab;
    }

    public int getWidth() {
        return this.zaa;
    }

    public int hashCode() {
        int i = this.zab;
        int i2 = this.zaa;
        return i ^ ((i2 << 16) | (i2 >>> 16));
    }

    public String toString() {
        return this.zaa + NPStringFog.decode(new byte[]{65}, "9a603a", true, true) + this.zab;
    }
}
