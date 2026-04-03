package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Version;

/* JADX INFO: loaded from: classes65.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    static DataBlock[] getDataBlocks(byte[] bArr, Version version) {
        Version.ECBlocks eCBlocks = version.getECBlocks();
        Version.ECB[] eCBlocks2 = eCBlocks.getECBlocks();
        int count = 0;
        for (Version.ECB ecb : eCBlocks2) {
            count += ecb.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[count];
        int i = 0;
        for (Version.ECB ecb2 : eCBlocks2) {
            int i2 = 0;
            while (i2 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                dataBlockArr[i] = new DataBlock(dataCodewords, new byte[eCBlocks.getECCodewords() + dataCodewords]);
                i2++;
                i++;
            }
        }
        int length = dataBlockArr[0].codewords.length - eCBlocks.getECCodewords();
        int i3 = 0;
        for (int i4 = 0; i4 < length - 1; i4++) {
            int i5 = 0;
            while (i5 < i) {
                dataBlockArr[i5].codewords[i4] = bArr[i3];
                i5++;
                i3++;
            }
        }
        boolean z = version.getVersionNumber() == 24;
        int i6 = z ? 8 : i;
        int i7 = 0;
        while (i7 < i6) {
            dataBlockArr[i7].codewords[length - 1] = bArr[i3];
            i7++;
            i3++;
        }
        int length2 = dataBlockArr[0].codewords.length;
        int i8 = i3;
        while (length < length2) {
            int i9 = i8;
            int i10 = 0;
            while (i10 < i) {
                int i11 = z ? (i10 + 8) % i : i10;
                dataBlockArr[i11].codewords[(!z || i11 <= 7) ? length : length - 1] = bArr[i9];
                i10++;
                i9++;
            }
            length++;
            i8 = i9;
        }
        if (i8 != bArr.length) {
            throw new IllegalArgumentException();
        }
        return dataBlockArr;
    }

    byte[] getCodewords() {
        return this.codewords;
    }

    int getNumDataCodewords() {
        return this.numDataCodewords;
    }
}
