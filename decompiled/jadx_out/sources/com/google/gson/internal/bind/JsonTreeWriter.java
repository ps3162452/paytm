package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonTreeWriter extends JsonWriter {
    private String pendingName;
    private JsonElement product;
    private final List<JsonElement> stack;
    private static final Writer UNWRITABLE_WRITER = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive(NPStringFog.decode(new byte[]{91, 89, 11, 65, 6, 93}, "85d2c9", -276084945L));

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
        this.stack = new ArrayList();
        this.product = JsonNull.INSTANCE;
    }

    private JsonElement peek() {
        return this.stack.get(this.stack.size() - 1);
    }

    private void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
            return;
        }
        if (this.stack.isEmpty()) {
            this.product = jsonElement;
            return;
        }
        JsonElement jsonElementPeek = peek();
        if (!(jsonElementPeek instanceof JsonArray)) {
            throw new IllegalStateException();
        }
        ((JsonArray) jsonElementPeek).add(jsonElement);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginArray() throws IOException {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginObject() throws IOException {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.stack.isEmpty()) {
            throw new IOException(NPStringFog.decode(new byte[]{42, 93, 87, 87, 90, 21, 15, 86, 64, 93, 23, 1, 12, 80, 65, 85, 82, 11, 23}, "c3487e", 98276415L));
        }
        this.stack.add(SENTINEL_CLOSED);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endArray() throws IOException {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (!(peek() instanceof JsonArray)) {
            throw new IllegalStateException();
        }
        this.stack.remove(this.stack.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endObject() throws IOException {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (!(peek() instanceof JsonObject)) {
            throw new IllegalStateException();
        }
        this.stack.remove(this.stack.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    public JsonElement get() {
        if (this.stack.isEmpty()) {
            return this.product;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 29, 65, 4, 81, 67, 7, 1, 17, 14, 92, 82, 66, 47, 98, 46, 124, 23, 7, 9, 84, 12, 87, 89, 22, 69, 83, 20, 70, 23, 21, 4, 66, 65}, "be1a27", false) + this.stack);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{92, 7, 11, 83, 18, 95, 15, 70, 8, 67, 94, 14}, "2ff62b", 2.0891407E9f));
        }
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (!(peek() instanceof JsonObject)) {
            throw new IllegalStateException();
        }
        this.pendingName = str;
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter nullValue() throws IOException {
        put(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(double d) throws IOException {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 99, 126, 126, 24, 84, 95, 66, 83, 89, 92, 65, 16, 126, 80, 126, 24, 83, 94, 84, 17, 89, 86, 84, 89, 94, 88, 68, 81, 87, 67, 10, 17}, "001082", 8.74585622E8d) + d);
        }
        put(new JsonPrimitive(Double.valueOf(d)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(long j) throws IOException {
        put(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        put(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 50, 124, 127, 25, 3, 89, 19, 81, 88, 93, 22, 22, 47, 82, 127, 25, 4, 88, 5, 19, 88, 87, 3, 95, 15, 90, 69, 80, 0, 69, 91, 19}, "6a319e", -1428396127L) + number);
            }
        }
        put(new JsonPrimitive(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        put(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(boolean z) throws IOException {
        put(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }
}
