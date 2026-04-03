package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes55.dex */
public final class JsonUtils {
    private static final Pattern zza = Pattern.compile(NPStringFog.decode(new byte[]{62, 108, 31}, "b01915", 10133));
    private static final Pattern zzb = Pattern.compile(NPStringFog.decode(new byte[]{57, 106, 106, 65, 31, 106, 110, 60, 59, 106, 109}, "b66c0b", true));

    private JsonUtils() {
    }

    public static boolean areJsonValuesEquivalent(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!jSONObject2.has(next)) {
                    return false;
                }
                try {
                    Preconditions.checkNotNull(next);
                    if (!areJsonValuesEquivalent(jSONObject.get(next), jSONObject2.get(next))) {
                        return false;
                    }
                } catch (JSONException e) {
                    return false;
                }
            }
            return true;
        }
        if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
            return obj.equals(obj2);
        }
        JSONArray jSONArray = (JSONArray) obj;
        JSONArray jSONArray2 = (JSONArray) obj2;
        if (jSONArray.length() != jSONArray2.length()) {
            return false;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                if (!areJsonValuesEquivalent(jSONArray.get(i), jSONArray2.get(i))) {
                    return false;
                }
            } catch (JSONException e2) {
                return false;
            }
        }
        return true;
    }

    public static String escapeString(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = zzb.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            switch (matcher.group().charAt(0)) {
                case '\b':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{106, 109, 84}, "616177", -8.66813393E8d));
                    break;
                case '\t':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{58, 101, 64}, "f94a5a", 1023803740L));
                    break;
                case '\n':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{106, 111, 94}, "630489", -853237471L));
                    break;
                case '\f':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{106, 57, 3}, "6ee013", -2.011533E9f));
                    break;
                case '\r':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{105, 107, 75}, "579a5b", true, true));
                    break;
                case '\"':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{63, 100, 104, 65}, "c84cd1", -23572));
                    break;
                case '/':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{62, 62, 77}, "bbb5bf", false, true));
                    break;
                case '\\':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{109, 101, 111, 107}, "193790", 6.155602E8f));
                    break;
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static String unescapeString(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strZza = zzc.zza(str);
        Matcher matcher = zza.matcher(strZza);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            switch (matcher.group().charAt(1)) {
                case '\"':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{26}, "8ce49b", -213741616L));
                    break;
                case '/':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{77}, "bb3461", 1220243533L));
                    break;
                case '\\':
                    matcher.appendReplacement(stringBuffer, NPStringFog.decode(new byte[]{111, 108}, "307ccd", -16134));
                    break;
                case 'b':
                    matcher.appendReplacement(stringBuffer, "\b");
                    break;
                case 'f':
                    matcher.appendReplacement(stringBuffer, "\f");
                    break;
                case 'n':
                    matcher.appendReplacement(stringBuffer, "\n");
                    break;
                case 'r':
                    matcher.appendReplacement(stringBuffer, "\r");
                    break;
                case 't':
                    matcher.appendReplacement(stringBuffer, "\t");
                    break;
                default:
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 95, 17, 94, 86, 17, 82, 94, 68, 85, 65, 82, 82, 64, 1, 84, 18, 82, 91, 81, 22, 81, 81, 69, 86, 66, 68, 68, 90, 80, 71, 16, 23, 88, 93, 68, 95, 84, 68, 94, 87, 71, 86, 66, 68, 82, 87, 31}, "30d021", true, false));
            }
        }
        if (stringBuffer == null) {
            return strZza;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
