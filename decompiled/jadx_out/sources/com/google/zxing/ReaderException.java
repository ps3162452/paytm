package com.google.zxing;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public abstract class ReaderException extends Exception {
    protected static final StackTraceElement[] NO_TRACE;
    protected static final boolean isStackTrace;

    static {
        isStackTrace = System.getProperty(NPStringFog.decode(new byte[]{22, 22, 16, 6, 85, 89, 23, 6, 76, 23, 86, 67, 17, 77, 1, 15, 82, 67, 22, 77, 18, 2, 71, 88}, "ecbc30", false, false)) != null;
        NO_TRACE = new StackTraceElement[0];
    }

    ReaderException() {
    }

    ReaderException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return null;
    }
}
