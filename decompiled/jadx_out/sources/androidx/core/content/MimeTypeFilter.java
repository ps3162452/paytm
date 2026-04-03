package androidx.core.content;

import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class MimeTypeFilter {
    private MimeTypeFilter() {
    }

    public static String matches(String str, String[] strArr) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{75}, "d6444d", 1755));
        for (String str2 : strArr) {
            if (mimeTypeAgainstFilter(strArrSplit, str2.split(NPStringFog.decode(new byte[]{25}, "6131ac", false, false)))) {
                return str2;
            }
        }
        return null;
    }

    public static String matches(String[] strArr, String str) {
        if (strArr == null) {
            return null;
        }
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{25}, "6e1202", 1.4179853E9f));
        for (String str2 : strArr) {
            if (mimeTypeAgainstFilter(str2.split(NPStringFog.decode(new byte[]{29}, "222e59", 5.89848E8d)), strArrSplit)) {
                return str2;
            }
        }
        return null;
    }

    public static boolean matches(String str, String str2) {
        if (str == null) {
            return false;
        }
        return mimeTypeAgainstFilter(str.split(NPStringFog.decode(new byte[]{24}, "766947", false, false)), str2.split(NPStringFog.decode(new byte[]{22}, "9a9f73", -15807)));
    }

    public static String[] matchesMany(String[] strArr, String str) {
        if (strArr == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{78}, "a0bcc9", 974386336L));
        for (String str2 : strArr) {
            if (mimeTypeAgainstFilter(str2.split(NPStringFog.decode(new byte[]{23}, "8e4f76", false, false)), strArrSplit)) {
                arrayList.add(str2);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static boolean mimeTypeAgainstFilter(String[] strArr, String[] strArr2) {
        if (strArr2.length != 2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{121, 10, 88, 79, 4, 14, 66, 11, 85, 22, 22, 4, 84, 70, 121, 43, 47, 36, 16, 18, 77, 18, 7, 65, 86, 15, 88, 22, 7, 19, 30, 70, 121, 23, 17, 21, 16, 4, 81, 66, 22, 24, 64, 3, 27, 17, 23, 3, 68, 31, 68, 7, 76}, "0f4bba", 6.82273901E8d));
        }
        if (strArr2[0].isEmpty() || strArr2[1].isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 89, 10, 72, 80, 9, 20, 88, 7, 17, 66, 3, 2, 21, 43, 44, 123, 35, 70, 65, 31, 21, 83, 70, 0, 92, 10, 17, 83, 20, 72, 21, 50, 28, 70, 3, 70, 90, 20, 69, 69, 19, 4, 65, 31, 21, 83, 70, 3, 88, 22, 17, 79, 72}, "f5fe6f", 24490));
        }
        if (strArr.length != 2) {
            return false;
        }
        if (NPStringFog.decode(new byte[]{79}, "e5b147", -1.854329976E9d).equals(strArr2[0]) || strArr2[0].equals(strArr[0])) {
            return NPStringFog.decode(new byte[]{72}, "bd7d4f", 28799).equals(strArr2[1]) || strArr2[1].equals(strArr[1]);
        }
        return false;
    }
}
