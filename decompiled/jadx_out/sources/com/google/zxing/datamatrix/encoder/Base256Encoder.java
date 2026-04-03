package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class Base256Encoder implements Encoder {
    Base256Encoder() {
    }

    private static char randomize255State(char c, int i) {
        int i2 = ((i * 149) % 255) + 1 + c;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            sb.append(encoderContext.getCurrentChar());
            encoderContext.pos++;
            int iLookAheadTest = HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode());
            if (iLookAheadTest != getEncodingMode()) {
                encoderContext.signalEncoderChange(iLookAheadTest);
                break;
            }
        }
        int length = sb.length() - 1;
        int codewordCount = encoderContext.getCodewordCount() + length + 1;
        encoderContext.updateSymbolInfo(codewordCount);
        boolean z = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount > 0;
        if (encoderContext.hasMoreCharacters() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length <= 249 || length > 1555) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{44, 83, 18, 21, 3, 94, 4, 22, 13, 3, 12, 94, 21, 94, 65, 8, 13, 77, 65, 95, 15, 70, 20, 88, 13, 95, 5, 70, 16, 88, 15, 81, 4, 21, 88, 25}, "a6afb9", 4691) + length);
                }
                sb.setCharAt(0, (char) ((length / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249));
                sb.insert(1, (char) (length % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            encoderContext.writeCodeword(randomize255State(sb.charAt(i), encoderContext.getCodewordCount() + 1));
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 5;
    }
}
