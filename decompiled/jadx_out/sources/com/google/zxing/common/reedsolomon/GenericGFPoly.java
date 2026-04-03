package com.google.zxing.common.reedsolomon;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = genericGF;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.coefficients = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.coefficients = new int[]{0};
        } else {
            this.coefficients = new int[length - i];
            System.arraycopy(iArr, i, this.coefficients, 0, this.coefficients.length);
        }
    }

    GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 4, 90, 4, 66, 93, 90, 38, 114, 49, 95, 88, 64, 18, 20, 5, 95, 20, 87, 14, 64, 65, 88, 85, 79, 4, 20, 18, 81, 89, 92, 65, 115, 4, 94, 81, 75, 8, 87, 38, 118, 20, 95, 8, 81, 13, 84}, "9a4a04", false));
        }
        if (isZero()) {
            return genericGFPoly;
        }
        if (genericGFPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = genericGFPoly.coefficients;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = GenericGF.addOrSubtract(iArr2[i - length], iArr[i]);
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 82, 95, 6, 20, 80, 80, 112, 119, 51, 9, 85, 74, 68, 17, 7, 9, 25, 93, 88, 69, 67, 14, 88, 69, 82, 17, 16, 7, 84, 86, 23, 118, 6, 8, 92, 65, 94, 82, 36, 32, 25, 85, 94, 84, 15, 2}, "371cf9", true));
        }
        if (genericGFPoly.isZero()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 81, 21, 93, 83, 6, 23, 90, 26, 20, 7}, "78c47c", -1.283656166E9d));
        }
        GenericGFPoly zero = this.field.getZero();
        int iInverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
        GenericGFPoly genericGFPolyAddOrSubtract = zero;
        GenericGFPoly genericGFPolyAddOrSubtract2 = this;
        while (genericGFPolyAddOrSubtract2.getDegree() >= genericGFPoly.getDegree() && !genericGFPolyAddOrSubtract2.isZero()) {
            int degree = genericGFPolyAddOrSubtract2.getDegree() - genericGFPoly.getDegree();
            int iMultiply = this.field.multiply(genericGFPolyAddOrSubtract2.getCoefficient(genericGFPolyAddOrSubtract2.getDegree()), iInverse);
            GenericGFPoly genericGFPolyMultiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, iMultiply);
            genericGFPolyAddOrSubtract = genericGFPolyAddOrSubtract.addOrSubtract(this.field.buildMonomial(degree, iMultiply));
            genericGFPolyAddOrSubtract2 = genericGFPolyAddOrSubtract2.addOrSubtract(genericGFPolyMultiplyByMonomial);
        }
        return new GenericGFPoly[]{genericGFPolyAddOrSubtract, genericGFPolyAddOrSubtract2};
    }

    int evaluateAt(int i) {
        int i2 = 0;
        if (i == 0) {
            return getCoefficient(0);
        }
        int length = this.coefficients.length;
        if (i != 1) {
            int iAddOrSubtract = this.coefficients[0];
            for (int i3 = 1; i3 < length; i3++) {
                iAddOrSubtract = GenericGF.addOrSubtract(this.field.multiply(i, iAddOrSubtract), this.coefficients[i3]);
            }
            return iAddOrSubtract;
        }
        int[] iArr = this.coefficients;
        int length2 = iArr.length;
        int i4 = 0;
        while (i4 < length2) {
            int iAddOrSubtract2 = GenericGF.addOrSubtract(i2, iArr[i4]);
            i4++;
            i2 = iAddOrSubtract2;
        }
        return i2;
    }

    int getCoefficient(int i) {
        return this.coefficients[(this.coefficients.length - 1) - i];
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    int getDegree() {
        return this.coefficients.length - 1;
    }

    boolean isZero() {
        return this.coefficients[0] == 0;
    }

    GenericGFPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new GenericGFPoly(this.field, iArr);
    }

    GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 6, 94, 84, 20, 89, 91, 36, 118, 97, 9, 92, 65, 16, 16, 85, 9, 16, 86, 12, 68, 17, 14, 81, 78, 6, 16, 66, 7, 93, 93, 67, 119, 84, 8, 85, 74, 10, 83, 118, 32, 16, 94, 10, 85, 93, 2}, "8c01f0", false, true));
        }
        if (isZero() || genericGFPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = genericGFPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                iArr3[i + i3] = GenericGF.addOrSubtract(iArr3[i + i3], this.field.multiply(i2, iArr2[i3]));
            }
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    GenericGFPoly multiplyByMonomial(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.field.getZero();
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length + i];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
        }
        return new GenericGFPoly(this.field, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(NPStringFog.decode(new byte[]{66, 27, 18}, "b62197", false));
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(NPStringFog.decode(new byte[]{70, 18, 16}, "f9053b", true));
                }
                if (degree == 0 || coefficient != 1) {
                    int iLog = this.field.log(coefficient);
                    if (iLog == 0) {
                        sb.append('1');
                    } else if (iLog == 1) {
                        sb.append('a');
                    } else {
                        sb.append(NPStringFog.decode(new byte[]{81, 61}, "0cedea", 13585));
                        sb.append(iLog);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append(NPStringFog.decode(new byte[]{26, 103}, "b939c0", false, false));
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
