package okhttp3.internal.http2;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class StreamResetException extends IOException {
    public final ErrorCode errorCode;

    public StreamResetException(ErrorCode errorCode) {
        super(NPStringFog.decode(new byte[]{21, 21, 70, 1, 4, 11, 70, 22, 85, 23, 69, 20, 3, 18, 81, 16, 95, 70}, "fa4def", -2.72541522E8d) + errorCode);
        this.errorCode = errorCode;
    }
}
