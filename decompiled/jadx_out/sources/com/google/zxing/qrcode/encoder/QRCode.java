package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;
    private ErrorCorrectionLevel ecLevel;
    private int maskPattern = -1;
    private ByteMatrix matrix;
    private Mode mode;
    private Version version;

    public static boolean isValidMaskPattern(int i) {
        return i >= 0 && i < 8;
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.ecLevel;
    }

    public int getMaskPattern() {
        return this.maskPattern;
    }

    public ByteMatrix getMatrix() {
        return this.matrix;
    }

    public Mode getMode() {
        return this.mode;
    }

    public Version getVersion() {
        return this.version;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.ecLevel = errorCorrectionLevel;
    }

    public void setMaskPattern(int i) {
        this.maskPattern = i;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.matrix = byteMatrix;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
    }

    public void setVersion(Version version) {
        this.version = version;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append(NPStringFog.decode(new byte[]{13, 14, 50}, "12832a", -26159));
        sb.append(NPStringFog.decode(new byte[]{18, 95, 90, 0, 80, 14, 18}, "225d54", -1147224867L));
        sb.append(this.mode);
        sb.append(NPStringFog.decode(new byte[]{110, 67, 83, 84, 46, 86, 18, 6, 90, 13, 66}, "dc67b3", -2.0789843E9f));
        sb.append(this.ecLevel);
        sb.append(NPStringFog.decode(new byte[]{59, 18, 68, 0, 70, 22, 88, 93, 92, 95, 20}, "122e4e", -7.8837235E8f));
        sb.append(this.version);
        sb.append(NPStringFog.decode(new byte[]{104, 20, 94, 84, 23, 8, 50, 85, 71, 65, 1, 17, 12, 14, 19}, "b435dc", 1.7748221E9f));
        sb.append(this.maskPattern);
        if (this.matrix == null) {
            sb.append(NPStringFog.decode(new byte[]{110, 65, 85, 4, 66, 67, 13, 25, 2, 69, 88, 68, 8, 13, 50}, "da8e61", 5343));
        } else {
            sb.append(NPStringFog.decode(new byte[]{59, 19, 95, 2, 22, 75, 88, 75, 8, 105}, "132cb9", true, true));
            sb.append(this.matrix);
        }
        sb.append(NPStringFog.decode(new byte[]{91, 9, 105}, "e7c44d", false));
        return sb.toString();
    }
}
