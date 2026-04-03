package com.google.firebase.database;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ServerValue {
    public static final Map<String, String> TIMESTAMP = createScalarServerValuePlaceholder(NPStringFog.decode(new byte[]{77, 90, 89, 87, 71, 16, 88, 94, 68}, "93424d", 5.549493E8f));

    private static Map<String, Map<String, Object>> createParameterizedServerValuePlaceholder(String str, Object obj) {
        HashMap map = new HashMap();
        map.put(str, obj);
        HashMap map2 = new HashMap();
        map2.put(NPStringFog.decode(new byte[]{31, 23, 21}, "1dcd37", -1.130725E9f), Collections.unmodifiableMap(map));
        return Collections.unmodifiableMap(map2);
    }

    private static Map<String, String> createScalarServerValuePlaceholder(String str) {
        HashMap map = new HashMap();
        map.put(NPStringFog.decode(new byte[]{28, 66, 65}, "217e27", 4.64567857E8d), str);
        return Collections.unmodifiableMap(map);
    }

    public static final Object increment(double d) {
        return createParameterizedServerValuePlaceholder(NPStringFog.decode(new byte[]{13, 93, 84, 69, 81, 88, 1, 93, 67}, "d37745", false), Double.valueOf(d));
    }

    public static final Object increment(long j) {
        return createParameterizedServerValuePlaceholder(NPStringFog.decode(new byte[]{94, 10, 7, 22, 93, 93, 82, 10, 16}, "7ddd80", 5274), Long.valueOf(j));
    }
}
