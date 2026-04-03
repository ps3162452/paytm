package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.internal.reflect.ReflectionAccessor;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public final class ConstructorConstructor {
    private final ReflectionAccessor accessor = ReflectionAccessor.getInstance();
    private final Map<Type, InstanceCreator<?>> instanceCreators;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$15, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass15<T> implements ObjectConstructor<T> {
        AnonymousClass15() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$16, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass16<T> implements ObjectConstructor<T> {
        AnonymousClass16() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$17, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass17<T> implements ObjectConstructor<T> {
        AnonymousClass17() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$18, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass18<T> implements ObjectConstructor<T> {
        AnonymousClass18() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedTreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$19, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass19<T> implements ObjectConstructor<T> {
        final ConstructorConstructor this$0;
        final Class val$rawType;

        AnonymousClass19(ConstructorConstructor constructorConstructor, Class cls) {
            this.this$0 = constructorConstructor;
            this.val$rawType = cls;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) UnsafeAllocator.INSTANCE.newInstance(this.val$rawType);
            } catch (Exception e) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{51, 13, 84, 81, 92, 92, 70, 23, 90, 19, 83, 75, 3, 2, 65, 86, 16, 80, 8, 16, 65, 82, 94, 90, 3, 67, 90, 85, 16}, "fc5309", true, false) + this.val$rawType + NPStringFog.decode(new byte[]{23, 68, 49, 86, 83, 88, 74, 16, 6, 65, 93, 95, 94, 68, 2, 93, 20, 120, 87, 23, 23, 82, 90, 82, 92, 39, 17, 86, 85, 69, 86, 22, 67, 92, 70, 17, 88, 68, 55, 74, 68, 84, 120, 0, 2, 67, 64, 84, 75, 68, 5, 92, 70, 17, 77, 12, 10, 64, 20, 69, 64, 20, 6, 31, 20, 94, 75, 68, 2, 87, 80, 88, 87, 3, 67, 82, 20, 95, 86, 73, 2, 65, 83, 66, 25, 7, 12, 93, 71, 69, 75, 17, 0, 71, 91, 67, 25, 9, 2, 74, 20, 87, 80, 28, 67, 71, 92, 88, 74, 68, 19, 65, 91, 83, 85, 1, 14, 29}, "9dc341", -7.1018124E8d), e);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.ConstructorConstructor$20, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    class AnonymousClass20<T> implements ObjectConstructor<T> {
        final ConstructorConstructor this$0;
        final String val$exceptionMessageF;

        AnonymousClass20(ConstructorConstructor constructorConstructor, String str) {
            this.this$0 = constructorConstructor;
            this.val$exceptionMessageF = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.val$exceptionMessageF);
        }
    }

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.instanceCreators = map;
    }

    private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.accessor.makeAccessible(declaredConstructor);
            }
            return new ObjectConstructor<T>(this, declaredConstructor) { // from class: com.google.gson.internal.ConstructorConstructor.3
                final ConstructorConstructor this$0;
                final Constructor val$constructor;

                {
                    this.this$0 = this;
                    this.val$constructor = declaredConstructor;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    try {
                        return (T) this.val$constructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException(NPStringFog.decode(new byte[]{37, 2, 81, 10, 6, 1, 67, 23, 87, 70, 10, 11, 21, 12, 83, 3, 67}, "cc8fce", -9.608548E8f) + this.val$constructor + NPStringFog.decode(new byte[]{66, 22, 81, 66, 14, 66, 12, 14, 24, 87, 20, 5, 17}, "ba86fb", true), e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(NPStringFog.decode(new byte[]{32, 89, 8, 92, 85, 86, 70, 76, 14, 16, 89, 92, 16, 87, 10, 85, 16}, "f8a002", 4.076691E8f) + this.val$constructor + NPStringFog.decode(new byte[]{22, 78, 15, 18, 88, 23, 88, 86, 70, 7, 66, 80, 69}, "69ff07", 4.5170692E7d), e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.4
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this, type) { // from class: com.google.gson.internal.ConstructorConstructor.5
                final ConstructorConstructor this$0;
                final Type val$type;

                {
                    this.this$0 = this;
                    this.val$type = type;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    if (!(this.val$type instanceof ParameterizedType)) {
                        throw new JsonIOException(NPStringFog.decode(new byte[]{40, 95, 78, 87, 85, 92, 5, 17, 125, 88, 76, 88, 50, 84, 76, 22, 77, 76, 17, 84, 2, 22}, "a18695", 891035126L) + this.val$type.toString());
                    }
                    Type type2 = ((ParameterizedType) this.val$type).getActualTypeArguments()[0];
                    if (type2 instanceof Class) {
                        return (T) EnumSet.noneOf((Class) type2);
                    }
                    throw new JsonIOException(NPStringFog.decode(new byte[]{120, 13, 16, 80, 15, 94, 85, 67, 35, 95, 22, 90, 98, 6, 18, 17, 23, 78, 65, 6, 92, 17}, "1cf1c7", 1.666027575E9d) + this.val$type.toString());
                }
            } : Set.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.6
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.7
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new ArrayDeque();
                }
            } : new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.8
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.9
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new ConcurrentSkipListMap();
                }
            } : ConcurrentMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.10
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new ConcurrentHashMap();
                }
            } : SortedMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.11
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.13
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedTreeMap();
                }
            } : new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.12
                final ConstructorConstructor this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedHashMap();
                }
            };
        }
        return null;
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(Type type, Class<? super T> cls) {
        return new ObjectConstructor<T>(this, cls, type) { // from class: com.google.gson.internal.ConstructorConstructor.14
            final ConstructorConstructor this$0;
            private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
            final Class val$rawType;
            final Type val$type;

            {
                this.this$0 = this;
                this.val$rawType = cls;
                this.val$type = type;
            }

            @Override // com.google.gson.internal.ObjectConstructor
            public T construct() {
                try {
                    return (T) this.unsafeAllocator.newInstance(this.val$rawType);
                } catch (Exception e) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{49, 11, 87, 3, 9, 86, 68, 17, 89, 65, 12, 93, 18, 10, 93, 4, 69, 93, 11, 72, 87, 19, 2, 64, 68, 6, 89, 15, 22, 71, 22, 16, 85, 21, 10, 65, 68, 3, 89, 19, 69}, "de6ae3", -1010275961L) + this.val$type + NPStringFog.decode(new byte[]{76, 24, 101, 83, 6, 80, 17, 76, 82, 68, 8, 87, 5, 24, 86, 88, 65, 112, 12, 75, 67, 87, 15, 90, 7, 123, 69, 83, 0, 77, 13, 74, 23, 65, 8, 77, 10, 24, 112, 69, 14, 87, 66, 94, 88, 68, 65, 77, 10, 81, 68, 22, 21, 64, 18, 93, 23, 91, 0, 64, 66, 94, 94, 78, 65, 77, 10, 81, 68, 22, 17, 75, 13, 90, 91, 83, 12, 23}, "b876a9", false), e);
                }
            }
        };
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        InstanceCreator<?> instanceCreator = this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>(this, instanceCreator, type) { // from class: com.google.gson.internal.ConstructorConstructor.1
                final ConstructorConstructor this$0;
                final Type val$type;
                final InstanceCreator val$typeCreator;

                {
                    this.this$0 = this;
                    this.val$typeCreator = instanceCreator;
                    this.val$type = type;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) this.val$typeCreator.createInstance(this.val$type);
                }
            };
        }
        InstanceCreator<?> instanceCreator2 = this.instanceCreators.get(rawType);
        if (instanceCreator2 != null) {
            return new ObjectConstructor<T>(this, instanceCreator2, type) { // from class: com.google.gson.internal.ConstructorConstructor.2
                final ConstructorConstructor this$0;
                final InstanceCreator val$rawTypeCreator;
                final Type val$type;

                {
                    this.this$0 = this;
                    this.val$rawTypeCreator = instanceCreator2;
                    this.val$type = type;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) this.val$rawTypeCreator.createInstance(this.val$type);
                }
            };
        }
        ObjectConstructor<T> objectConstructorNewDefaultConstructor = newDefaultConstructor(rawType);
        if (objectConstructorNewDefaultConstructor != null) {
            return objectConstructorNewDefaultConstructor;
        }
        ObjectConstructor<T> objectConstructorNewDefaultImplementationConstructor = newDefaultImplementationConstructor(type, rawType);
        return objectConstructorNewDefaultImplementationConstructor == null ? newUnsafeAllocator(type, rawType) : objectConstructorNewDefaultImplementationConstructor;
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
