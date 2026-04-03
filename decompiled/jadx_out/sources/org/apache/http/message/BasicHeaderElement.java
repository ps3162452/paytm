package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHeaderElement implements HeaderElement {
    public BasicHeaderElement(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 20, 3, 20}, "0baa50", -4.140622E8f));
    }

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 64, 83, 25}, "74518c", -6272));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 19, 84, 25}, "8ef684", 1092636771L));
    }

    public boolean equals(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 70, 7, 19}, "163e23", 23736));
    }

    @Override // org.apache.http.HeaderElement
    public String getName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 21, 70, 80, 68}, "ca32ef", -1.1061997E9f));
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameter(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 67, 82, 19}, "e1602a", -4.39996047E8d));
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameterByName(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 19, 87, 19}, "05f525", true, true));
    }

    @Override // org.apache.http.HeaderElement
    public int getParameterCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 22, 90, 20}, "acc85f", 1.261724366E9d));
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair[] getParameters() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 71, 0, 67}, "122bb1", 6.319462E8f));
    }

    @Override // org.apache.http.HeaderElement
    public String getValue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 20, 6, 64}, "5eada5", -1.1901408E9f));
    }

    public int hashCode() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 66, 6, 19}, "657d20", false));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 16, 16, 6, 69}, "cdedd6", true));
    }
}
