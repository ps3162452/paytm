package com.google.zxing.qrcode.decoder;

import n.NPStringFog;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Found several "values" enum fields: [] */
/* JADX INFO: loaded from: classes65.dex */
public final class ErrorCorrectionLevel {
    private final int bits;
    public static final ErrorCorrectionLevel L = new ErrorCorrectionLevel(NPStringFog.decode(new byte[]{122}, "632129", true, false), 0, 1);
    public static final ErrorCorrectionLevel M = new ErrorCorrectionLevel(NPStringFog.decode(new byte[]{43}, "f899df", 1994585546L), 1, 0);
    public static final ErrorCorrectionLevel Q = new ErrorCorrectionLevel(NPStringFog.decode(new byte[]{101}, "462699", true, false), 2, 3);
    public static final ErrorCorrectionLevel H = new ErrorCorrectionLevel(NPStringFog.decode(new byte[]{41}, "a64b9d", false, false), 3, 2);
    private static final ErrorCorrectionLevel[] $VALUES = {L, M, Q, H};
    private static final ErrorCorrectionLevel[] FOR_BITS = {M, L, H, Q};

    private ErrorCorrectionLevel(String str, int i, int i2) {
        this.bits = i2;
    }

    public static ErrorCorrectionLevel forBits(int i) {
        if (i < 0 || i >= FOR_BITS.length) {
            throw new IllegalArgumentException();
        }
        return FOR_BITS[i];
    }

    public static ErrorCorrectionLevel valueOf(String str) {
        return (ErrorCorrectionLevel) Enum.valueOf(ErrorCorrectionLevel.class, str);
    }

    public static ErrorCorrectionLevel[] values() {
        return (ErrorCorrectionLevel[]) $VALUES.clone();
    }

    public int getBits() {
        return this.bits;
    }
}
