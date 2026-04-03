package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonStreamParser implements Iterator<JsonElement> {
    private final Object lock;
    private final JsonReader parser;

    public JsonStreamParser(Reader reader) {
        this.parser = new JsonReader(reader);
        this.parser.setLenient(true);
        this.lock = new Object();
    }

    public JsonStreamParser(String str) {
        this(new StringReader(str));
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z;
        synchronized (this.lock) {
            try {
                z = this.parser.peek() != JsonToken.END_DOCUMENT;
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
        return z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public JsonElement next() throws JsonParseException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        try {
            return Streams.parse(this.parser);
        } catch (JsonParseException e) {
            if (e.getCause() instanceof EOFException) {
                throw new NoSuchElementException();
            }
            throw e;
        } catch (OutOfMemoryError e2) {
            throw new JsonParseException(NPStringFog.decode(new byte[]{35, 0, 88, 89, 6, 81, 69, 17, 80, 71, 16, 92, 11, 6, 17, 127, 48, 122, 43, 65, 66, 90, 22, 71, 6, 4, 17, 65, 12, 21, 47, 18, 94, 91}, "ea15c5", 1.474152023E9d), e2);
        } catch (StackOverflowError e3) {
            throw new JsonParseException(NPStringFog.decode(new byte[]{112, 86, 12, 9, 3, 1, 22, 71, 4, 23, 21, 12, 88, 80, 69, 47, 53, 42, 120, 23, 22, 10, 19, 23, 85, 82, 69, 17, 9, 69, 124, 68, 10, 11}, "67eefe", 9.77502277E8d), e3);
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
