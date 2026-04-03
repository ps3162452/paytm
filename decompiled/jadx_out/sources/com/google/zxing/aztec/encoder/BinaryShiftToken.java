package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class BinaryShiftToken extends Token {
    private final short binaryShiftByteCount;
    private final short binaryShiftStart;

    BinaryShiftToken(Token token, int i, int i2) {
        super(token);
        this.binaryShiftStart = (short) i;
        this.binaryShiftByteCount = (short) i2;
    }

    @Override // com.google.zxing.aztec.encoder.Token
    public void appendTo(BitArray bitArray, byte[] bArr) {
        for (int i = 0; i < this.binaryShiftByteCount; i++) {
            if (i == 0 || (i == 31 && this.binaryShiftByteCount <= 62)) {
                bitArray.appendBits(31, 5);
                if (this.binaryShiftByteCount > 62) {
                    bitArray.appendBits(this.binaryShiftByteCount - 31, 16);
                } else if (i == 0) {
                    bitArray.appendBits(Math.min((int) this.binaryShiftByteCount, 31), 5);
                } else {
                    bitArray.appendBits(this.binaryShiftByteCount - 31, 5);
                }
            }
            bitArray.appendBits(bArr[this.binaryShiftStart + i], 8);
        }
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{5}, "90f710", 1.58322063E8d) + ((int) this.binaryShiftStart) + NPStringFog.decode(new byte[]{2, 88}, "8b7f93", 1.55565024E9d) + ((this.binaryShiftStart + this.binaryShiftByteCount) - 1) + '>';
    }
}
