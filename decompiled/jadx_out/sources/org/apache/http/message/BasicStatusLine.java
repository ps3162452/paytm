package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicStatusLine implements StatusLine {
    public BasicStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 77, 81, 68}, "ae83e3", -1.515927188E9d));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 77, 85, 17}, "4a870c", -6673));
    }

    @Override // org.apache.http.StatusLine
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 70, 77, 91, 23}, "728966", 1960226418L));
    }

    @Override // org.apache.http.StatusLine
    public String getReasonPhrase() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 67, 87, 21}, "426544", true, false));
    }

    @Override // org.apache.http.StatusLine
    public int getStatusCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 77, 85, 21}, "65874a", 9653));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 67, 1, 19}, "6d6c29", -7.182486E8f));
    }
}
