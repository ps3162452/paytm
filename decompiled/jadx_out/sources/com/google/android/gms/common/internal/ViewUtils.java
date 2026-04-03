package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class ViewUtils {
    private ViewUtils() {
    }

    public static String getXmlAttributeString(String str, String str2, Context context, AttributeSet attributeSet, boolean z, boolean z2, String str3) {
        String attributeValue = attributeSet == null ? null : attributeSet.getAttributeValue(str, str2);
        if (attributeValue != null && attributeValue.startsWith(NPStringFog.decode(new byte[]{36, 23, 76, 16, 90, 10, 3, 75}, "dd8b3d", true, false)) && z) {
            String strSubstring = attributeValue.substring(8);
            String packageName = context.getPackageName();
            TypedValue typedValue = new TypedValue();
            try {
                context.getResources().getValue(packageName + NPStringFog.decode(new byte[]{10, 71, 76, 65, 10, 13, 87, 27}, "0483cc", -2.3721958E7f) + strSubstring, typedValue, true);
            } catch (Resources.NotFoundException e) {
                Log.w(str3, NPStringFog.decode(new byte[]{32, 11, 16, 95, 6, 16, 13, 11, 17, 19, 4, 89, 13, 0, 69, 65, 7, 67, 12, 17, 23, 80, 7, 16, 5, 11, 23, 19}, "cde3b0", -826162346L) + str2 + NPStringFog.decode(new byte[]{95, 65}, "ea7fe0", 1.372267443E9d) + attributeValue);
            }
            if (typedValue.string != null) {
                attributeValue = typedValue.string.toString();
            } else {
                Log.w(str3, NPStringFog.decode(new byte[]{103, 1, 23, 89, 69, 69, 86, 1, 68}, "5dd607", true) + str2 + NPStringFog.decode(new byte[]{65, 71, 83, 65, 70, 89, 14, 68, 18, 83, 70, 68, 21, 66, 91, 92, 1, 13, 65}, "a022f7", false, true) + typedValue.toString());
            }
        }
        if (z2 && attributeValue == null) {
            Log.w(str3, NPStringFog.decode(new byte[]{54, 1, 18, 22, 90, 64, 1, 0, 67, 59, 126, 126, 68, 5, 23, 23, 65, 91, 6, 17, 23, 6, 19, 16}, "ddcc32", true, false) + str2 + NPStringFog.decode(new byte[]{27, 19, 88, 91, 64, 23, 80, 93, 82}, "93523d", 2.073526381E9d));
        }
        return attributeValue;
    }
}
