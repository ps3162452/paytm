package com.google.firebase.database.connection;

import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ConnectionUtils {
    public static void hardAssert(boolean z) {
        hardAssert(z, "", new Object[0]);
    }

    public static void hardAssert(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new AssertionError(NPStringFog.decode(new byte[]{81, 5, 19, 80, 119, 65, 74, 1, 19, 64, 22, 84, 88, 13, 13, 81, 82, 8, 25}, "9da462", -2.086318418E9d) + String.format(str, objArr));
        }
    }

    public static Long longFromObject(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        return null;
    }

    public static String pathToString(List<String> list) {
        if (list.isEmpty()) {
            return NPStringFog.decode(new byte[]{27}, "4689f6", 2231);
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : list) {
            if (!z) {
                sb.append(NPStringFog.decode(new byte[]{27}, "4302b0", -1.148930421E9d));
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    public static List<String> stringToPath(String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{76}, "ce493a", -1.320561955E9d), -1);
        for (int i = 0; i < strArrSplit.length; i++) {
            if (!strArrSplit[i].isEmpty()) {
                arrayList.add(strArrSplit[i]);
            }
        }
        return arrayList;
    }
}
