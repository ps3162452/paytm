package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import n.NPStringFog;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes64.dex */
final class JsonUtf8Reader extends JsonReader {
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
    private static final int PEEKED_BUFFERED_NAME = 15;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 18;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 16;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 17;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Buffer buffer;
    private int peeked = 0;
    private long peekedLong;
    private int peekedNumberLength;

    @Nullable
    private String peekedString;
    private final BufferedSource source;
    private static final ByteString SINGLE_QUOTE_OR_SLASH = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{70, 110}, "a24628", 1.804486865E9d));
    private static final ByteString DOUBLE_QUOTE_OR_SLASH = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{68, 106}, "f6f32e", false));
    private static final ByteString UNQUOTED_STRING_TERMINALS = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{66, 76, 98, 57, 8, 30, 25, 59, 48, 105, 62, 29, 101, 10, 26, 89}, "919d22", 1.834958423E9d));
    private static final ByteString LINEFEED_OR_CARRIAGE_RETURN = ByteString.encodeUtf8("\n\r");
    private static final ByteString CLOSING_BLOCK_COMMENT = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{76, 77}, "fbbc5f", 7.073884E7f));

    JsonUtf8Reader(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{64, 86, 64, 64, 2, 86, 19, 4, 8, 18, 15, 70, 95, 85}, "3952a3", -881828839L));
        }
        this.source = bufferedSource;
        this.buffer = bufferedSource.buffer();
        pushScope(6);
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError(NPStringFog.decode(new byte[]{49, 68, 1, 17, 41, 68, 11, 89, 54, 84, 2, 83, 1, 69, 74, 66, 6, 67, 40, 82, 10, 88, 6, 89, 16, 31, 16, 67, 22, 82, 77, 23, 16, 94, 67, 86, 7, 84, 1, 65, 23, 23, 9, 86, 8, 87, 12, 69, 9, 82, 0, 17, 41, 100, 43, 121}, "d7d1c7", -1.05266176E9d));
        }
    }

    private int doPeek() throws IOException {
        int i = this.scopes[this.stackSize - 1];
        if (i == 1) {
            this.scopes[this.stackSize - 1] = 2;
        } else if (i == 2) {
            int iNextNonWhitespace = nextNonWhitespace(true);
            this.buffer.readByte();
            switch (iNextNonWhitespace) {
                case 44:
                    break;
                case 59:
                    checkLenient();
                    break;
                case 93:
                    this.peeked = 4;
                    return 4;
                default:
                    throw syntaxError(NPStringFog.decode(new byte[]{49, 10, 69, 84, 68, 95, 13, 10, 80, 69, 83, 86, 68, 5, 67, 67, 87, 75}, "dd1162", -8.500739E8f));
            }
        } else {
            if (i == 3 || i == 5) {
                this.scopes[this.stackSize - 1] = 4;
                if (i == 5) {
                    int iNextNonWhitespace2 = nextNonWhitespace(true);
                    this.buffer.readByte();
                    switch (iNextNonWhitespace2) {
                        case 44:
                            break;
                        case 59:
                            checkLenient();
                            break;
                        case 125:
                            this.peeked = 2;
                            return 2;
                        default:
                            throw syntaxError(NPStringFog.decode(new byte[]{98, 10, 67, 0, 69, 94, 94, 10, 86, 17, 82, 87, 23, 11, 85, 15, 82, 80, 67}, "7d7e73", -2.0774158E9f));
                    }
                }
                int iNextNonWhitespace3 = nextNonWhitespace(true);
                switch (iNextNonWhitespace3) {
                    case 34:
                        this.buffer.readByte();
                        this.peeked = 13;
                        return 13;
                    case 39:
                        this.buffer.readByte();
                        checkLenient();
                        this.peeked = 12;
                        return 12;
                    case 125:
                        if (i == 5) {
                            throw syntaxError(NPStringFog.decode(new byte[]{118, 65, 67, 0, 81, 67, 86, 93, 19, 11, 83, 90, 86}, "393e27", -1603825855L));
                        }
                        this.buffer.readByte();
                        this.peeked = 2;
                        return 2;
                    default:
                        checkLenient();
                        if (!isLiteral((char) iNextNonWhitespace3)) {
                            throw syntaxError(NPStringFog.decode(new byte[]{113, 25, 19, 93, 84, 23, 81, 5, 67, 86, 86, 14, 81}, "4ac87c", false));
                        }
                        this.peeked = 14;
                        return 14;
                }
            }
            if (i == 4) {
                this.scopes[this.stackSize - 1] = 5;
                int iNextNonWhitespace4 = nextNonWhitespace(true);
                this.buffer.readByte();
                switch (iNextNonWhitespace4) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw syntaxError(NPStringFog.decode(new byte[]{115, 64, 20, 80, 1, 64, 83, 92, 68, 18, 88, 19}, "68d5b4", 1588537688L));
                    case 61:
                        checkLenient();
                        if (this.source.request(1L) && this.buffer.getByte(0L) == 62) {
                            this.buffer.readByte();
                        }
                        break;
                }
            } else if (i == 6) {
                this.scopes[this.stackSize - 1] = 7;
            } else if (i == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 18;
                    return 18;
                }
                checkLenient();
            } else if (i == 8) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 17, 11, 92, 97, 81, 87, 6, 1, 64, 19, 93, 69, 66, 7, 94, 92, 71, 83, 6}, "6bd234", false));
            }
        }
        switch (nextNonWhitespace(true)) {
            case 34:
                this.buffer.readByte();
                this.peeked = 9;
                return 9;
            case 39:
                checkLenient();
                this.buffer.readByte();
                this.peeked = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.buffer.readByte();
                this.peeked = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.buffer.readByte();
                    this.peeked = 4;
                    return 4;
                }
                break;
            case 123:
                this.buffer.readByte();
                this.peeked = 1;
                return 1;
            default:
                int iPeekKeyword = peekKeyword();
                if (iPeekKeyword != 0) {
                    return iPeekKeyword;
                }
                int iPeekNumber = peekNumber();
                if (iPeekNumber != 0) {
                    return iPeekNumber;
                }
                if (!isLiteral(this.buffer.getByte(0L))) {
                    throw syntaxError(NPStringFog.decode(new byte[]{112, 28, 67, 87, 5, 17, 80, 0, 19, 68, 7, 9, 64, 1}, "5d32fe", false));
                }
                checkLenient();
                this.peeked = 10;
                return 10;
        }
        if (i != 1 && i != 2) {
            throw syntaxError(NPStringFog.decode(new byte[]{109, 10, 81, 72, 67, 92, 91, 16, 81, 84, 19, 79, 89, 8, 65, 85}, "8d4039", 2.1284968E9f));
        }
        checkLenient();
        this.peeked = 7;
        return 7;
    }

    private int findName(String str, JsonReader.Options options) {
        int length = options.strings.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(options.strings[i])) {
                this.peeked = 0;
                this.pathNames[this.stackSize - 1] = str;
                return i;
            }
        }
        return -1;
    }

    private int findString(String str, JsonReader.Options options) {
        int length = options.strings.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(options.strings[i])) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
        }
        return -1;
    }

    private boolean isLiteral(int i) throws IOException {
        switch (i) {
            case 35:
            case 47:
            case 59:
            case 61:
            case 92:
                checkLenient();
            case 9:
            case 10:
            case 12:
            case 13:
            case 32:
            case 44:
            case 58:
            case 91:
            case 93:
            case 123:
            case 125:
                return false;
            default:
                return true;
        }
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        int i = 0;
        while (this.source.request(i + 1)) {
            int i2 = i + 1;
            byte b = this.buffer.getByte(i);
            if (b == 10 || b == 32 || b == 13) {
                i = i2;
            } else if (b == 9) {
                i = i2;
            } else {
                this.buffer.skip(i2 - 1);
                if (b == 47) {
                    if (!this.source.request(2L)) {
                        return b;
                    }
                    checkLenient();
                    switch (this.buffer.getByte(1L)) {
                        case 42:
                            this.buffer.readByte();
                            this.buffer.readByte();
                            if (!skipToEndOfBlockComment()) {
                                throw syntaxError(NPStringFog.decode(new byte[]{54, 88, 70, 82, 69, 12, 10, 88, 83, 67, 82, 5, 67, 85, 93, 90, 90, 4, 13, 66}, "c6277a", -2066545121L));
                            }
                            i = 0;
                            break;
                            break;
                        case 47:
                            this.buffer.readByte();
                            this.buffer.readByte();
                            skipToEndOfLine();
                            i = 0;
                            break;
                        default:
                            return b;
                    }
                } else {
                    if (b != 35) {
                        return b;
                    }
                    checkLenient();
                    skipToEndOfLine();
                    i = 0;
                }
            }
        }
        if (z) {
            throw new EOFException(NPStringFog.decode(new byte[]{36, 94, 87, 25, 12, 80, 65, 89, 93, 73, 22, 66}, "a039c6", -16795));
        }
        return -1;
    }

    private String nextQuotedValue(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long jIndexOfElement = this.source.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw syntaxError(NPStringFog.decode(new byte[]{102, 86, 68, 92, 23, 89, 90, 86, 81, 77, 0, 80, 19, 75, 68, 75, 12, 90, 84}, "3809e4", -1.067515826E9d));
            }
            if (this.buffer.getByte(jIndexOfElement) != 92) {
                if (sb == null) {
                    String utf8 = this.buffer.readUtf8(jIndexOfElement);
                    this.buffer.readByte();
                    return utf8;
                }
                sb.append(this.buffer.readUtf8(jIndexOfElement));
                this.buffer.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.buffer.readUtf8(jIndexOfElement));
            this.buffer.readByte();
            sb.append(readEscapeCharacter());
        }
    }

    private String nextUnquotedValue() throws IOException {
        long jIndexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
        return jIndexOfElement != -1 ? this.buffer.readUtf8(jIndexOfElement) : this.buffer.readUtf8();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int peekKeyword() throws IOException {
        String strDecode;
        String strDecode2;
        int i = 5;
        byte b = this.buffer.getByte(0L);
        if (b == 116 || b == 84) {
            strDecode = NPStringFog.decode(new byte[]{65, 66, 65, 86}, "504359", -1.111245064E9d);
            strDecode2 = NPStringFog.decode(new byte[]{101, 98, 55, 36}, "10baeb", 31286);
        } else if (b == 102 || b == 70) {
            strDecode = NPStringFog.decode(new byte[]{87, 5, 91, 68, 6}, "1d77c8", 20751);
            strDecode2 = NPStringFog.decode(new byte[]{39, 116, 122, 97, 33}, "a562da", false);
            i = 6;
        } else {
            if (b != 110 && b != 78) {
                return 0;
            }
            strDecode = NPStringFog.decode(new byte[]{86, 64, 91, 13}, "857af4", false, true);
            strDecode2 = NPStringFog.decode(new byte[]{42, 102, 45, 116}, "d3a807", true, false);
            i = 7;
        }
        int length = strDecode.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (!this.source.request(i2 + 1)) {
                return 0;
            }
            byte b2 = this.buffer.getByte(i2);
            if (b2 != strDecode.charAt(i2) && b2 != strDecode2.charAt(i2)) {
                return 0;
            }
        }
        if (this.source.request(length + 1) && isLiteral(this.buffer.getByte(length))) {
            return 0;
        }
        this.buffer.skip(length);
        this.peeked = i;
        return i;
    }

    private int peekNumber() throws IOException {
        long j = 0;
        boolean z = false;
        boolean z2 = true;
        char c = 0;
        for (int i = 0; this.source.request(i + 1); i++) {
            byte b = this.buffer.getByte(i);
            switch (b) {
                case 43:
                    if (c != 5) {
                        return 0;
                    }
                    c = 6;
                    continue;
                    break;
                    break;
                case 45:
                    if (c == 0) {
                        z = true;
                        c = 1;
                        continue;
                    } else {
                        if (c != 5) {
                            return 0;
                        }
                        c = 6;
                    }
                    break;
                case 46:
                    if (c != 2) {
                        return 0;
                    }
                    c = 3;
                    continue;
                    break;
                    break;
                case 69:
                case 101:
                    if (c != 2 && c != 4) {
                        return 0;
                    }
                    c = 5;
                    continue;
                    break;
                    break;
                default:
                    if (b >= 48 && b <= 57) {
                        if (c == 1 || c == 0) {
                            j = -(b - 48);
                            c = 2;
                        } else if (c == 2) {
                            if (j == 0) {
                                return 0;
                            }
                            long j2 = (10 * j) - ((long) (b - 48));
                            z2 &= j > MIN_INCOMPLETE_INTEGER || (j == MIN_INCOMPLETE_INTEGER && j2 < j);
                            j = j2;
                        } else if (c == 3) {
                            c = 4;
                        } else if (c == 5 || c == 6) {
                            c = 7;
                        }
                    } else if (isLiteral(b)) {
                        return 0;
                    }
                    break;
            }
            if (c != 2 && z2 && ((j != Long.MIN_VALUE || z) && (j != 0 || !z))) {
                if (!z) {
                    j = -j;
                }
                this.peekedLong = j;
                this.buffer.skip(i);
                this.peeked = 16;
                return 16;
            }
            if (c == 2 && c != 4 && c != 7) {
                return 0;
            }
            this.peekedNumberLength = i;
            this.peeked = 17;
            return 17;
        }
        if (c != 2) {
        }
        if (c == 2) {
        }
        this.peekedNumberLength = i;
        this.peeked = 17;
        return 17;
    }

    private char readEscapeCharacter() throws IOException {
        int i;
        char c = 0;
        if (!this.source.request(1L)) {
            throw syntaxError(NPStringFog.decode(new byte[]{96, 92, 67, 82, 71, 91, 92, 92, 86, 67, 80, 82, 21, 87, 68, 84, 84, 70, 80, 18, 68, 82, 68, 67, 80, 92, 84, 82}, "527756", true));
        }
        byte b = this.buffer.readByte();
        switch (b) {
            case 10:
            case 34:
            case 39:
            case 47:
            case 92:
                return (char) b;
            case 98:
                return '\b';
            case 102:
                return '\f';
            case 110:
                return '\n';
            case 114:
                return '\r';
            case 116:
                return '\t';
            case 117:
                if (!this.source.request(4L)) {
                    throw new EOFException(NPStringFog.decode(new byte[]{109, 87, 69, 84, 75, 12, 81, 87, 80, 69, 92, 5, 24, 92, 66, 82, 88, 17, 93, 25, 66, 84, 72, 20, 93, 87, 82, 84, 25, 0, 76, 25, 65, 80, 77, 9, 24}, "89119a", 379217632L) + getPath());
                }
                for (int i2 = 0; i2 < 4; i2++) {
                    byte b2 = this.buffer.getByte(i2);
                    char c2 = (char) (c << 4);
                    if (b2 >= 48 && b2 <= 57) {
                        i = b2 - 48;
                    } else if (b2 >= 97 && b2 <= 102) {
                        i = (b2 - 97) + 10;
                    } else {
                        if (b2 < 65 || b2 > 70) {
                            throw syntaxError(NPStringFog.decode(new byte[]{101, 20}, "9a2969", 216112737L) + this.buffer.readUtf8(4L));
                        }
                        i = (b2 - 65) + 10;
                    }
                    c = (char) (c2 + i);
                }
                this.buffer.skip(4L);
                return c;
            default:
                if (this.lenient) {
                    return (char) b;
                }
                throw syntaxError(NPStringFog.decode(new byte[]{126, 95, 64, 87, 88, 91, 83, 17, 83, 69, 87, 83, 71, 84, 22, 69, 81, 67, 66, 84, 88, 85, 81, 8, 23, 109}, "716642", -8.7087366E8f) + ((char) b));
        }
    }

    private void skipQuotedValue(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.source.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw syntaxError(NPStringFog.decode(new byte[]{51, 8, 69, 84, 16, 8, 15, 8, 80, 69, 7, 1, 70, 21, 69, 67, 11, 11, 1}, "ff11be", 28331));
            }
            if (this.buffer.getByte(jIndexOfElement) != 92) {
                this.buffer.skip(jIndexOfElement + 1);
                return;
            } else {
                this.buffer.skip(jIndexOfElement + 1);
                readEscapeCharacter();
            }
        }
    }

    private boolean skipToEndOfBlockComment() throws IOException {
        long jIndexOf = this.source.indexOf(CLOSING_BLOCK_COMMENT);
        boolean z = jIndexOf != -1;
        this.buffer.skip(z ? jIndexOf + ((long) CLOSING_BLOCK_COMMENT.size()) : this.buffer.size());
        return z;
    }

    private void skipToEndOfLine() throws IOException {
        long jIndexOfElement = this.source.indexOfElement(LINEFEED_OR_CARRIAGE_RETURN);
        this.buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : this.buffer.size());
    }

    private void skipUnquotedValue() throws IOException {
        long jIndexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
        Buffer buffer = this.buffer;
        if (jIndexOfElement == -1) {
            jIndexOfElement = this.buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 3) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{116, 28, 21, 0, 5, 66, 84, 0, 69, 39, 35, 113, 120, 42, 58, 36, 52, 100, 112, 61, 69, 7, 19, 66, 17, 19, 4, 22, 70}, "1deef6", -8.121205E8f) + peek() + NPStringFog.decode(new byte[]{25, 3, 76, 25, 19, 82, 77, 10, 24}, "9b89c3", 1.8104238E9f) + getPath());
        }
        pushScope(1);
        this.pathIndices[this.stackSize - 1] = 0;
        this.peeked = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 1) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{36, 75, 19, 86, 5, 65, 4, 87, 67, 113, 35, 114, 40, 125, 60, 124, 36, 127, 36, 112, 55, 19, 4, 64, 21, 19, 20, 82, 21, 21}, "a3c3f5", -1.909197436E9d) + peek() + NPStringFog.decode(new byte[]{25, 2, 23, 65, 65, 87, 77, 11, 67}, "9cca16", -9.613608E8f) + getPath());
        }
        pushScope(3);
        this.peeked = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.scopes[0] = 8;
        this.stackSize = 1;
        this.buffer.clear();
        this.source.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{117, 27, 19, 0, 91, 67, 85, 7, 67, 32, 118, 115, 111, 34, 49, 55, 121, 110, 16, 1, 22, 17, 24, 64, 81, 16, 67}, "0cce87", -1785108390L) + peek() + NPStringFog.decode(new byte[]{20, 88, 67, 18, 17, 4, 64, 81, 23}, "4972ae", 1.0685169E9f) + getPath());
        }
        this.stackSize--;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.peeked = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{117, 30, 72, 81, 6, 22, 85, 2, 24, 113, 43, 38, 111, 41, 122, 126, 32, 33, 100, 70, 90, 65, 17, 66, 71, 7, 75, 20}, "0f84eb", -1337457431L) + peek() + NPStringFog.decode(new byte[]{20, 84, 65, 25, 73, 81, 64, 93, 21}, "455990", -176017586L) + getPath());
        }
        this.stackSize--;
        this.pathNames[this.stackSize] = null;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.peeked = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4 || iDoPeek == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
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
            throw new JsonDataException(NPStringFog.decode(new byte[]{124, 28, 21, 86, 83, 77, 92, 0, 69, 82, 16, 91, 86, 11, 9, 86, 81, 87, 25, 6, 16, 71, 16, 78, 88, 23, 69}, "9de309", false, true) + peek() + NPStringFog.decode(new byte[]{24, 86, 77, 22, 71, 5, 76, 95, 25}, "87967d", 1.525623638E9d) + getPath());
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 16) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 17) {
            this.peekedString = this.buffer.readUtf8(this.peekedNumberLength);
        } else if (iDoPeek == 9) {
            this.peekedString = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 8) {
            this.peekedString = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (iDoPeek != 11) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{33, 25, 17, 93, 86, 22, 1, 5, 65, 89, 21, 6, 11, 20, 3, 84, 80, 66, 6, 20, 21, 24, 66, 3, 23, 65}, "daa85b", -1.756306813E9d) + peek() + NPStringFog.decode(new byte[]{18, 88, 21, 17, 69, 3, 70, 81, 65}, "29a15b", false) + getPath());
        }
        this.peeked = 11;
        try {
            double d = Double.parseDouble(this.peekedString);
            if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
                throw new JsonEncodingException(NPStringFog.decode(new byte[]{125, 106, 44, 45, 67, 94, 88, 75, 1, 10, 7, 75, 23, 119, 2, 45, 67, 89, 89, 93, 67, 10, 13, 94, 94, 87, 10, 23, 10, 93, 68, 3, 67}, "79ccc8", false) + d + NPStringFog.decode(new byte[]{16, 82, 69, 17, 70, 88, 68, 91, 17}, "031169", 1823688194L) + getPath());
            }
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return d;
        } catch (NumberFormatException e) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{38, 27, 17, 86, 86, 66, 6, 7, 65, 82, 21, 82, 12, 22, 3, 95, 80, 22, 1, 22, 21, 19, 66, 87, 16, 67}, "cca356", -1.513249546E9d) + this.peekedString + NPStringFog.decode(new byte[]{24, 89, 21, 25, 64, 86, 76, 80, 65}, "88a907", true, false) + getPath());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x017c  */
    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextInt() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonUtf8Reader.nextInt():int");
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextName() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (iDoPeek == 13) {
            strNextQuotedValue = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 12) {
            strNextQuotedValue = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else {
            if (iDoPeek != 15) {
                throw new JsonDataException(NPStringFog.decode(new byte[]{117, 25, 72, 82, 1, 21, 85, 5, 24, 86, 66, 15, 81, 12, 93, 23, 0, 20, 68, 65, 79, 86, 17, 65}, "0a87ba", -27202) + peek() + NPStringFog.decode(new byte[]{70, 0, 71, 17, 17, 5, 18, 9, 19}, "fa31ad", 7.58443358E8d) + getPath());
            }
            strNextQuotedValue = this.peekedString;
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextString() throws IOException {
        String utf8;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            utf8 = nextUnquotedValue();
        } else if (iDoPeek == 9) {
            utf8 = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 8) {
            utf8 = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 11) {
            utf8 = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 16) {
            utf8 = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 17) {
                throw new JsonDataException(NPStringFog.decode(new byte[]{117, 30, 69, 0, 82, 23, 85, 2, 21, 4, 17, 16, 68, 20, 92, 11, 86, 67, 82, 19, 65, 69, 70, 2, 67, 70}, "0f5e1c", true, true) + peek() + NPStringFog.decode(new byte[]{21, 85, 76, 21, 72, 86, 65, 92, 24}, "548587", 4.4210397E8d) + getPath());
            }
            utf8 = this.buffer.readUtf8(this.peekedNumberLength);
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return utf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int selectName(JsonReader.Options options) throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek < 12 || iDoPeek > 15) {
            return -1;
        }
        if (iDoPeek == 15) {
            return findName(this.peekedString, options);
        }
        int iSelect = this.source.select(options.doubleQuoteSuffix);
        if (iSelect != -1) {
            this.peeked = 0;
            this.pathNames[this.stackSize - 1] = options.strings[iSelect];
            return iSelect;
        }
        String str = this.pathNames[this.stackSize - 1];
        String strNextName = nextName();
        int iFindName = findName(strNextName, options);
        if (iFindName != -1) {
            return iFindName;
        }
        this.peeked = 15;
        this.peekedString = strNextName;
        this.pathNames[this.stackSize - 1] = str;
        return iFindName;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipName() throws IOException {
        if (this.failOnUnknown) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{119, 86, 87, 91, 93, 16, 20, 68, 82, 92, 66, 68, 65, 89, 92, 77, 66, 1, 87, 67, 92, 81, 18}, "47952d", -15702) + peek() + NPStringFog.decode(new byte[]{25, 4, 66, 17}, "9e610c", 1921978731L) + getPath());
        }
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            skipUnquotedValue();
        } else if (iDoPeek == 13) {
            skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (iDoPeek == 12) {
            skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (iDoPeek != 15) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{125, 30, 22, 4, 87, 21, 93, 2, 70, 0, 20, 15, 89, 11, 3, 65, 86, 20, 76, 70, 17, 0, 71, 65}, "8ffa4a", 9090) + peek() + NPStringFog.decode(new byte[]{16, 4, 64, 24, 64, 86, 68, 13, 20}, "0e4807", false, false) + getPath());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = NPStringFog.decode(new byte[]{13, 20, 84, 9}, "ca8eeb", true, true);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipValue() throws IOException {
        if (this.failOnUnknown) {
            throw new JsonDataException(NPStringFog.decode(new byte[]{119, 83, 90, 91, 90, 65, 20, 65, 95, 92, 69, 21, 65, 92, 81, 77, 69, 80, 87, 70, 81, 81, 21}, "424555", 1961646315L) + peek() + NPStringFog.decode(new byte[]{21, 7, 17, 65}, "5feabd", -485186553L) + getPath());
        }
        int i = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            if (iDoPeek == 3) {
                pushScope(1);
                i++;
            } else if (iDoPeek == 1) {
                pushScope(3);
                i++;
            } else if (iDoPeek == 4) {
                i--;
                if (i < 0) {
                    throw new JsonDataException(NPStringFog.decode(new byte[]{115, 75, 20, 93, 6, 68, 83, 87, 68, 89, 69, 70, 87, 95, 17, 93, 69, 82, 67, 71, 68, 79, 4, 67, 22}, "63d8e0", -6.85794723E8d) + peek() + NPStringFog.decode(new byte[]{17, 85, 71, 69, 22, 80, 69, 92, 19}, "143ef1", -1174) + getPath());
                }
                this.stackSize--;
            } else if (iDoPeek == 2) {
                i--;
                if (i < 0) {
                    throw new JsonDataException(NPStringFog.decode(new byte[]{33, 76, 67, 1, 83, 64, 1, 80, 19, 5, 16, 66, 5, 88, 70, 1, 16, 86, 17, 64, 19, 19, 81, 71, 68}, "d43d04", -1380823305L) + peek() + NPStringFog.decode(new byte[]{22, 86, 64, 21, 19, 83, 66, 95, 20}, "6745c2", false) + getPath());
                }
                this.stackSize--;
            } else if (iDoPeek == 14 || iDoPeek == 10) {
                skipUnquotedValue();
            } else if (iDoPeek == 9 || iDoPeek == 13) {
                skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
            } else if (iDoPeek == 8 || iDoPeek == 12) {
                skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
            } else if (iDoPeek == 17) {
                this.buffer.skip(this.peekedNumberLength);
            } else if (iDoPeek == 18) {
                throw new JsonDataException(NPStringFog.decode(new byte[]{114, 78, 73, 3, 6, 76, 82, 82, 25, 7, 69, 78, 86, 90, 76, 3, 69, 90, 66, 66, 25, 17, 4, 75, 23}, "769fe8", -19018) + peek() + NPStringFog.decode(new byte[]{20, 3, 23, 67, 19, 88, 64, 10, 67}, "4bccc9", 7761) + getPath());
            }
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        this.pathNames[this.stackSize - 1] = NPStringFog.decode(new byte[]{94, 17, 91, 85}, "0d7985", -3.70859691E8d);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{126, 18, 87, 94, 103, 6, 85, 5, 93, 66, 29}, "4a805c", 1.133020826E9d) + this.source + NPStringFog.decode(new byte[]{29}, "41e860", true);
    }
}
