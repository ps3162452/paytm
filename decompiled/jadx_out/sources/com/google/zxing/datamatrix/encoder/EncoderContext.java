package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.nio.charset.Charset;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class EncoderContext {
    private final StringBuilder codewords;
    private Dimension maxSize;
    private Dimension minSize;
    private final String msg;
    private int newEncoding;
    int pos;
    private SymbolShapeHint shape;
    private int skipAtEnd;
    private SymbolInfo symbolInfo;

    EncoderContext(String str) {
        byte[] bytes = str.getBytes(Charset.forName(NPStringFog.decode(new byte[]{120, 106, 118, 31, 8, 9, 4, 0, 20, 3}, "199201", -2.25143107E8d)));
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 0, 70, 22, 88, 84, 85, 69, 86, 10, 87, 71, 81, 12, 91, 22, 25, 80, 88, 4, 71, 4, 90, 71, 85, 23, 70, 69, 86, 70, 68, 22, 92, 1, 92, 19, 121, 54, 122, 72, 1, 11, 5, 92, 24, 84, 25, 86, 94, 6, 90, 1, 80, 93, 87, 75}, "0e5e93", false));
            }
            sb.append(c);
        }
        this.msg = sb.toString();
        this.shape = SymbolShapeHint.FORCE_NONE;
        this.codewords = new StringBuilder(str.length());
        this.newEncoding = -1;
    }

    private int getTotalMessageCharCount() {
        return this.msg.length() - this.skipAtEnd;
    }

    public int getCodewordCount() {
        return this.codewords.length();
    }

    public StringBuilder getCodewords() {
        return this.codewords;
    }

    public char getCurrent() {
        return this.msg.charAt(this.pos);
    }

    public char getCurrentChar() {
        return this.msg.charAt(this.pos);
    }

    public String getMessage() {
        return this.msg;
    }

    public int getNewEncoding() {
        return this.newEncoding;
    }

    public int getRemainingCharacters() {
        return getTotalMessageCharCount() - this.pos;
    }

    public SymbolInfo getSymbolInfo() {
        return this.symbolInfo;
    }

    public boolean hasMoreCharacters() {
        return this.pos < getTotalMessageCharCount();
    }

    public void resetEncoderSignal() {
        this.newEncoding = -1;
    }

    public void resetSymbolInfo() {
        this.symbolInfo = null;
    }

    public void setSizeConstraints(Dimension dimension, Dimension dimension2) {
        this.minSize = dimension;
        this.maxSize = dimension2;
    }

    public void setSkipAtEnd(int i) {
        this.skipAtEnd = i;
    }

    public void setSymbolShape(SymbolShapeHint symbolShapeHint) {
        this.shape = symbolShapeHint;
    }

    public void signalEncoderChange(int i) {
        this.newEncoding = i;
    }

    public void updateSymbolInfo() {
        updateSymbolInfo(getCodewordCount());
    }

    public void updateSymbolInfo(int i) {
        if (this.symbolInfo == null || i > this.symbolInfo.getDataCapacity()) {
            this.symbolInfo = SymbolInfo.lookup(i, this.shape, this.minSize, this.maxSize, true);
        }
    }

    public void writeCodeword(char c) {
        this.codewords.append(c);
    }

    public void writeCodewords(String str) {
        this.codewords.append(str);
    }
}
