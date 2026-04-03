package com.google.zxing;

/* JADX INFO: loaded from: classes65.dex */
public final class ChecksumException extends ReaderException {
    private static final ChecksumException INSTANCE = new ChecksumException();

    static {
        INSTANCE.setStackTrace(NO_TRACE);
    }

    private ChecksumException() {
    }

    private ChecksumException(Throwable th) {
        super(th);
    }

    public static ChecksumException getChecksumInstance() {
        return isStackTrace ? new ChecksumException() : INSTANCE;
    }

    public static ChecksumException getChecksumInstance(Throwable th) {
        return isStackTrace ? new ChecksumException(th) : INSTANCE;
    }
}
