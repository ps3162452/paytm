package org.apache.http.impl.io;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpMessage;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpResponseWriter extends AbstractMessageWriter {
    public HttpResponseWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        super((SessionOutputBuffer) null, (LineFormatter) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 19, 90, 17}, "80f808", false));
    }

    @Override // org.apache.http.impl.io.AbstractMessageWriter
    protected void writeHeadLine(HttpMessage httpMessage) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 65, 0, 25}, "254b89", 6.984179E8f));
    }
}
