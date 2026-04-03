package com.google.gson.reflect;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public class TypeToken<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    protected TypeToken() {
        this.type = getSuperclassTypeParameter(getClass());
        this.rawType = (Class<? super T>) C$Gson$Types.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    TypeToken(Type type) {
        this.type = C$Gson$Types.canonicalize((Type) C$Gson$Preconditions.checkNotNull(type));
        this.rawType = (Class<? super T>) C$Gson$Types.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    private static AssertionError buildUnexpectedTypeError(Type type, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{48, 89, 85, 75, 70, 6, 6, 67, 85, 87, 22, 23, 28, 71, 85, 29, 22, 38, 29, 71, 85, 80, 66, 6, 1, 23, 95, 93, 83, 67, 10, 81, 10, 19}, "e7036c", 2275));
        for (Class<?> cls : clsArr) {
            sb.append(cls.getName()).append(NPStringFog.decode(new byte[]{79, 70}, "cfa0b1", -2.0023054E9f));
        }
        sb.append(NPStringFog.decode(new byte[]{87, 76, 21, 65, 1, 86, 65, 3, 65}, "59aaf9", true)).append(type.getClass().getName()).append(NPStringFog.decode(new byte[]{31, 21, 94, 91, 20, 18, 71, 76, 72, 81, 70, 70, 92, 94, 93, 90, 92, 18}, "3584f2", false, false)).append(type.toString()).append('.');
        return new AssertionError(sb.toString());
    }

    public static <T> TypeToken<T> get(Class<T> cls) {
        return new TypeToken<>(cls);
    }

    public static TypeToken<?> get(Type type) {
        return new TypeToken<>(type);
    }

    public static TypeToken<?> getArray(Type type) {
        return new TypeToken<>(C$Gson$Types.arrayOf(type));
    }

    public static TypeToken<?> getParameterized(Type type, Type... typeArr) {
        return new TypeToken<>(C$Gson$Types.newParameterizedTypeWithOwner(null, type, typeArr));
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{47, 90, 70, 74, 88, 91, 5, 19, 65, 64, 65, 80, 66, 67, 84, 75, 80, 88, 7, 71, 80, 75, 31}, "b35915", 1.774593101E9d));
        }
        return C$Gson$Types.canonicalize(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    private static boolean isAssignableFrom(Type type, GenericArrayType genericArrayType) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (!(genericComponentType instanceof ParameterizedType)) {
            return true;
        }
        if (type instanceof GenericArrayType) {
            type = ((GenericArrayType) type).getGenericComponentType();
        } else if (type instanceof Class) {
            type = (Class) type;
            while (type.isArray()) {
                type = type.getComponentType();
            }
        }
        return isAssignableFrom(type, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean isAssignableFrom(Type type, ParameterizedType parameterizedType, Map<String, Type> map) {
        if (type == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        Class<?> rawType = C$Gson$Types.getRawType(type);
        ParameterizedType parameterizedType2 = type instanceof ParameterizedType ? (ParameterizedType) type : null;
        if (parameterizedType2 != null) {
            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
            TypeVariable<Class<?>>[] typeParameters = rawType.getTypeParameters();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                Type type2 = actualTypeArguments[i];
                TypeVariable<Class<?>> typeVariable = typeParameters[i];
                while (type2 instanceof TypeVariable) {
                    type2 = map.get(((TypeVariable) type2).getName());
                }
                map.put(typeVariable.getName(), type2);
            }
            if (typeEquals(parameterizedType2, parameterizedType, map)) {
                return true;
            }
        }
        for (Type type3 : rawType.getGenericInterfaces()) {
            if (isAssignableFrom(type3, parameterizedType, new HashMap(map))) {
                return true;
            }
        }
        return isAssignableFrom(rawType.getGenericSuperclass(), parameterizedType, new HashMap(map));
    }

    private static boolean matches(Type type, Type type2, Map<String, Type> map) {
        return type2.equals(type) || ((type instanceof TypeVariable) && type2.equals(map.get(((TypeVariable) type).getName())));
    }

    private static boolean typeEquals(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map<String, Type> map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            if (!matches(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof TypeToken) && C$Gson$Types.equals(this.type, ((TypeToken) obj).type);
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Deprecated
    public boolean isAssignableFrom(TypeToken<?> typeToken) {
        return isAssignableFrom(typeToken.getType());
    }

    @Deprecated
    public boolean isAssignableFrom(Class<?> cls) {
        return isAssignableFrom((Type) cls);
    }

    @Deprecated
    public boolean isAssignableFrom(Type type) {
        if (type == null) {
            return false;
        }
        if (this.type.equals(type)) {
            return true;
        }
        if (this.type instanceof Class) {
            return this.rawType.isAssignableFrom(C$Gson$Types.getRawType(type));
        }
        if (this.type instanceof ParameterizedType) {
            return isAssignableFrom(type, (ParameterizedType) this.type, new HashMap());
        }
        if (this.type instanceof GenericArrayType) {
            return this.rawType.isAssignableFrom(C$Gson$Types.getRawType(type)) && isAssignableFrom(type, (GenericArrayType) this.type);
        }
        throw buildUnexpectedTypeError(this.type, Class.class, ParameterizedType.class, GenericArrayType.class);
    }

    public final String toString() {
        return C$Gson$Types.typeToString(this.type);
    }
}
