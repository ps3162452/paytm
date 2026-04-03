package com.budiyev.android.codescanner;

import android.graphics.Matrix;
import androidx.annotation.NonNull;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
final class Rect {
    private final int mBottom;
    private final int mLeft;
    private final int mRight;
    private final int mTop;

    public Rect(int i, int i2, int i3, int i4) {
        this.mLeft = i;
        this.mTop = i2;
        this.mRight = i3;
        this.mBottom = i4;
    }

    @NonNull
    public Rect bound(int i, int i2, int i3, int i4) {
        int i5 = this.mLeft;
        int i6 = this.mTop;
        int i7 = this.mRight;
        int i8 = this.mBottom;
        return (i5 < i || i6 < i2 || i7 > i3 || i8 > i4) ? new Rect(Math.max(i5, i), Math.max(i6, i2), Math.min(i7, i3), Math.min(i8, i4)) : this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        return this.mLeft == rect.mLeft && this.mTop == rect.mTop && this.mRight == rect.mRight && this.mBottom == rect.mBottom;
    }

    @NonNull
    public Rect fitIn(@NonNull Rect rect) {
        int i;
        int i2;
        int i3 = this.mLeft;
        int i4 = this.mTop;
        int i5 = this.mRight;
        int i6 = this.mBottom;
        int width = getWidth();
        int height = getHeight();
        int i7 = rect.mLeft;
        int i8 = rect.mTop;
        int i9 = rect.mRight;
        int i10 = rect.mBottom;
        int width2 = rect.getWidth();
        int height2 = rect.getHeight();
        if (i3 >= i7 && i4 >= i8 && i5 <= i9 && i6 <= i10) {
            return this;
        }
        int iMin = Math.min(width, width2);
        int iMin2 = Math.min(height, height2);
        if (i3 < i7) {
            i = i7 + iMin;
        } else if (i5 > i9) {
            i7 = i9 - iMin;
            i = i9;
        } else {
            i7 = i3;
            i = i5;
        }
        if (i4 < i8) {
            i2 = i8 + iMin2;
        } else if (i6 > i10) {
            i8 = i10 - iMin2;
            i2 = i10;
        } else {
            i8 = i4;
            i2 = i6;
        }
        return new Rect(i7, i8, i, i2);
    }

    public int getBottom() {
        return this.mBottom;
    }

    public int getHeight() {
        return this.mBottom - this.mTop;
    }

    public int getLeft() {
        return this.mLeft;
    }

    public int getRight() {
        return this.mRight;
    }

    public int getTop() {
        return this.mTop;
    }

    public int getWidth() {
        return this.mRight - this.mLeft;
    }

    public int hashCode() {
        return (((((this.mLeft * 31) + this.mTop) * 31) + this.mRight) * 31) + this.mBottom;
    }

    public boolean isPointInside(int i, int i2) {
        return this.mLeft < i && this.mTop < i2 && this.mRight > i && this.mBottom > i2;
    }

    @NonNull
    public Rect rotate(float f, float f2, float f3) {
        Matrix matrix = new Matrix();
        float[] fArr = {this.mLeft, this.mTop, this.mRight, this.mBottom};
        matrix.postRotate(f, f2, f3);
        matrix.mapPoints(fArr);
        int i = (int) fArr[0];
        int i2 = (int) fArr[1];
        int i3 = (int) fArr[2];
        int i4 = (int) fArr[3];
        if (i <= i3) {
            i3 = i;
            i = i3;
        }
        if (i2 <= i4) {
            i2 = i4;
            i4 = i2;
        }
        return new Rect(i3, i4, i, i2);
    }

    @NonNull
    public Rect sort() {
        int i = this.mLeft;
        int i2 = this.mTop;
        int i3 = this.mRight;
        int i4 = this.mBottom;
        if (i <= i3 && i2 <= i4) {
            return this;
        }
        if (i <= i3) {
            i3 = i;
            i = i3;
        }
        if (i2 <= i4) {
            i4 = i2;
            i2 = i4;
        }
        return new Rect(i3, i4, i, i2);
    }

    @NonNull
    public String toString() {
        return NPStringFog.decode(new byte[]{106, 25}, "114b17", -1.2026447E9f) + this.mLeft + NPStringFog.decode(new byte[]{10, 18}, "121d95", true) + this.mTop + NPStringFog.decode(new byte[]{25, 24, 29, 70, 73}, "080fa2", -10996) + this.mRight + NPStringFog.decode(new byte[]{14, 69}, "5e5f5d", true) + this.mBottom + NPStringFog.decode(new byte[]{29, 56}, "4e24f3", 27343);
    }
}
