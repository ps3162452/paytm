package org.apache.http.impl.io;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractMessageWriter implements HttpMessageWriter {
    protected final CharArrayBuffer lineBuf;
    protected final LineFormatter lineFormatter;
    protected final SessionOutputBuffer sessionBuffer;

    public AbstractMessageWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 68, 85, 69}, "ce17d0", false));
    }

    @Override // org.apache.http.io.HttpMessageWriter
    public void write(HttpMessage httpMessage) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 23, 69, 84, 64}, "1c06af", 1.595079813E9d));
    }

    protected abstract void writeHeadLine(HttpMessage httpMessage) throws IOException;
}
