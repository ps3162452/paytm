package androidx.core.database;

import android.text.TextUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public final class DatabaseUtilsCompat {
    private DatabaseUtilsCompat() {
    }

    @Deprecated
    public static String[] appendSelectionArgs(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return strArr2;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    @Deprecated
    public static String concatenateWhere(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return NPStringFog.decode(new byte[]{16}, "8df725", false) + str + NPStringFog.decode(new byte[]{29, 20, 116, 121, 114, 69, 28}, "44576e", 8.62034357E8d) + str2 + NPStringFog.decode(new byte[]{77}, "d045ca", 7.1025805E8f);
    }
}
