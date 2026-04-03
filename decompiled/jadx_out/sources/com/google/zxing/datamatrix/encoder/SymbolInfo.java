package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes65.dex */
public class SymbolInfo {
    static final SymbolInfo[] PROD_SYMBOLS = {new SymbolInfo(false, 3, 5, 8, 8, 1), new SymbolInfo(false, 5, 7, 10, 10, 1), new SymbolInfo(true, 5, 7, 16, 6, 1), new SymbolInfo(false, 8, 10, 12, 12, 1), new SymbolInfo(true, 10, 11, 14, 6, 2), new SymbolInfo(false, 12, 12, 14, 14, 1), new SymbolInfo(true, 16, 14, 24, 10, 1), new SymbolInfo(false, 18, 14, 16, 16, 1), new SymbolInfo(false, 22, 18, 18, 18, 1), new SymbolInfo(true, 22, 18, 16, 10, 2), new SymbolInfo(false, 30, 20, 20, 20, 1), new SymbolInfo(true, 32, 24, 16, 14, 2), new SymbolInfo(false, 36, 24, 22, 22, 1), new SymbolInfo(false, 44, 28, 24, 24, 1), new SymbolInfo(true, 49, 28, 22, 14, 2), new SymbolInfo(false, 62, 36, 14, 14, 4), new SymbolInfo(false, 86, 42, 16, 16, 4), new SymbolInfo(false, 114, 48, 18, 18, 4), new SymbolInfo(false, 144, 56, 20, 20, 4), new SymbolInfo(false, 174, 68, 22, 22, 4), new SymbolInfo(false, HttpStatus.SC_NO_CONTENT, 84, 24, 24, 4, 102, 42), new SymbolInfo(false, 280, 112, 14, 14, 16, 140, 56), new SymbolInfo(false, 368, 144, 16, 16, 16, 92, 36), new SymbolInfo(false, 456, 192, 18, 18, 16, 114, 48), new SymbolInfo(false, 576, 224, 20, 20, 16, 144, 56), new SymbolInfo(false, 696, 272, 22, 22, 16, 174, 68), new SymbolInfo(false, 816, 336, 24, 24, 16, 136, 56), new SymbolInfo(false, 1050, HttpStatus.SC_REQUEST_TIMEOUT, 18, 18, 36, 175, 68), new SymbolInfo(false, 1304, 496, 20, 20, 36, 163, 62), new DataMatrixSymbolInfo144()};
    private static SymbolInfo[] symbols = PROD_SYMBOLS;
    private final int dataCapacity;
    private final int dataRegions;
    private final int errorCodewords;
    public final int matrixHeight;
    public final int matrixWidth;
    private final boolean rectangular;
    private final int rsBlockData;
    private final int rsBlockError;

    public SymbolInfo(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    SymbolInfo(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.rectangular = z;
        this.dataCapacity = i;
        this.errorCodewords = i2;
        this.matrixWidth = i3;
        this.matrixHeight = i4;
        this.dataRegions = i5;
        this.rsBlockData = i6;
        this.rsBlockError = i7;
    }

    public static SymbolInfo lookup(int i) {
        return lookup(i, SymbolShapeHint.FORCE_NONE, true);
    }

    public static SymbolInfo lookup(int i, SymbolShapeHint symbolShapeHint) {
        return lookup(i, symbolShapeHint, true);
    }

    public static SymbolInfo lookup(int i, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2, boolean z) {
        for (SymbolInfo symbolInfo : symbols) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && symbolInfo.rectangular) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || symbolInfo.rectangular) && ((dimension == null || (symbolInfo.getSymbolWidth() >= dimension.getWidth() && symbolInfo.getSymbolHeight() >= dimension.getHeight())) && ((dimension2 == null || (symbolInfo.getSymbolWidth() <= dimension2.getWidth() && symbolInfo.getSymbolHeight() <= dimension2.getHeight())) && i <= symbolInfo.dataCapacity)))) {
                return symbolInfo;
            }
        }
        if (z) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 7, 12, 19, 77, 66, 81, 15, 12, 80, 25, 3, 23, 21, 27, 89, 91, 13, 91, 70, 3, 70, 75, 3, 89, 1, 7, 89, 92, 12, 67, 70, 22, 92, 88, 22, 23, 11, 3, 64, 90, 10, 82, 21, 66, 64, 81, 7, 23, 11, 7, 71, 74, 3, 80, 3, 76, 20, 125, 3, 67, 7, 66, 87, 86, 6, 82, 17, 13, 70, 93, 17, 13, 70}, "7fb49b", true, false) + i);
        }
        return null;
    }

    private static SymbolInfo lookup(int i, SymbolShapeHint symbolShapeHint, boolean z) {
        return lookup(i, symbolShapeHint, null, null, z);
    }

    public static SymbolInfo lookup(int i, boolean z, boolean z2) {
        return lookup(i, z ? SymbolShapeHint.FORCE_NONE : SymbolShapeHint.FORCE_SQUARE, z2);
    }

    public static void overrideSymbolSet(SymbolInfo[] symbolInfoArr) {
        symbols = symbolInfoArr;
    }

    public int getCodewordCount() {
        return this.dataCapacity + this.errorCodewords;
    }

    public final int getDataCapacity() {
        return this.dataCapacity;
    }

    public int getDataLengthForInterleavedBlock(int i) {
        return this.rsBlockData;
    }

    public final int getErrorCodewords() {
        return this.errorCodewords;
    }

    public final int getErrorLengthForInterleavedBlock(int i) {
        return this.rsBlockError;
    }

    final int getHorizontalDataRegions() {
        switch (this.dataRegions) {
            case 1:
                return 1;
            case 2:
            case 4:
                return 2;
            case 16:
                return 4;
            case 36:
                return 6;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 85, 88, 13, 89, 17, 18, 92, 87, 13, 82, 9, 87, 20, 66, 11, 95, 22, 18, 90, 67, 14, 84, 0, 64, 20, 89, 5, 22, 1, 83, 64, 87, 67, 68, 0, 85, 93, 89, 13, 69}, "246c6e", 476));
        }
    }

    public int getInterleavedBlockCount() {
        return this.dataCapacity / this.rsBlockData;
    }

    public final int getSymbolDataHeight() {
        return getVerticalDataRegions() * this.matrixHeight;
    }

    public final int getSymbolDataWidth() {
        return getHorizontalDataRegions() * this.matrixWidth;
    }

    public final int getSymbolHeight() {
        return getSymbolDataHeight() + (getVerticalDataRegions() * 2);
    }

    public final int getSymbolWidth() {
        return getSymbolDataWidth() + (getHorizontalDataRegions() * 2);
    }

    final int getVerticalDataRegions() {
        switch (this.dataRegions) {
            case 1:
            case 2:
                return 1;
            case 4:
                return 2;
            case 16:
                return 4;
            case 36:
                return 6;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 81, 89, 95, 94, 23, 16, 88, 86, 95, 85, 15, 85, 16, 67, 89, 88, 16, 16, 94, 66, 92, 83, 6, 66, 16, 88, 87, 17, 7, 81, 68, 86, 17, 67, 6, 87, 89, 88, 95, 66}, "00711c", true, false));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.rectangular ? NPStringFog.decode(new byte[]{96, 82, 2, 17, 0, 10, 85, 66, 13, 4, 19, 68, 97, 78, 12, 7, 14, 8, 8}, "27aead", 1.2238556E9f) : NPStringFog.decode(new byte[]{49, 18, 22, 89, 75, 92, 66, 48, 26, 85, 91, 86, 14, 89}, "bcc899", -1238607645L));
        sb.append(NPStringFog.decode(new byte[]{69, 80, 89, 70, 0, 21, 23, 81, 95, 91, 14, 91, 69}, "e482a5", -1826089933L)).append(this.matrixWidth).append('x').append(this.matrixHeight);
        sb.append(NPStringFog.decode(new byte[]{28, 25, 67, 28, 9, 86, 95, 85, 16, 22, 13, 78, 85, 25}, "090ed4", false)).append(getSymbolWidth()).append('x').append(getSymbolHeight());
        sb.append(NPStringFog.decode(new byte[]{21, 18, 66, 65, 95, 3, 86, 94, 17, 92, 83, 21, 88, 18, 66, 81, 72, 4, 25}, "92182a", true)).append(getSymbolDataWidth()).append('x').append(getSymbolDataHeight());
        sb.append(NPStringFog.decode(new byte[]{30, 25, 82, 93, 5, 6, 69, 86, 67, 86, 18, 67}, "2912ac", 1.981364168E9d)).append(this.dataCapacity).append('+').append(this.errorCodewords);
        return sb.toString();
    }
}
