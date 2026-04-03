package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes65.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i, int i2, int i3) throws NotFoundException {
        this.image = bitMatrix;
        this.height = bitMatrix.getHeight();
        this.width = bitMatrix.getWidth();
        int i4 = i / 2;
        this.leftInit = i2 - i4;
        this.rightInit = i2 + i4;
        this.upInit = i3 - i4;
        this.downInit = i4 + i3;
        if (this.upInit < 0 || this.leftInit < 0 || this.downInit >= this.height || this.rightInit >= this.width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = resultPoint2.getX();
        float y2 = resultPoint2.getY();
        float x3 = resultPoint3.getX();
        float y3 = resultPoint3.getY();
        float x4 = resultPoint4.getX();
        float y4 = resultPoint4.getY();
        return x < ((float) this.width) / 2.0f ? new ResultPoint[]{new ResultPoint(x4 - 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f), new ResultPoint(x + 1.0f, y - 1.0f)} : new ResultPoint[]{new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 - 1.0f), new ResultPoint(x3 - 1.0f, y3 + 1.0f), new ResultPoint(x - 1.0f, y - 1.0f)};
    }

    private boolean containsBlackPoint(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.image.get(i, i3)) {
                    return true;
                }
                i++;
            }
        } else {
            while (i <= i2) {
                if (this.image.get(i3, i)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    private ResultPoint getBlackPointOnSegment(float f, float f2, float f3, float f4) {
        int iRound = MathUtils.round(MathUtils.distance(f, f2, f3, f4));
        float f5 = (f3 - f) / iRound;
        float f6 = (f4 - f2) / iRound;
        for (int i = 0; i < iRound; i++) {
            int iRound2 = MathUtils.round((i * f5) + f);
            int iRound3 = MathUtils.round((i * f6) + f2);
            if (this.image.get(iRound2, iRound3)) {
                return new ResultPoint(iRound2, iRound3);
            }
        }
        return null;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        int i5 = this.leftInit;
        int i6 = this.rightInit;
        int i7 = this.upInit;
        int i8 = this.downInit;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = true;
        while (true) {
            if (!z7) {
                i = i8;
                i2 = i7;
                z = false;
                int i9 = i6;
                i3 = i5;
                i4 = i9;
                break;
            }
            boolean z8 = z5;
            int i10 = i6;
            boolean z9 = false;
            boolean zContainsBlackPoint = true;
            while (true) {
                if ((!zContainsBlackPoint && z8) || i10 >= this.width) {
                    break;
                }
                zContainsBlackPoint = containsBlackPoint(i7, i8, i10, false);
                if (zContainsBlackPoint) {
                    i10++;
                    z8 = true;
                    z9 = true;
                } else if (!z8) {
                    i10++;
                }
            }
            if (i10 >= this.width) {
                i = i8;
                i2 = i7;
                i3 = i5;
                i4 = i10;
                z = true;
                break;
            }
            boolean z10 = z4;
            i = i8;
            boolean z11 = z9;
            boolean zContainsBlackPoint2 = true;
            while (true) {
                if ((!zContainsBlackPoint2 && z10) || i >= this.height) {
                    break;
                }
                zContainsBlackPoint2 = containsBlackPoint(i5, i10, i, true);
                if (zContainsBlackPoint2) {
                    i++;
                    z10 = true;
                    z11 = true;
                } else if (!z10) {
                    i++;
                }
            }
            if (i >= this.height) {
                z = true;
                i2 = i7;
                i3 = i5;
                i4 = i10;
                break;
            }
            i3 = i5;
            boolean z12 = z3;
            boolean zContainsBlackPoint3 = true;
            while (true) {
                if ((!zContainsBlackPoint3 && z12) || i3 < 0) {
                    break;
                }
                zContainsBlackPoint3 = containsBlackPoint(i7, i, i3, false);
                if (zContainsBlackPoint3) {
                    z12 = true;
                    i3--;
                    z11 = true;
                } else if (!z12) {
                    i3--;
                }
            }
            if (i3 < 0) {
                z = true;
                i2 = i7;
                i4 = i10;
                break;
            }
            i2 = i7;
            boolean z13 = z2;
            boolean z14 = z11;
            boolean zContainsBlackPoint4 = true;
            while (true) {
                if ((!zContainsBlackPoint4 && z13) || i2 < 0) {
                    break;
                }
                zContainsBlackPoint4 = containsBlackPoint(i3, i10, i2, true);
                if (zContainsBlackPoint4) {
                    z13 = true;
                    i2--;
                    z14 = true;
                } else if (!z13) {
                    i2--;
                }
            }
            if (i2 < 0) {
                z = true;
                i4 = i10;
                break;
            }
            if (z14) {
                z6 = true;
            }
            i8 = i;
            z4 = z10;
            z5 = z8;
            boolean z15 = z12;
            i5 = i3;
            i6 = i10;
            z7 = z14;
            z2 = z13;
            i7 = i2;
            z3 = z15;
        }
        if (z || !z6) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = i4 - i3;
        ResultPoint blackPointOnSegment = null;
        int i12 = 1;
        while (true) {
            if (i12 >= i11) {
                resultPoint = blackPointOnSegment;
                break;
            }
            blackPointOnSegment = getBlackPointOnSegment(i3, i - i12, i3 + i12, i);
            if (blackPointOnSegment != null) {
                resultPoint = blackPointOnSegment;
                break;
            }
            i12++;
        }
        if (resultPoint == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment2 = null;
        int i13 = 1;
        while (true) {
            if (i13 >= i11) {
                resultPoint2 = blackPointOnSegment2;
                break;
            }
            blackPointOnSegment2 = getBlackPointOnSegment(i3, i2 + i13, i3 + i13, i2);
            if (blackPointOnSegment2 != null) {
                resultPoint2 = blackPointOnSegment2;
                break;
            }
            i13++;
        }
        if (resultPoint2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment3 = null;
        int i14 = 1;
        while (true) {
            if (i14 >= i11) {
                resultPoint3 = blackPointOnSegment3;
                break;
            }
            blackPointOnSegment3 = getBlackPointOnSegment(i4, i2 + i14, i4 - i14, i2);
            if (blackPointOnSegment3 != null) {
                resultPoint3 = blackPointOnSegment3;
                break;
            }
            i14++;
        }
        if (resultPoint3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment4 = null;
        for (int i15 = 1; i15 < i11; i15++) {
            blackPointOnSegment4 = getBlackPointOnSegment(i4, i - i15, i4 - i15, i);
            if (blackPointOnSegment4 != null) {
                break;
            }
        }
        if (blackPointOnSegment4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        return centerEdges(blackPointOnSegment4, resultPoint, resultPoint3, resultPoint2);
    }
}
