package org.apache.http.impl.entity;

import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LaxContentLengthStrategy implements ContentLengthStrategy {
    public LaxContentLengthStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 77, 80, 64}, "b082ad", false, false));
    }

    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 16, 83, 18}, "9fe13c", -18388));
    }
}
