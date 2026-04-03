package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes65.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix;
    }

    private int copyBit(int i, int i2, int i3) {
        return this.mirror ? this.bitMatrix.get(i2, i) : this.bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    void mirror() {
        for (int i = 0; i < this.bitMatrix.getWidth(); i++) {
            for (int i2 = i + 1; i2 < this.bitMatrix.getHeight(); i2++) {
                if (this.bitMatrix.get(i, i2) != this.bitMatrix.get(i2, i)) {
                    this.bitMatrix.flip(i2, i);
                    this.bitMatrix.flip(i, i2);
                }
            }
        }
    }

    byte[] readCodewords() throws FormatException {
        int i;
        int i2;
        FormatInformation formatInformation = readFormatInformation();
        Version version = readVersion();
        DataMask dataMaskForReference = DataMask.forReference(formatInformation.getDataMask());
        int height = this.bitMatrix.getHeight();
        dataMaskForReference.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix bitMatrixBuildFunctionPattern = version.buildFunctionPattern();
        byte[] bArr = new byte[version.getTotalCodewords()];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = height - 1;
        boolean z = true;
        while (i6 > 0) {
            if (i6 == 6) {
                i6--;
            }
            int i7 = 0;
            while (i7 < height) {
                int i8 = z ? (height - 1) - i7 : i7;
                int i9 = 0;
                int i10 = i3;
                while (i9 < 2) {
                    if (bitMatrixBuildFunctionPattern.get(i6 - i9, i8)) {
                        int i11 = i10;
                        i = i4;
                        i2 = i11;
                    } else {
                        int i12 = i5 + 1;
                        int i13 = i4 << 1;
                        if (this.bitMatrix.get(i6 - i9, i8)) {
                            i13 |= 1;
                        }
                        if (i12 == 8) {
                            i2 = i10 + 1;
                            bArr[i10] = (byte) i13;
                            i5 = 0;
                            i = 0;
                        } else {
                            i2 = i10;
                            i = i13;
                            i5 = i12;
                        }
                    }
                    i9++;
                    int i14 = i;
                    i10 = i2;
                    i4 = i14;
                }
                i7++;
                i3 = i10;
            }
            i6 -= 2;
            z = !z;
        }
        if (i3 != version.getTotalCodewords()) {
            throw FormatException.getFormatInstance();
        }
        return bArr;
    }

    FormatInformation readFormatInformation() throws FormatException {
        int iCopyBit = 0;
        if (this.parsedFormatInfo != null) {
            return this.parsedFormatInfo;
        }
        int iCopyBit2 = 0;
        for (int i = 0; i < 6; i++) {
            iCopyBit2 = copyBit(i, 8, iCopyBit2);
        }
        int iCopyBit3 = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, iCopyBit2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iCopyBit3 = copyBit(8, i2, iCopyBit3);
        }
        int height = this.bitMatrix.getHeight();
        for (int i3 = height - 1; i3 >= height - 7; i3--) {
            iCopyBit = copyBit(8, i3, iCopyBit);
        }
        for (int i4 = height - 8; i4 < height; i4++) {
            iCopyBit = copyBit(i4, 8, iCopyBit);
        }
        this.parsedFormatInfo = FormatInformation.decodeFormatInformation(iCopyBit3, iCopyBit);
        if (this.parsedFormatInfo != null) {
            return this.parsedFormatInfo;
        }
        throw FormatException.getFormatInstance();
    }

    Version readVersion() throws FormatException {
        if (this.parsedVersion != null) {
            return this.parsedVersion;
        }
        int height = this.bitMatrix.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int iCopyBit = 0;
        for (int i3 = 5; i3 >= 0; i3--) {
            for (int i4 = height - 9; i4 >= i2; i4--) {
                iCopyBit = copyBit(i4, i3, iCopyBit);
            }
        }
        Version versionDecodeVersionInformation = Version.decodeVersionInformation(iCopyBit);
        if (versionDecodeVersionInformation != null && versionDecodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = versionDecodeVersionInformation;
            return versionDecodeVersionInformation;
        }
        int iCopyBit2 = 0;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = height - 9; i6 >= i2; i6--) {
                iCopyBit2 = copyBit(i5, i6, iCopyBit2);
            }
        }
        Version versionDecodeVersionInformation2 = Version.decodeVersionInformation(iCopyBit2);
        if (versionDecodeVersionInformation2 == null || versionDecodeVersionInformation2.getDimensionForVersion() != height) {
            throw FormatException.getFormatInstance();
        }
        this.parsedVersion = versionDecodeVersionInformation2;
        return versionDecodeVersionInformation2;
    }

    void remask() {
        if (this.parsedFormatInfo == null) {
            return;
        }
        DataMask.forReference(this.parsedFormatInfo.getDataMask()).unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
    }

    void setMirror(boolean z) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z;
    }
}
