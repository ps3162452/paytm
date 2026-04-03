package com.google.firebase.database.core.utilities.encoding;

import android.util.Log;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.Exclude;
import com.google.firebase.database.GenericTypeIndicator;
import com.google.firebase.database.IgnoreExtraProperties;
import com.google.firebase.database.PropertyName;
import com.google.firebase.database.ThrowOnExtraProperties;
import com.google.firebase.database.core.utilities.Utilities;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class CustomClassMapper {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{116, 15, 85, 18, 66, 125, 86, 19, 68, 4, 67}, "7c4a10", true, false);
    private static final ConcurrentMap<Class<?>, BeanMapper<?>> mappers = new ConcurrentHashMap();

    private static class BeanMapper<T> {
        private final Class<T> clazz;
        private final Constructor<T> constructor;
        private final boolean throwOnUnknownProperties;
        private final boolean warnOnUnknownProperties;
        private final Map<String, String> properties = new HashMap();
        private final Map<String, Method> setters = new HashMap();
        private final Map<String, Method> getters = new HashMap();
        private final Map<String, Field> fields = new HashMap();

        public BeanMapper(Class<T> cls) {
            Constructor<T> declaredConstructor;
            this.clazz = cls;
            this.throwOnUnknownProperties = cls.isAnnotationPresent(ThrowOnExtraProperties.class);
            this.warnOnUnknownProperties = !cls.isAnnotationPresent(IgnoreExtraProperties.class);
            try {
                declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
            } catch (NoSuchMethodException e) {
                declaredConstructor = null;
            }
            this.constructor = declaredConstructor;
            for (Method method : cls.getMethods()) {
                if (shouldIncludeGetter(method)) {
                    String strPropertyName = propertyName(method);
                    addProperty(strPropertyName);
                    method.setAccessible(true);
                    if (this.getters.containsKey(strPropertyName)) {
                        throw new DatabaseException(NPStringFog.decode(new byte[]{117, 87, 22, 10, 82, 22, 80, 87, 13, 2, 90, 95, 80, 76, 10, 10, 81, 22, 84, 93, 23, 16, 83, 68, 64, 24, 5, 11, 68, 22, 93, 89, 14, 1, 12, 22}, "38cd66", 1.5584929E9f) + method.getName());
                    }
                    this.getters.put(strPropertyName, method);
                }
            }
            for (Field field : cls.getFields()) {
                if (shouldIncludeField(field)) {
                    addProperty(propertyName(field));
                }
            }
            Class<T> cls2 = cls;
            while (true) {
                for (Method method2 : cls2.getDeclaredMethods()) {
                    if (shouldIncludeSetter(method2)) {
                        String strPropertyName2 = propertyName(method2);
                        String str = this.properties.get(strPropertyName2.toLowerCase());
                        if (str == null) {
                            continue;
                        } else {
                            if (!str.equals(strPropertyName2)) {
                                throw new DatabaseException(NPStringFog.decode(new byte[]{35, 87, 76, 12, 86, 69, 22, 93, 77, 22, 87, 23, 69, 79, 80, 22, 90, 69, 12, 86, 79, 3, 94, 12, 1, 24, 90, 3, 65, 0, 72, 75, 92, 12, 65, 12, 17, 81, 79, 7, 18, 11, 4, 85, 92, 88, 18}, "e89b2e", false, false) + method2.getName());
                            }
                            Method method3 = this.setters.get(strPropertyName2);
                            if (method3 == null) {
                                method2.setAccessible(true);
                                this.setters.put(strPropertyName2, method2);
                            } else if (!isSetterOverride(method2, method3)) {
                                throw new DatabaseException(NPStringFog.decode(new byte[]{127, 87, 69, 95, 84, 24, 88, 24, 83, 94, 94, 94, 85, 81, 83, 69, 89, 86, 94, 24, 67, 84, 68, 76, 92, 74, 67, 17, 71, 81, 77, 80, 16, 95, 81, 85, 92, 2, 16}, "980108", 1.964028295E9d) + method2.getName() + NPStringFog.decode(new byte[]{69, 74, 5, 13, 95, 7, 9, 11, 5, 22, 66, 65, 18, 11, 18, 10, 17}, "ebfb1a", -2.78884789E8d) + method3.getName() + NPStringFog.decode(new byte[]{25, 85, 81, 0, 94, 90, 92, 85, 20, 9, 89, 20}, "914f74", -7.51758904E8d) + method3.getDeclaringClass().getName() + NPStringFog.decode(new byte[]{31}, "648a8b", -2.037128419E9d));
                            }
                        }
                    }
                }
                for (Field field2 : cls2.getDeclaredFields()) {
                    String strPropertyName3 = propertyName(field2);
                    if (this.properties.containsKey(strPropertyName3.toLowerCase()) && !this.fields.containsKey(strPropertyName3)) {
                        field2.setAccessible(true);
                        this.fields.put(strPropertyName3, field2);
                    }
                }
                Class<T> superclass = cls2.getSuperclass();
                if (superclass == null || superclass.equals(Object.class)) {
                    break;
                } else {
                    cls2 = superclass;
                }
            }
            if (this.properties.isEmpty()) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{118, 89, 22, 21, 20, 9, 72, 83, 68, 17, 15, 3, 75, 22, 66, 10, 70, 21, 93, 68, 95, 4, 10, 15, 66, 83, 22, 3, 9, 19, 86, 82, 22, 10, 8, 70, 91, 90, 87, 22, 21, 70}, "866eff", -9883) + cls.getName());
            }
        }

        private void addProperty(String str) {
            String strPut = this.properties.put(str.toLowerCase(), str);
            if (strPut != null && !str.equals(strPut)) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{39, 93, 22, 11, 82, 23, 21, 69, 12, 69, 81, 82, 21, 70, 6, 23, 69, 23, 14, 64, 67, 3, 95, 82, 13, 86, 16, 69, 65, 94, 21, 90, 67, 6, 89, 89, 7, 94, 10, 6, 66, 94, 15, 85, 67, 6, 87, 68, 4, 18, 16, 0, 88, 68, 8, 70, 10, 19, 95, 67, 24, 18, 5, 10, 68, 23, 17, 64, 12, 21, 83, 69, 21, 75, 89, 69}, "a2ce67", -1533123643L) + str.toLowerCase());
            }
        }

        private static String annotatedName(AccessibleObject accessibleObject) {
            if (accessibleObject.isAnnotationPresent(PropertyName.class)) {
                return ((PropertyName) accessibleObject.getAnnotation(PropertyName.class)).value();
            }
            return null;
        }

        private static boolean isSetterOverride(Method method, Method method2) {
            Utilities.hardAssert(method.getDeclaringClass().isAssignableFrom(method2.getDeclaringClass()), NPStringFog.decode(new byte[]{32, 72, 68, 3, 80, 67, 0, 84, 20, 9, 69, 82, 23, 66, 93, 2, 86, 23, 3, 66, 91, 11, 19, 86, 69, 82, 85, 21, 86, 23, 6, 92, 85, 21, 64}, "e04f37", 4.12297195E8d));
            Utilities.hardAssert(method.getReturnType().equals(Void.TYPE), NPStringFog.decode(new byte[]{119, 25, 65, 93, 83, 76, 87, 5, 17, 78, 95, 81, 86, 65, 67, 93, 68, 77, 64, 15, 17, 76, 73, 72, 87}, "2a1808", 2.1248872E9f));
            Utilities.hardAssert(method2.getReturnType().equals(Void.TYPE), NPStringFog.decode(new byte[]{119, 64, 66, 86, 91, 67, 87, 92, 18, 69, 87, 94, 86, 24, 64, 86, 76, 66, 64, 86, 18, 71, 65, 71, 87}, "282387", -1942918370L));
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            Utilities.hardAssert(parameterTypes.length == 1, NPStringFog.decode(new byte[]{125, 77, 66, 86, 86, 71, 93, 81, 18, 86, 77, 82, 91, 65, 94, 74, 21, 92, 86, 80, 18, 67, 84, 65, 89, 88, 87, 71, 80, 65}, "852353", true, true));
            Utilities.hardAssert(parameterTypes2.length == 1, NPStringFog.decode(new byte[]{35, 26, 67, 80, 85, 71, 3, 6, 19, 80, 78, 82, 5, 22, 95, 76, 22, 92, 8, 7, 19, 69, 87, 65, 7, 15, 86, 65, 83, 65}, "fb3563", 1.2486412E9f));
            return method.getName().equals(method2.getName()) && parameterTypes[0].equals(parameterTypes2[0]);
        }

        private static String propertyName(Field field) {
            String strAnnotatedName = annotatedName(field);
            return strAnnotatedName != null ? strAnnotatedName : field.getName();
        }

        private static String propertyName(Method method) {
            String strAnnotatedName = annotatedName(method);
            return strAnnotatedName != null ? strAnnotatedName : serializedName(method.getName());
        }

        private Type resolveType(Type type, Map<TypeVariable<Class<T>>, Type> map) {
            if (!(type instanceof TypeVariable)) {
                return type;
            }
            Type type2 = map.get(type);
            if (type2 != null) {
                return type2;
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 12, 22, 93, 92, 70, 95, 12, 23, 17, 74, 3, 66, 12, 15, 71, 93, 70, 69, 26, 19, 84, 24}, "1cc18f", false) + type);
        }

        private static String serializedName(String str) {
            String[] strArr = {NPStringFog.decode(new byte[]{6, 81, 76}, "a4814b", 8.909376E8f), NPStringFog.decode(new byte[]{68, 93, 21}, "78a6be", false, false), NPStringFog.decode(new byte[]{13, 64}, "d3bc72", -1.9069449E9f)};
            String str2 = null;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str3 = strArr[i];
                if (!str.startsWith(str3)) {
                    str3 = str2;
                }
                i++;
                str2 = str3;
            }
            if (str2 == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 89, 83, 94, 12, 18, 95, 23, 122, 85, 2, 11, 17, 71, 74, 85, 5, 12, 73, 23, 94, 95, 17, 69, 92, 82, 76, 88, 12, 1, 11, 23}, "1780ce", true, false) + str);
            }
            char[] charArray = str.substring(str2.length()).toCharArray();
            for (int i2 = 0; i2 < charArray.length && Character.isUpperCase(charArray[i2]); i2++) {
                charArray[i2] = Character.toLowerCase(charArray[i2]);
            }
            return new String(charArray);
        }

        private static boolean shouldIncludeField(Field field) {
            return (field.getDeclaringClass().equals(Object.class) || !Modifier.isPublic(field.getModifiers()) || Modifier.isStatic(field.getModifiers()) || Modifier.isTransient(field.getModifiers()) || field.isAnnotationPresent(Exclude.class)) ? false : true;
        }

        private static boolean shouldIncludeGetter(Method method) {
            return ((!method.getName().startsWith(NPStringFog.decode(new byte[]{83, 92, 21}, "49a414", 2.3391208E7d)) && !method.getName().startsWith(NPStringFog.decode(new byte[]{91, 64}, "23c774", true, true))) || method.getDeclaringClass().equals(Object.class) || !Modifier.isPublic(method.getModifiers()) || Modifier.isStatic(method.getModifiers()) || method.getReturnType().equals(Void.TYPE) || method.getParameterTypes().length != 0 || method.isAnnotationPresent(Exclude.class)) ? false : true;
        }

        private static boolean shouldIncludeSetter(Method method) {
            return method.getName().startsWith(NPStringFog.decode(new byte[]{17, 80, 18}, "b5f216", -9.103594E8f)) && !method.getDeclaringClass().equals(Object.class) && !Modifier.isStatic(method.getModifiers()) && method.getReturnType().equals(Void.TYPE) && method.getParameterTypes().length == 1 && !method.isAnnotationPresent(Exclude.class);
        }

        public T deserialize(Map<String, Object> map) {
            return deserialize(map, Collections.emptyMap());
        }

        public T deserialize(Map<String, Object> map, Map<TypeVariable<Class<T>>, Type> map2) {
            Constructor<T> constructor = this.constructor;
            if (constructor == null) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{117, 95, 81, 23, 22, 24}, "630de8", 1.38456584E9d) + this.clazz.getName() + NPStringFog.decode(new byte[]{23, 92, 87, 80, 68, 66, 89, 87, 76, 21, 83, 7, 81, 81, 86, 80, 23, 3, 23, 86, 87, 24, 86, 16, 80, 77, 85, 80, 89, 22, 23, 91, 87, 91, 68, 22, 69, 77, 91, 65, 88, 16, 25, 24, 113, 83, 23, 27, 88, 77, 24, 84, 69, 7, 23, 77, 75, 92, 89, 5, 23, 104, 74, 90, 112, 23, 86, 74, 92, 25, 23, 15, 86, 83, 93, 21, 68, 23, 69, 93, 24, 65, 95, 7, 68, 93, 24, 86, 88, 12, 68, 76, 74, 64, 84, 22, 88, 74, 75, 21, 86, 16, 82, 24, 86, 90, 67, 66, 68, 76, 74, 92, 71, 18, 82, 92, 22}, "78857b", -520803564L));
            }
            try {
                T tNewInstance = constructor.newInstance(new Object[0]);
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (this.setters.containsKey(key)) {
                        Method method = this.setters.get(key);
                        Type[] genericParameterTypes = method.getGenericParameterTypes();
                        if (genericParameterTypes.length != 1) {
                            throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 3, 65, 69, 93, 19, 18, 2, 90, 84, 75, 65, 92, 9, 65, 17, 80, 0, 68, 3, 21, 84, 64, 0, 81, 18, 89, 72, 24, 14, 92, 3, 21, 65, 89, 19, 83, 11, 80, 69, 93, 19}, "2f518a", false));
                        }
                        try {
                            method.invoke(tNewInstance, CustomClassMapper.deserializeToType(entry.getValue(), resolveType(genericParameterTypes[0], map2)));
                        } catch (IllegalAccessException e) {
                            throw new RuntimeException(e);
                        } catch (InvocationTargetException e2) {
                            throw new RuntimeException(e2);
                        }
                    } else if (this.fields.containsKey(key)) {
                        Field field = this.fields.get(key);
                        try {
                            field.set(tNewInstance, CustomClassMapper.deserializeToType(entry.getValue(), resolveType(field.getGenericType(), map2)));
                        } catch (IllegalAccessException e3) {
                            throw new RuntimeException(e3);
                        }
                    } else {
                        String str = NPStringFog.decode(new byte[]{122, 91, 25, 65, 6, 77, 64, 81, 75, 29, 5, 80, 81, 88, 93, 18, 5, 86, 70, 20}, "4492c9", 23190) + key + NPStringFog.decode(new byte[]{20, 5, 89, 17, 8, 85, 20, 12, 88, 68, 5, 93, 85, 16, 69, 68}, "4c6df1", -1.8382734E9f) + this.clazz.getName();
                        if (this.properties.containsKey(key.toLowerCase())) {
                            str = str + NPStringFog.decode(new byte[]{20, 25, 83, 90, 0, 85, 80, 66, 26, 64, 0, 77, 64, 84, 71, 64, 69, 88, 70, 84, 21, 80, 4, 74, 81, 17, 70, 86, 11, 74, 93, 69, 92, 69, 0, 24, 29}, "4153e9", 5.645418E8f);
                        }
                        if (this.throwOnUnknownProperties) {
                            throw new DatabaseException(str);
                        }
                        if (this.warnOnUnknownProperties) {
                            Log.w(NPStringFog.decode(new byte[]{34, 8, 80, 17, 65, 125, 0, 20, 65, 7, 64}, "ad1b20", false, false), str);
                        }
                    }
                }
                return tNewInstance;
            } catch (IllegalAccessException e4) {
                throw new RuntimeException(e4);
            } catch (InstantiationException e5) {
                throw new RuntimeException(e5);
            } catch (InvocationTargetException e6) {
                throw new RuntimeException(e6);
            }
        }

        public Map<String, Object> serialize(T t) {
            Object objInvoke;
            if (!this.clazz.isAssignableFrom(t.getClass())) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 85, 15, 69, 66, 22, 66, 81, 19, 11, 87, 90, 88, 78, 4, 66, 89, 84, 91, 81, 2, 22, 22, 89, 87, 20, 2, 14, 87, 69, 66, 20}, "14ab66", -8393) + t.getClass() + NPStringFog.decode(new byte[]{70, 70, 15, 71, 95, 20, 36, 84, 7, 93, 122, 85, 22, 65, 3, 65, 23, 82, 9, 67, 70, 80, 91, 85, 21, 66, 70}, "f1f374", 10324) + this.clazz);
            }
            HashMap map = new HashMap();
            for (String str : this.properties.values()) {
                if (this.getters.containsKey(str)) {
                    try {
                        objInvoke = this.getters.get(str).invoke(t, new Object[0]);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    Field field = this.fields.get(str);
                    if (field == null) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 7, 84, 93, 21, 70, 68, 13, 69, 86, 71, 66, 79, 66, 66, 90, 65, 94, 89, 23, 65, 19, 83, 95, 83, 14, 81, 19, 90, 68, 22, 5, 80, 71, 65, 83, 68, 88}, "6b5356", 1.697073891E9d) + str);
                    }
                    try {
                        objInvoke = field.get(t);
                    } catch (IllegalAccessException e3) {
                        throw new RuntimeException(e3);
                    }
                }
                map.put(str, CustomClassMapper.serialize(objInvoke));
            }
            return map;
        }
    }

    private static <T> T convertBean(Object obj, Class<T> cls) {
        BeanMapper beanMapperLoadOrCreateBeanMapperForClass = loadOrCreateBeanMapperForClass(cls);
        if (obj instanceof Map) {
            return (T) beanMapperLoadOrCreateBeanMapperForClass.deserialize(expectMap(obj));
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{33, 85, 90, 23, 21, 67, 1, 91, 90, 70, 4, 17, 22, 20, 91, 82, 11, 6, 1, 64, 20, 95, 7, 67, 22, 77, 68, 85, 65}, "b440ac", true) + obj.getClass().getName() + NPStringFog.decode(new byte[]{21, 77, 94, 16, 70, 74, 69, 92, 17}, "591023", 1.208502612E9d) + cls.getName());
    }

    private static Boolean convertBoolean(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{34, 88, 95, 92, 80, 2, 68, 77, 89, 16, 86, 9, 10, 79, 83, 66, 65, 70, 18, 88, 90, 69, 80, 70, 11, 95, 22, 68, 76, 22, 1, 25}, "d9605f", -1.4127368E9f) + obj.getClass().getName() + NPStringFog.decode(new byte[]{24, 76, 95, 70, 82, 95, 87, 84, 85, 7, 94}, "880f00", 1729583351L));
    }

    private static Double convertDouble(Object obj) {
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        if (!(obj instanceof Long)) {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            throw new DatabaseException(NPStringFog.decode(new byte[]{34, 80, 94, 89, 82, 84, 68, 69, 88, 21, 84, 95, 10, 71, 82, 71, 67, 16, 5, 17, 65, 84, 91, 69, 1, 17, 88, 83, 23, 68, 29, 65, 82, 21}, "d17570", false, false) + obj.getClass().getName() + NPStringFog.decode(new byte[]{66, 77, 93, 18, 2, 93, 23, 91, 94, 87}, "b922f2", true));
        }
        Double dValueOf = Double.valueOf(((Long) obj).doubleValue());
        if (dValueOf.longValue() == ((Long) obj).longValue()) {
            return dValueOf;
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{41, 10, 18, 64, 69, 89, 3, 69, 17, 65, 0, 85, 12, 22, 8, 92, 11, 22, 18, 13, 8, 95, 0, 22, 6, 10, 15, 69, 0, 68, 17, 12, 15, 84, 69, 88, 16, 8, 3, 86, 23, 22, 17, 10, 65, 87, 10, 67, 7, 9, 4, 9, 69}, "eea3e6", 3.115344E7d) + obj + NPStringFog.decode(new byte[]{30, 66, 124, 89, 87, 24, 73, 13, 77, 16, 94, 93, 81, 12, 24, 68, 92, 24, 69, 17, 93, 16, 82, 24, 6, 86, 21, 82, 90, 76, 16, 14, 87, 94, 84, 24, 89, 12, 75, 68, 86, 89, 84, 93}, "0b8038", true));
    }

    private static Integer convertInteger(Object obj) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (!(obj instanceof Long) && !(obj instanceof Double)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{112, 4, 94, 10, 83, 83, 22, 17, 88, 70, 85, 88, 88, 19, 82, 20, 66, 23, 87, 69, 65, 7, 90, 66, 83, 69, 88, 0, 22, 67, 79, 21, 82, 70}, "6e7f67", true, true) + obj.getClass().getName() + NPStringFog.decode(new byte[]{66, 68, 88, 19, 92, 10, 22}, "b0735d", 8.8598144E8f));
        }
        double dDoubleValue = ((Number) obj).doubleValue();
        if (dDoubleValue < -2.147483648E9d || dDoubleValue > 2.147483647E9d) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{122, 76, 85, 81, 23, 11, 87, 25, 78, 85, 9, 23, 81, 25, 87, 65, 17, 66, 91, 95, 24, 7, 87, 79, 86, 80, 76, 20, 12, 12, 64, 92, 95, 81, 23, 66, 70, 88, 86, 83, 0, 88, 20}, "4984eb", 1.810716985E9d) + dDoubleValue + NPStringFog.decode(new byte[]{74, 69, 34, 90, 92, 69, 29, 10, 19, 19, 85, 0, 5, 11, 70, 71, 87, 69, 17, 22, 3, 19, 89, 69, 8, 10, 8, 84, 24, 10, 22, 69, 2, 92, 77, 7, 8, 0, 70, 90, 86, 22, 16, 0, 7, 87, 24, 10, 2, 69, 7, 93, 24, 12, 10, 17, 89}, "def38e", true));
        }
        return Integer.valueOf(((Number) obj).intValue());
    }

    private static Long convertLong(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).longValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (!(obj instanceof Double)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{119, 80, 10, 93, 3, 7, 17, 69, 12, 17, 5, 12, 95, 71, 6, 67, 18, 67, 80, 17, 21, 80, 10, 22, 84, 17, 12, 87, 70, 23, 72, 65, 6, 17}, "11c1fc", true) + obj.getClass().getName() + NPStringFog.decode(new byte[]{70, 23, 91, 19, 90, 13, 8, 4}, "fc436b", true, false));
        }
        Double d = (Double) obj;
        if (d.doubleValue() < -9.223372036854776E18d || d.doubleValue() > 9.223372036854776E18d) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{42, 66, 94, 4, 74, 91, 7, 23, 69, 0, 84, 71, 1, 23, 92, 20, 76, 18, 11, 81, 19, 87, 12, 31, 6, 94, 71, 65, 84, 93, 10, 80, 19, 19, 89, 92, 3, 82, 9, 65}, "d73a82", false, false) + d + NPStringFog.decode(new byte[]{77, 18, 119, 91, 6, 21, 26, 93, 70, 18, 15, 80, 2, 92, 19, 70, 13, 21, 22, 65, 86, 18, 3, 21, 7, 93, 70, 80, 14, 80, 67, 91, 93, 65, 22, 80, 2, 86, 19, 93, 4, 21, 2, 18, 95, 93, 12, 82, 92}, "c232b5", -1.466368459E9d));
        }
        return Long.valueOf(d.longValue());
    }

    private static String convertString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{118, 84, 81, 84, 1, 92, 16, 65, 87, 24, 7, 87, 94, 67, 93, 74, 16, 24, 70, 84, 84, 77, 1, 24, 95, 83, 24, 76, 29, 72, 85, 21}, "0588d8", 1.850581301E9d) + obj.getClass().getName() + NPStringFog.decode(new byte[]{22, 18, 91, 67, 96, 77, 68, 15, 90, 4}, "6f4c39", true, true));
    }

    public static <T> T convertToCustomClass(Object obj, GenericTypeIndicator<T> genericTypeIndicator) {
        Type genericSuperclass = genericTypeIndicator.getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{123, 89, 17, 69, 4, 22, 81, 95, 23, 0, 6, 66, 21, 69, 16, 7, 6, 90, 84, 69, 22, 69, 10, 80, 21, 113, 0, 11, 0, 68, 92, 85, 49, 28, 21, 83, 124, 88, 1, 12, 6, 87, 65, 89, 23, 95, 69}, "56eee6", -1551484403L) + genericSuperclass);
        }
        ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
        if (parameterizedType.getRawType().equals(GenericTypeIndicator.class)) {
            return (T) deserializeToType(obj, parameterizedType.getActualTypeArguments()[0]);
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{125, 92, 22, 24, 86, 21, 87, 90, 16, 93, 84, 65, 19, 64, 23, 90, 84, 89, 82, 64, 17, 24, 88, 83, 19, 116, 7, 86, 82, 71, 90, 80, 54, 65, 71, 80, 122, 93, 6, 81, 84, 84, 71, 92, 16, 2, 23}, "33b875", false) + genericSuperclass);
    }

    public static <T> T convertToCustomClass(Object obj, Class<T> cls) {
        return (T) deserializeToClass(obj, cls);
    }

    public static Object convertToPlainJavaTypes(Object obj) {
        return serialize(obj);
    }

    public static Map<String, Object> convertToPlainJavaTypes(Map<String, Object> map) {
        Object objSerialize = serialize(map);
        Utilities.hardAssert(objSerialize instanceof Map);
        return (Map) objSerialize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T deserializeToClass(Object obj, Class<T> cls) {
        if (obj == 0) {
            return null;
        }
        if (cls.isPrimitive() || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls) || Character.class.isAssignableFrom(cls)) {
            return (T) deserializeToPrimitive(obj, cls);
        }
        if (String.class.isAssignableFrom(cls)) {
            return (T) convertString(obj);
        }
        if (cls.isArray()) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{112, 12, 86, 70, 92, 16, 71, 10, 86, 87, 25, 22, 92, 67, 121, 66, 75, 3, 74, 16, 24, 89, 74, 66, 93, 12, 76, 16, 74, 23, 67, 19, 87, 66, 77, 7, 87, 79, 24, 64, 85, 7, 82, 16, 93, 16, 76, 17, 86, 67, 116, 89, 74, 22, 64, 10, 86, 67, 77, 7, 82, 7}, "3c809b", -1.2150664E9f));
        }
        if (cls.getTypeParameters().length <= 0) {
            return !cls.equals(Object.class) ? cls.isEnum() ? (T) deserializeToEnum(obj, cls) : (T) convertBean(obj, cls) : obj;
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{122, 9, 4, 71, 22, 25}, "9ee4e9", true) + cls.getName() + NPStringFog.decode(new byte[]{21, 90, 7, 74, 23, 4, 80, 92, 3, 75, 94, 0, 21, 70, 31, 73, 82, 67, 69, 83, 20, 88, 90, 6, 65, 87, 20, 74, 27, 67, 69, 94, 3, 88, 68, 6, 21, 71, 21, 92, 23, 36, 80, 92, 3, 75, 94, 0, 97, 75, 22, 92, 126, 13, 81, 91, 5, 88, 67, 12, 71, 18, 15, 87, 68, 23, 80, 83, 2}, "52f97c", 1.837098852E9d));
    }

    private static <T> T deserializeToEnum(Object obj, Class<T> cls) {
        if (!(obj instanceof String)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{32, 78, 66, 83, 0, 71, 0, 82, 18, 87, 67, 96, 17, 68, 91, 88, 4, 19, 18, 94, 91, 90, 6, 19, 1, 83, 65, 83, 17, 90, 4, 90, 91, 76, 10, 93, 2, 22, 70, 89, 67, 86, 11, 67, 95, 22}, "e626c3", 4.09530704E8d) + cls + NPStringFog.decode(new byte[]{67, 87, 64, 16, 21, 86, 12, 65, 21, 5, 21}, "c55d51", false, false) + obj.getClass());
        }
        String str = (String) obj;
        try {
            return (T) Enum.valueOf(cls, str);
        } catch (IllegalArgumentException e) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{123, 91, 16, 15, 92, 68, 86, 91, 17, 67, 94, 13, 86, 80, 69, 6, 86, 17, 85, 20, 19, 2, 84, 17, 93, 20, 10, 5, 24}, "84ec8d", true, true) + cls.getName() + NPStringFog.decode(new byte[]{65, 83, 87, 75, 22, 21, 0, 89, 77, 92, 22, 65}, "a5896c", 1.2794081E9f) + str + NPStringFog.decode(new byte[]{65}, "c7d49a", false, false));
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [T, java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r2v12, types: [T, java.util.HashMap] */
    private static <T> T deserializeToParameterizedType(Object obj, ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        if (List.class.isAssignableFrom(cls)) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (!(obj instanceof List)) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{125, 25, 70, 82, 87, 64, 93, 5, 22, 86, 20, 120, 81, 18, 66, 23, 67, 92, 81, 13, 83, 23, 80, 81, 75, 4, 68, 94, 85, 88, 81, 27, 95, 89, 83, 24, 24, 3, 67, 67, 20, 83, 87, 21, 22, 86, 20}, "8a6744", -1.9184902E8f) + obj.getClass());
            }
            List list = (List) obj;
            ?? r0 = (T) new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                r0.add(deserializeToType(it.next(), type));
            }
            return r0;
        }
        if (Map.class.isAssignableFrom(cls)) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            Type type3 = parameterizedType.getActualTypeArguments()[1];
            if (!type2.equals(String.class)) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{118, 87, 9, 76, 18, 126, 88, 73, 22, 21, 69, 90, 77, 81, 69, 70, 70, 65, 80, 87, 2, 21, 89, 86, 64, 74, 69, 84, 64, 86, 25, 74, 16, 69, 66, 92, 75, 77, 0, 81, 30, 19, 91, 76, 17, 21, 84, 92, 76, 87, 1, 21, 127, 82, 73, 25, 18, 92, 70, 91, 25, 82, 0, 76, 18, 71, 64, 73, 0, 21}, "99e523", -1464119315L) + type2);
            }
            Map<String, Object> mapExpectMap = expectMap(obj);
            ?? r2 = (T) new HashMap();
            for (Map.Entry<String, Object> entry : mapExpectMap.entrySet()) {
                r2.put(entry.getKey(), deserializeToType(entry.getValue(), type3));
            }
            return r2;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{113, 12, 9, 85, 81, 87, 70, 10, 10, 87, 71, 20, 83, 17, 0, 25, 90, 91, 70, 67, 22, 76, 68, 68, 93, 17, 17, 92, 80, 24, 18, 19, 9, 92, 85, 71, 87, 67, 16, 74, 81, 20, 126, 10, 22, 77, 71, 20, 91, 13, 22, 77, 81, 85, 86}, "2ce944", -10809));
        }
        Map<String, Object> mapExpectMap2 = expectMap(obj);
        BeanMapper beanMapperLoadOrCreateBeanMapperForClass = loadOrCreateBeanMapperForClass(cls);
        HashMap map = new HashMap();
        TypeVariable<Class<T>>[] typeParameters = beanMapperLoadOrCreateBeanMapperForClass.clazz.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length != typeParameters.length) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 81, 75, 93, 88, 67, 5, 80, 93, 84, 25, 91, 3, 86, 95, 68, 81, 68, 70, 94, 87, 66, 25, 67, 31, 72, 93, 16, 79, 86, 20, 81, 89, 82, 85, 82, 21, 24, 89, 94, 93, 23, 7, 91, 76, 69, 88, 91, 70, 76, 65, 64, 92, 68}, "f88097", 7.7462554E8f));
        }
        for (int i = 0; i < typeParameters.length; i++) {
            map.put(typeParameters[i], actualTypeArguments[i]);
        }
        return (T) beanMapperLoadOrCreateBeanMapperForClass.deserialize(mapExpectMap2, map);
    }

    private static <T> T deserializeToPrimitive(Object obj, Class<T> cls) {
        if (Integer.class.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls)) {
            return (T) convertInteger(obj);
        }
        if (Boolean.class.isAssignableFrom(cls) || Boolean.TYPE.isAssignableFrom(cls)) {
            return (T) convertBoolean(obj);
        }
        if (Double.class.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls)) {
            return (T) convertDouble(obj);
        }
        if (Long.class.isAssignableFrom(cls) || Long.TYPE.isAssignableFrom(cls)) {
            return (T) convertLong(obj);
        }
        if (Float.class.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls)) {
            return (T) Float.valueOf(convertDouble(obj).floatValue());
        }
        throw new DatabaseException(String.format(NPStringFog.decode(new byte[]{117, 0, 74, 92, 64, 95, 80, 9, 80, 67, 91, 88, 86, 69, 79, 88, 94, 67, 84, 22, 25, 77, 93, 22, 20, 22, 25, 80, 65, 22, 95, 10, 77, 25, 65, 67, 65, 21, 86, 75, 70, 83, 85}, "1e9926", 3.2006448E8f), cls.getSimpleName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T deserializeToType(Object obj, Type type) {
        if (obj == null) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return (T) deserializeToParameterizedType(obj, (ParameterizedType) type);
        }
        if (type instanceof Class) {
            return (T) deserializeToClass(obj, (Class) type);
        }
        if (type instanceof WildcardType) {
            if (((WildcardType) type).getLowerBounds().length > 0) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{118, 84, 95, 87, 65, 92, 82, 17, 93, 93, 68, 80, 67, 28, 83, 93, 70, 91, 85, 84, 85, 18, 68, 92, 93, 85, 82, 83, 65, 81, 17, 69, 72, 66, 86, 70, 17, 80, 67, 87, 19, 91, 94, 69, 17, 65, 70, 69, 65, 94, 67, 70, 86, 81}, "111235", false, true));
            }
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            Utilities.hardAssert(upperBounds.length > 0, NPStringFog.decode(new byte[]{99, 13, 10, 2, 91, 84, 70, 0, 70, 18, 65, 69, 81, 68}, "4dff85", -7358) + type + NPStringFog.decode(new byte[]{24, 8, 23, 16, 93, 12, 76, 65, 17, 64, 67, 6, 74, 65, 6, 95, 70, 13, 92, 4, 0, 30}, "8ad03c", 18051));
            return (T) deserializeToType(obj, upperBounds[0]);
        }
        if (type instanceof TypeVariable) {
            Type[] bounds = ((TypeVariable) type).getBounds();
            Utilities.hardAssert(bounds.length > 0, NPStringFog.decode(new byte[]{96, 11, 90, 86, 84, 86, 69, 6, 22, 70, 78, 71, 82, 66}, "7b6277", -12377) + type + NPStringFog.decode(new byte[]{67, 91, 23, 65, 8, 90, 23, 18, 17, 17, 22, 80, 17, 18, 6, 14, 19, 91, 7, 87, 0, 79}, "c2daf5", -14238));
            return (T) deserializeToType(obj, bounds[0]);
        }
        if (type instanceof GenericArrayType) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{116, 85, 10, 85, 64, 91, 80, 16, 37, 66, 64, 83, 74, 67, 68, 81, 64, 87, 19, 94, 11, 68, 18, 65, 70, 64, 20, 95, 64, 70, 86, 84, 72, 16, 66, 94, 86, 81, 23, 85, 18, 71, 64, 85, 68, 124, 91, 65, 71, 67, 68, 89, 92, 65, 71, 85, 5, 84}, "30d022", true));
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 92, 15, 86, 90, 71, 94, 18, 16, 65, 69, 85, 16, 87, 10, 91, 90, 69, 94, 70, 1, 74, 80, 84, 10, 18}, "02d850", 1355342424L) + type);
    }

    private static Map<String, Object> expectMap(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new DatabaseException(NPStringFog.decode(new byte[]{32, 29, 67, 1, 6, 69, 0, 1, 19, 5, 69, 124, 4, 21, 19, 19, 13, 88, 9, 0, 19, 0, 0, 66, 0, 23, 90, 5, 9, 88, 31, 12, 93, 3, 73, 17, 7, 16, 71, 68, 2, 94, 17, 69, 82, 68}, "ee3de1", 1.210060693E9d) + obj.getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> BeanMapper<T> loadOrCreateBeanMapperForClass(Class<T> cls) {
        ConcurrentMap<Class<?>, BeanMapper<?>> concurrentMap = mappers;
        BeanMapper<T> beanMapper = (BeanMapper) concurrentMap.get(cls);
        if (beanMapper != null) {
            return beanMapper;
        }
        BeanMapper<T> beanMapper2 = (BeanMapper<T>) new BeanMapper(cls);
        concurrentMap.put((Class<?>) cls, (BeanMapper<?>) beanMapper2);
        return beanMapper2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Object serialize(T t) {
        if (t == 0) {
            return null;
        }
        if (t instanceof Number) {
            if ((t instanceof Float) || (t instanceof Double)) {
                double dDoubleValue = ((Number) t).doubleValue();
                return (dDoubleValue > 9.223372036854776E18d || dDoubleValue < -9.223372036854776E18d || Math.floor(dDoubleValue) != dDoubleValue) ? Double.valueOf(dDoubleValue) : Long.valueOf(((Number) t).longValue());
            }
            if ((t instanceof Long) || (t instanceof Integer)) {
                return t;
            }
            throw new DatabaseException(String.format(NPStringFog.decode(new byte[]{42, 20, 88, 85, 85, 65, 23, 65, 90, 81, 16, 71, 29, 17, 80, 23, 21, 64, 68, 0, 71, 82, 16, 93, 11, 21, 21, 68, 69, 67, 20, 14, 71, 67, 85, 87, 72, 65, 69, 91, 85, 82, 23, 4, 21, 66, 67, 86, 68, 0, 91, 23, 89, 93, 16, 77, 21, 91, 95, 93, 3, 77, 21, 81, 92, 92, 5, 21, 21, 88, 66, 19, 0, 14, 64, 85, 92, 86}, "da5703", false), t.getClass().getSimpleName()));
        }
        if ((t instanceof String) || (t instanceof Boolean)) {
            return t;
        }
        if (t instanceof Character) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{33, 89, 86, 22, 82, 87, 22, 84, 69, 23, 19, 85, 16, 84, 23, 10, 92, 64, 66, 66, 66, 20, 67, 91, 16, 69, 82, 0, 31, 20, 18, 93, 82, 5, 64, 81, 66, 68, 68, 1, 19, 103, 22, 67, 94, 10, 84, 71}, "b17d34", -26621));
        }
        if (t instanceof Map) {
            HashMap map = new HashMap();
            for (Map.Entry entry : ((Map) t).entrySet()) {
                Object key = entry.getKey();
                if (!(key instanceof String)) {
                    throw new DatabaseException(NPStringFog.decode(new byte[]{124, 5, 68, 66, 18, 70, 88, 16, 92, 17, 92, 94, 95, 73, 71, 69, 64, 88, 95, 3, 20, 90, 87, 72, 66, 68, 85, 67, 87, 17, 95, 11, 64, 17, 65, 68, 65, 20, 91, 67, 70, 84, 85}, "1d4121", true, true));
                }
                map.put((String) key, serialize(entry.getValue()));
            }
            return map;
        }
        if (!(t instanceof Collection)) {
            if (t.getClass().isArray()) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{97, 86, 75, 94, 0, 91, 91, 73, 80, 89, 6, 23, 115, 65, 75, 86, 24, 68, 18, 90, 74, 23, 15, 88, 70, 19, 74, 66, 17, 71, 93, 65, 77, 82, 5, 27, 18, 67, 85, 82, 0, 68, 87, 19, 76, 68, 4, 23, 126, 90, 74, 67, 18, 23, 91, 93, 74, 67, 4, 86, 86}, "2397a7", 927266464L));
            }
            return t instanceof Enum ? ((Enum) t).name() : loadOrCreateBeanMapperForClass(t.getClass()).serialize(t);
        }
        if (!(t instanceof List)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{99, 0, 68, 10, 87, 8, 89, 31, 95, 13, 81, 68, 115, 10, 90, 15, 83, 7, 68, 12, 89, 13, 69, 68, 89, 22, 22, 13, 89, 16, 16, 22, 67, 19, 70, 11, 66, 17, 83, 7, 26, 68, 64, 9, 83, 2, 69, 1, 16, 16, 69, 6, 22, 40, 89, 22, 66, 16, 22, 13, 94, 22, 66, 6, 87, 0}, "0e6c6d", -205067454L));
        }
        List list = (List) t;
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(serialize(it.next()));
        }
        return arrayList;
    }
}
