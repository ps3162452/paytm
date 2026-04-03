package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class BitMatrixParser {
    private final BitMatrix mappingBitMatrix;
    private final BitMatrix readMappingMatrix;
    private final Version version;

    BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 8 || height > 144 || (height & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        this.version = readVersion(bitMatrix);
        this.mappingBitMatrix = extractDataRegion(bitMatrix);
        this.readMappingMatrix = new BitMatrix(this.mappingBitMatrix.getWidth(), this.mappingBitMatrix.getHeight());
    }

    private static Version readVersion(BitMatrix bitMatrix) throws FormatException {
        return Version.getVersionForDimensions(bitMatrix.getHeight(), bitMatrix.getWidth());
    }

    BitMatrix extractDataRegion(BitMatrix bitMatrix) {
        int symbolSizeRows = this.version.getSymbolSizeRows();
        int symbolSizeColumns = this.version.getSymbolSizeColumns();
        if (bitMatrix.getHeight() != symbolSizeRows) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 11, 14, 86, 8, 17, 94, 13, 13, 19, 9, 4, 23, 0, 10, 71, 43, 3, 69, 11, 27, 19, 11, 23, 68, 22, 67, 94, 7, 22, 84, 10, 67, 71, 14, 7, 23, 20, 6, 65, 21, 11, 88, 12, 67, 64, 15, 24, 82}, "7bc3fb", -1.2890899E9f));
        }
        int dataRegionSizeRows = this.version.getDataRegionSizeRows();
        int dataRegionSizeColumns = this.version.getDataRegionSizeColumns();
        int i = symbolSizeRows / dataRegionSizeRows;
        int i2 = symbolSizeColumns / dataRegionSizeColumns;
        BitMatrix bitMatrix2 = new BitMatrix(i2 * dataRegionSizeColumns, i * dataRegionSizeRows);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                for (int i5 = 0; i5 < dataRegionSizeRows; i5++) {
                    for (int i6 = 0; i6 < dataRegionSizeColumns; i6++) {
                        if (bitMatrix.get(((dataRegionSizeColumns + 2) * i4) + 1 + i6, ((dataRegionSizeRows + 2) * i3) + 1 + i5)) {
                            bitMatrix2.set((i4 * dataRegionSizeColumns) + i6, (i3 * dataRegionSizeRows) + i5);
                        }
                    }
                }
            }
        }
        return bitMatrix2;
    }

    Version getVersion() {
        return this.version;
    }

    byte[] readCodewords() throws FormatException {
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        byte[] bArr = new byte[this.version.getTotalCodewords()];
        int height = this.mappingBitMatrix.getHeight();
        int width = this.mappingBitMatrix.getWidth();
        boolean z5 = false;
        int i7 = 0;
        boolean z6 = false;
        int i8 = 4;
        boolean z7 = false;
        int i9 = 0;
        boolean z8 = false;
        while (true) {
            if (i8 == height && i7 == 0 && !z5) {
                int i10 = i9 + 1;
                bArr[i9] = (byte) readCorner1(height, width);
                boolean z9 = z6;
                i5 = i7 + 2;
                z3 = z7;
                i6 = i8 - 2;
                z = z8;
                i4 = i10;
                z4 = true;
                z2 = z9;
            } else if (i8 == height - 2 && i7 == 0 && (width & 3) != 0 && !z6) {
                int i11 = i9 + 1;
                bArr[i9] = (byte) readCorner2(height, width);
                int i12 = i8 - 2;
                z2 = true;
                i5 = i7 + 2;
                z3 = z7;
                i6 = i12;
                z = z8;
                i4 = i11;
                z4 = z5;
            } else if (i8 == height + 4 && i7 == 2 && (width & 7) == 0 && !z7) {
                int i13 = i9 + 1;
                bArr[i9] = (byte) readCorner3(height, width);
                int i14 = i7 + 2;
                i6 = i8 - 2;
                z = z8;
                i4 = i13;
                z4 = z5;
                z3 = true;
                z2 = z6;
                i5 = i14;
            } else if (i8 == height - 2 && i7 == 0 && (width & 7) == 4 && !z8) {
                int i15 = i9 + 1;
                bArr[i9] = (byte) readCorner4(height, width);
                int i16 = i8 - 2;
                i4 = i15;
                z4 = z5;
                z2 = z6;
                i5 = i7 + 2;
                z3 = z7;
                i6 = i16;
                z = true;
            } else {
                do {
                    int i17 = i7;
                    int i18 = i8;
                    int i19 = i9;
                    if (i18 >= height || i17 < 0 || this.readMappingMatrix.get(i17, i18)) {
                        i9 = i19;
                    } else {
                        i9 = i19 + 1;
                        bArr[i19] = (byte) readUtah(i18, i17, height, width);
                    }
                    i8 = i18 - 2;
                    i7 = i17 + 2;
                    if (i8 < 0) {
                        break;
                    }
                } while (i7 < width);
                int i20 = i7 + 3;
                int i21 = i9;
                int i22 = i8 + 1;
                while (true) {
                    if (i22 < 0 || i20 >= width || this.readMappingMatrix.get(i20, i22)) {
                        i = i21;
                    } else {
                        i = i21 + 1;
                        bArr[i21] = (byte) readUtah(i22, i20, height, width);
                    }
                    i2 = i22 + 2;
                    i3 = i20 - 2;
                    if (i2 >= height || i3 < 0) {
                        break;
                    }
                    i20 = i3;
                    i22 = i2;
                    i21 = i;
                }
                int i23 = i2 + 3;
                int i24 = i3 + 1;
                z = z8;
                i4 = i;
                z2 = z6;
                i5 = i24;
                z3 = z7;
                i6 = i23;
                z4 = z5;
            }
            if (i6 >= height && i5 >= width) {
                break;
            }
            z5 = z4;
            boolean z10 = z3;
            i7 = i5;
            z6 = z2;
            i8 = i6;
            z7 = z10;
            boolean z11 = z;
            i9 = i4;
            z8 = z11;
        }
        if (i4 != this.version.getTotalCodewords()) {
            throw FormatException.getFormatInstance();
        }
        return bArr;
    }

    int readCorner1(int i, int i2) {
        int i3 = (readModule(i + (-1), 0, i, i2) ? 1 : 0) << 1;
        if (readModule(i - 1, 1, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (readModule(i - 1, 2, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (readModule(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (readModule(0, i2 - 1, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (readModule(1, i2 - 1, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        if (readModule(2, i2 - 1, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        return readModule(3, i2 + (-1), i, i2) ? i9 | 1 : i9;
    }

    int readCorner2(int i, int i2) {
        int i3 = (readModule(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (readModule(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (readModule(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (readModule(0, i2 - 4, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (readModule(0, i2 - 3, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (readModule(0, i2 - 2, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        if (readModule(0, i2 - 1, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        return readModule(1, i2 + (-1), i, i2) ? i9 | 1 : i9;
    }

    int readCorner3(int i, int i2) {
        int i3 = (readModule(i + (-1), 0, i, i2) ? 1 : 0) << 1;
        if (readModule(i - 1, i2 - 1, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (readModule(0, i2 - 3, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (readModule(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (readModule(0, i2 - 1, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (readModule(1, i2 - 3, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        if (readModule(1, i2 - 2, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        return readModule(1, i2 + (-1), i, i2) ? i9 | 1 : i9;
    }

    int readCorner4(int i, int i2) {
        int i3 = (readModule(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (readModule(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (readModule(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (readModule(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (readModule(0, i2 - 1, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (readModule(1, i2 - 1, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        if (readModule(2, i2 - 1, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        return readModule(3, i2 + (-1), i, i2) ? i9 | 1 : i9;
    }

    boolean readModule(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (i < 0) {
            i5 = i + i3;
            i6 = (4 - ((i3 + 4) & 7)) + i2;
        } else {
            i5 = i;
            i6 = i2;
        }
        if (i6 < 0) {
            i6 += i4;
            i5 += 4 - ((i4 + 4) & 7);
        }
        this.readMappingMatrix.set(i6, i5);
        return this.mappingBitMatrix.get(i6, i5);
    }

    int readUtah(int i, int i2, int i3, int i4) {
        int i5 = (readModule(i + (-2), i2 + (-2), i3, i4) ? 1 : 0) << 1;
        if (readModule(i - 2, i2 - 1, i3, i4)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (readModule(i - 1, i2 - 2, i3, i4)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (readModule(i - 1, i2 - 1, i3, i4)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        if (readModule(i - 1, i2, i3, i4)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        if (readModule(i, i2 - 2, i3, i4)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        if (readModule(i, i2 - 1, i3, i4)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        return readModule(i, i2, i3, i4) ? i11 | 1 : i11;
    }
}
