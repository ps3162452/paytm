package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonParser {
    @Deprecated
    public JsonParser() {
    }

    public static JsonElement parseReader(JsonReader jsonReader) throws JsonSyntaxException, JsonIOException {
        boolean zIsLenient = jsonReader.isLenient();
        jsonReader.setLenient(true);
        try {
            try {
                return Streams.parse(jsonReader);
            } catch (OutOfMemoryError e) {
                throw new JsonParseException(NPStringFog.decode(new byte[]{114, 5, 89, 91, 87, 5, 20, 20, 81, 69, 65, 8, 90, 3, 16, 125, 97, 46, 122, 68, 67, 88, 71, 19, 87, 1, 10, 23}, "4d072a", true, false) + jsonReader + NPStringFog.decode(new byte[]{20, 70, 95, 22, 126, 70, 91, 92}, "420645", false, false), e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException(NPStringFog.decode(new byte[]{32, 80, 10, 15, 0, 83, 70, 65, 2, 17, 22, 94, 8, 86, 67, 41, 54, 120, 40, 17, 16, 12, 16, 69, 5, 84, 89, 67}, "f1cce7", 1.907745939E9d) + jsonReader + NPStringFog.decode(new byte[]{66, 18, 93, 21, 127, 16, 13, 8}, "bf255c", 1803497801L), e2);
            }
        } finally {
            jsonReader.setLenient(zIsLenient);
        }
    }

    public static JsonElement parseReader(Reader reader) throws JsonSyntaxException, JsonIOException {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            JsonElement reader2 = parseReader(jsonReader);
            if (reader2.isJsonNull() || jsonReader.peek() == JsonToken.END_DOCUMENT) {
                return reader2;
            }
            throw new JsonSyntaxException(NPStringFog.decode(new byte[]{116, 88, 85, 23, 92, 93, 68, 17, 82, 88, 92, 65, 69, 92, 84, 23, 70, 90, 85, 17, 84, 89, 70, 91, 66, 84, 17, 83, 93, 81, 69, 92, 84, 89, 70, 28}, "011722", -1.706233E9f));
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (IOException e2) {
            throw new JsonIOException(e2);
        } catch (NumberFormatException e3) {
            throw new JsonSyntaxException(e3);
        }
    }

    public static JsonElement parseString(String str) throws JsonSyntaxException {
        return parseReader(new StringReader(str));
    }

    @Deprecated
    public JsonElement parse(JsonReader jsonReader) throws JsonSyntaxException, JsonIOException {
        return parseReader(jsonReader);
    }

    @Deprecated
    public JsonElement parse(Reader reader) throws JsonSyntaxException, JsonIOException {
        return parseReader(reader);
    }

    @Deprecated
    public JsonElement parse(String str) throws JsonSyntaxException {
        return parseString(str);
    }
}
