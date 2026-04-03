package org.apache.http.impl.entity;

import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class StrictContentLengthStrategy implements ContentLengthStrategy {
    public StrictContentLengthStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 64, 3, 22}, "a05a7d", -13080));
    }

    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 64, 90, 66}, "d758ce", true, true));
    }
}
