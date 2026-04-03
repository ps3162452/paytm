package com.google.firebase.database.tubesock;

import android.util.Base64;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class WebSocketHandshake {
    private static final String WEBSOCKET_VERSION = NPStringFog.decode(new byte[]{82, 82}, "ca7da7", -1.331526E9f);
    private Map<String, String> extraHeaders;
    private String nonce;
    private String protocol;
    private URI url;

    public WebSocketHandshake(URI uri, String str, Map<String, String> map) {
        this.url = null;
        this.protocol = null;
        this.nonce = null;
        this.extraHeaders = null;
        this.url = uri;
        this.protocol = str;
        this.extraHeaders = map;
        this.nonce = createNonce();
    }

    private String createNonce() {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr[i] = (byte) rand(0, 255);
        }
        return Base64.encodeToString(bArr, 2);
    }

    private String generateHeader(LinkedHashMap<String, String> linkedHashMap) {
        String str = new String();
        Iterator<String> it = linkedHashMap.keySet().iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2;
            }
            String next = it.next();
            str = str2 + next + NPStringFog.decode(new byte[]{91, 69}, "ae7cd0", false) + linkedHashMap.get(next) + "\r\n";
        }
    }

    private int rand(int i, int i2) {
        double dRandom = Math.random();
        double d = i2;
        Double.isNaN(d);
        double d2 = i;
        Double.isNaN(d2);
        return (int) ((dRandom * d) + d2);
    }

    public byte[] getHandshake() {
        String path = this.url.getPath();
        String query = this.url.getQuery();
        String str = path + (query == null ? "" : NPStringFog.decode(new byte[]{94}, "a1d2d4", 1798) + query);
        String host = this.url.getHost();
        if (this.url.getPort() != -1) {
            host = host + NPStringFog.decode(new byte[]{15}, "54f4bf", -22845) + this.url.getPort();
        }
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put(NPStringFog.decode(new byte[]{120, 93, 67, 17}, "020e85", false, true), host);
        linkedHashMap.put(NPStringFog.decode(new byte[]{51, 67, 86, 70, 5, 82, 3}, "f314d6", -1.210299027E9d), NPStringFog.decode(new byte[]{64, 81, 83, 16, 89, 7, 92, 81, 69}, "741c6d", 8.80313E8f));
        linkedHashMap.put(NPStringFog.decode(new byte[]{114, 89, 10, 12, 93, 7, 69, 95, 11, 12}, "16db8d", false, true), NPStringFog.decode(new byte[]{102, 17, 3, 74, 3, 0, 86}, "3ad8bd", -6236));
        linkedHashMap.put(NPStringFog.decode(new byte[]{54, 84, 82, 76, 100, 87, 7, 98, 94, 2, 88, 87, 17, 28, 103, 4, 65, 65, 12, 94, 95}, "e11a32", 1787512411L), WEBSOCKET_VERSION);
        linkedHashMap.put(NPStringFog.decode(new byte[]{55, 1, 87, 78, 51, 87, 6, 55, 91, 0, 15, 87, 16, 73, 127, 6, 29}, "dd4cd2", 1.2272705E8f), this.nonce);
        String str2 = this.protocol;
        if (str2 != null) {
            linkedHashMap.put(NPStringFog.decode(new byte[]{99, 86, 7, 78, 100, 82, 82, 96, 11, 0, 88, 82, 68, 30, 52, 17, 92, 67, 95, 80, 11, 15}, "03dc37", 1.556898E9f), str2);
        }
        Map<String, String> map = this.extraHeaders;
        if (map != null) {
            for (String str3 : map.keySet()) {
                if (!linkedHashMap.containsKey(str3)) {
                    linkedHashMap.put(str3, this.extraHeaders.get(str3));
                }
            }
        }
        byte[] bytes = (((NPStringFog.decode(new byte[]{33, 38, 101, 18}, "fc1247", -432943193L) + str + NPStringFog.decode(new byte[]{23, 46, 50, 99, 105, 73, 6, 72, 87, 58, 51}, "7ff79f", 16566)) + generateHeader(linkedHashMap)) + "\r\n").getBytes(Charset.defaultCharset());
        byte[] bArr = new byte[bytes.length];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        return bArr;
    }

    public void verifyServerHandshakeHeaders(HashMap<String, String> map) {
        if (!NPStringFog.decode(new byte[]{20, 80, 3, 23, 11, 2, 8, 80, 21}, "c5adda", 4.0164483E8f).equals(map.get(NPStringFog.decode(new byte[]{76, 66, 1, 74, 5, 93, 92}, "92f8d9", -2.87359E8f)))) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{5, 90, 15, 93, 93, 90, 18, 92, 14, 93, 24, 95, 7, 92, 13, 86, 92, 3, 70, 88, 8, 64, 75, 80, 8, 82, 65, 91, 93, 88, 2, 80, 19, 19, 94, 80, 3, 89, 5, 19, 81, 87, 70, 70, 4, 65, 78, 92, 20, 21, 9, 82, 86, 93, 21, 93, 0, 88, 93, 3, 70, 96, 17, 84, 74, 88, 2, 80}, "f5a389", -1.7832022E9f));
        }
        if (!NPStringFog.decode(new byte[]{66, 69, 87, 19, 86, 85, 82}, "750a71", false, true).equals(map.get(NPStringFog.decode(new byte[]{2, 95, 95, 10, 82, 6, 21, 89, 94, 10}, "a01d7e", true, true)))) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{86, 88, 10, 94, 93, 82, 65, 94, 11, 94, 24, 87, 84, 94, 8, 85, 92, 11, 21, 90, 13, 67, 75, 88, 91, 80, 68, 88, 93, 80, 81, 82, 22, 16, 94, 88, 80, 91, 0, 16, 81, 95, 21, 68, 1, 66, 78, 84, 71, 23, 12, 81, 86, 85, 70, 95, 5, 91, 93, 11, 21, 116, 11, 94, 86, 84, 86, 67, 13, 95, 86}, "57d081", 1.7009219E9f));
        }
    }

    public void verifyServerStatusLine(String str) {
        int i = Integer.parseInt(str.substring(9, 12));
        if (i == 407) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{87, 93, 92, 87, 82, 7, 64, 91, 93, 87, 23, 2, 85, 91, 94, 92, 83, 94, 20, 66, 64, 86, 79, 29, 20, 83, 71, 77, 95, 1, 90, 70, 91, 90, 86, 16, 93, 93, 92, 25, 89, 11, 64, 18, 65, 76, 71, 20, 91, 64, 70, 92, 83}, "42297d", -5.197884E8f));
        }
        if (i == 404) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{81, 87, 10, 90, 3, 86, 70, 81, 11, 90, 70, 83, 83, 81, 8, 81, 2, 15, 18, 12, 84, 0, 70, 91, 93, 76, 68, 82, 9, 64, 92, 92}, "28d4f5", 29340));
        }
        if (i != 101) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{91, 94, 89, 94, 92, 5, 76, 88, 88, 94, 25, 0, 89, 88, 91, 85, 93, 92, 24, 68, 89, 91, 87, 9, 79, 95, 23, 67, 77, 7, 76, 68, 68, 16, 90, 9, 92, 84, 23}, "81709f", true) + i);
        }
    }
}
