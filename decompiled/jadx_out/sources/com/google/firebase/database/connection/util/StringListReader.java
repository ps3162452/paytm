package com.google.firebase.database.connection.util;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class StringListReader extends Reader {
    private List<String> strings;
    private boolean closed = false;
    private int charPos;
    private int markedCharPos = this.charPos;
    private int stringListPos;
    private int markedStringListPos = this.stringListPos;
    private boolean frozen = false;

    public StringListReader() {
        this.strings = null;
        this.strings = new ArrayList();
    }

    private long advance(long j) {
        long j2 = 0;
        while (this.stringListPos < this.strings.size() && j2 < j) {
            int iCurrentStringRemainingChars = currentStringRemainingChars();
            long j3 = j - j2;
            if (j3 < iCurrentStringRemainingChars) {
                this.charPos = (int) (((long) this.charPos) + j3);
                j2 += j3;
            } else {
                j2 += (long) iCurrentStringRemainingChars;
                this.charPos = 0;
                this.stringListPos++;
            }
        }
        return j2;
    }

    private void checkState() throws IOException {
        if (this.closed) {
            throw new IOException(NPStringFog.decode(new byte[]{102, 70, 69, 82, 80, 91, 21, 83, 91, 69, 84, 87, 81, 75, 23, 84, 93, 89, 70, 87, 83}, "527716", 28748));
        }
        if (!this.frozen) {
            throw new IOException(NPStringFog.decode(new byte[]{106, 6, 84, 1, 4, 70, 24, 13, 80, 0, 5, 71, 24, 23, 90, 69, 3, 81, 24, 5, 71, 10, 27, 81, 86, 67, 87, 0, 7, 91, 74, 6, 21, 23, 4, 85, 92, 67, 90, 21, 4, 70, 89, 23, 92, 10, 15, 71, 24, 0, 84, 11, 65, 86, 93, 67, 86, 4, 13, 88, 93, 7}, "8c5ea4", false));
        }
    }

    private String currentString() {
        if (this.stringListPos < this.strings.size()) {
            return this.strings.get(this.stringListPos);
        }
        return null;
    }

    private int currentStringRemainingChars() {
        String strCurrentString = currentString();
        if (strCurrentString == null) {
            return 0;
        }
        return strCurrentString.length() - this.charPos;
    }

    public void addString(String str) {
        if (this.frozen) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{53, 17, 27, 8, 92, 6, 65, 23, 13, 65, 83, 5, 5, 67, 17, 21, 64, 8, 15, 4, 66, 0, 84, 21, 4, 17, 66, 19, 87, 0, 5, 10, 12, 6}, "acba2a", -6.24137056E8d));
        }
        if (str.length() > 0) {
            this.strings.add(str);
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        checkState();
        this.closed = true;
    }

    public void freeze() {
        if (this.frozen) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{48, 67, 75, 88, 91, 80, 68, 69, 93, 17, 83, 69, 1, 84, 72, 84, 21, 81, 22, 94, 72, 84, 91, 23, 55, 69, 64, 88, 91, 80, 40, 88, 65, 69, 103, 82, 5, 85, 87, 67}, "d12157", 2.0543812E9f));
        }
        this.frozen = true;
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        checkState();
        this.markedCharPos = this.charPos;
        this.markedStringListPos = this.stringListPos;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        checkState();
        String strCurrentString = currentString();
        if (strCurrentString == null) {
            return -1;
        }
        char cCharAt = strCurrentString.charAt(this.charPos);
        advance(1L);
        return cCharAt;
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        checkState();
        int iRemaining = charBuffer.remaining();
        int i = 0;
        String strCurrentString = currentString();
        while (iRemaining > 0 && strCurrentString != null) {
            int iMin = Math.min(strCurrentString.length() - this.charPos, iRemaining);
            String str = this.strings.get(this.stringListPos);
            int i2 = this.charPos;
            charBuffer.put(str, i2, i2 + iMin);
            iRemaining -= iMin;
            i += iMin;
            advance(iMin);
            strCurrentString = currentString();
        }
        if (i > 0 || strCurrentString != null) {
            return i;
        }
        return -1;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        checkState();
        int i3 = 0;
        String strCurrentString = currentString();
        while (strCurrentString != null && i3 < i2) {
            int iMin = Math.min(currentStringRemainingChars(), i2 - i3);
            int i4 = this.charPos;
            strCurrentString.getChars(i4, i4 + iMin, cArr, i + i3);
            advance(iMin);
            i3 += iMin;
            strCurrentString = currentString();
        }
        if (i3 > 0 || strCurrentString != null) {
            return i3;
        }
        return -1;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        checkState();
        return true;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.charPos = this.markedCharPos;
        this.stringListPos = this.markedStringListPos;
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        checkState();
        return advance(j);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.strings.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }
}
