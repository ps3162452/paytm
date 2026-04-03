package com.google.zxing.pdf417.decoder;

import java.util.Formatter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    DetectionResultColumn(BoundingBox boundingBox) {
        this.boundingBox = new BoundingBox(boundingBox);
        this.codewords = new Codeword[(boundingBox.getMaxY() - boundingBox.getMinY()) + 1];
    }

    final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    final Codeword getCodeword(int i) {
        return this.codewords[imageRowToCodewordIndex(i)];
    }

    final Codeword getCodewordNearby(int i) {
        Codeword codeword;
        Codeword codeword2;
        Codeword codeword3 = getCodeword(i);
        if (codeword3 != null) {
            return codeword3;
        }
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (i3 >= 5) {
                return null;
            }
            int iImageRowToCodewordIndex = imageRowToCodewordIndex(i) - i3;
            if (iImageRowToCodewordIndex >= 0 && (codeword2 = this.codewords[iImageRowToCodewordIndex]) != null) {
                return codeword2;
            }
            int iImageRowToCodewordIndex2 = imageRowToCodewordIndex(i) + i3;
            if (iImageRowToCodewordIndex2 < this.codewords.length && (codeword = this.codewords[iImageRowToCodewordIndex2]) != null) {
                return codeword;
            }
            i2 = i3 + 1;
        }
    }

    final Codeword[] getCodewords() {
        return this.codewords;
    }

    final int imageRowToCodewordIndex(int i) {
        return i - this.boundingBox.getMinY();
    }

    final void setCodeword(int i, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(i)] = codeword;
    }

    public String toString() {
        int i;
        Formatter formatter = new Formatter();
        Codeword[] codewordArr = this.codewords;
        int length = codewordArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            Codeword codeword = codewordArr[i2];
            if (codeword == null) {
                i = i3 + 1;
                formatter.format(NPStringFog.decode(new byte[]{18, 2, 6, 10, 69, 24, 23, 17, 30, 16, 69, 24, 18, 95}, "71b0e8", true, true), Integer.valueOf(i3));
            } else {
                i = i3 + 1;
                formatter.format(NPStringFog.decode(new byte[]{16, 82, 0, 15, 17, 22, 6, 5, 24, 16, 2, 87, 16, 15}, "5ad513", true, true), Integer.valueOf(i3), Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
            }
            i2++;
            i3 = i;
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }
}
