package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public abstract class UnsafeAllocator {
    static void assertInstantiable(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{112, 88, 23, 0, 22, 7, 88, 85, 6, 69, 7, 0, 87, 17, 23, 69, 6, 4, 25, 95, 13, 22, 16, 0, 87, 66, 10, 4, 16, 4, 93, 23, 67, 44, 10, 21, 92, 68, 5, 4, 7, 4, 25, 88, 2, 8, 1, 91, 25}, "96ceda", 5.529864E8f) + cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{118, 80, 66, 68, 70, 82, 84, 70, 17, 83, 88, 82, 68, 65, 17, 83, 85, 93, 16, 70, 17, 82, 81, 19, 94, 92, 66, 68, 85, 93, 67, 91, 80, 68, 81, 87, 22, 18, 114, 92, 85, 64, 68, 18, 95, 81, 89, 86, 13, 18}, "721043", -4175) + cls.getName());
        }
    }

    public static UnsafeAllocator create() {
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{75, 71, 94, 30, 92, 89, 75, 81, 30, 101, 95, 67, 89, 84, 85}, "820010", -5.106024E8f));
            Field declaredField = cls.getDeclaredField(NPStringFog.decode(new byte[]{70, 94, 4, 55, 92, 75, 83, 80, 4}, "26ab28", true));
            declaredField.setAccessible(true);
            return new UnsafeAllocator(cls.getMethod(NPStringFog.decode(new byte[]{81, 14, 14, 92, 6, 89, 68, 7, 43, 93, 22, 76, 81, 12, 1, 86}, "0bb3e8", true), Class.class), declaredField.get(null)) { // from class: com.google.gson.internal.UnsafeAllocator.1
                final Method val$allocateInstance;
                final Object val$unsafe;

                {
                    this.val$allocateInstance = method;
                    this.val$unsafe = obj;
                }

                @Override // com.google.gson.internal.UnsafeAllocator
                public <T> T newInstance(Class<T> cls2) throws Exception {
                    assertInstantiable(cls2);
                    return (T) this.val$allocateInstance.invoke(this.val$unsafe, cls2);
                }
            };
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod(NPStringFog.decode(new byte[]{2, 85, 23, 112, 87, 89, 22, 68, 17, 70, 91, 67, 10, 66, 42, 87}, "e0c387", 1.486040975E9d), Class.class);
                declaredMethod.setAccessible(true);
                int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod(NPStringFog.decode(new byte[]{94, 6, 71, 127, 11, 71, 68, 2, 94, 85, 0}, "0c06e4", 1.460647417E9d), Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new UnsafeAllocator(declaredMethod2, iIntValue) { // from class: com.google.gson.internal.UnsafeAllocator.2
                    final int val$constructorId;
                    final Method val$newInstance;

                    {
                        this.val$newInstance = declaredMethod2;
                        this.val$constructorId = iIntValue;
                    }

                    @Override // com.google.gson.internal.UnsafeAllocator
                    public <T> T newInstance(Class<T> cls2) throws Exception {
                        assertInstantiable(cls2);
                        return (T) this.val$newInstance.invoke(null, cls2, Integer.valueOf(this.val$constructorId));
                    }
                };
            } catch (Exception e2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod(NPStringFog.decode(new byte[]{90, 86, 78, 127, 15, 67, 64, 82, 87, 85, 4}, "4396a0", -4.35237364E8d), Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new UnsafeAllocator(declaredMethod3) { // from class: com.google.gson.internal.UnsafeAllocator.3
                        final Method val$newInstance;

                        {
                            this.val$newInstance = declaredMethod3;
                        }

                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) throws Exception {
                            assertInstantiable(cls2);
                            return (T) this.val$newInstance.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.4
                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) {
                            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{113, 87, 10, 95, 12, 68, 18, 87, 8, 93, 12, 83, 83, 66, 1, 17}, "26d1c0", 1.661453693E9d) + cls2);
                        }
                    };
                }
            }
        }
    }

    public abstract <T> T newInstance(Class<T> cls) throws Exception;
}
