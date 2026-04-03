package com.google.firebase.database.core.utilities;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.ValidationPath;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Validation {
    private static final Pattern INVALID_PATH_REGEX = Pattern.compile(NPStringFog.decode(new byte[]{104, 111, 99, 62, 105, 111, 29, 16, 28, 63}, "338b43", -5.44945597E8d));
    private static final Pattern INVALID_KEY_REGEX = Pattern.compile(NPStringFog.decode(new byte[]{109, 57, 58, 56, 57, 109, 24, 70, 61, 64, 56, 30, 106, 16, 81, 84, 84, 1, 27, 57, 20, 84, 84, 0, 112, 57, 20, 84, 84, 6, 112, 56}, "6eadd1", -2346));

    private static boolean isValidKey(String str) {
        return str.equals(NPStringFog.decode(new byte[]{23, 10, 12, 80, 89}, "9cb660", 1.9457852E9f)) || !INVALID_KEY_REGEX.matcher(str).find();
    }

    private static boolean isValidPathString(String str) {
        return !INVALID_PATH_REGEX.matcher(str).find();
    }

    private static boolean isWritableKey(String str) {
        if (str != null && str.length() > 0) {
            if (str.equals(NPStringFog.decode(new byte[]{77, 68, 83, 13, 23, 85}, "c22ab0", 1.9537391E9f)) || str.equals(NPStringFog.decode(new byte[]{28, 72, 20, 13, 14, 16, 91, 76, 31}, "28fdab", 50691431L))) {
                return true;
            }
            if (!str.startsWith(NPStringFog.decode(new byte[]{24}, "6d0d52", -8.925707E8f)) && !INVALID_KEY_REGEX.matcher(str).find()) {
                return true;
            }
        }
        return false;
    }

    private static boolean isWritablePath(Path path) {
        ChildKey front = path.getFront();
        return front == null || !front.asString().startsWith(NPStringFog.decode(new byte[]{77}, "c7edde", true, true));
    }

    public static Map<Path, Node> parseAndValidateUpdate(Path path, Map<String, Object> map) throws DatabaseException {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Path path2 = new Path(entry.getKey());
            Object value = entry.getValue();
            ValidationPath.validateWithObject(path.child(path2), value);
            String strAsString = !path2.isEmpty() ? path2.getBack().asString() : "";
            if (strAsString.equals(NPStringFog.decode(new byte[]{75, 75, 65}, "e876b7", true, true)) || strAsString.equals(NPStringFog.decode(new byte[]{22, 21, 89, 89, 64, 7}, "8c855b", -1834742799L))) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{101, 84, 76, 95, 23, 65}, "55877f", true, false) + path2 + NPStringFog.decode(new byte[]{69, 16, 86, 92, 95, 70, 3, 89, 91, 64, 17, 86, 11, 67, 84, 95, 93, 93, 21, 85, 81, 19, 82, 90, 11, 92, 81, 19, 95, 83, 15, 85, 15, 19}, "b05312", -523993939L) + strAsString);
            }
            Node priority = strAsString.equals(NPStringFog.decode(new byte[]{77, 22, 68, 89, 92, 66, 10, 18, 79}, "cf6030", false)) ? PriorityUtilities.parsePriority(path2, value) : NodeUtilities.NodeFromJSON(value);
            validateWritableObject(value);
            treeMap.put(path2, priority);
        }
        Path path3 = null;
        Iterator it = treeMap.keySet().iterator();
        while (true) {
            Path path4 = path3;
            if (!it.hasNext()) {
                return treeMap;
            }
            path3 = (Path) it.next();
            Utilities.hardAssert(path4 == null || path4.compareTo(path3) < 0);
            if (path4 != null && path4.contains(path3)) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{101, 80, 65, 12, 65, 17}, "515da6", -1.5287638E9f) + path4 + NPStringFog.decode(new byte[]{20, 19, 80, 75, 17, 80, 93, 19, 88, 86, 82, 84, 64, 71, 86, 74, 17, 94, 85, 19, 30}, "339811", true, true) + path3 + NPStringFog.decode(new byte[]{18, 65, 11, 86, 65, 83, 91, 65, 23, 72, 5, 83, 65, 4, 76}, "5ab8a2", -2.5661536E8f));
            }
        }
    }

    private static void validateDoubleValue(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{120, 90, 71, 89, 94, 95, 85, 20, 71, 89, 94, 67, 84, 14, 17, 110, 83, 90, 68, 81, 17, 91, 83, 88, 95, 91, 69, 24, 80, 83, 17, 122, 80, 118, 30, 22, 120, 90, 87, 24, 93, 68, 17, 25, 120, 86, 84, 24}, "141826", true, true));
        }
    }

    public static void validateNullableKey(String str) throws DatabaseException {
        if (str != null && !isValidKey(str)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{123, 95, 20, 5, 8, 91, 86, 17, 9, 1, 29, 8, 18}, "21bdd2", 1174273779L) + str + NPStringFog.decode(new byte[]{31, 70, 45, 82, 31, 68, 17, 11, 19, 68, 18, 23, 95, 9, 18, 23, 5, 88, 95, 18, 7, 94, 8, 23, 22, 73, 65, 27, 70, 16, 31, 65, 74, 23, 65, 20, 22, 74, 70, 16, 66, 16, 29, 70, 65, 108, 65, 27, 17, 9, 20, 23, 65, 106, 22}, "1ff7f7", 6200));
        }
    }

    public static void validatePathString(String str) throws DatabaseException {
        if (!isValidPathString(str)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{45, 8, 65, 86, 91, 92, 0, 70, 113, 94, 69, 80, 6, 7, 68, 82, 23, 113, 5, 18, 86, 85, 86, 70, 1, 70, 71, 86, 67, 93, 94, 70}, "df7775", -768898116L) + str + NPStringFog.decode(new byte[]{74, 21, 114, 8, 68, 3, 6, 84, 71, 4, 22, 34, 5, 65, 85, 3, 87, 21, 1, 21, 68, 0, 66, 14, 23, 21, 89, 20, 69, 18, 68, 91, 91, 21, 22, 5, 11, 91, 64, 0, 95, 8, 68, 18, 26, 70, 26, 70, 67, 22, 19, 77, 22, 65, 64, 18, 24, 65, 17, 61, 67, 25, 20, 14, 68, 70, 67, 104, 19}, "d54a6f", 1050447197L));
        }
    }

    public static void validateRootPathString(String str) throws DatabaseException {
        if (str.startsWith(NPStringFog.decode(new byte[]{31, 90, 90, 95, 88}, "134979", -21804))) {
            validatePathString(str.substring(5));
        } else if (str.startsWith(NPStringFog.decode(new byte[]{24, 77, 89, 90, 83, 13}, "7c045b", -3.5547104E8d))) {
            validatePathString(str.substring(6));
        } else {
            validatePathString(str);
        }
    }

    public static void validateWritableKey(String str) throws DatabaseException {
        if (!isWritableKey(str)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{124, 94, 67, 84, 8, 89, 81, 16, 94, 80, 29, 10, 21}, "5055d0", -1751220416L) + str + NPStringFog.decode(new byte[]{75, 22, 120, 3, 75, 67, 69, 91, 70, 21, 70, 16, 11, 89, 71, 70, 81, 95, 11, 66, 82, 15, 92, 16, 66, 25, 20, 74, 18, 23, 75, 17, 31, 70, 21, 19, 66, 26, 19, 65, 22, 23, 73, 22, 20, 61, 21, 28, 69, 89, 65, 70, 21, 109, 66}, "e63f20", false, false));
        }
    }

    public static void validateWritableObject(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(NPStringFog.decode(new byte[]{77, 22, 70}, "ce0f98", -6.1049126E8f))) {
                return;
            }
            for (Map.Entry entry : map.entrySet()) {
                validateWritableKey((String) entry.getKey());
                validateWritableObject(entry.getValue());
            }
            return;
        }
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                validateWritableObject(it.next());
            }
        } else if ((obj instanceof Double) || (obj instanceof Float)) {
            validateDoubleValue(((Double) obj).doubleValue());
        }
    }

    public static void validateWritablePath(Path path) throws DatabaseException {
        if (!isWritablePath(path)) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{44, 86, 64, 80, 91, 89, 1, 24, 65, 67, 94, 68, 0, 24, 90, 94, 84, 81, 17, 81, 89, 95, 13, 16}, "e86170", -25779) + path.toString());
        }
    }
}
