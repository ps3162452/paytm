package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ToNumberPolicy;
import com.google.gson.ToNumberStrategy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public final class NumberTypeAdapter extends TypeAdapter<Number> {
    private static final TypeAdapterFactory LAZILY_PARSED_NUMBER_FACTORY = newFactory(ToNumberPolicy.LAZILY_PARSED_NUMBER);
    private final ToNumberStrategy toNumberStrategy;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.NumberTypeAdapter$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private NumberTypeAdapter(ToNumberStrategy toNumberStrategy) {
        this.toNumberStrategy = toNumberStrategy;
    }

    public static TypeAdapterFactory getFactory(ToNumberStrategy toNumberStrategy) {
        return toNumberStrategy == ToNumberPolicy.LAZILY_PARSED_NUMBER ? LAZILY_PARSED_NUMBER_FACTORY : newFactory(toNumberStrategy);
    }

    private static TypeAdapterFactory newFactory(ToNumberStrategy toNumberStrategy) {
        return new TypeAdapterFactory(new NumberTypeAdapter(toNumberStrategy)) { // from class: com.google.gson.internal.bind.NumberTypeAdapter.1
            final NumberTypeAdapter val$adapter;

            {
                this.val$adapter = numberTypeAdapter;
            }

            @Override // com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() == Number.class) {
                    return this.val$adapter;
                }
                return null;
            }
        };
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public Number read2(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i = AnonymousClass2.$SwitchMap$com$google$gson$stream$JsonToken[jsonTokenPeek.ordinal()];
        if (i == 1) {
            jsonReader.nextNull();
            return null;
        }
        if (i == 2 || i == 3) {
            return this.toNumberStrategy.readNumber(jsonReader);
        }
        throw new JsonSyntaxException(NPStringFog.decode(new byte[]{116, 74, 72, 81, 5, 77, 88, 92, 95, 20, 8, 76, 92, 80, 93, 70, 74, 25, 86, 93, 76, 14, 70}, "1284f9", true) + jsonTokenPeek + NPStringFog.decode(new byte[]{3, 23, 7, 23, 69, 70, 89, 67, 14, 67}, "87fce6", 17875) + jsonReader.getPath());
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}
