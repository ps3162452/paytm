package com.google.zxing.pdf417.decoder.ec;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = modulusGF;
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

    ModulusPoly add(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 14, 86, 22, 90, 19, 64, 49, 93, 15, 79, 21, 19, 5, 93, 67, 88, 9, 71, 65, 90, 2, 64, 3, 19, 18, 83, 14, 83, 70, 126, 14, 86, 22, 90, 19, 64, 38, 116, 67, 80, 15, 86, 13, 86}, "3a2c6f", false));
        }
        if (isZero()) {
            return modulusPoly;
        }
        if (modulusPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = modulusPoly.coefficients;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.field.add(iArr2[i - length], iArr[i]);
        }
        return new ModulusPoly(this.field, iArr3);
    }

    ModulusPoly[] divide(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 89, 6, 19, 84, 17, 68, 102, 13, 10, 65, 23, 23, 82, 13, 70, 86, 11, 67, 22, 10, 7, 78, 1, 23, 69, 3, 11, 93, 68, 122, 89, 6, 19, 84, 17, 68, 113, 36, 70, 94, 13, 82, 90, 6}, "76bf8d", false));
        }
        if (modulusPoly.isZero()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 12, 23, 15, 83, 0, 24, 7, 24, 70, 7}, "8eaf7e", -1.4404932E9f));
        }
        ModulusPoly zero = this.field.getZero();
        int iInverse = this.field.inverse(modulusPoly.getCoefficient(modulusPoly.getDegree()));
        ModulusPoly modulusPolyAdd = zero;
        ModulusPoly modulusPolySubtract = this;
        while (modulusPolySubtract.getDegree() >= modulusPoly.getDegree() && !modulusPolySubtract.isZero()) {
            int degree = modulusPolySubtract.getDegree() - modulusPoly.getDegree();
            int iMultiply = this.field.multiply(modulusPolySubtract.getCoefficient(modulusPolySubtract.getDegree()), iInverse);
            ModulusPoly modulusPolyMultiplyByMonomial = modulusPoly.multiplyByMonomial(degree, iMultiply);
            modulusPolyAdd = modulusPolyAdd.add(this.field.buildMonomial(degree, iMultiply));
            modulusPolySubtract = modulusPolySubtract.subtract(modulusPolyMultiplyByMonomial);
        }
        return new ModulusPoly[]{modulusPolyAdd, modulusPolySubtract};
    }

    int evaluateAt(int i) {
        int i2 = 0;
        if (i == 0) {
            return getCoefficient(0);
        }
        int length = this.coefficients.length;
        if (i != 1) {
            int iAdd = this.coefficients[0];
            for (int i3 = 1; i3 < length; i3++) {
                iAdd = this.field.add(this.field.multiply(i, iAdd), this.coefficients[i3]);
            }
            return iAdd;
        }
        int[] iArr = this.coefficients;
        int length2 = iArr.length;
        int i4 = 0;
        while (i4 < length2) {
            int iAdd2 = this.field.add(i2, iArr[i4]);
            i4++;
            i2 = iAdd2;
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

    ModulusPoly multiply(int i) {
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
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 12, 84, 76, 90, 17, 65, 51, 95, 85, 79, 23, 18, 7, 95, 25, 88, 11, 70, 67, 88, 88, 64, 1, 18, 16, 81, 84, 83, 68, 127, 12, 84, 76, 90, 17, 65, 36, 118, 25, 80, 13, 87, 15, 84}, "2c096d", 6.3605656E7f));
        }
        if (isZero() || modulusPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = modulusPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                iArr3[i + i3] = this.field.add(iArr3[i + i3], this.field.multiply(i2, iArr2[i3]));
            }
        }
        return new ModulusPoly(this.field, iArr3);
    }

    ModulusPoly multiplyByMonomial(int i, int i2) {
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
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.field.subtract(0, this.coefficients[i]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            return modulusPoly.isZero() ? this : add(modulusPoly.negative());
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 9, 85, 19, 94, 20, 70, 54, 94, 10, 75, 18, 21, 2, 94, 70, 92, 14, 65, 70, 89, 7, 68, 4, 21, 21, 80, 11, 87, 65, 120, 9, 85, 19, 94, 20, 70, 33, 119, 70, 84, 8, 80, 10, 85}, "5f1f2a", 1.3713617E9f));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(NPStringFog.decode(new byte[]{25, 76, 22}, "9a6df1", 1185065671L));
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(NPStringFog.decode(new byte[]{21, 31, 21}, "545038", false));
                }
                if (degree == 0 || coefficient != 1) {
                    sb.append(coefficient);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append(NPStringFog.decode(new byte[]{27, 58}, "cdce49", -200397574L));
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
