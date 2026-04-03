package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import n.NPStringFog;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes64.dex */
public abstract class JsonReader implements Closeable {
    private static final String[] REPLACEMENT_CHARS = new String[128];
    boolean failOnUnknown;
    boolean lenient;
    int stackSize;
    int[] scopes = new int[32];
    String[] pathNames = new String[32];
    int[] pathIndices = new int[32];

    public static final class Options {
        final okio.Options doubleQuoteSuffix;
        final String[] strings;

        private Options(String[] strArr, okio.Options options) {
            this.strings = strArr;
            this.doubleQuoteSuffix = options;
        }

        public static Options of(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    JsonReader.string(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.readByteString();
                }
                return new Options((String[]) strArr.clone(), okio.Options.of(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format(NPStringFog.decode(new byte[]{61, 68, 21, 86, 81, 28}, "a10fed", -12094), Integer.valueOf(i));
        }
        REPLACEMENT_CHARS[34] = NPStringFog.decode(new byte[]{62, 21}, "b7b945", 596000989L);
        REPLACEMENT_CHARS[92] = NPStringFog.decode(new byte[]{110, 63}, "2c16a0", true);
        REPLACEMENT_CHARS[9] = NPStringFog.decode(new byte[]{62, 68}, "b053b4", 1.8975451E9f);
        REPLACEMENT_CHARS[8] = NPStringFog.decode(new byte[]{100, 1}, "8cb98a", false);
        REPLACEMENT_CHARS[10] = NPStringFog.decode(new byte[]{101, 8}, "9feccd", 8.27935184E8d);
        REPLACEMENT_CHARS[13] = NPStringFog.decode(new byte[]{62, 70}, "b40351", -17854);
        REPLACEMENT_CHARS[12] = NPStringFog.decode(new byte[]{58, 0}, "ff3c99", -1738719014L);
    }

    JsonReader() {
    }

    public static JsonReader of(BufferedSource bufferedSource) {
        return new JsonUtf8Reader(bufferedSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void string(okio.BufferedSink r11, java.lang.String r12) throws java.io.IOException {
        /*
            r10 = 34
            r7 = 6
            r3 = 0
            java.lang.String[] r4 = com.airbnb.lottie.parser.moshi.JsonReader.REPLACEMENT_CHARS
            r11.writeByte(r10)
            int r5 = r12.length()
            r2 = r3
            r0 = r3
        Lf:
            if (r2 >= r5) goto L50
            char r1 = r12.charAt(r2)
            r6 = 128(0x80, float:1.8E-43)
            if (r1 >= r6) goto L21
            r1 = r4[r1]
            if (r1 != 0) goto L30
        L1d:
            int r1 = r2 + 1
            r2 = r1
            goto Lf
        L21:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r1 != r6) goto L3b
            byte[] r1 = new byte[r7]
            r1 = {x005a: FILL_ARRAY_DATA , data: [62, 22, 0, 6, 86, 12} // fill-array
            java.lang.String r6 = "bc26d4"
            java.lang.String r1 = n.NPStringFog.decode(r1, r6, r3, r3)
        L30:
            if (r0 >= r2) goto L35
            r11.writeUtf8(r12, r0, r2)
        L35:
            r11.writeUtf8(r1)
            int r0 = r2 + 1
            goto L1d
        L3b:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r1 != r6) goto L1d
            byte[] r1 = new byte[r7]
            r1 = {x0062: FILL_ARRAY_DATA , data: [62, 23, 80, 6, 11, 0} // fill-array
            java.lang.String r6 = "bbb699"
            r8 = -4483355059224051712(0xc1c7ec53d5000000, double:-8.0272785E8)
            java.lang.String r1 = n.NPStringFog.decode(r1, r6, r8)
            goto L30
        L50:
            if (r0 >= r5) goto L55
            r11.writeUtf8(r12, r0, r5)
        L55:
            r11.writeByte(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.string(okio.BufferedSink, java.lang.String):void");
    }

    public abstract void beginArray() throws IOException;

    public abstract void beginObject() throws IOException;

    public abstract void endArray() throws IOException;

    public abstract void endObject() throws IOException;

    public final String getPath() {
        return JsonScope.getPath(this.stackSize, this.scopes, this.pathNames, this.pathIndices);
    }

    public abstract boolean hasNext() throws IOException;

    public abstract boolean nextBoolean() throws IOException;

    public abstract double nextDouble() throws IOException;

    public abstract int nextInt() throws IOException;

    public abstract String nextName() throws IOException;

    public abstract String nextString() throws IOException;

    public abstract Token peek() throws IOException;

    final void pushScope(int i) {
        if (this.stackSize == this.scopes.length) {
            if (this.stackSize == 256) {
                throw new JsonDataException(NPStringFog.decode(new byte[]{47, 84, 23, 21, 11, 15, 6, 17, 16, 14, 13, 65, 5, 84, 1, 17, 66, 0, 21, 17}, "a1daba", true) + getPath());
            }
            this.scopes = Arrays.copyOf(this.scopes, this.scopes.length * 2);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, this.pathNames.length * 2);
            this.pathIndices = Arrays.copyOf(this.pathIndices, this.pathIndices.length * 2);
        }
        int[] iArr = this.scopes;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    public abstract int selectName(Options options) throws IOException;

    public abstract void skipName() throws IOException;

    public abstract void skipValue() throws IOException;

    final JsonEncodingException syntaxError(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + NPStringFog.decode(new byte[]{22, 88, 18, 17, 21, 4, 66, 81, 70}, "69f1ee", -1326139766L) + getPath());
    }
}
