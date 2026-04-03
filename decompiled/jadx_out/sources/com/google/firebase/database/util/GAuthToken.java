package com.google.firebase.database.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class GAuthToken {
    private static final String AUTH_KEY = NPStringFog.decode(new byte[]{84, 67, 71, 88}, "563008", 8.923682E7f);
    private static final String TOKEN_KEY = NPStringFog.decode(new byte[]{18, 90, 8, 82, 90}, "f5c749", 797519655L);
    private static final String TOKEN_PREFIX = NPStringFog.decode(new byte[]{87, 5, 22, 22, 9, 26}, "0dcbaf", 2443);
    private final Map<String, Object> auth;
    private final String token;

    public GAuthToken(String str, Map<String, Object> map) {
        this.token = str;
        this.auth = map;
    }

    public static GAuthToken tryParseFromString(String str) {
        if (!str.startsWith(TOKEN_PREFIX)) {
            return null;
        }
        try {
            Map<String, Object> json = JsonMapper.parseJson(str.substring(TOKEN_PREFIX.length()));
            return new GAuthToken((String) json.get(TOKEN_KEY), (Map) json.get(AUTH_KEY));
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{35, 5, 88, 88, 0, 85, 69, 16, 94, 20, 21, 80, 23, 23, 84, 20, 2, 80, 16, 16, 89, 20, 17, 94, 14, 1, 95}, "ed14e1", false, true), e);
        }
    }

    public Map<String, Object> getAuth() {
        return this.auth;
    }

    public String getToken() {
        return this.token;
    }

    public String serializeToString() {
        HashMap map = new HashMap();
        map.put(TOKEN_KEY, this.token);
        map.put(AUTH_KEY, this.auth);
        try {
            return TOKEN_PREFIX + JsonMapper.serializeJson(map);
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{112, 87, 95, 93, 83, 93, 22, 66, 89, 17, 69, 92, 68, 95, 87, 93, 95, 67, 83, 22, 81, 80, 67, 77, 94, 22, 66, 94, 93, 92, 88}, "666169", 1546747820L), e);
        }
    }
}
