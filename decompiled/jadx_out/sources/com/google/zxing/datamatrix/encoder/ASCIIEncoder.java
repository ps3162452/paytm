package com.google.zxing.datamatrix.encoder;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class ASCIIEncoder implements Encoder {
    ASCIIEncoder() {
    }

    private static char encodeASCIIDigits(char c, char c2) {
        if (HighLevelEncoder.isDigit(c) && HighLevelEncoder.isDigit(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{10, 86, 22, 21, 5, 89, 3, 80, 22, 70, 91, 16}, "d9b5a0", -5.25487982E8d) + c + c2);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        if (HighLevelEncoder.determineConsecutiveDigitCount(encoderContext.getMessage(), encoderContext.pos) >= 2) {
            encoderContext.writeCodeword(encodeASCIIDigits(encoderContext.getMessage().charAt(encoderContext.pos), encoderContext.getMessage().charAt(encoderContext.pos + 1)));
            encoderContext.pos += 2;
            return;
        }
        char currentChar = encoderContext.getCurrentChar();
        int iLookAheadTest = HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode());
        if (iLookAheadTest == getEncodingMode()) {
            if (!HighLevelEncoder.isExtendedASCII(currentChar)) {
                encoderContext.writeCodeword((char) (currentChar + 1));
                encoderContext.pos++;
                return;
            } else {
                encoderContext.writeCodeword((char) 235);
                encoderContext.writeCodeword((char) ((currentChar - 128) + 1));
                encoderContext.pos++;
                return;
            }
        }
        switch (iLookAheadTest) {
            case 1:
                encoderContext.writeCodeword((char) 230);
                encoderContext.signalEncoderChange(1);
                return;
            case 2:
                encoderContext.writeCodeword((char) 239);
                encoderContext.signalEncoderChange(2);
                return;
            case 3:
                encoderContext.writeCodeword((char) 238);
                encoderContext.signalEncoderChange(3);
                return;
            case 4:
                encoderContext.writeCodeword((char) 240);
                encoderContext.signalEncoderChange(4);
                return;
            case 5:
                encoderContext.writeCodeword((char) 231);
                encoderContext.signalEncoderChange(5);
                return;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{44, 15, 94, 80, 87, 0, 9, 67, 95, 90, 84, 4, 95, 67}, "ec250a", 770938911L) + iLookAheadTest);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 0;
    }
}
