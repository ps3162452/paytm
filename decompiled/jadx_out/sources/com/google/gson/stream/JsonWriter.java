package com.google.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private String deferredName;
    private boolean htmlSafe;
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format(NPStringFog.decode(new byte[]{101, 77, 19, 1, 7, 72}, "986130", true), Integer.valueOf(i));
        }
        REPLACEMENT_CHARS[34] = NPStringFog.decode(new byte[]{56, 17}, "d3fde7", 31395);
        REPLACEMENT_CHARS[92] = NPStringFog.decode(new byte[]{61, 104}, "a4c733", -431706977L);
        REPLACEMENT_CHARS[9] = NPStringFog.decode(new byte[]{106, 70}, "62a845", 2.28180007E8d);
        REPLACEMENT_CHARS[8] = NPStringFog.decode(new byte[]{62, 87}, "b5096f", -2273);
        REPLACEMENT_CHARS[10] = NPStringFog.decode(new byte[]{57, 11}, "eee1b4", 1968071824L);
        REPLACEMENT_CHARS[13] = NPStringFog.decode(new byte[]{57, 16}, "eb204c", false, true);
        REPLACEMENT_CHARS[12] = NPStringFog.decode(new byte[]{107, 84}, "729d1f", -1.3390616E9f);
        HTML_SAFE_REPLACEMENT_CHARS = (String[]) REPLACEMENT_CHARS.clone();
        HTML_SAFE_REPLACEMENT_CHARS[60] = NPStringFog.decode(new byte[]{104, 76, 5, 6, 10, 5}, "49569f", false);
        HTML_SAFE_REPLACEMENT_CHARS[62] = NPStringFog.decode(new byte[]{111, 20, 4, 86, 85, 85}, "3a4ff0", true);
        HTML_SAFE_REPLACEMENT_CHARS[38] = NPStringFog.decode(new byte[]{107, 20, 0, 6, 84, 6}, "7a06f0", false, false);
        HTML_SAFE_REPLACEMENT_CHARS[61] = NPStringFog.decode(new byte[]{61, 70, 9, 9, 82, 0}, "a399ad", true);
        HTML_SAFE_REPLACEMENT_CHARS[39] = NPStringFog.decode(new byte[]{104, 69, 6, 84, 83, 0}, "406da7", -657384376L);
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.separator = NPStringFog.decode(new byte[]{11}, "1acae9", -1853074998L);
        this.serializeNulls = true;
        if (writer == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{93, 68, 66, 16, 15, 12, 18, 95, 67, 92, 94}, "216021", -1.635421749E9d));
        }
        this.out = writer;
    }

    private void beforeName() throws IOException {
        int iPeek = peek();
        if (iPeek == 5) {
            this.out.write(44);
        } else if (iPeek != 3) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{127, 7, 64, 70, 89, 93, 86, 66, 67, 64, 95, 81, 93, 7, 94, 28}, "1b3203", 1.5163653E9f));
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() throws IOException {
        switch (peek()) {
            case 1:
                replaceTop(2);
                newline();
                return;
            case 2:
                this.out.append(',');
                newline();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{45, 92, 22, 67, 94, 15, 4, 25, 21, 69, 88, 3, 15, 92, 8, 25}, "c9e77a", 4.240378E8f));
            case 4:
                this.out.append((CharSequence) this.separator);
                replaceTop(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.lenient) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{47, 106, 127, 120, 16, 14, 16, 74, 68, 22, 88, 2, 19, 92, 16, 89, 94, 15, 28, 25, 95, 88, 85, 67, 17, 86, 64, 27, 92, 6, 19, 92, 92, 22, 70, 2, 9, 76, 85, 24}, "e9060c", -2.0516803E8f));
                }
                break;
        }
        replaceTop(7);
    }

    private JsonWriter close(int i, int i2, char c) throws IOException {
        int iPeek = peek();
        if (iPeek != i2 && iPeek != i) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 4, 17, 69, 92, 11, 2, 65, 18, 67, 90, 7, 9, 4, 15, 31}, "eab15e", 1.851933501E9d));
        }
        if (this.deferredName != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 5, 12, 84, 90, 95, 15, 3, 66, 93, 87, 91, 4, 94, 66}, "adb366", -5456) + this.deferredName);
        }
        this.stackSize--;
        if (iPeek == i2) {
            newline();
        }
        this.out.write(c);
        return this;
    }

    private void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write(10);
        int i = this.stackSize;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.indent);
        }
    }

    private JsonWriter open(int i, char c) throws IOException {
        beforeValue();
        push(i);
        this.out.write(c);
        return this;
    }

    private int peek() {
        if (this.stackSize == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 65, 13, 15, 96, 69, 8, 70, 7, 19, 23, 94, 18, 18, 1, 13, 88, 68, 4, 86, 76}, "a2ba77", -29093));
        }
        return this.stack[this.stackSize - 1];
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            this.stack = Arrays.copyOf(this.stack, this.stackSize * 2);
        }
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void string(java.lang.String r10) throws java.io.IOException {
        /*
            r9 = this;
            r8 = 34
            r7 = 6
            r1 = 0
            boolean r0 = r9.htmlSafe
            if (r0 == 0) goto L26
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.HTML_SAFE_REPLACEMENT_CHARS
        La:
            java.io.Writer r2 = r9.out
            r2.write(r8)
            int r4 = r10.length()
            r3 = r1
        L14:
            if (r3 >= r4) goto L5e
            char r2 = r10.charAt(r3)
            r5 = 128(0x80, float:1.8E-43)
            if (r2 >= r5) goto L29
            r2 = r0[r2]
            if (r2 != 0) goto L3a
        L22:
            int r2 = r3 + 1
            r3 = r2
            goto L14
        L26:
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.REPLACEMENT_CHARS
            goto La
        L29:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r2 != r5) goto L4b
            byte[] r2 = new byte[r7]
            r2 = {x006e: FILL_ARRAY_DATA , data: [56, 17, 4, 0, 81, 13} // fill-array
            java.lang.String r5 = "dd60c5"
            r6 = 12265(0x2fe9, float:1.7187E-41)
            java.lang.String r2 = n.NPStringFog.decode(r2, r5, r6)
        L3a:
            if (r1 >= r3) goto L43
            java.io.Writer r5 = r9.out
            int r6 = r3 - r1
            r5.write(r10, r1, r6)
        L43:
            java.io.Writer r1 = r9.out
            r1.write(r2)
            int r1 = r3 + 1
            goto L22
        L4b:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r2 != r5) goto L22
            byte[] r2 = new byte[r7]
            r2 = {x0076: FILL_ARRAY_DATA , data: [61, 16, 5, 5, 81, 8} // fill-array
            java.lang.String r5 = "ae75c1"
            r6 = -829882613(0xffffffffce88ff0b, float:-1.1492079E9)
            java.lang.String r2 = n.NPStringFog.decode(r2, r5, r6)
            goto L3a
        L5e:
            if (r1 >= r4) goto L67
            java.io.Writer r0 = r9.out
            int r2 = r4 - r1
            r0.write(r10, r1, r2)
        L67:
            java.io.Writer r0 = r9.out
            r0.write(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.string(java.lang.String):void");
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return open(1, '[');
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return open(3, '{');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.stackSize;
        if (i > 1 || (i == 1 && this.stack[i - 1] != 7)) {
            throw new IOException(NPStringFog.decode(new byte[]{40, 10, 5, 13, 94, 71, 13, 1, 18, 7, 19, 83, 14, 7, 19, 15, 86, 89, 21}, "adfb37", true, true));
        }
        this.stackSize = 0;
    }

    public JsonWriter endArray() throws IOException {
        return close(1, 2, ']');
    }

    public JsonWriter endObject() throws IOException {
        return close(3, 5, '}');
    }

    public void flush() throws IOException {
        if (this.stackSize == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 64, 13, 15, 99, 17, 94, 71, 7, 19, 20, 10, 68, 19, 1, 13, 91, 16, 82, 87, 76}, "73ba4c", 1.05393165E9f));
        }
        this.out.flush();
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public JsonWriter jsonValue(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append((CharSequence) str);
        return this;
    }

    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{86, 82, 84, 87, 67, 5, 5, 19, 87, 71, 15, 84}, "8392c8", false));
        }
        if (this.deferredName != null) {
            throw new IllegalStateException();
        }
        if (this.stackSize == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{47, 67, 90, 92, 101, 74, 12, 68, 80, 64, 18, 81, 22, 16, 86, 94, 93, 75, 0, 84, 27}, "e05228", true));
        }
        this.deferredName = str;
        return this;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName == null) {
            beforeValue();
            this.out.write(NPStringFog.decode(new byte[]{88, 19, 84, 89}, "6f853c", 6.1016868E7d));
        } else if (this.serializeNulls) {
            writeDeferredName();
            beforeValue();
            this.out.write(NPStringFog.decode(new byte[]{88, 19, 84, 89}, "6f853c", 6.1016868E7d));
        } else {
            this.deferredName = null;
        }
        return this;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.indent = null;
            this.separator = NPStringFog.decode(new byte[]{14}, "4494bd", -1279041992L);
        } else {
            this.indent = str;
            this.separator = NPStringFog.decode(new byte[]{92, 20}, "f44a2d", 7.5905146E8f);
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public JsonWriter value(double d) throws IOException {
        writeDeferredName();
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 71, 9, 80, 17, 93, 86, 18, 18, 84, 15, 65, 80, 65, 68, 88, 22, 71, 65, 18, 6, 80, 67, 82, 92, 92, 13, 65, 6, 24, 21, 80, 17, 65, 67, 67, 84, 65, 68}, "52d5c4", false) + d);
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    public JsonWriter value(long j) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
        return this;
    }

    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write(bool.booleanValue() ? NPStringFog.decode(new byte[]{18, 16, 71, 80}, "fb25a7", -2.54930319E8d) : NPStringFog.decode(new byte[]{95, 83, 92, 65, 87}, "92022e", true, true));
        return this;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String string = number.toString();
        if (!this.lenient && (string.equals(NPStringFog.decode(new byte[]{79, 43, 95, 84, 81, 93, 11, 22, 72}, "bb1283", true, true)) || string.equals(NPStringFog.decode(new byte[]{42, 93, 83, 89, 12, 90, 23, 74}, "c350b3", -224359837L)) || string.equals(NPStringFog.decode(new byte[]{124, 5, 118}, "2d864d", false)))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 70, 8, 80, 69, 92, 0, 19, 19, 84, 91, 64, 6, 64, 69, 88, 66, 70, 23, 19, 7, 80, 23, 83, 10, 93, 12, 65, 82, 25, 67, 81, 16, 65, 23, 66, 2, 64, 69}, "c3e575", 4.15723538E8d) + number);
        }
        beforeValue();
        this.out.append((CharSequence) string);
        return this;
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(str);
        return this;
    }

    public JsonWriter value(boolean z) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(z ? NPStringFog.decode(new byte[]{70, 67, 16, 3}, "21ef72", 6497) : NPStringFog.decode(new byte[]{0, 4, 13, 71, 93}, "fea482", true));
        return this;
    }
}
