package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class RouteException extends RuntimeException {
    private static final Method addSuppressedExceptionMethod;
    private IOException lastException;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod(NPStringFog.decode(new byte[]{89, 84, 81, 99, 71, 68, 72, 66, 80, 67, 65, 81, 92}, "805024", true), Throwable.class);
        } catch (Exception e) {
            declaredMethod = null;
        }
        addSuppressedExceptionMethod = declaredMethod;
    }

    public RouteException(IOException iOException) {
        super(iOException);
        this.lastException = iOException;
    }

    private void addSuppressedIfPossible(IOException iOException, IOException iOException2) {
        if (addSuppressedExceptionMethod != null) {
            try {
                addSuppressedExceptionMethod.invoke(iOException, iOException2);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
            }
        }
    }

    public void addConnectException(IOException iOException) {
        addSuppressedIfPossible(iOException, this.lastException);
        this.lastException = iOException;
    }

    public IOException getLastConnectException() {
        return this.lastException;
    }
}
