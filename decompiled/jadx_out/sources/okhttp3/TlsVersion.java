package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public enum TlsVersion {
    TLS_1_3(NPStringFog.decode(new byte[]{108, 46, 101, 66, 80, 23, 11}, "8b64a9", false)),
    TLS_1_2(NPStringFog.decode(new byte[]{48, 47, 103, 79, 1, 75, 86}, "dc490e", 1.7048845E9f)),
    TLS_1_1(NPStringFog.decode(new byte[]{100, 116, 101, 19, 83, 74, 1}, "086ebd", false, true)),
    TLS_1_0(NPStringFog.decode(new byte[]{97, 46, 54, 65, 4}, "5be759", 1.5541599E9f)),
    SSL_3_0(NPStringFog.decode(new byte[]{50, 54, 117, 68, 10}, "ae929f", -9.31857443E8d));

    final String javaName;

    TlsVersion(String str) {
        this.javaName = str;
    }

    public static TlsVersion forJavaName(String str) {
        byte b = 0;
        switch (str.hashCode()) {
            case -503070503:
                b = !str.equals(NPStringFog.decode(new byte[]{50, 47, 55, 65, 7, 72, 87}, "fcd76f", 1.292525236E9d)) ? (byte) -1 : (byte) 2;
                break;
            case -503070502:
                b = !str.equals(NPStringFog.decode(new byte[]{109, 45, 99, 19, 0, 72, 11}, "9a0e1f", false, false)) ? (byte) -1 : (byte) 1;
                break;
            case -503070501:
                if (!str.equals(NPStringFog.decode(new byte[]{99, 116, 100, 64, 80, 74, 4}, "7876ad", -118448005L))) {
                    b = -1;
                }
                break;
            case 79201641:
                b = !str.equals(NPStringFog.decode(new byte[]{48, 54, 46, 23, 1}, "ceba2c", -1.0668507E9f)) ? (byte) -1 : (byte) 4;
                break;
            case 79923350:
                b = !str.equals(NPStringFog.decode(new byte[]{99, 120, 102, 65, 8}, "745796", false, false)) ? (byte) -1 : (byte) 3;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return TLS_1_3;
            case 1:
                return TLS_1_2;
            case 2:
                return TLS_1_1;
            case 3:
                return TLS_1_0;
            case 4:
                return SSL_3_0;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 91, 84, 75, 70, 93, 0, 65, 84, 87, 22, 108, 47, 102, 17, 69, 83, 74, 16, 92, 94, 93, 12, 24}, "c51368", -6.5964948E7d) + str);
        }
    }

    static List<TlsVersion> forJavaNames(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(forJavaName(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String javaName() {
        return this.javaName;
    }
}
