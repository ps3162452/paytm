package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
final class UnsafeReflectionAccessor extends ReflectionAccessor {
    private static Class unsafeClass;
    private final Object theUnsafe = getUnsafeInstance();
    private final Field overrideField = getOverrideField();

    UnsafeReflectionAccessor() {
    }

    private static Field getOverrideField() {
        try {
            return AccessibleObject.class.getDeclaredField(NPStringFog.decode(new byte[]{95, 19, 92, 16, 69, 12, 84, 0}, "0e9b7e", 7.84567337E8d));
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    private static Object getUnsafeInstance() {
        try {
            unsafeClass = Class.forName(NPStringFog.decode(new byte[]{23, 76, 89, 75, 85, 81, 23, 90, 25, 48, 86, 75, 5, 95, 82}, "d97e88", -1.1774113E9f));
            Field declaredField = unsafeClass.getDeclaredField(NPStringFog.decode(new byte[]{18, 91, 84, 98, 8, 18, 7, 85, 84}, "f317fa", false));
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.gson.internal.reflect.ReflectionAccessor
    public void makeAccessible(AccessibleObject accessibleObject) {
        if (makeAccessibleWithUnsafe(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e) {
            throw new JsonIOException(NPStringFog.decode(new byte[]{119, 68, 9, 88, 67, 81, 95, 66, 10, 82, 13, 21, 68, 23, 11, 89, 7, 91, 86, 78, 70, 80, 10, 87, 92, 83, 21, 22, 5, 93, 66, 23}, "07f6c2", 1333003507L) + accessibleObject + NPStringFog.decode(new byte[]{63, 88, 94, 1, 22, 64, 64, 87, 30, 8, 95, 64, 86, 23, 101, 11, 69, 82, 83, 92, 16, 11, 89, 71, 21, 95, 95, 16, 88, 87, 27, 51, 117, 12, 66, 91, 80, 75, 16, 18, 68, 90, 65, 92, 16, 4, 22, 80, 64, 74, 68, 10, 91, 19, 65, 64, 64, 0, 22, 82, 81, 88, 64, 17, 83, 65, 25, 25, 95, 23, 22, 94, 84, 82, 85, 69, 80, 90, 80, 85, 84, 22, 22, 82, 86, 90, 85, 22, 69, 90, 87, 85, 85, 73, 22, 92, 71, 25, 89, 11, 85, 95, 64, 93, 85, 69, 69, 70, 91, 23, 93, 12, 69, 80, 27, 108, 94, 22, 87, 85, 80, 23}, "590e63", -1.604510012E9d), e);
        }
    }

    boolean makeAccessibleWithUnsafe(AccessibleObject accessibleObject) {
        if (this.theUnsafe != null && this.overrideField != null) {
            try {
                unsafeClass.getMethod(NPStringFog.decode(new byte[]{69, 23, 17, 39, 88, 88, 89, 7, 4, 11}, "5bee77", true), Object.class, Long.TYPE, Boolean.TYPE).invoke(this.theUnsafe, accessibleObject, Long.valueOf(((Long) unsafeClass.getMethod(NPStringFog.decode(new byte[]{95, 86, 9, 93, 82, 21, 118, 93, 6, 84, 85, 46, 86, 82, 16, 93, 69}, "04c81a", false, true), Field.class).invoke(this.theUnsafe, this.overrideField)).longValue()), true);
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }
}
