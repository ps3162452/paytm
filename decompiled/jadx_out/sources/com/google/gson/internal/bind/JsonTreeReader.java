package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonTreeReader extends JsonReader {
    private int[] pathIndices;
    private String[] pathNames;
    private Object[] stack;
    private int stackSize;
    private static final Reader UNREADABLE_READER = new Reader() { // from class: com.google.gson.internal.bind.JsonTreeReader.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object SENTINEL_CLOSED = new Object();

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JsonTreeReader$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public JsonTreeReader(JsonElement jsonElement) {
        super(UNREADABLE_READER);
        this.stack = new Object[32];
        this.stackSize = 0;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        push(jsonElement);
    }

    private void expect(JsonToken jsonToken) throws IOException {
        if (peek() != jsonToken) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 72, 20, 84, 82, 69, 80, 84, 68}, "50d111", true, true) + jsonToken + NPStringFog.decode(new byte[]{19, 1, 76, 76, 20, 65, 82, 16, 25}, "3c9846", 986) + peek() + locationString());
        }
    }

    private String locationString() {
        return NPStringFog.decode(new byte[]{24, 87, 69, 25, 18, 87, 76, 94, 17}, "8619b6", 1293990388L) + getPath();
    }

    private Object peekStack() {
        return this.stack[this.stackSize - 1];
    }

    private Object popStack() {
        Object[] objArr = this.stack;
        int i = this.stackSize - 1;
        this.stackSize = i;
        Object obj = objArr[i];
        this.stack[this.stackSize] = null;
        return obj;
    }

    private void push(Object obj) {
        if (this.stackSize == this.stack.length) {
            int i = this.stackSize * 2;
            this.stack = Arrays.copyOf(this.stack, i);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i);
        }
        Object[] objArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        objArr[i2] = obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginArray() throws IOException {
        expect(JsonToken.BEGIN_ARRAY);
        push(((JsonArray) peekStack()).iterator());
        this.pathIndices[this.stackSize - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginObject() throws IOException {
        expect(JsonToken.BEGIN_OBJECT);
        push(((JsonObject) peekStack()).entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.stack = new Object[]{SENTINEL_CLOSED};
        this.stackSize = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public void endArray() throws IOException {
        expect(JsonToken.END_ARRAY);
        popStack();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public void endObject() throws IOException {
        expect(JsonToken.END_OBJECT);
        popStack();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPath() {
        StringBuilder sbAppend = new StringBuilder().append('$');
        int i = 0;
        while (i < this.stackSize) {
            if (this.stack[i] instanceof JsonArray) {
                i++;
                if (this.stack[i] instanceof Iterator) {
                    sbAppend.append('[').append(this.pathIndices[i]).append(']');
                }
            } else if (this.stack[i] instanceof JsonObject) {
                i++;
                if (this.stack[i] instanceof Iterator) {
                    sbAppend.append('.');
                    if (this.pathNames[i] != null) {
                        sbAppend.append(this.pathNames[i]);
                    }
                }
            }
            i++;
        }
        return sbAppend.toString();
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean hasNext() throws IOException {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean nextBoolean() throws IOException {
        expect(JsonToken.BOOLEAN);
        boolean asBoolean = ((JsonPrimitive) popStack()).getAsBoolean();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
        return asBoolean;
    }

    @Override // com.google.gson.stream.JsonReader
    public double nextDouble() throws IOException {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 72, 18, 84, 82, 77, 1, 84, 66}, "d0b119", 1334936871L) + JsonToken.NUMBER + NPStringFog.decode(new byte[]{20, 84, 68, 18, 23, 18, 85, 69, 17}, "461f7e", 3.48543792E8d) + jsonTokenPeek + locationString());
        }
        double asDouble = ((JsonPrimitive) peekStack()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException(NPStringFog.decode(new byte[]{114, 102, 42, 42, 69, 0, 87, 71, 7, 13, 1, 21, 24, 123, 4, 42, 69, 7, 86, 81, 69, 13, 11, 0, 81, 91, 12, 16, 12, 3, 75, 15, 69}, "85edef", -5.23340531E8d) + asDouble);
        }
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
        return asDouble;
    }

    @Override // com.google.gson.stream.JsonReader
    public int nextInt() throws IOException {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 74, 22, 4, 83, 21, 82, 86, 70}, "72fa0a", 6.0539066E8f) + JsonToken.NUMBER + NPStringFog.decode(new byte[]{25, 87, 65, 68, 20, 71, 88, 70, 20}, "954040", -1356671056L) + jsonTokenPeek + locationString());
        }
        int asInt = ((JsonPrimitive) peekStack()).getAsInt();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
        return asInt;
    }

    @Override // com.google.gson.stream.JsonReader
    public long nextLong() throws IOException {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 26, 65, 3, 83, 21, 85, 6, 17}, "0b1f0a", -1121478971L) + JsonToken.NUMBER + NPStringFog.decode(new byte[]{66, 81, 22, 76, 70, 17, 3, 64, 67}, "b3c8ff", 404677514L) + jsonTokenPeek + locationString());
        }
        long asLong = ((JsonPrimitive) peekStack()).getAsLong();
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
        return asLong;
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextName() throws IOException {
        expect(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) peekStack()).next();
        String str = (String) entry.getKey();
        this.pathNames[this.stackSize - 1] = str;
        push(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    public void nextNull() throws IOException {
        expect(JsonToken.NULL);
        popStack();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextString() throws IOException {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.STRING && jsonTokenPeek != JsonToken.NUMBER) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 64, 18, 80, 85, 18, 83, 92, 66}, "68b56f", -373704966L) + JsonToken.STRING + NPStringFog.decode(new byte[]{69, 91, 16, 76, 20, 19, 4, 74, 69}, "e9e84d", -1.862893235E9d) + jsonTokenPeek + locationString());
        }
        String asString = ((JsonPrimitive) popStack()).getAsString();
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
        return asString;
    }

    @Override // com.google.gson.stream.JsonReader
    public JsonToken peek() throws IOException {
        if (this.stackSize == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object objPeekStack = peekStack();
        if (objPeekStack instanceof Iterator) {
            boolean z = this.stack[this.stackSize - 2] instanceof JsonObject;
            Iterator it = (Iterator) objPeekStack;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            push(it.next());
            return peek();
        }
        if (objPeekStack instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objPeekStack instanceof JsonArray) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (!(objPeekStack instanceof JsonPrimitive)) {
            if (objPeekStack instanceof JsonNull) {
                return JsonToken.NULL;
            }
            if (objPeekStack == SENTINEL_CLOSED) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{126, 64, 91, 86, 100, 84, 85, 87, 81, 74, 22, 88, 71, 19, 87, 84, 89, 66, 81, 87}, "434861", false));
            }
            throw new AssertionError();
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) objPeekStack;
        if (jsonPrimitive.isString()) {
            return JsonToken.STRING;
        }
        if (jsonPrimitive.isBoolean()) {
            return JsonToken.BOOLEAN;
        }
        if (jsonPrimitive.isNumber()) {
            return JsonToken.NUMBER;
        }
        throw new AssertionError();
    }

    public void promoteNameToValue() throws IOException {
        expect(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) peekStack()).next();
        push(entry.getValue());
        push(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    public void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.pathNames[this.stackSize - 2] = NPStringFog.decode(new byte[]{87, 20, 90, 14}, "9a6be5", 25860);
        } else {
            popStack();
            if (this.stackSize > 0) {
                this.pathNames[this.stackSize - 1] = NPStringFog.decode(new byte[]{10, 17, 85, 13}, "dd9a76", 7.90113601E8d);
            }
        }
        if (this.stackSize > 0) {
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return getClass().getSimpleName();
    }
}
