package org.apache.http.impl.io;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequestFactory;
import org.apache.http.ParseException;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpRequestParser extends AbstractMessageParser {
    public HttpRequestParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpRequestFactory httpRequestFactory, HttpParams httpParams) {
        super((SessionInputBuffer) null, (LineParser) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 68, 67, 86, 23}, "506462", true));
    }

    @Override // org.apache.http.impl.io.AbstractMessageParser
    protected HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws HttpException, ParseException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 18, 70, 90, 18}, "0f3833", 1268163524L));
    }
}
