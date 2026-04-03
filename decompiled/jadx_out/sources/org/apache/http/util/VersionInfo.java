package org.apache.http.util;

import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class VersionInfo {
    public static final String PROPERTY_MODULE = NPStringFog.decode(new byte[]{93, 91, 0, 93, 25, 8, 91, 81, 19, 94, 82}, "45f27e", false);
    public static final String PROPERTY_RELEASE = NPStringFog.decode(new byte[]{15, 94, 84, 89, 29, 66, 3, 92, 87, 87, 64, 85}, "f02630", true, true);
    public static final String PROPERTY_TIMESTAMP = NPStringFog.decode(new byte[]{94, 91, 0, 91, 77, 71, 94, 88, 3, 71, 23, 82, 90, 69}, "75f4c3", -4.11739408E8d);
    public static final String UNAVAILABLE = NPStringFog.decode(new byte[]{52, 126, 114, 51, 32, 124, 45, 113, 113, 41, 36}, "a03ea5", 14464);
    public static final String VERSION_PROPERTY_FILE = NPStringFog.decode(new byte[]{71, 85, 71, 69, 10, 86, 95, 30, 69, 68, 12, 73, 84, 66, 65, 95, 6, 74}, "1056c9", -4852);

    protected VersionInfo(String str, String str2, String str3, String str4, String str5) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 16, 65, 90, 17}, "3d480f", -1195047803L));
    }

    protected static final VersionInfo fromMap(String str, Map map, ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 69, 3, 23}, "010a6c", false));
    }

    public static final VersionInfo loadVersionInfo(String str, ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 19, 86, 69}, "6ff4da", -1.111855499E9d));
    }

    public static final VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 21, 68, 0, 18}, "da1b38", false, true));
    }

    public final String getClassloader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 65, 64, 6, 68}, "355dec", 5.98713696E8d));
    }

    public final String getModule() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 67, 81, 17}, "70630a", -1.431084182E9d));
    }

    public final String getPackage() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 20, 84, 23}, "9ea661", false, false));
    }

    public final String getRelease() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 65, 80, 21}, "45424f", 1.740477061E9d));
    }

    public final String getTimestamp() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 77, 64, 81, 18}, "f9533d", true));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 65, 7, 67}, "f14eba", -9702003.0f));
    }
}
