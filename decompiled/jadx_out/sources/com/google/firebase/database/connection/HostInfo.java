package com.google.firebase.database.connection;

import java.net.URI;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class HostInfo {
    private static final String LAST_SESSION_ID_PARAM = NPStringFog.decode(new byte[]{14, 23}, "bd722b", -92209794L);
    private static final String VERSION_PARAM = NPStringFog.decode(new byte[]{23}, "a8582b", 1176061359L);
    private final String host;
    private final String namespace;
    private final boolean secure;

    public HostInfo(String str, String str2, boolean z) {
        this.host = str;
        this.namespace = str2;
        this.secure = z;
    }

    public static URI getConnectionUrl(String str, boolean z, String str2, String str3) {
        String str4 = (z ? NPStringFog.decode(new byte[]{78, 71, 71}, "94472c", false) : NPStringFog.decode(new byte[]{71, 66}, "01bf65", -27323)) + NPStringFog.decode(new byte[]{14, 24, 29}, "472073", false, false) + str + NPStringFog.decode(new byte[]{22, 77, 18, 64, 94, 95, 74, 94}, "9ce3a1", 8.072534E8f) + str2 + NPStringFog.decode(new byte[]{66}, "d042ba", -27814) + VERSION_PARAM + NPStringFog.decode(new byte[]{13}, "0b2f35", 182910744L) + NPStringFog.decode(new byte[]{7}, "29bdbc", -838348291L);
        if (str3 != null) {
            str4 = str4 + NPStringFog.decode(new byte[]{71, 88, 75, 94}, "a48cf3", 6208) + str3;
        }
        return URI.create(str4);
    }

    public String getHost() {
        return this.host;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public boolean isSecure() {
        return this.secure;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{10, 21, 66, 66}, "ba6201", 4744) + (this.secure ? NPStringFog.decode(new byte[]{70}, "58b82c", 1.570120803E9d) : "") + NPStringFog.decode(new byte[]{9, 78, 76}, "3ac5ed", -1.736275608E9d) + this.host;
    }
}
