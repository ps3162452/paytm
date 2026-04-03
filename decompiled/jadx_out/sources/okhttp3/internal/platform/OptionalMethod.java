package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
class OptionalMethod<T> {
    private final String methodName;
    private final Class[] methodParams;
    private final Class<?> returnType;

    OptionalMethod(Class<?> cls, String str, Class... clsArr) {
        this.returnType = cls;
        this.methodName = str;
        this.methodParams = clsArr;
    }

    private Method getMethod(Class<?> cls) {
        if (this.methodName == null) {
            return null;
        }
        Method publicMethod = getPublicMethod(cls, this.methodName, this.methodParams);
        if (publicMethod == null || this.returnType == null || this.returnType.isAssignableFrom(publicMethod.getReturnType())) {
            return publicMethod;
        }
        return null;
    }

    private static Method getPublicMethod(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
                return method;
            } catch (NoSuchMethodException e) {
                return method;
            }
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    public Object invoke(T t, Object... objArr) throws InvocationTargetException {
        Method method = getMethod(t.getClass());
        if (method == null) {
            throw new AssertionError(NPStringFog.decode(new byte[]{116, 83, 21, 81, 11, 85, 25}, "96a9d1", 177611864L) + this.methodName + NPStringFog.decode(new byte[]{25, 10, 87, 66, 24, 22, 76, 20, 72, 89, 74, 17, 92, 0, 24, 80, 87, 23, 25, 11, 90, 92, 93, 6, 77, 68}, "9d868e", true) + t);
        }
        try {
            return method.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError(NPStringFog.decode(new byte[]{97, 94, 85, 76, 20, 81, 87, 68, 85, 80, 8, 77, 20, 83, 95, 65, 8, 80, 20, 94, 95, 64, 68, 87, 85, 92, 92, 14, 68}, "4004d4", -6535) + method);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    public Object invokeOptional(T t, Object... objArr) throws InvocationTargetException {
        Method method = getMethod(t.getClass());
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    public Object invokeOptionalWithoutCheckedException(T t, Object... objArr) {
        try {
            return invokeOptional(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError(NPStringFog.decode(new byte[]{109, 90, 4, 72, 71, 81, 91, 64, 4, 84, 23, 81, 64, 87, 4, 64, 67, 93, 87, 90}, "84a074", 806598616L));
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object invokeWithoutCheckedException(T t, Object... objArr) {
        try {
            return invoke(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError(NPStringFog.decode(new byte[]{55, 86, 80, 75, 68, 93, 1, 76, 80, 87, 20, 93, 26, 91, 80, 67, 64, 81, 13, 86}, "b85348", 4.8720134E8f));
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean isSupported(T t) {
        return getMethod(t.getClass()) != null;
    }
}
