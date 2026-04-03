package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int[] stack = new int[32];

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int iDoPeek = jsonReader.peeked;
                if (iDoPeek == 0) {
                    iDoPeek = jsonReader.doPeek();
                }
                if (iDoPeek == 13) {
                    jsonReader.peeked = 9;
                } else if (iDoPeek == 12) {
                    jsonReader.peeked = 8;
                } else {
                    if (iDoPeek != 14) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 65, 70, 7, 84, 16, 80, 93, 22, 3, 23, 10, 84, 84, 83, 66, 85, 17, 65, 25, 65, 3, 68, 68}, "596b7d", 9.77886E8f) + jsonReader.peek() + jsonReader.locationString());
                    }
                    jsonReader.peeked = 10;
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{81, 15, 17, 9, 8, 67, 86, 20, 93, 88}, "8a145c", false));
        }
        this.in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError(NPStringFog.decode(new byte[]{96, 21, 83, 22, 123, 65, 90, 8, 100, 83, 80, 86, 80, 20, 24, 69, 84, 70, 121, 3, 88, 95, 84, 92, 65, 78, 66, 68, 68, 87, 28, 70, 66, 89, 17, 83, 86, 5, 83, 70, 69, 18, 88, 7, 90, 80, 94, 64, 88, 3, 82, 22, 123, 97, 122, 40}, "5f6612", true, false));
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        int i = this.pos;
        if (i + 5 <= this.limit || fillBuffer(5)) {
            char[] cArr = this.buffer;
            if (cArr[i] == ')' && cArr[i + 1] == ']' && cArr[i + 2] == '}' && cArr[i + 3] == '\'' && cArr[i + 4] == '\n') {
                this.pos += 5;
            }
        }
    }

    private boolean fillBuffer(int i) throws IOException {
        char[] cArr = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int i2 = this.in.read(cArr, this.limit, cArr.length - this.limit);
            if (i2 == -1) {
                return false;
            }
            this.limit = i2 + this.limit;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    private boolean isLiteral(char c) throws IOException {
        switch (c) {
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                checkLenient();
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            default:
                return true;
        }
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!fillBuffer(1)) {
                    if (z) {
                        throw new EOFException(NPStringFog.decode(new byte[]{35, 87, 86, 24, 9, 94, 70, 80, 92, 72, 19, 76}, "f928f8", 1397905996L) + locationString());
                    }
                    return -1;
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean zFillBuffer = fillBuffer(2);
                    this.pos++;
                    if (!zFillBuffer) {
                        return c;
                    }
                }
                checkLenient();
                switch (cArr[this.pos]) {
                    case '*':
                        this.pos++;
                        if (!skipTo(NPStringFog.decode(new byte[]{30, 28}, "4382e8", false))) {
                            throw syntaxError(NPStringFog.decode(new byte[]{51, 88, 70, 87, 23, 94, 15, 88, 83, 70, 0, 87, 70, 85, 93, 95, 8, 86, 8, 66}, "f622e3", false, false));
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                        break;
                        break;
                    case '/':
                        this.pos++;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                        break;
                    default:
                        return c;
                }
            } else {
                if (c != '#') {
                    this.pos = i3;
                    return c;
                }
                this.pos = i3;
                checkLenient();
                skipToEndOfLine();
                i = this.pos;
                i2 = this.limit;
            }
        }
    }

    private String nextQuotedValue(char c) throws IOException {
        int i;
        StringBuilder sb;
        int i2;
        char[] cArr = this.buffer;
        StringBuilder sb2 = null;
        do {
            int i3 = this.pos;
            int i4 = this.limit;
            int i5 = i3;
            while (i5 < i4) {
                int i6 = i5 + 1;
                char c2 = cArr[i5];
                if (c2 == c) {
                    this.pos = i6;
                    int i7 = (i6 - i3) - 1;
                    if (sb2 == null) {
                        return new String(cArr, i3, i7);
                    }
                    sb2.append(cArr, i3, i7);
                    return sb2.toString();
                }
                if (c2 == '\\') {
                    this.pos = i6;
                    int i8 = (i6 - i3) - 1;
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max((i8 + 1) * 2, 16));
                    }
                    sb2.append(cArr, i3, i8);
                    sb2.append(readEscapeCharacter());
                    int i9 = this.pos;
                    i6 = i9;
                    sb = sb2;
                    i2 = i9;
                    i = this.limit;
                } else if (c2 == '\n') {
                    this.lineNumber++;
                    this.lineStart = i6;
                    int i10 = i3;
                    i = i4;
                    sb = sb2;
                    i2 = i10;
                } else {
                    int i11 = i3;
                    i = i4;
                    sb = sb2;
                    i2 = i11;
                }
                i5 = i6;
                int i12 = i;
                i3 = i2;
                sb2 = sb;
                i4 = i12;
            }
            if (sb2 == null) {
                sb2 = new StringBuilder(Math.max((i5 - i3) * 2, 16));
            }
            sb2.append(cArr, i3, i5 - i3);
            this.pos = i5;
        } while (fillBuffer(1));
        throw syntaxError(NPStringFog.decode(new byte[]{108, 11, 64, 1, 74, 84, 80, 11, 85, 16, 93, 93, 25, 22, 64, 22, 81, 87, 94}, "9e4d89", 1.4586152E9f));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
    
        r1 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextUnquotedValue() throws java.io.IOException {
        /*
            r5 = this;
            r1 = 0
            r0 = 0
            r2 = r0
            r0 = r1
        L4:
            int r3 = r5.pos
            int r3 = r3 + r0
            int r4 = r5.limit
            if (r3 >= r4) goto L2d
            char[] r3 = r5.buffer
            int r4 = r5.pos
            int r4 = r4 + r0
            char r3 = r3[r4]
            switch(r3) {
                case 9: goto L3a;
                case 10: goto L3a;
                case 12: goto L3a;
                case 13: goto L3a;
                case 32: goto L3a;
                case 35: goto L18;
                case 44: goto L3a;
                case 47: goto L18;
                case 58: goto L3a;
                case 59: goto L18;
                case 61: goto L18;
                case 91: goto L3a;
                case 92: goto L18;
                case 93: goto L3a;
                case 123: goto L3a;
                case 125: goto L3a;
                default: goto L15;
            }
        L15:
            int r0 = r0 + 1
            goto L4
        L18:
            r5.checkLenient()
            r1 = r0
        L1c:
            if (r2 != 0) goto L5e
            java.lang.String r0 = new java.lang.String
            char[] r2 = r5.buffer
            int r3 = r5.pos
            r0.<init>(r2, r3, r1)
        L27:
            int r2 = r5.pos
            int r1 = r1 + r2
            r5.pos = r1
            return r0
        L2d:
            char[] r3 = r5.buffer
            int r3 = r3.length
            if (r0 >= r3) goto L3c
            int r3 = r0 + 1
            boolean r3 = r5.fillBuffer(r3)
            if (r3 != 0) goto L4
        L3a:
            r1 = r0
            goto L1c
        L3c:
            if (r2 != 0) goto L49
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r0, r3)
            r2.<init>(r3)
        L49:
            char[] r3 = r5.buffer
            int r4 = r5.pos
            r2.append(r3, r4, r0)
            int r3 = r5.pos
            int r0 = r0 + r3
            r5.pos = r0
            r0 = 1
            boolean r0 = r5.fillBuffer(r0)
            if (r0 == 0) goto L1c
            r0 = r1
            goto L4
        L5e:
            char[] r0 = r5.buffer
            int r3 = r5.pos
            java.lang.StringBuilder r0 = r2.append(r0, r3, r1)
            java.lang.String r0 = r0.toString()
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextUnquotedValue():java.lang.String");
    }

    private int peekKeyword() throws IOException {
        String strDecode;
        String strDecode2;
        int i = 5;
        char c = this.buffer[this.pos];
        if (c == 't' || c == 'T') {
            strDecode = NPStringFog.decode(new byte[]{23, 23, 16, 93}, "cee878", 29482);
            strDecode2 = NPStringFog.decode(new byte[]{98, 51, 97, 38}, "6a4ca8", false, true);
        } else if (c == 'f' || c == 'F') {
            strDecode = NPStringFog.decode(new byte[]{7, 2, 95, 16, 93}, "ac3c8c", true, true);
            strDecode2 = NPStringFog.decode(new byte[]{117, 117, 40, 50, 33}, "34dad1", -1092900591L);
            i = 6;
        } else {
            if (c != 'n' && c != 'N') {
                return 0;
            }
            strDecode = NPStringFog.decode(new byte[]{10, 19, 15, 92}, "dfc028", false, true);
            strDecode2 = NPStringFog.decode(new byte[]{122, 54, 125, 117}, "4c194e", true);
            i = 7;
        }
        int length = strDecode.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != strDecode.charAt(i2) && c2 != strDecode2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:?, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:?, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
    
        if (r10 != 2) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
    
        if (r9 == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        if (r2 != Long.MIN_VALUE) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        if (r8 == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r2 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r8 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r8 == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0043, code lost:
    
        r18.peekedLong = r2;
        r18.pos += r11;
        r18.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        if (isLiteral(r6) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0078, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0123, code lost:
    
        r2 = -r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0127, code lost:
    
        if (r10 == 2) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x012a, code lost:
    
        if (r10 == 4) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x012d, code lost:
    
        if (r10 != 7) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x012f, code lost:
    
        r18.peekedNumberLength = r11;
        r18.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013d, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int peekNumber() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            int i2 = this.stackSize * 2;
            this.stack = Arrays.copyOf(this.stack, i2);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i2);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i2);
        }
        int[] iArr = this.stack;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr[i3] = i;
    }

    private char readEscapeCharacter() throws IOException {
        int i;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError(NPStringFog.decode(new byte[]{108, 8, 21, 81, 74, 15, 80, 8, 0, 64, 93, 6, 25, 3, 18, 87, 89, 18, 92, 70, 18, 81, 73, 23, 92, 8, 2, 81}, "9fa48b", 1679));
        }
        char[] cArr = this.buffer;
        int i2 = this.pos;
        this.pos = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\n':
                this.lineNumber++;
                this.lineStart = this.pos;
                return c;
            case '\"':
            case '\'':
            case '/':
            case '\\':
                return c;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                if (this.pos + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError(NPStringFog.decode(new byte[]{103, 86, 77, 81, 20, 95, 91, 86, 88, 64, 3, 86, 18, 93, 74, 87, 7, 66, 87, 24, 74, 81, 23, 71, 87, 86, 90, 81}, "2894f2", 1.120493209E9d));
                }
                char c2 = 0;
                int i3 = this.pos;
                for (int i4 = i3; i4 < i3 + 4; i4++) {
                    char c3 = this.buffer[i4];
                    char c4 = (char) (c2 << 4);
                    if (c3 >= '0' && c3 <= '9') {
                        i = c3 - '0';
                    } else if (c3 >= 'a' && c3 <= 'f') {
                        i = (c3 - 'a') + 10;
                    } else {
                        if (c3 < 'A' || c3 > 'F') {
                            throw new NumberFormatException(NPStringFog.decode(new byte[]{63, 20}, "ca484f", 1.739998876E9d) + new String(this.buffer, this.pos, 4));
                        }
                        i = (c3 - 'A') + 10;
                    }
                    c2 = (char) (c4 + i);
                }
                this.pos += 4;
                return c2;
            default:
                throw syntaxError(NPStringFog.decode(new byte[]{45, 88, 20, 3, 84, 93, 0, 22, 7, 17, 91, 85, 20, 83, 66, 17, 93, 69, 17, 83, 12, 1, 93}, "d6bb84", -2140601228L));
        }
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    readEscapeCharacter();
                    i4 = this.pos;
                    i2 = this.limit;
                } else if (c2 == '\n') {
                    this.lineNumber++;
                    this.lineStart = i4;
                }
                i3 = i4;
            }
            this.pos = i3;
        } while (fillBuffer(1));
        throw syntaxError(NPStringFog.decode(new byte[]{97, 90, 66, 80, 67, 15, 93, 90, 87, 65, 84, 6, 20, 71, 66, 71, 88, 12, 83}, "44651b", true, false));
    }

    private boolean skipTo(String str) throws IOException {
        int i;
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            if (this.buffer[this.pos] != '\n') {
                for (0; i < length; i + 1) {
                    i = this.buffer[this.pos + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = this.pos + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos;
                return;
            }
        } while (c != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                        break;
                }
                this.pos = i + this.pos;
                return;
            }
            this.pos = i + this.pos;
        } while (fillBuffer(1));
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + locationString());
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 3) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 77, 64, 83, 2, 22, 6, 81, 16, 116, 36, 37, 42, 123, 111, 119, 51, 48, 34, 108, 16, 84, 20, 22, 67, 66, 81, 69, 65}, "c506ab", true, true) + peek() + locationString());
        }
        push(1);
        this.pathIndices[this.stackSize - 1] = 0;
        this.peeked = 0;
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 73, 70, 4, 5, 77, 1, 85, 22, 35, 35, 126, 45, 127, 105, 46, 36, 115, 33, 114, 98, 65, 4, 76, 16, 17, 65, 0, 21, 25}, "d16af9", true, true) + peek() + locationString());
        }
        push(3);
        this.peeked = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    int doPeek() throws IOException {
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            switch (nextNonWhitespace(true)) {
                case 44:
                    break;
                case 59:
                    checkLenient();
                    break;
                case 93:
                    this.peeked = 4;
                    return 4;
                default:
                    throw syntaxError(NPStringFog.decode(new byte[]{109, 90, 67, 92, 17, 90, 81, 90, 86, 77, 6, 83, 24, 85, 69, 75, 2, 78}, "8479c7", true, true));
            }
        } else {
            if (i == 3 || i == 5) {
                this.stack[this.stackSize - 1] = 4;
                if (i == 5) {
                    switch (nextNonWhitespace(true)) {
                        case 44:
                            break;
                        case 59:
                            checkLenient();
                            break;
                        case 125:
                            this.peeked = 2;
                            return 2;
                        default:
                            throw syntaxError(NPStringFog.decode(new byte[]{55, 11, 76, 83, 75, 89, 11, 11, 89, 66, 92, 80, 66, 10, 90, 92, 92, 87, 22}, "be8694", 1366087514L));
                    }
                }
                int iNextNonWhitespace = nextNonWhitespace(true);
                switch (iNextNonWhitespace) {
                    case 34:
                        this.peeked = 13;
                        return 13;
                    case 39:
                        checkLenient();
                        this.peeked = 12;
                        return 12;
                    case 125:
                        if (i == 5) {
                            throw syntaxError(NPStringFog.decode(new byte[]{36, 64, 67, 84, 82, 68, 4, 92, 19, 95, 80, 93, 4}, "a83110", false));
                        }
                        this.peeked = 2;
                        return 2;
                    default:
                        checkLenient();
                        this.pos--;
                        if (!isLiteral((char) iNextNonWhitespace)) {
                            throw syntaxError(NPStringFog.decode(new byte[]{33, 76, 64, 83, 1, 18, 1, 80, 16, 88, 3, 11, 1}, "d406bf", true));
                        }
                        this.peeked = 14;
                        return 14;
                }
            }
            if (i == 4) {
                this.stack[this.stackSize - 1] = 5;
                switch (nextNonWhitespace(true)) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw syntaxError(NPStringFog.decode(new byte[]{117, 29, 17, 93, 85, 17, 85, 1, 65, 31, 12, 66}, "0ea86e", 6991));
                    case 61:
                        checkLenient();
                        if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == '>') {
                            this.pos++;
                        }
                        break;
                }
            } else if (i == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i == 8) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 23, 92, 15, 54, 92, 80, 0, 86, 19, 68, 80, 66, 68, 80, 13, 11, 74, 84, 0}, "1d3ad9", false, false));
            }
        }
        switch (nextNonWhitespace(true)) {
            case 34:
                this.peeked = 9;
                return 9;
            case 39:
                checkLenient();
                this.peeked = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.peeked = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.peeked = 4;
                    return 4;
                }
                break;
            case 123:
                this.peeked = 1;
                return 1;
            default:
                this.pos--;
                int iPeekKeyword = peekKeyword();
                if (iPeekKeyword != 0) {
                    return iPeekKeyword;
                }
                int iPeekNumber = peekNumber();
                if (iPeekNumber != 0) {
                    return iPeekNumber;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError(NPStringFog.decode(new byte[]{125, 75, 69, 4, 80, 16, 93, 87, 21, 23, 82, 8, 77, 86}, "835a3d", 2130876604L));
                }
                checkLenient();
                this.peeked = 10;
                return 10;
        }
        if (i != 1 && i != 2) {
            throw syntaxError(NPStringFog.decode(new byte[]{99, 86, 83, 26, 72, 93, 85, 76, 83, 6, 24, 78, 87, 84, 67, 7}, "686b88", 1125800035L));
        }
        checkLenient();
        this.pos--;
        this.peeked = 7;
        return 7;
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 76, 66, 3, 84, 16, 80, 80, 18, 35, 121, 32, 106, 117, 96, 52, 118, 61, 21, 86, 71, 18, 23, 19, 84, 71, 18}, "542f7d", 7.0148551E8d) + peek() + locationString());
        }
        this.stackSize--;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.peeked = 0;
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 73, 17, 81, 84, 16, 7, 85, 65, 113, 121, 32, 61, 126, 35, 126, 114, 39, 54, 17, 3, 65, 67, 68, 21, 80, 18, 20}, "b1a47d", -746442565L) + peek() + locationString());
        }
        this.stackSize--;
        this.pathNames[this.stackSize] = null;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.peeked = 0;
    }

    public String getPath() {
        StringBuilder sbAppend = new StringBuilder().append('$');
        int i = this.stackSize;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.stack[i2]) {
                case 1:
                case 2:
                    sbAppend.append('[').append(this.pathIndices[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sbAppend.append('.');
                    if (this.pathNames[i2] != null) {
                        sbAppend.append(this.pathNames[i2]);
                    }
                    break;
            }
        }
        return sbAppend.toString();
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    String locationString() {
        return NPStringFog.decode(new byte[]{67, 89, 67, 69, 95, 13, 13, 93, 23}, "c87e3d", -13884) + (this.lineNumber + 1) + NPStringFog.decode(new byte[]{19, 80, 11, 91, 23, 89, 93, 19}, "33d7b4", -315503402L) + ((this.pos - this.lineStart) + 1) + NPStringFog.decode(new byte[]{70, 19, 82, 68, 9, 16}, "fc30a0", false, false) + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iDoPeek != 6) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 30, 21, 6, 6, 71, 0, 2, 69, 2, 69, 81, 10, 9, 9, 6, 4, 93, 69, 4, 16, 23, 69, 68, 4, 21, 69}, "efece3", 1.0747025E9f) + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (iDoPeek == 8 || iDoPeek == 9) {
            this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
        } else if (iDoPeek == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (iDoPeek != 11) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 78, 64, 81, 1, 65, 1, 82, 16, 85, 66, 81, 11, 67, 82, 88, 7, 21, 6, 67, 68, 20, 21, 84, 23, 22}, "d604b5", false) + peek() + locationString());
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new MalformedJsonException(NPStringFog.decode(new byte[]{122, 50, 127, 127, 23, 81, 95, 19, 82, 88, 83, 68, 16, 47, 81, 127, 23, 86, 94, 5, 16, 88, 89, 81, 89, 15, 89, 69, 94, 82, 67, 91, 16}, "0a0177", -1.084010597E9d) + d + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextInt() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextInt():int");
    }

    public long nextLong() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{35, 65, 66, 82, 86, 68, 3, 93, 18, 86, 21, 92, 9, 87, 85, 23, 87, 69, 18, 25, 69, 86, 70, 16}, "f92750", true) + peek() + locationString());
            }
            if (iDoPeek == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            try {
                long j = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException e) {
            }
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        long j2 = (long) d;
        if (j2 != d) {
            throw new NumberFormatException(NPStringFog.decode(new byte[]{33, 75, 64, 83, 83, 67, 1, 87, 16, 87, 16, 91, 11, 93, 87, 22, 82, 66, 16, 19, 71, 87, 67, 23}, "d30607", 25767) + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }

    public String nextName() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (iDoPeek == 12) {
            strNextQuotedValue = nextQuotedValue('\'');
        } else {
            if (iDoPeek != 13) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 65, 18, 87, 82, 18, 0, 93, 66, 83, 17, 8, 4, 84, 7, 18, 83, 19, 17, 25, 21, 83, 66, 70}, "e9b21f", 1.051141892E9d) + peek() + locationString());
            }
            strNextQuotedValue = nextQuotedValue('\"');
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 7) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 26, 69, 80, 91, 23, 4, 6, 21, 91, 77, 15, 13, 66, 87, 64, 76, 67, 22, 3, 70, 21}, "ab558c", true) + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
    }

    public String nextString() throws IOException {
        String str;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = nextUnquotedValue();
        } else if (iDoPeek == 8) {
            str = nextQuotedValue('\'');
        } else if (iDoPeek == 9) {
            str = nextQuotedValue('\"');
        } else if (iDoPeek == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 15) {
            str = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 16) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 64, 18, 4, 1, 69, 6, 92, 66, 0, 66, 66, 23, 74, 11, 15, 5, 17, 1, 77, 22, 65, 21, 80, 16, 24}, "c8bab1", true, false) + peek() + locationString());
            }
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public void skipValue() throws IOException {
        int i = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            if (iDoPeek == 3) {
                push(1);
                i++;
            } else if (iDoPeek == 1) {
                push(3);
                i++;
            } else if (iDoPeek == 4 || iDoPeek == 2) {
                this.stackSize--;
                i--;
            } else if (iDoPeek == 14 || iDoPeek == 10) {
                skipUnquotedValue();
            } else if (iDoPeek == 8 || iDoPeek == 12) {
                skipQuotedValue('\'');
            } else if (iDoPeek == 9 || iDoPeek == 13) {
                skipQuotedValue('\"');
            } else if (iDoPeek == 16) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        this.pathNames[this.stackSize - 1] = NPStringFog.decode(new byte[]{12, 23, 8, 93}, "bbd1c0", -5.1916816E8f);
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }
}
