package com.budiyev.android.codescanner;

import androidx.annotation.NonNull;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
final class Point {
    private final int mX;
    private final int mY;

    public Point(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.mX == point.mX && this.mY == point.mY;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int hashCode() {
        int i = this.mX;
        int i2 = this.mY;
        return i ^ ((i2 << 16) | (i2 >>> 16));
    }

    @NonNull
    public String toString() {
        return NPStringFog.decode(new byte[]{30}, "6621a3", 5253962.0d) + this.mX + NPStringFog.decode(new byte[]{8, 25}, "39ef87", false) + this.mY + NPStringFog.decode(new byte[]{17}, "82f0cb", -1796229930L);
    }
}
