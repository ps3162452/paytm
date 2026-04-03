package org.apache.http.impl.io;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpMessage;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpRequestWriter extends AbstractMessageWriter {
    public HttpRequestWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        super((SessionOutputBuffer) null, (LineFormatter) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 16, 80, 16}, "05e21b", false, true));
    }

    @Override // org.apache.http.impl.io.AbstractMessageWriter
    protected void writeHeadLine(HttpMessage httpMessage) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 17, 23, 3, 19}, "7eba2c", true, false));
    }
}
