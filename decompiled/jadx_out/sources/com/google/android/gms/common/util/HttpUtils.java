package com.google.android.gms.common.util;

import com.google.android.gms.internal.common.zzo;
import com.google.android.gms.internal.common.zzx;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class HttpUtils {
    private static final Pattern zza = Pattern.compile(NPStringFog.decode(new byte[]{63, 16, 2, 87, 108, 7, 76, 13, 109, 30, 5, 108, 81, 21, 4, 63, 107, 83, 29, 99, 0, 79, 6, 106, 94, 100, 84, 93, 107, 83, 72, 16, 108, 76, 31, 5, 84, 99, 0, 79, 2, 106, 29, 10, 107, 82, 26, 3, 60, 100, 84, 30, 108, 7, 76, 9, 109, 93, 107, 83, 94, 100, 84, 75, 30, 76, 82, 69, 20}, "a80b77", -6.2432224E8f));
    private static final Pattern zzb = Pattern.compile(NPStringFog.decode(new byte[]{111, 16, 13, 95, 57, 9, 28, 1, 83, 72, 4, 120, 28, 126, 111, 30, 83, 21, 5, 69, 8, 76, 25, 14, 76, 99, 2, 72, 91, 88, 28, 94, 115, 72, 36, 100, 74, 9, 30, 81, 31, 29}, "182eb9", -1.22991848E9d));
    private static final Pattern zzc = Pattern.compile(NPStringFog.decode(new byte[]{59, 27, 26, 15, 3, 111, 85, 30, 11, 113, 20, 114, 4, 30, 84, 109, 66, 5, 73, 7, 79, 24, 6, 14, 95, 104, 2, 29, 0, 117, 72, 117, 83, 29, 95, 105, 30, 2, 30, 4, 68, 29, 79, 26, 13, 25, 3, 14, 77, 27, 13, 10, 98, 4, 72, 10, 115, 29, 127, 85, 72, 85, 111, 75, 8, 24, 81, 78, 26, 15, 3, 14, 62, 3, 31, 9, 120, 25, 35, 82, 31, 86, 100, 79, 84, 31, 6, 77, 16, 30, 76, 12, 27, 20}, "e32094", -2.147212524E9d));

    private HttpUtils() {
    }

    public static Map<String, String> parse(URI uri, String str) {
        Map<String, String> mapEmptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return mapEmptyMap;
        }
        HashMap map = new HashMap();
        zzx zzxVarZzc = zzx.zzc(zzo.zzb('='));
        Iterator it = zzx.zzc(zzo.zzb('&')).zzb().zzd(rawQuery).iterator();
        while (it.hasNext()) {
            List listZzf = zzxVarZzc.zzf((String) it.next());
            if (listZzf.isEmpty() || listZzf.size() > 2) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 88, 93, 20, 64, 89, 68, 88, 84, 81, 68, 93, 68}, "699408", true, false));
            }
            map.put(zza((String) listZzf.get(0), str), listZzf.size() == 2 ? zza((String) listZzf.get(1), str) : null);
        }
        return map;
    }

    private static String zza(String str, String str2) {
        if (str2 == null) {
            str2 = NPStringFog.decode(new byte[]{122, 50, 119, 72, 94, 14, 6, 88, 21, 84}, "3a8ef6", 1.6486186E9f);
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
