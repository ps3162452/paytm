package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import java.util.Iterator;
import java.util.LinkedList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class State {
    static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final Token token;

    private State(Token token, int i, int i2, int i3) {
        this.token = token;
        this.mode = i;
        this.binaryShiftByteCount = i2;
        this.bitCount = i3;
    }

    State addBinaryShiftChar(int i) {
        Token tokenAdd;
        Token token = this.token;
        int i2 = this.mode;
        int i3 = this.bitCount;
        if (this.mode == 4 || this.mode == 2) {
            int i4 = HighLevelEncoder.LATCH_TABLE[i2][0];
            i3 += i4 >> 16;
            tokenAdd = token.add(65535 & i4, i4 >> 16);
            i2 = 0;
        } else {
            tokenAdd = token;
        }
        State state = new State(tokenAdd, i2, this.binaryShiftByteCount + 1, i3 + ((this.binaryShiftByteCount == 0 || this.binaryShiftByteCount == 31) ? 18 : this.binaryShiftByteCount == 62 ? 9 : 8));
        return state.binaryShiftByteCount == 2078 ? state.endBinaryShift(i + 1) : state;
    }

    State endBinaryShift(int i) {
        return this.binaryShiftByteCount == 0 ? this : new State(this.token.addBinaryShift(i - this.binaryShiftByteCount, this.binaryShiftByteCount), this.mode, 0, this.bitCount);
    }

    int getBinaryShiftByteCount() {
        return this.binaryShiftByteCount;
    }

    int getBitCount() {
        return this.bitCount;
    }

    int getMode() {
        return this.mode;
    }

    Token getToken() {
        return this.token;
    }

    boolean isBetterThanOrEqualTo(State state) {
        int i = this.bitCount + (HighLevelEncoder.LATCH_TABLE[this.mode][state.mode] >> 16);
        if (state.binaryShiftByteCount > 0 && (this.binaryShiftByteCount == 0 || this.binaryShiftByteCount > state.binaryShiftByteCount)) {
            i += 10;
        }
        return i <= state.bitCount;
    }

    State latchAndAppend(int i, int i2) {
        int i3;
        Token token;
        int i4 = this.bitCount;
        Token token2 = this.token;
        if (i != this.mode) {
            int i5 = HighLevelEncoder.LATCH_TABLE[this.mode][i];
            Token tokenAdd = token2.add(65535 & i5, i5 >> 16);
            i3 = i4 + (i5 >> 16);
            token = tokenAdd;
        } else {
            i3 = i4;
            token = token2;
        }
        int i6 = i == 2 ? 4 : 5;
        return new State(token.add(i2, i6), i, 0, i6 + i3);
    }

    State shiftAndAppend(int i, int i2) {
        Token token = this.token;
        int i3 = this.mode == 2 ? 4 : 5;
        return new State(token.add(HighLevelEncoder.SHIFT_TABLE[this.mode][i], i3).add(i2, 5), this.mode, 0, i3 + this.bitCount + 5);
    }

    BitArray toBitArray(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (Token previous = endBinaryShift(bArr.length).token; previous != null; previous = previous.getPrevious()) {
            linkedList.addFirst(previous);
        }
        BitArray bitArray = new BitArray();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Token) it.next()).appendTo(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format(NPStringFog.decode(new byte[]{70, 21, 24, 90, 15, 67, 16, 91, 29, 92, 70, 85, 26, 18, 93, 75, 91, 18, 7}, "cf88f7", -9.730319E8f), HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
