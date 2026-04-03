package com.google.zxing.common.reedsolomon;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ReedSolomonDecoder {
    private final GenericGF field;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.field = genericGF;
    }

    private int[] findErrorLocations(GenericGFPoly genericGFPoly) throws ReedSolomonException {
        int i = 0;
        int degree = genericGFPoly.getDegree();
        if (degree == 1) {
            return new int[]{genericGFPoly.getCoefficient(1)};
        }
        int[] iArr = new int[degree];
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (genericGFPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i != degree) {
            throw new ReedSolomonException(NPStringFog.decode(new byte[]{38, 71, 16, 13, 20, 69, 15, 90, 1, 3, 18, 10, 17, 21, 6, 7, 1, 23, 6, 80, 66, 6, 9, 0, 16, 21, 12, 13, 18, 69, 14, 84, 22, 1, 14, 69, 13, 64, 15, 0, 3, 23, 67, 90, 4, 66, 20, 10, 12, 65, 17}, "c5bbfe", -252));
        }
        return iArr;
    }

    private int[] findErrorMagnitudes(GenericGFPoly genericGFPoly, int[] iArr) {
        int iMultiply;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int iInverse = this.field.inverse(iArr[i]);
            int i2 = 1;
            int i3 = 0;
            while (i3 < length) {
                if (i != i3) {
                    int iMultiply2 = this.field.multiply(iArr[i3], iInverse);
                    iMultiply = this.field.multiply(i2, (iMultiply2 & 1) == 0 ? iMultiply2 | 1 : iMultiply2 & (-2));
                } else {
                    iMultiply = i2;
                }
                i3++;
                i2 = iMultiply;
            }
            iArr2[i] = this.field.multiply(genericGFPoly.evaluateAt(iInverse), this.field.inverse(i2));
            if (this.field.getGeneratorBase() != 0) {
                iArr2[i] = this.field.multiply(iArr2[i], iInverse);
            }
        }
        return iArr2;
    }

    private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly genericGFPoly, GenericGFPoly genericGFPoly2, int i) throws ReedSolomonException {
        if (genericGFPoly.getDegree() >= genericGFPoly2.getDegree()) {
            genericGFPoly = genericGFPoly2;
            genericGFPoly2 = genericGFPoly;
        }
        GenericGFPoly zero = this.field.getZero();
        GenericGFPoly one = this.field.getOne();
        GenericGFPoly genericGFPoly3 = genericGFPoly;
        while (genericGFPoly3.getDegree() >= i / 2) {
            if (genericGFPoly3.isZero()) {
                throw new ReedSolomonException(NPStringFog.decode(new byte[]{64, 57, 67, 90, 26, 6, 79, 70, 79, 82, 68, 23, 72, 3, 74, 92}, "2f8377", -1.311901808E9d));
            }
            GenericGFPoly zero2 = this.field.getZero();
            int iInverse = this.field.inverse(genericGFPoly3.getCoefficient(genericGFPoly3.getDegree()));
            GenericGFPoly genericGFPolyAddOrSubtract = genericGFPoly2;
            while (genericGFPolyAddOrSubtract.getDegree() >= genericGFPoly3.getDegree() && !genericGFPolyAddOrSubtract.isZero()) {
                int degree = genericGFPolyAddOrSubtract.getDegree() - genericGFPoly3.getDegree();
                int iMultiply = this.field.multiply(genericGFPolyAddOrSubtract.getCoefficient(genericGFPolyAddOrSubtract.getDegree()), iInverse);
                zero2 = zero2.addOrSubtract(this.field.buildMonomial(degree, iMultiply));
                genericGFPolyAddOrSubtract = genericGFPolyAddOrSubtract.addOrSubtract(genericGFPoly3.multiplyByMonomial(degree, iMultiply));
            }
            GenericGFPoly genericGFPolyAddOrSubtract2 = zero2.multiply(one).addOrSubtract(zero);
            if (genericGFPolyAddOrSubtract.getDegree() >= genericGFPoly3.getDegree()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 8, 16, 88, 23, 88, 91, 15, 70, 80, 8, 86, 91, 19, 15, 69, 12, 92, 20, 7, 7, 88, 8, 84, 80, 65, 18, 94, 68, 67, 81, 5, 19, 82, 1, 17, 68, 14, 10, 72, 10, 94, 89, 8, 7, 93, 91}, "4af1d1", false, true));
            }
            genericGFPoly2 = genericGFPoly3;
            genericGFPoly3 = genericGFPolyAddOrSubtract;
            GenericGFPoly genericGFPoly4 = one;
            one = genericGFPolyAddOrSubtract2;
            zero = genericGFPoly4;
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient == 0) {
            throw new ReedSolomonException(NPStringFog.decode(new byte[]{75, 93, 5, 9, 86, 103, 81, 88, 6, 1, 31, 3, 17, 20, 21, 5, 68, 19, 66, 81, 16, 11}, "84bd73", true));
        }
        int iInverse2 = this.field.inverse(coefficient);
        return new GenericGFPoly[]{one.multiply(iInverse2), genericGFPoly3.multiply(iInverse2)};
    }

    public void decode(int[] iArr, int i) throws ReedSolomonException {
        GenericGFPoly genericGFPoly = new GenericGFPoly(this.field, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            int iEvaluateAt = genericGFPoly.evaluateAt(this.field.exp(this.field.getGeneratorBase() + i2));
            iArr2[(iArr2.length - 1) - i2] = iEvaluateAt;
            if (iEvaluateAt != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        GenericGFPoly[] genericGFPolyArrRunEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new GenericGFPoly(this.field, iArr2), i);
        GenericGFPoly genericGFPoly2 = genericGFPolyArrRunEuclideanAlgorithm[0];
        GenericGFPoly genericGFPoly3 = genericGFPolyArrRunEuclideanAlgorithm[1];
        int[] iArrFindErrorLocations = findErrorLocations(genericGFPoly2);
        int[] iArrFindErrorMagnitudes = findErrorMagnitudes(genericGFPoly3, iArrFindErrorLocations);
        for (int i3 = 0; i3 < iArrFindErrorLocations.length; i3++) {
            int length = (iArr.length - 1) - this.field.log(iArrFindErrorLocations[i3]);
            if (length < 0) {
                throw new ReedSolomonException(NPStringFog.decode(new byte[]{114, 4, 81, 65, 6, 75, 66, 10, 71, 65, 15, 86, 83, 4, 65, 8, 12, 87}, "0e5ac9", 7.38491563E8d));
            }
            iArr[length] = GenericGF.addOrSubtract(iArr[length], iArrFindErrorMagnitudes[i3]);
        }
    }
}
