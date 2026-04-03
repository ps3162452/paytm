package org.apache.http.impl.client;

import n.NPStringFog;
import org.apache.http.params.AbstractHttpParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ClientParamsStack extends AbstractHttpParams {
    protected final HttpParams applicationParams;
    protected final HttpParams clientParams;
    protected final HttpParams overrideParams;
    protected final HttpParams requestParams;

    public ClientParamsStack(ClientParamsStack clientParamsStack) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 23, 70, 7, 23}, "6c3e65", false));
    }

    public ClientParamsStack(ClientParamsStack clientParamsStack, HttpParams httpParams, HttpParams httpParams2, HttpParams httpParams3, HttpParams httpParams4) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 71, 66, 82, 67}, "a370b9", true, false));
    }

    public ClientParamsStack(HttpParams httpParams, HttpParams httpParams2, HttpParams httpParams3, HttpParams httpParams4) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 68, 84, 16}, "e61616", -1.499643354E9d));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams copy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 76, 80, 71}, "4a92f0", true, true));
    }

    public final HttpParams getApplicationParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 18, 17, 91, 24}, "ffd99a", 1137574550L));
    }

    public final HttpParams getClientParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 65, 83, 17}, "d24106", -7735));
    }

    public final HttpParams getOverrideParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 64, 4, 16}, "125f1f", 1.6282827E8f));
    }

    @Override // org.apache.http.params.HttpParams
    public Object getParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 64, 6, 68}, "d55de4", true, false));
    }

    public final HttpParams getRequestParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 67, 80, 66}, "9062c6", -2.782405E8f));
    }

    @Override // org.apache.http.params.HttpParams
    public boolean removeParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 20, 3, 66}, "97aac2", -7386));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setParameter(String str, Object obj) throws UnsupportedOperationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 64, 68, 84, 69}, "2416df", -5.43593661E8d));
    }
}
