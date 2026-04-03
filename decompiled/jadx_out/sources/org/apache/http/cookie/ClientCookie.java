package org.apache.http.cookie;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface ClientCookie extends Cookie {
    public static final String COMMENTURL_ATTR = NPStringFog.decode(new byte[]{0, 88, 15, 93, 93, 10, 23, 66, 16, 92}, "c7b08d", false, true);
    public static final String COMMENT_ATTR = NPStringFog.decode(new byte[]{82, 91, 88, 11, 80, 15, 69}, "145f5a", -8.131648E8f);
    public static final String DISCARD_ATTR = NPStringFog.decode(new byte[]{0, 89, 66, 84, 4, 19, 0}, "d017ea", 28290);
    public static final String DOMAIN_ATTR = NPStringFog.decode(new byte[]{86, 94, 15, 85, 13, 86}, "21b4d8", -56638379L);
    public static final String EXPIRES_ATTR = NPStringFog.decode(new byte[]{81, 73, 20, 90, 74, 4, 71}, "41d38a", true);
    public static final String MAX_AGE_ATTR = NPStringFog.decode(new byte[]{89, 86, 28, 78, 87, 1, 81}, "47dc6f", true, true);
    public static final String PATH_ATTR = NPStringFog.decode(new byte[]{68, 86, 71, 14}, "473f19", 2161);
    public static final String PORT_ATTR = NPStringFog.decode(new byte[]{70, 14, 75, 71}, "6a9365", 2.0683656E9f);
    public static final String SECURE_ATTR = NPStringFog.decode(new byte[]{64, 81, 7, 77, 75, 7}, "34d89b", false);
    public static final String VERSION_ATTR = NPStringFog.decode(new byte[]{68, 81, 67, 70, 92, 9, 92}, "24155f", -4.1332176E8f);

    boolean containsAttribute(String str);

    String getAttribute(String str);
}
