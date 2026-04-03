package org.apache.http.impl.io;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractMessageParser implements HttpMessageParser {
    protected final LineParser lineParser;

    public AbstractMessageParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 16, 19, 83, 24}, "cdf191", -448));
    }

    public static Header[] parseHeaders(SessionInputBuffer sessionInputBuffer, int i, int i2, LineParser lineParser) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 77, 91, 66}, "4a89cb", -1.184472053E9d));
    }

    @Override // org.apache.http.io.HttpMessageParser
    public HttpMessage parse() throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 68, 0, 17}, "341b0d", -5.446223E8f));
    }

    protected abstract HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws HttpException, ParseException, IOException;
}
