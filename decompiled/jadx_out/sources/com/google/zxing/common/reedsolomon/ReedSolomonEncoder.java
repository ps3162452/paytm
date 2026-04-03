package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ReedSolomonEncoder {
    private final List<GenericGFPoly> cachedGenerators = new ArrayList();
    private final GenericGF field;

    public ReedSolomonEncoder(GenericGF genericGF) {
        this.field = genericGF;
        this.cachedGenerators.add(new GenericGFPoly(genericGF, new int[]{1}));
    }

    private GenericGFPoly buildGenerator(int i) {
        if (i >= this.cachedGenerators.size()) {
            GenericGFPoly genericGFPolyMultiply = this.cachedGenerators.get(this.cachedGenerators.size() - 1);
            for (int size = this.cachedGenerators.size(); size <= i; size++) {
                genericGFPolyMultiply = genericGFPolyMultiply.multiply(new GenericGFPoly(this.field, new int[]{1, this.field.exp((size - 1) + this.field.getGeneratorBase())}));
                this.cachedGenerators.add(genericGFPolyMultiply);
            }
        }
        return this.cachedGenerators.get(i);
    }

    public void encode(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 89, 66, 92, 71, 71, 91, 68, 66, 90, 90, 71, 70, 83, 1, 77, 92, 90, 90, 22, 0, 64, 65, 80, 71}, "46b955", false));
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 95, 68, 83, 88, 22, 0, 16, 6, 78, 77, 7, 18, 16, 20, 69, 86, 20, 8, 84, 1, 83}, "a0d79b", true));
        }
        GenericGFPoly genericGFPolyBuildGenerator = buildGenerator(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] coefficients = new GenericGFPoly(this.field, iArr2).multiplyByMonomial(i, 1).divide(genericGFPolyBuildGenerator)[1].getCoefficients();
        int length2 = i - coefficients.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(coefficients, 0, iArr, length + length2, coefficients.length);
    }
}
