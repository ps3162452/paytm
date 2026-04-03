package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    private static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = NPStringFog.decode(new byte[]{32, 19, 85}, "aa60fc", 4576);
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        Arc(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            this.linear = false;
            this.mVertical = i == 1;
            this.mTime1 = d;
            this.mTime2 = d2;
            this.mOneOverDeltaTime = 1.0d / (d2 - d);
            if (3 == i) {
                this.linear = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (this.linear || Math.abs(d7) < EPSILON || Math.abs(d8) < EPSILON) {
                this.linear = true;
                this.mX1 = d3;
                this.mX2 = d5;
                this.mY1 = d4;
                this.mY2 = d6;
                double dHypot = Math.hypot(d8, d7);
                this.mArcDistance = dHypot;
                this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
                double d9 = this.mTime2;
                double d10 = this.mTime1;
                this.mEllipseCenterX = d7 / (d9 - d10);
                this.mEllipseCenterY = d8 / (d9 - d10);
                return;
            }
            this.mLut = new double[101];
            boolean z = this.mVertical;
            double d11 = z ? -1 : 1;
            Double.isNaN(d11);
            this.mEllipseA = d11 * d7;
            double d12 = z ? 1 : -1;
            Double.isNaN(d12);
            this.mEllipseB = d12 * d8;
            this.mEllipseCenterX = z ? d5 : d3;
            this.mEllipseCenterY = z ? d4 : d6;
            buildTable(d3, d4, d5, d6);
            this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
        }

        private void buildTable(double d, double d2, double d3, double d4) {
            double dHypot;
            double d5 = d3 - d;
            double d6 = d2 - d4;
            double d7 = 0.0d;
            int i = 0;
            double d8 = 0.0d;
            double d9 = 0.0d;
            while (true) {
                if (i >= ourPercent.length) {
                    break;
                }
                double d10 = i;
                Double.isNaN(d10);
                double length = r3.length - 1;
                Double.isNaN(length);
                double radians = Math.toRadians((d10 * 90.0d) / length);
                double dSin = Math.sin(radians) * d5;
                double dCos = Math.cos(radians) * d6;
                if (i > 0) {
                    dHypot = Math.hypot(dSin - d9, dCos - d7) + d8;
                    ourPercent[i] = dHypot;
                } else {
                    dHypot = d8;
                }
                i++;
                d9 = dSin;
                d8 = dHypot;
                d7 = dCos;
            }
            this.mArcDistance = d8;
            int i2 = 0;
            while (true) {
                double[] dArr = ourPercent;
                if (i2 >= dArr.length) {
                    break;
                }
                dArr[i2] = dArr[i2] / d8;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= this.mLut.length) {
                    return;
                }
                double d11 = i3;
                double length2 = r3.length - 1;
                Double.isNaN(d11);
                Double.isNaN(length2);
                double d12 = d11 / length2;
                int iBinarySearch = Arrays.binarySearch(ourPercent, d12);
                if (iBinarySearch >= 0) {
                    double[] dArr2 = this.mLut;
                    double d13 = iBinarySearch;
                    double length3 = ourPercent.length - 1;
                    Double.isNaN(d13);
                    Double.isNaN(length3);
                    dArr2[i3] = d13 / length3;
                } else if (iBinarySearch == -1) {
                    this.mLut[i3] = 0.0d;
                } else {
                    int i4 = (-iBinarySearch) - 2;
                    double d14 = i4;
                    double[] dArr3 = ourPercent;
                    double d15 = (d12 - dArr3[i4]) / (dArr3[(-iBinarySearch) - 1] - dArr3[i4]);
                    Double.isNaN(d14);
                    double length4 = dArr3.length - 1;
                    Double.isNaN(length4);
                    this.mLut[i3] = (d15 + d14) / length4;
                }
                i3++;
            }
        }

        double getDX() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d, (-this.mEllipseB) * this.mTmpSinAngle);
            return this.mVertical ? (-d) * dHypot : d * dHypot;
        }

        double getDY() {
            double d = this.mEllipseA;
            double d2 = this.mTmpCosAngle;
            double d3 = (-this.mEllipseB) * this.mTmpSinAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d * d2, d3);
            return this.mVertical ? dHypot * (-d3) : dHypot * d3;
        }

        public double getLinearDX(double d) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d) {
            double d2 = this.mTime1;
            double d3 = this.mOneOverDeltaTime;
            double d4 = this.mX1;
            return ((d - d2) * d3 * (this.mX2 - d4)) + d4;
        }

        public double getLinearY(double d) {
            double d2 = this.mTime1;
            double d3 = this.mOneOverDeltaTime;
            double d4 = this.mY1;
            return ((d - d2) * d3 * (this.mY2 - d4)) + d4;
        }

        double getX() {
            return this.mEllipseCenterX + (this.mEllipseA * this.mTmpSinAngle);
        }

        double getY() {
            return this.mEllipseCenterY + (this.mEllipseB * this.mTmpCosAngle);
        }

        double lookup(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = dArr.length - 1;
            Double.isNaN(length);
            double d2 = length * d;
            int i = (int) d2;
            double d3 = (int) d2;
            Double.isNaN(d3);
            return ((dArr[i + 1] - dArr[i]) * (d2 - d3)) + dArr[i];
        }

        void setPoint(double d) {
            double dLookup = lookup((this.mVertical ? this.mTime2 - d : d - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(dLookup);
            this.mTmpCosAngle = Math.cos(dLookup);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        int i;
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i2 = 0;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i2 >= arcArr.length) {
                return;
            }
            switch (iArr[i2]) {
                case 0:
                    i4 = 3;
                    i = i3;
                    break;
                case 1:
                    i4 = 1;
                    i = 1;
                    break;
                case 2:
                    i4 = 2;
                    i = 2;
                    break;
                case 3:
                    int i5 = i3 == 1 ? 2 : 1;
                    i = i5;
                    i4 = i5;
                    break;
                default:
                    i = i3;
                    break;
            }
            arcArr[i2] = new Arc(i4, dArr[i2], dArr[i2 + 1], dArr2[i2][0], dArr2[i2][1], dArr2[i2 + 1][0], dArr2[i2 + 1][1]);
            i2++;
            i3 = i;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i) {
        int i2 = 0;
        if (this.mExtrapolate) {
            if (d < this.mArcs[0].mTime1) {
                double d2 = this.mArcs[0].mTime1;
                double d3 = d - this.mArcs[0].mTime1;
                if (this.mArcs[0].linear) {
                    if (i == 0) {
                        return (this.mArcs[0].getLinearDX(d2) * d3) + this.mArcs[0].getLinearX(d2);
                    }
                    return (this.mArcs[0].getLinearDY(d2) * d3) + this.mArcs[0].getLinearY(d2);
                }
                this.mArcs[0].setPoint(d2);
                if (i == 0) {
                    return (this.mArcs[0].getDX() * d3) + this.mArcs[0].getX();
                }
                return (this.mArcs[0].getDY() * d3) + this.mArcs[0].getY();
            }
            if (d > this.mArcs[r1.length - 1].mTime2) {
                double d4 = this.mArcs[r0.length - 1].mTime2;
                double d5 = d - d4;
                Arc[] arcArr = this.mArcs;
                int length = arcArr.length - 1;
                if (i == 0) {
                    return (this.mArcs[length].getLinearDX(d4) * d5) + arcArr[length].getLinearX(d4);
                }
                return (this.mArcs[length].getLinearDY(d4) * d5) + arcArr[length].getLinearY(d4);
            }
        } else if (d < this.mArcs[0].mTime1) {
            d = this.mArcs[0].mTime1;
        } else {
            if (d > this.mArcs[r1.length - 1].mTime2) {
                d = this.mArcs[r1.length - 1].mTime2;
            }
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i2 >= arcArr2.length) {
                return Double.NaN;
            }
            if (d <= arcArr2[i2].mTime2) {
                if (this.mArcs[i2].linear) {
                    return i == 0 ? this.mArcs[i2].getLinearX(d) : this.mArcs[i2].getLinearY(d);
                }
                this.mArcs[i2].setPoint(d);
                return i == 0 ? this.mArcs[i2].getX() : this.mArcs[i2].getY();
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        if (!this.mExtrapolate) {
            if (d < this.mArcs[0].mTime1) {
                d = this.mArcs[0].mTime1;
            }
            if (d > this.mArcs[r0.length - 1].mTime2) {
                d = this.mArcs[r0.length - 1].mTime2;
            }
        } else {
            if (d < this.mArcs[0].mTime1) {
                double d2 = this.mArcs[0].mTime1;
                double d3 = d - this.mArcs[0].mTime1;
                if (this.mArcs[0].linear) {
                    dArr[0] = this.mArcs[0].getLinearX(d2) + (this.mArcs[0].getLinearDX(d2) * d3);
                    dArr[1] = (this.mArcs[0].getLinearDY(d2) * d3) + this.mArcs[0].getLinearY(d2);
                    return;
                } else {
                    this.mArcs[0].setPoint(d2);
                    dArr[0] = this.mArcs[0].getX() + (this.mArcs[0].getDX() * d3);
                    dArr[1] = (d3 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
                    return;
                }
            }
            if (d > this.mArcs[r0.length - 1].mTime2) {
                double d4 = this.mArcs[r0.length - 1].mTime2;
                double d5 = d - d4;
                Arc[] arcArr = this.mArcs;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    dArr[0] = this.mArcs[length].getLinearX(d4) + (this.mArcs[length].getLinearDX(d4) * d5);
                    dArr[1] = (this.mArcs[length].getLinearDY(d4) * d5) + this.mArcs[length].getLinearY(d4);
                    return;
                } else {
                    this.mArcs[length].setPoint(d);
                    dArr[0] = this.mArcs[length].getX() + (this.mArcs[length].getDX() * d5);
                    dArr[1] = (d5 * this.mArcs[length].getDY()) + this.mArcs[length].getY();
                    return;
                }
            }
        }
        int i = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i >= arcArr2.length) {
                return;
            }
            if (d <= arcArr2[i].mTime2) {
                if (this.mArcs[i].linear) {
                    dArr[0] = this.mArcs[i].getLinearX(d);
                    dArr[1] = this.mArcs[i].getLinearY(d);
                    return;
                } else {
                    this.mArcs[i].setPoint(d);
                    dArr[0] = this.mArcs[i].getX();
                    dArr[1] = this.mArcs[i].getY();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        if (this.mExtrapolate) {
            if (d < this.mArcs[0].mTime1) {
                double d2 = this.mArcs[0].mTime1;
                double d3 = d - this.mArcs[0].mTime1;
                if (this.mArcs[0].linear) {
                    fArr[0] = (float) (this.mArcs[0].getLinearX(d2) + (this.mArcs[0].getLinearDX(d2) * d3));
                    fArr[1] = (float) ((this.mArcs[0].getLinearDY(d2) * d3) + this.mArcs[0].getLinearY(d2));
                    return;
                } else {
                    this.mArcs[0].setPoint(d2);
                    fArr[0] = (float) (this.mArcs[0].getX() + (this.mArcs[0].getDX() * d3));
                    fArr[1] = (float) ((d3 * this.mArcs[0].getDY()) + this.mArcs[0].getY());
                    return;
                }
            }
            if (d > this.mArcs[r0.length - 1].mTime2) {
                double d4 = this.mArcs[r0.length - 1].mTime2;
                double d5 = d - d4;
                Arc[] arcArr = this.mArcs;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    fArr[0] = (float) (this.mArcs[length].getLinearX(d4) + (this.mArcs[length].getLinearDX(d4) * d5));
                    fArr[1] = (float) ((this.mArcs[length].getLinearDY(d4) * d5) + this.mArcs[length].getLinearY(d4));
                    return;
                } else {
                    this.mArcs[length].setPoint(d);
                    fArr[0] = (float) this.mArcs[length].getX();
                    fArr[1] = (float) this.mArcs[length].getY();
                    return;
                }
            }
        } else if (d < this.mArcs[0].mTime1) {
            d = this.mArcs[0].mTime1;
        } else {
            if (d > this.mArcs[r0.length - 1].mTime2) {
                d = this.mArcs[r0.length - 1].mTime2;
            }
        }
        int i = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i >= arcArr2.length) {
                return;
            }
            if (d <= arcArr2[i].mTime2) {
                if (this.mArcs[i].linear) {
                    fArr[0] = (float) this.mArcs[i].getLinearX(d);
                    fArr[1] = (float) this.mArcs[i].getLinearY(d);
                    return;
                } else {
                    this.mArcs[i].setPoint(d);
                    fArr[0] = (float) this.mArcs[i].getX();
                    fArr[1] = (float) this.mArcs[i].getY();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        int i2 = 0;
        if (d < this.mArcs[0].mTime1) {
            d = this.mArcs[0].mTime1;
        }
        if (d > this.mArcs[r1.length - 1].mTime2) {
            d = this.mArcs[r1.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i2 >= arcArr.length) {
                return Double.NaN;
            }
            if (d <= arcArr[i2].mTime2) {
                if (this.mArcs[i2].linear) {
                    return i == 0 ? this.mArcs[i2].getLinearDX(d) : this.mArcs[i2].getLinearDY(d);
                }
                this.mArcs[i2].setPoint(d);
                return i == 0 ? this.mArcs[i2].getDX() : this.mArcs[i2].getDY();
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        if (d < this.mArcs[0].mTime1) {
            d = this.mArcs[0].mTime1;
        } else {
            if (d > this.mArcs[r0.length - 1].mTime2) {
                d = this.mArcs[r0.length - 1].mTime2;
            }
        }
        int i = 0;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i >= arcArr.length) {
                return;
            }
            if (d <= arcArr[i].mTime2) {
                if (this.mArcs[i].linear) {
                    dArr[0] = this.mArcs[i].getLinearDX(d);
                    dArr[1] = this.mArcs[i].getLinearDY(d);
                    return;
                } else {
                    this.mArcs[i].setPoint(d);
                    dArr[0] = this.mArcs[i].getDX();
                    dArr[1] = this.mArcs[i].getDY();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }
}
