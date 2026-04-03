package com.google.zxing.datamatrix.encoder;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class EdifactEncoder implements Encoder {
    EdifactEncoder() {
    }

    private static void encodeChar(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            HighLevelEncoder.illegalCharacter(c);
        } else {
            sb.append((char) (c - '@'));
        }
    }

    private static String encodeToCodewords(CharSequence charSequence, int i) {
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{107, 23, 23, 90, 90, 4, 122, 22, 12, 95, 80, 6, 74, 67, 8, 70, 71, 23, 24, 13, 10, 71, 20, 1, 93, 67, 0, 94, 68, 23, 65}, "8ce34c", 5040));
        }
        char cCharAt = charSequence.charAt(i);
        char cCharAt2 = length >= 2 ? charSequence.charAt(i + 1) : (char) 0;
        int iCharAt = (length >= 4 ? charSequence.charAt(i + 3) : (char) 0) + ((length >= 3 ? charSequence.charAt(i + 2) : (char) 0) << 6) + (cCharAt2 << '\f') + (cCharAt << 18);
        char c = (char) ((iCharAt >> 16) & 255);
        char c2 = (char) ((iCharAt >> 8) & 255);
        char c3 = (char) (iCharAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c);
        if (length >= 2) {
            sb.append(c2);
        }
        if (length >= 3) {
            sb.append(c3);
        }
        return sb.toString();
    }

    private static void handleEOD(EncoderContext encoderContext, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            if (length == 1) {
                encoderContext.updateSymbolInfo();
                int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity();
                int codewordCount = encoderContext.getCodewordCount();
                if (encoderContext.getRemainingCharacters() == 0 && dataCapacity - codewordCount <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 87, 68, 91, 16, 16, 90, 77, 66, 65, 68, 94, 88, 76, 17, 80, 28, 83, 82, 93, 85, 21, 80}, "7815d0", -1.276513035E9d));
            }
            int i = length - 1;
            String strEncodeToCodewords = encodeToCodewords(charSequence, 0);
            boolean z = (!encoderContext.hasMoreCharacters()) && i <= 2;
            if (i <= 2) {
                encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + i);
                if (encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount() >= 3) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + strEncodeToCodewords.length());
                    z = false;
                }
            }
            if (z) {
                encoderContext.resetSymbolInfo();
                encoderContext.pos -= i;
            } else {
                encoderContext.writeCodewords(strEncodeToCodewords);
            }
        } finally {
            encoderContext.signalEncoderChange(0);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            encodeChar(encoderContext.getCurrentChar(), sb);
            encoderContext.pos++;
            if (sb.length() >= 4) {
                encoderContext.writeCodewords(encodeToCodewords(sb, 0));
                sb.delete(0, 4);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        handleEOD(encoderContext, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 4;
    }
}
