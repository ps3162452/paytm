package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.ParseException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHeader implements Header {
    public BasicHeader(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 19, 84, 17}, "dff609", false, false));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 16, 91, 64}, "2fe9a7", true, true));
    }

    @Override // org.apache.http.Header
    public HeaderElement[] getElements() throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 65, 87, 66}, "4445c6", true));
    }

    @Override // org.apache.http.Header
    public String getName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 76, 66, 6, 21}, "287d4c", -1.543581028E9d));
    }

    @Override // org.apache.http.Header
    public String getValue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 71, 85, 19}, "4b272b", 30423));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 66, 0, 24}, "397b9b", true, true));
    }
}
