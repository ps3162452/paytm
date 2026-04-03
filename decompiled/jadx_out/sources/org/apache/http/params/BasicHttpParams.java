package org.apache.http.params;

import java.io.Serializable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class BasicHttpParams extends AbstractHttpParams implements Serializable {
    public BasicHttpParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 16, 84, 67}, "88e6bd", false, false));
    }

    public void clear() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 71, 4, 18}, "142f30", -9407251.0f));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 66, 6, 25}, "147d81", -3.4038845E8f));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams copy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 69, 66, 6, 18}, "517d3e", -825776432L));
    }

    protected void copyParams(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 77, 7, 25}, "a98e85", true));
    }

    @Override // org.apache.http.params.HttpParams
    public Object getParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 23, 84, 64}, "82b6ab", 493334848L));
    }

    public boolean isParameterSet(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 23, 86, 67}, "59b4b7", -1.9712023E9f));
    }

    public boolean isParameterSetLocally(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 23, 68, 4, 64}, "8c1fa8", true, true));
    }

    @Override // org.apache.http.params.HttpParams
    public boolean removeParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 68, 80, 69}, "8a12d4", false, false));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setParameter(String str, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 20, 3, 22}, "42aa7e", -1142720065L));
    }

    public void setParameters(String[] strArr, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 77, 22, 84, 24}, "99c694", true, false));
    }
}
