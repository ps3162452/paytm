package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;

    /* JADX INFO: loaded from: classes69.dex */
    private static class DummyTypeAdapterFactory implements TypeAdapterFactory {
        private DummyTypeAdapterFactory() {
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            throw new AssertionError(NPStringFog.decode(new byte[]{119, 3, 0, 76, 89, 75, 72, 66, 16, 80, 89, 76, 93, 6, 67, 86, 89, 77, 17, 0, 6, 24, 67, 74, 84, 6}, "1bc869", true));
        }
    }

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.constructorConstructor = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        JsonAdapter jsonAdapter = (JsonAdapter) typeToken.getRawType().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (TypeAdapter<T>) getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter);
    }

    TypeAdapter<?> getTypeAdapter(ConstructorConstructor constructorConstructor, Gson gson, TypeToken<?> typeToken, JsonAdapter jsonAdapter) {
        TypeAdapter<?> treeTypeAdapter;
        Object objConstruct = constructorConstructor.get(TypeToken.get((Class) jsonAdapter.value())).construct();
        if (objConstruct instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) objConstruct;
        } else if (objConstruct instanceof TypeAdapterFactory) {
            treeTypeAdapter = ((TypeAdapterFactory) objConstruct).create(gson, typeToken);
        } else {
            if (!(objConstruct instanceof JsonSerializer) && !(objConstruct instanceof JsonDeserializer)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 15, 16, 7, 89, 90, 6, 65, 7, 18, 65, 86, 15, 17, 18, 70, 65, 92, 66, 3, 15, 8, 81, 19, 3, 15, 70, 15, 91, 64, 22, 0, 8, 5, 80, 19, 13, 7, 70}, "baff53", true, true) + objConstruct.getClass().getName() + NPStringFog.decode(new byte[]{67, 85, 21, 22, 5, 66, 35, 126, 21, 89, 10, 35, 7, 85, 22, 66, 1, 16, 67, 82, 9, 68, 68}, "c4f6db", -9575) + typeToken.toString() + NPStringFog.decode(new byte[]{72, 66, 116, 44, 17, 88, 8, 35, 80, 7, 18, 67, 3, 16, 20, 16, 3, 91, 19, 7, 20, 11, 23, 68, 18, 66, 86, 3, 66, 86, 70, 54, 77, 22, 7, 118, 2, 3, 68, 18, 7, 69, 74, 66, 96, 31, 18, 82, 39, 6, 85, 22, 22, 82, 20, 36, 85, 5, 22, 88, 20, 27, 24, 70, 40, 68, 9, 12, 103, 3, 16, 94, 7, 14, 93, 28, 7, 69, 70, 13, 70, 70, 40, 68, 9, 12, 112, 3, 17, 82, 20, 11, 85, 10, 11, 77, 3, 16, 26}, "fb4fb7", false));
            }
            treeTypeAdapter = new TreeTypeAdapter<>(objConstruct instanceof JsonSerializer ? (JsonSerializer) objConstruct : null, objConstruct instanceof JsonDeserializer ? (JsonDeserializer) objConstruct : null, gson, typeToken, null);
        }
        return (treeTypeAdapter == null || !jsonAdapter.nullSafe()) ? treeTypeAdapter : treeTypeAdapter.nullSafe();
    }
}
