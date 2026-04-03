package com.google.android.gms.common.util;

import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class MapUtils {
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> map) {
        sb.append(NPStringFog.decode(new byte[]{24}, "cdb2a0", 1.2593597E9f));
        boolean z = true;
        for (String str : map.keySet()) {
            if (!z) {
                sb.append(NPStringFog.decode(new byte[]{78}, "b19d47", 1.793234319E9d));
            }
            String str2 = map.get(str);
            sb.append(NPStringFog.decode(new byte[]{21}, "704ab7", -769965752L));
            sb.append(str);
            sb.append(NPStringFog.decode(new byte[]{22, 12}, "4669fe", -31355));
            if (str2 == null) {
                sb.append(NPStringFog.decode(new byte[]{90, 22, 14, 10}, "4cbffb", true, true));
                z = false;
            } else {
                sb.append(NPStringFog.decode(new byte[]{22}, "45f275", -1218532490L));
                sb.append(str2);
                sb.append(NPStringFog.decode(new byte[]{70}, "d045b8", 1.9321021E9f));
                z = false;
            }
        }
        sb.append(NPStringFog.decode(new byte[]{30}, "c54352", 1.6581514E9f));
    }
}
