package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import com.google.gson.internal.TroubleshootingGuide;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public class ReflectionHelper {
    private static final RecordHelper RECORD_HELPER;

    private static abstract class RecordHelper {
        private RecordHelper() {
        }

        public abstract Method getAccessor(Class<?> cls, Field field);

        abstract <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls);

        abstract String[] getRecordComponentNames(Class<?> cls);

        abstract boolean isRecord(Class<?> cls);
    }

    private static class RecordNotSupportedHelper extends RecordHelper {
        private RecordNotSupportedHelper() {
            super();
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public Method getAccessor(Class<?> cls, Field field) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{107, 6, 81, 89, 75, 5, 74, 67, 83, 68, 92, 65, 87, 12, 70, 22, 74, 20, 73, 19, 93, 68, 77, 4, 93, 67, 93, 88, 25, 21, 81, 10, 65, 22, 115, 55, 116, 79, 18, 66, 81, 8, 74, 67, 95, 83, 77, 9, 86, 7, 18, 69, 81, 14, 76, 15, 86, 22, 87, 14, 77, 67, 80, 83, 25, 2, 88, 15, 94, 83, 93}, "9c269a", false, false));
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 4, 1, 14, 75, 85, 16, 65, 3, 19, 92, 17, 13, 14, 22, 65, 74, 68, 19, 17, 13, 19, 77, 84, 7, 65, 13, 15, 25, 69, 11, 8, 17, 65, 115, 103, 46, 77, 66, 21, 81, 88, 16, 65, 15, 4, 77, 89, 12, 5, 66, 18, 81, 94, 22, 13, 6, 65, 87, 94, 23, 65, 0, 4, 25, 82, 2, 13, 14, 4, 93}, "caba91", -23466));
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        String[] getRecordComponentNames(Class<?> cls) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{98, 82, 83, 91, 71, 81, 67, 23, 81, 70, 80, 21, 94, 88, 68, 20, 70, 64, 64, 71, 95, 70, 65, 80, 84, 23, 95, 90, 21, 65, 88, 94, 67, 20, 127, 99, 125, 27, 16, 64, 93, 92, 67, 23, 93, 81, 65, 93, 95, 83, 16, 71, 93, 90, 69, 91, 84, 20, 91, 90, 68, 23, 82, 81, 21, 86, 81, 91, 92, 81, 81}, "070455", true, false));
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        boolean isRecord(Class<?> cls) {
            return false;
        }
    }

    private static class RecordSupportedHelper extends RecordHelper {
        private final Method getName;
        private final Method getRecordComponents;
        private final Method getType;
        private final Method isRecord;

        private RecordSupportedHelper() throws NoSuchMethodException, ClassNotFoundException {
            super();
            this.isRecord = Class.class.getMethod(NPStringFog.decode(new byte[]{89, 68, 97, 81, 87, 9, 66, 83}, "07344f", false, true), new Class[0]);
            this.getRecordComponents = Class.class.getMethod(NPStringFog.decode(new byte[]{80, 85, 67, 55, 93, 5, 88, 66, 83, 38, 87, 11, 71, 95, 89, 0, 86, 18, 68}, "707e8f", 1.3886949E9f), new Class[0]);
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{90, 5, 18, 2, 74, 14, 81, 10, 3, 77, 22, 7, 86, 8, 1, 0, 16, 76, 98, 1, 7, 12, 22, 6, 115, 11, 9, 19, 11, 12, 85, 10, 16}, "0ddcdb", 3.9677398E8f));
            this.getName = cls.getMethod(NPStringFog.decode(new byte[]{84, 6, 68, 119, 84, 9, 86}, "3c095d", 881741343L), new Class[0]);
            this.getType = cls.getMethod(NPStringFog.decode(new byte[]{3, 0, 71, 101, 24, 19, 1}, "de31ac", true, true), new Class[0]);
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public Method getAccessor(Class<?> cls, Field field) {
            try {
                return cls.getMethod(field.getName(), new Class[0]);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
            try {
                Object[] objArr = (Object[]) this.getRecordComponents.invoke(cls, new Object[0]);
                Class<?>[] clsArr = new Class[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    clsArr[i] = (Class) this.getType.invoke(objArr[i], new Object[0]);
                }
                return cls.getDeclaredConstructor(clsArr);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        String[] getRecordComponentNames(Class<?> cls) {
            int i = 0;
            try {
                Object[] objArr = (Object[]) this.getRecordComponents.invoke(cls, new Object[0]);
                String[] strArr = new String[objArr.length];
                while (true) {
                    int i2 = i;
                    if (i2 >= objArr.length) {
                        return strArr;
                    }
                    strArr[i2] = (String) this.getName.invoke(objArr[i2], new Object[0]);
                    i = i2 + 1;
                }
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        boolean isRecord(Class<?> cls) {
            try {
                return ((Boolean) this.isRecord.invoke(cls, new Object[0])).booleanValue();
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }
    }

    static {
        RecordHelper recordNotSupportedHelper;
        try {
            recordNotSupportedHelper = new RecordSupportedHelper();
        } catch (ReflectiveOperationException e) {
            recordNotSupportedHelper = new RecordNotSupportedHelper();
        }
        RECORD_HELPER = recordNotSupportedHelper;
    }

    private ReflectionHelper() {
    }

    private static void appendExecutableParameters(AccessibleObject accessibleObject, StringBuilder sb) {
        sb.append('(');
        Class<?>[] parameterTypes = accessibleObject instanceof Method ? ((Method) accessibleObject).getParameterTypes() : ((Constructor) accessibleObject).getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            if (i > 0) {
                sb.append(NPStringFog.decode(new byte[]{24, 19}, "43622e", -6.512943E8f));
            }
            sb.append(parameterTypes[i].getSimpleName());
        }
        sb.append(')');
    }

    public static String constructorToString(Constructor<?> constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        appendExecutableParameters(constructor, sb);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException createExceptionForRecordReflectionException(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{109, 12, 81, 74, 17, 3, 91, 22, 81, 86, 65, 52, 93, 4, 88, 87, 2, 18, 81, 20, 81, 125, 17, 3, 74, 3, 64, 91, 14, 8, 125, 26, 87, 87, 17, 18, 81, 13, 90, 18, 14, 5, 91, 23, 70, 64, 4, 2, 24, 74, 115, 65, 14, 8, 24, 80, 26, 3, 80, 72, 8, 75, 26, 18, 53, 9, 24, 17, 65, 66, 17, 9, 74, 22, 20, 120, 0, 16, 89, 66, 70, 87, 2, 9, 74, 6, 71, 30, 65, 20, 93, 4, 88, 87, 2, 18, 81, 13, 90, 18, 8, 21, 24, 23, 64, 91, 13, 15, 66, 7, 80, 18, 21, 9, 24, 16, 81, 83, 5, 70, 87, 23, 64, 18, 8, 8, 94, 13, 70, 95, 0, 18, 81, 13, 90, 18, 0, 4, 87, 23, 64, 18, 19, 3, 91, 13, 70, 86, 18, 72, 24, 35, 88, 94, 65, 18, 80, 7, 71, 87, 65, 15, 86, 20, 91, 81, 0, 18, 81, 13, 90, 65, 65, 14, 89, 18, 68, 87, 15, 21, 24, 3, 82, 70, 4, 20, 24, 11, 64, 18, 8, 21, 24, 7, 71, 70, 0, 4, 84, 11, 71, 90, 4, 2, 24, 22, 92, 83, 21, 70, 74, 7, 87, 93, 19, 2, 75, 66, 81, 74, 8, 21, 76, 66, 93, 92, 65, 18, 80, 7, 20, 120, 55, 43, 22, 66, 96, 90, 8, 21, 24, 7, 76, 81, 4, 22, 76, 11, 91, 92, 65, 15, 75, 66, 65, 92, 4, 30, 72, 7, 87, 70, 4, 2, 24, 0, 81, 90, 0, 16, 81, 13, 70, 28}, "8b42af", false, false), reflectiveOperationException);
    }

    public static RuntimeException createExceptionForUnexpectedIllegalAccess(IllegalAccessException illegalAccessException) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 10, 7, 28, 70, 93, 80, 16, 7, 0, 22, 113, 95, 8, 7, 3, 87, 84, 114, 7, 1, 1, 69, 75, 118, 28, 1, 1, 70, 76, 90, 11, 12, 68, 89, 91, 80, 17, 16, 22, 83, 92, 19, 76, 37, 23, 89, 86, 19, 86, 76, 85, 7, 22, 3, 77, 76, 68, 117, 93, 65, 16, 3, 13, 88, 24, 97, 1, 4, 8, 83, 91, 71, 13, 13, 10, 119, 91, 80, 1, 17, 23, 112, 81, 95, 16, 7, 22, 22, 94, 86, 5, 22, 17, 68, 93, 64, 68, 16, 1, 71, 77, 90, 22, 7, 68, 124, 89, 69, 5, 66, 90, 11, 24, 10, 68, 22, 11, 22, 79, 92, 22, 9, 68, 85, 87, 65, 22, 7, 7, 66, 84, 74, 74, 66, 45, 80, 24, 74, 11, 23, 68, 87, 74, 86, 68, 12, 11, 66, 24, 70, 23, 11, 10, 81, 24, 97, 1, 4, 8, 83, 91, 71, 13, 13, 10, 119, 91, 80, 1, 17, 23, 112, 81, 95, 16, 7, 22, 26, 24, 65, 1, 18, 11, 68, 76, 19, 16, 10, 13, 69, 24, 71, 11, 66, 16, 94, 93, 19, 35, 17, 11, 88, 24, 94, 5, 11, 10, 66, 89, 90, 10, 7, 22, 69, 22}, "3dbd68", -14555), illegalAccessException);
    }

    public static String fieldToString(Field field) {
        return field.getDeclaringClass().getName() + NPStringFog.decode(new byte[]{22}, "58cd2f", -1096546277L) + field.getName();
    }

    public static String getAccessibleObjectDescription(AccessibleObject accessibleObject, boolean z) {
        String str;
        if (accessibleObject instanceof Field) {
            str = NPStringFog.decode(new byte[]{84, 15, 85, 90, 93, 21, 21}, "2f0695", 9410) + fieldToString((Field) accessibleObject) + NPStringFog.decode(new byte[]{17}, "693dea", -31535);
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb = new StringBuilder(method.getName());
            appendExecutableParameters(method, sb);
            str = NPStringFog.decode(new byte[]{14, 92, 69, 92, 92, 83, 67, 30}, "c91437", false, true) + method.getDeclaringClass().getName() + NPStringFog.decode(new byte[]{18}, "19699d", -3.79260356E8d) + sb.toString() + NPStringFog.decode(new byte[]{66}, "e14c29", 1359962772L);
        } else if (accessibleObject instanceof Constructor) {
            str = NPStringFog.decode(new byte[]{0, 89, 89, 68, 23, 71, 22, 85, 67, 88, 17, 21, 68}, "c677c5", true) + constructorToString((Constructor) accessibleObject) + NPStringFog.decode(new byte[]{21}, "223c30", -1.762861266E9d);
        } else {
            str = NPStringFog.decode(new byte[]{90, 20, 15, 91, 89, 14, 17, 15, 65, 113, 84, 2, 3, 18, 18, 89, 85, 13, 3, 46, 3, 90, 82, 2, 18, 95, 65}, "faa07a", -1.1953649E9f) + accessibleObject.toString();
        }
        if (!z || !Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    public static Method getAccessor(Class<?> cls, Field field) {
        return RECORD_HELPER.getAccessor(cls, field);
    }

    public static <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
        return RECORD_HELPER.getCanonicalRecordConstructor(cls);
    }

    private static String getInaccessibleTroubleshootingSuffix(Exception exc) {
        if (!exc.getClass().getName().equals(NPStringFog.decode(new byte[]{88, 83, 18, 80, 31, 10, 83, 92, 3, 31, 67, 3, 84, 94, 1, 82, 69, 72, 123, 92, 5, 82, 82, 3, 65, 65, 13, 83, 93, 3, 125, 80, 14, 84, 82, 18, 119, 74, 7, 84, 65, 18, 91, 93, 10}, "22d11f", 1.900701356E9d))) {
            return "";
        }
        String message = exc.getMessage();
        return NPStringFog.decode(new byte[]{61, 53, 1, 1, 65}, "7fdda9", -10880) + TroubleshootingGuide.createUrl((message == null || !message.contains(NPStringFog.decode(new byte[]{22, 90, 18, 95, 14, 5, 23, 89, 87, 18, 2, 14, 15, 27, 85, 93, 14, 6, 14, 80, 28, 85, 18, 14, 12}, "b522aa", 13267))) ? NPStringFog.decode(new byte[]{65, 3, 82, 9, 86, 1, 71, 15, 91, 11, 30, 11, 93, 7, 87, 6, 86, 17, 64, 15, 86, 9, 86}, "3f4e3b", true) : NPStringFog.decode(new byte[]{22, 6, 87, 88, 6, 81, 16, 10, 94, 90, 78, 91, 10, 2, 82, 87, 6, 65, 23, 10, 83, 88, 6, 31, 16, 12, 28, 89, 12, 86, 17, 15, 84, 25, 4, 65, 11, 13}, "dc14c2", true, false));
    }

    public static String[] getRecordComponentNames(Class<?> cls) {
        return RECORD_HELPER.getRecordComponentNames(cls);
    }

    public static boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        return !isStatic(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public static boolean isRecord(Class<?> cls) {
        return RECORD_HELPER.isRecord(cls);
    }

    public static boolean isStatic(Class<?> cls) {
        return Modifier.isStatic(cls.getModifiers());
    }

    public static void makeAccessible(AccessibleObject accessibleObject) throws JsonIOException {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e) {
            throw new JsonIOException(NPStringFog.decode(new byte[]{34, 7, 93, 15, 82, 81, 68, 11, 85, 8, 94, 91, 3, 70}, "df4c75", -1.957616724E9d) + getAccessibleObjectDescription(accessibleObject, false) + NPStringFog.decode(new byte[]{19, 84, 2, 2, 3, 23, 64, 92, 3, 13, 3, 95, 19, 80, 8, 21, 14, 1, 65, 21, 8, 15, 5, 22, 86, 84, 18, 4, 70, 13, 71, 70, 65, 23, 15, 23, 90, 87, 8, 13, 15, 16, 74, 21, 14, 19, 70, 19, 65, 92, 21, 4, 70, 5, 19, 86, 20, 18, 18, 11, 94, 21, 53, 24, 22, 1, 114, 81, 0, 17, 18, 1, 65, 21, 7, 14, 20, 68, 90, 65, 18, 65, 2, 1, 80, 89, 0, 19, 15, 10, 84, 21, 21, 24, 22, 1, 29}, "35aafd", -7.881263E8f) + getInaccessibleTroubleshootingSuffix(e), e);
        }
    }

    public static String tryMakeAccessible(Constructor<?> constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e) {
            return NPStringFog.decode(new byte[]{114, 5, 81, 14, 87, 93, 20, 9, 89, 9, 91, 87, 83, 68, 91, 13, 92, 74, 64, 22, 77, 1, 70, 86, 70, 68, 31}, "4d8b29", false) + constructorToString(constructor) + NPStringFog.decode(new byte[]{31, 20, 83, 5, 90, 80, 75, 71, 91, 4, 85, 80, 3, 20, 87, 15, 77, 93, 93, 70, 18, 15, 87, 86, 74, 81, 83, 21, 92, 21, 81, 64, 65, 70, 79, 92, 75, 93, 80, 15, 85, 92, 76, 77, 18, 9, 75, 21, 79, 70, 91, 18, 92, 21, 89, 20, 81, 19, 74, 65, 87, 89, 18, 47, 87, 70, 76, 85, 92, 5, 92, 118, 74, 81, 83, 18, 86, 71, 24, 91, 64, 70, 109, 76, 72, 81, 115, 2, 88, 69, 76, 81, 64, 70, 95, 90, 74, 20, 91, 18, 74, 21, 92, 81, 81, 10, 88, 71, 81, 90, 85, 70, 77, 76, 72, 81, 8, 70}, "842f95", -3.3075072E7f) + e.getMessage() + getInaccessibleTroubleshootingSuffix(e);
        }
    }
}
