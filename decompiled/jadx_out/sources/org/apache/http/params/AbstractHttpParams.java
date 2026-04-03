package org.apache.http.params;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpParams implements HttpParams {
    protected AbstractHttpParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 23, 87, 19}, "1fb521", 1.0570311E9f));
    }

    @Override // org.apache.http.params.HttpParams
    public boolean getBooleanParameter(String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 19, 81, 68}, "edf3e4", true, false));
    }

    @Override // org.apache.http.params.HttpParams
    public double getDoubleParameter(String str, double d) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 71, 4, 71}, "842ff7", 1.821401931E9d));
    }

    @Override // org.apache.http.params.HttpParams
    public int getIntParameter(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 64, 64, 4, 67}, "c45fbd", 1.261001144E9d));
    }

    @Override // org.apache.http.params.HttpParams
    public long getLongParameter(String str, long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 64, 91, 22}, "bb5972", 1.1692916E8f));
    }

    @Override // org.apache.http.params.HttpParams
    public boolean isParameterFalse(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 77, 3, 24}, "ad8a93", 2.0206168E9f));
    }

    @Override // org.apache.http.params.HttpParams
    public boolean isParameterTrue(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 17, 86, 24}, "47d498", 1.4445321E9f));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setBooleanParameter(String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 77, 66, 4, 24}, "097f9c", false, false));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setDoubleParameter(String str, double d) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 66, 87, 64}, "a075ad", 26184));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setIntParameter(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 77, 0, 23}, "c68b68", -924493767L));
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setLongParameter(String str, long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 22, 85, 25}, "25c78d", -1.5691068E9f));
    }
}
