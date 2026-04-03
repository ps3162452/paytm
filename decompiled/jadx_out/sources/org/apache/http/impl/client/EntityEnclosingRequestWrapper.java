package org.apache.http.impl.client;

import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class EntityEnclosingRequestWrapper extends RequestWrapper implements HttpEntityEnclosingRequest {
    public EntityEnclosingRequestWrapper(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws ProtocolException {
        super((HttpRequest) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 67, 91, 67}, "2a69b6", false, true));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 64, 20, 84, 18}, "d4a639", true));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 68, 64, 80, 24}, "60529d", -17107));
    }

    @Override // org.apache.http.impl.client.RequestWrapper
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 23, 91, 67}, "0db9b3", -5.5031955E8f));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 21, 66, 84, 64}, "fa76aa", false, true));
    }
}
