package com.google.firebase.database.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes57.dex */
public class JsonMapper {
    public static Map<String, Object> parseJson(String str) throws IOException {
        try {
            return unwrapJsonObject(new JSONObject(str));
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static Object parseJsonValue(String str) throws IOException {
        try {
            return unwrapJson(new JSONTokener(str).nextValue());
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static String serializeJson(Map<String, Object> map) throws IOException {
        return serializeJsonValue(map);
    }

    public static String serializeJsonValue(Object obj) throws IOException {
        if (obj == null) {
            return NPStringFog.decode(new byte[]{86, 67, 13, 84}, "86a86b", -607186582L);
        }
        if (obj instanceof String) {
            return JSONObject.quote((String) obj);
        }
        if (obj instanceof Number) {
            try {
                return JSONObject.numberToString((Number) obj);
            } catch (JSONException e) {
                throw new IOException(NPStringFog.decode(new byte[]{32, 92, 16, 15, 83, 68, 13, 92, 17, 67, 68, 1, 17, 90, 4, 15, 94, 30, 6, 19, 11, 22, 90, 6, 6, 65}, "c3ec7d", 2.0046052E9f), e);
            }
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? NPStringFog.decode(new byte[]{69, 22, 70, 82}, "1d37b5", -19981) : NPStringFog.decode(new byte[]{83, 3, 95, 66, 7}, "5b31bb", 1.962059731E9d);
        }
        try {
            JSONStringer jSONStringer = new JSONStringer();
            serializeJsonValue(obj, jSONStringer);
            return jSONStringer.toString();
        } catch (JSONException e2) {
            throw new IOException(NPStringFog.decode(new byte[]{32, 2, 12, 95, 83, 5, 70, 23, 10, 19, 69, 4, 20, 10, 4, 95, 95, 27, 3, 67, 47, 96, 121, 47}, "fce36a", true, false), e2);
        }
    }

    private static void serializeJsonValue(Object obj, JSONStringer jSONStringer) throws JSONException, IOException {
        if (obj instanceof Map) {
            jSONStringer.object();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                jSONStringer.key((String) entry.getKey());
                serializeJsonValue(entry.getValue(), jSONStringer);
            }
            jSONStringer.endObject();
            return;
        }
        if (!(obj instanceof Collection)) {
            jSONStringer.value(obj);
            return;
        }
        jSONStringer.array();
        Iterator it = ((Collection) obj).iterator();
        while (it.hasNext()) {
            serializeJsonValue(it.next(), jSONStringer);
        }
        jSONStringer.endArray();
    }

    private static Object unwrapJson(Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return unwrapJsonObject((JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            return unwrapJsonArray((JSONArray) obj);
        }
        if (obj.equals(JSONObject.NULL)) {
            return null;
        }
        return obj;
    }

    private static List<Object> unwrapJsonArray(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(unwrapJson(jSONArray.get(i)));
        }
        return arrayList;
    }

    private static Map<String, Object> unwrapJsonObject(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap(jSONObject.length());
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, unwrapJson(jSONObject.get(next)));
        }
        return map;
    }
}
