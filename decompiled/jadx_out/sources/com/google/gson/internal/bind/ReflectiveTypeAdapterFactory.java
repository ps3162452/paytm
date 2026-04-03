package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.reflect.ReflectionAccessor;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ReflectionAccessor accessor = ReflectionAccessor.getInstance();
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass2 extends BoundField {
        final ReflectiveTypeAdapterFactory this$0;
        final Method val$accessor;
        final boolean val$blockInaccessible;
        final boolean val$isPrimitive;
        final boolean val$isStaticFinalField;
        final TypeAdapter val$typeAdapter;
        final TypeAdapter val$writeTypeAdapter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, Field field, boolean z, Method method, TypeAdapter typeAdapter, TypeAdapter typeAdapter2, boolean z2, boolean z3) {
            super(str, field);
            this.this$0 = reflectiveTypeAdapterFactory;
            this.val$blockInaccessible = z;
            this.val$accessor = method;
            this.val$writeTypeAdapter = typeAdapter;
            this.val$typeAdapter = typeAdapter2;
            this.val$isPrimitive = z2;
            this.val$isStaticFinalField = z3;
        }

        void readIntoArray(JsonReader jsonReader, int i, Object[] objArr) throws JsonParseException, IOException {
            Object obj = this.val$typeAdapter.read2(jsonReader);
            if (obj != null || !this.val$isPrimitive) {
                objArr[i] = obj;
                return;
            }
            throw new JsonParseException(NPStringFog.decode(new byte[]{94, 17, 88, 93, 24, 12, 67, 68, 90, 94, 76, 69, 81, 8, 88, 94, 79, 0, 84, 68, 85, 66, 24, 19, 81, 8, 65, 84, 24, 3, 95, 22, 20, 67, 93, 6, 95, 22, 80, 17, 91, 10, 93, 20, 91, 95, 93, 11, 68, 68, 19}, "0d418e", true) + this.fieldName + NPStringFog.decode(new byte[]{31, 17, 94, 86, 65, 64, 74, 88, 92, 89, 21, 89, 78, 84, 17, 68, 24, 64, 93, 10, 17, 81, 21, 16, 72, 80, 69, 88, 65}, "8110a0", -1.02486624E9f) + jsonReader.getPath());
        }

        void readIntoField(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
            Object obj2 = this.val$typeAdapter.read2(jsonReader);
            if (obj2 == null && this.val$isPrimitive) {
                return;
            }
            if (this.val$blockInaccessible) {
                ReflectiveTypeAdapterFactory.access$000(obj, this.field);
            } else if (this.val$isStaticFinalField) {
                throw new JsonIOException(NPStringFog.decode(new byte[]{122, 87, 95, 12, 90, 23, 25, 69, 84, 22, 21, 21, 88, 90, 68, 7, 21, 12, 95, 22, 22, 17, 65, 2, 77, 95, 82, 66, 83, 10, 87, 87, 93, 69, 21}, "961b5c", -1483868894L) + ReflectionHelper.getAccessibleObjectDescription(this.field, false));
            }
            this.field.set(obj, obj2);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
        void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
            Object objInvoke;
            if (this.val$blockInaccessible) {
                Method method = this.val$accessor;
                if (method == null) {
                    ReflectiveTypeAdapterFactory.access$000(obj, this.field);
                } else {
                    ReflectiveTypeAdapterFactory.access$000(obj, method);
                }
            }
            Method method2 = this.val$accessor;
            if (method2 != null) {
                try {
                    objInvoke = method2.invoke(obj, new Object[0]);
                } catch (InvocationTargetException e) {
                    throw new JsonIOException(NPStringFog.decode(new byte[]{116, 1, 6, 81, 22, 71, 90, 16, 69}, "5be4e4", false) + ReflectionHelper.getAccessibleObjectDescription(this.val$accessor, false) + NPStringFog.decode(new byte[]{66, 70, 93, 68, 92, 69, 66, 87, 77, 85, 92, 66, 22, 91, 90, 88}, "b25692", -8.26090016E8d), e.getCause());
                }
            } else {
                objInvoke = this.field.get(obj);
            }
            if (objInvoke == obj) {
                return;
            }
            jsonWriter.name(this.serializedName);
            this.val$writeTypeAdapter.write(jsonWriter, objInvoke);
        }
    }

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        @Override // com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public T read2(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T tConstruct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = this.boundFields.get(jsonReader.nextName());
                    if (boundField == null || !boundField.deserialized) {
                        jsonReader.skipValue();
                    } else {
                        boundField.read(jsonReader, tConstruct);
                    }
                }
                jsonReader.endObject();
                return tConstruct;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.writeField(t)) {
                        jsonWriter.name(boundField.name);
                        boundField.write(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        protected BoundField(String str, boolean z, boolean z2) {
            this.name = str;
            this.serialized = z;
            this.deserialized = z2;
        }

        abstract void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        abstract void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;

        abstract boolean writeField(Object obj) throws IllegalAccessException, IOException;
    }

    /* JADX INFO: loaded from: classes69.dex */
    private static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        private final ObjectConstructor<T> constructor;

        FieldReflectionAdapter(ObjectConstructor<T> objectConstructor, FieldsData fieldsData) {
            super(fieldsData);
            this.constructor = objectConstructor;
        }

        T createAccumulator() {
            return this.constructor.construct();
        }

        T finalize(T t) {
            return t;
        }

        void readField(T t, JsonReader jsonReader, BoundField boundField) throws IllegalAccessException, IOException {
            boundField.readIntoField(jsonReader, t);
        }
    }

    /* JADX INFO: loaded from: classes69.dex */
    private static class FieldsData {
        public static final FieldsData EMPTY = new FieldsData(Collections.emptyMap(), Collections.emptyList());
        public final Map<String, BoundField> deserializedFields;
        public final List<BoundField> serializedFields;

        public FieldsData(Map<String, BoundField> map, List<BoundField> list) {
            this.deserializedFields = map;
            this.serializedFields = list;
        }
    }

    /* JADX INFO: loaded from: classes69.dex */
    private static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        static final Map<Class<?>, Object> PRIMITIVE_DEFAULTS = primitiveDefaults();
        private final Map<String, Integer> componentIndices;
        private final Constructor<T> constructor;
        private final Object[] constructorArgsDefaults;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RecordAdapter(Class<T> cls, FieldsData fieldsData, boolean z) {
            super(fieldsData);
            this.componentIndices = new HashMap();
            Constructor<T> canonicalRecordConstructor = ReflectionHelper.getCanonicalRecordConstructor(cls);
            this.constructor = canonicalRecordConstructor;
            if (z) {
                ReflectiveTypeAdapterFactory.access$000(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = ReflectionHelper.getRecordComponentNames(cls);
            for (int i = 0; i < recordComponentNames.length; i++) {
                this.componentIndices.put(recordComponentNames[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.constructor.getParameterTypes();
            this.constructorArgsDefaults = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.constructorArgsDefaults[i2] = PRIMITIVE_DEFAULTS.get(parameterTypes[i2]);
            }
        }

        private static Map<Class<?>, Object> primitiveDefaults() {
            HashMap map = new HashMap();
            map.put(Byte.TYPE, (byte) 0);
            map.put(Short.TYPE, (short) 0);
            map.put(Integer.TYPE, 0);
            map.put(Long.TYPE, 0L);
            map.put(Float.TYPE, Float.valueOf(0.0f));
            map.put(Double.TYPE, Double.valueOf(0.0d));
            map.put(Character.TYPE, (char) 0);
            map.put(Boolean.TYPE, false);
            return map;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object[] createAccumulator() {
            return (Object[]) this.constructorArgsDefaults.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public T finalize(Object[] objArr) {
            try {
                return this.constructor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException(NPStringFog.decode(new byte[]{35, 81, 15, 90, 93, 0, 69, 68, 9, 22, 81, 10, 19, 95, 13, 83, 24, 7, 10, 94, 21, 66, 74, 17, 6, 68, 9, 68, 24, 67}, "e0f68d", 9.61996464E8d) + ReflectionHelper.constructorToString(this.constructor) + NPStringFog.decode(new byte[]{20, 16, 69, 81, 71, 95, 19, 81, 64, 95, 64, 23}, "302837", 1870) + Arrays.toString(objArr), e);
            } catch (InstantiationException e3) {
                e = e3;
                throw new RuntimeException(NPStringFog.decode(new byte[]{35, 81, 15, 90, 93, 0, 69, 68, 9, 22, 81, 10, 19, 95, 13, 83, 24, 7, 10, 94, 21, 66, 74, 17, 6, 68, 9, 68, 24, 67}, "e0f68d", 9.61996464E8d) + ReflectionHelper.constructorToString(this.constructor) + NPStringFog.decode(new byte[]{20, 16, 69, 81, 71, 95, 19, 81, 64, 95, 64, 23}, "302837", 1870) + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{32, 3, 94, 84, 82, 80, 70, 22, 88, 24, 94, 90, 16, 13, 92, 93, 23, 87, 9, 12, 68, 76, 69, 65, 5, 22, 88, 74, 23, 19}, "fb7874", 22331) + ReflectionHelper.constructorToString(this.constructor) + NPStringFog.decode(new byte[]{23, 25, 18, 92, 66, 11, 16, 88, 23, 82, 69, 67}, "09e56c", -16593) + Arrays.toString(objArr), e4.getCause());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void readField(Object[] objArr, JsonReader jsonReader, BoundField boundField) throws IOException {
            Integer num = this.componentIndices.get(boundField.fieldName);
            if (num != null) {
                boundField.readIntoArray(jsonReader, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 14, 16, 89, 84, 16, 11, 14, 17, 21, 86, 89, 11, 5, 69, 65, 88, 85, 69, 8, 11, 81, 85, 72, 69, 8, 11, 21, 68, 88, 0, 65, 6, 90, 94, 67, 17, 19, 16, 86, 68, 95, 23, 65, 66}, "eae500", 957885970L) + ReflectionHelper.constructorToString(this.constructor) + NPStringFog.decode(new byte[]{19, 23, 7, 86, 64, 66, 82, 94, 4, 85, 86, 66, 67, 94, 21, 81, 18, 12, 85, 90, 4, 25, 21}, "47a92b", false) + boundField.fieldName + NPStringFog.decode(new byte[]{18, 73, 19, 76, 92, 84, 87, 9, 86, 25, 70, 90, 21, 1, 86, 77, 87, 71, 88, 12, 93, 92, 18, 66, 93, 12, 80, 81, 18, 84, 71, 2, 70, 84, 87, 91, 65, 69, 90, 87, 18, 65, 93, 0, 19, 90, 93, 91, 70, 17, 65, 76, 81, 65, 90, 23, 19, 77, 90, 80, 21, 3, 90, 92, 94, 81, 21, 6, 92, 75, 64, 80, 70, 21, 92, 87, 86, 70, 21, 17, 92, 23, 18, 97, 93, 12, 64, 25, 91, 70, 21, 16, 93, 92, 74, 69, 80, 6, 71, 92, 86, 21, 87, 0, 91, 88, 68, 92, 90, 23, 31, 25, 83, 70, 21, 18, 86, 25, 87, 77, 69, 0, 80, 77, 18, 65, 93, 0, 19, 107, 87, 86, 90, 23, 87, 122, 93, 88, 69, 10, 93, 92, 92, 65, 70, 69, 71, 86, 18, 93, 84, 19, 86, 25, 70, 93, 80, 69, 64, 88, 95, 80, 21, 11, 82, 84, 87, 70, 21, 4, 64, 25, 70, 93, 80, 69, 85, 80, 87, 89, 81, 22, 19, 80, 92, 21, 65, 13, 86, 25, 120, 84, 67, 4, 19, 90, 94, 84, 70, 22, 31, 25, 83, 91, 81, 69, 71, 81, 83, 65, 21, 17, 91, 92, 18, 90, 71, 1, 86, 75, 18, 90, 83, 69, 71, 81, 87, 21, 103, 0, 80, 86, 64, 81, 118, 10, 94, 73, 93, 91, 80, 11, 71, 74, 18, 92, 70, 69, 71, 81, 87, 21, 70, 4, 94, 92, 18, 84, 70, 69, 71, 81, 87, 21, 90, 23, 87, 92, 64, 21, 90, 3, 19, 77, 90, 80, 21, 6, 82, 87, 93, 91, 92, 6, 82, 85, 18, 86, 90, 11, 64, 77, 64, 64, 86, 17, 92, 75, 18, 69, 84, 23, 82, 84, 87, 65, 80, 23, 64, 23}, "5e3925", true));
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
    }

    private BoundField createBoundField(Gson gson, Field field, String str, TypeToken<?> typeToken, boolean z, boolean z2) {
        boolean zIsPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> typeAdapter = jsonAdapter != null ? this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter) : null;
        boolean z3 = typeAdapter != null;
        if (typeAdapter == null) {
            typeAdapter = gson.getAdapter(typeToken);
        }
        return new BoundField(this, str, z, z2, field, z3, typeAdapter, gson, typeToken, zIsPrimitive) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            final ReflectiveTypeAdapterFactory this$0;
            final Gson val$context;
            final Field val$field;
            final TypeToken val$fieldType;
            final boolean val$isPrimitive;
            final boolean val$jsonAdapterPresent;
            final TypeAdapter val$typeAdapter;

            {
                this.this$0 = this;
                this.val$field = field;
                this.val$jsonAdapterPresent = z3;
                this.val$typeAdapter = typeAdapter;
                this.val$context = gson;
                this.val$fieldType = typeToken;
                this.val$isPrimitive = zIsPrimitive;
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
                Object obj2 = this.val$typeAdapter.read2(jsonReader);
                if (obj2 == null && this.val$isPrimitive) {
                    return;
                }
                this.val$field.set(obj, obj2);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
                (this.val$jsonAdapterPresent ? this.val$typeAdapter : new TypeAdapterRuntimeTypeWrapper(this.val$context, this.val$typeAdapter, this.val$fieldType.getType())).write(jsonWriter, this.val$field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public boolean writeField(Object obj) throws IllegalAccessException, IOException {
                return this.serialized && this.val$field.get(obj) != obj;
            }
        };
    }

    static boolean excludeField(Field field, boolean z, Excluder excluder) {
        return (excluder.excludeClass(field.getType(), z) || excluder.excludeField(field, z)) ? false : true;
    }

    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            Type type = typeToken.getType();
            while (cls != Object.class) {
                for (Field field : cls.getDeclaredFields()) {
                    boolean zExcludeField = excludeField(field, true);
                    boolean zExcludeField2 = excludeField(field, false);
                    if (zExcludeField || zExcludeField2) {
                        this.accessor.makeAccessible(field);
                        Type typeResolve = C$Gson$Types.resolve(typeToken.getType(), cls, field.getGenericType());
                        List<String> fieldNames = getFieldNames(field);
                        BoundField boundField = null;
                        int size = fieldNames.size();
                        int i = 0;
                        while (i < size) {
                            String str = fieldNames.get(i);
                            if (i != 0) {
                                zExcludeField = false;
                            }
                            BoundField boundField2 = (BoundField) linkedHashMap.put(str, createBoundField(gson, field, str, TypeToken.get(typeResolve), zExcludeField, zExcludeField2));
                            if (boundField != null) {
                                boundField2 = boundField;
                            }
                            i++;
                            boundField = boundField2;
                        }
                        if (boundField != null) {
                            throw new IllegalArgumentException(type + NPStringFog.decode(new byte[]{25, 83, 86, 86, 88, 4, 75, 82, 64, 21, 89, 16, 85, 67, 90, 69, 88, 0, 25, 125, 96, 122, 122, 69, 95, 94, 86, 89, 80, 22, 25, 89, 82, 88, 81, 1, 25}, "97354e", -18624) + boundField.name);
                        }
                    }
                }
                typeToken = TypeToken.get(C$Gson$Types.resolve(typeToken.getType(), cls, cls.getGenericSuperclass()));
                cls = typeToken.getRawType();
            }
        }
        return linkedHashMap;
    }

    private List<String> getFieldNames(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(field));
        }
        String strValue = serializedName.value();
        String[] strArrAlternate = serializedName.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        for (String str : strArrAlternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType));
        }
        return null;
    }

    public boolean excludeField(Field field, boolean z) {
        return excludeField(field, z, this.excluder);
    }
}
