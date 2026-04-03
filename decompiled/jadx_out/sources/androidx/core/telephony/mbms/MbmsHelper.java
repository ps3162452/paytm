package androidx.core.telephony.mbms;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.telephony.mbms.ServiceInfo;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class MbmsHelper {
    private MbmsHelper() {
    }

    public static CharSequence getBestNameForService(Context context, ServiceInfo serviceInfo) {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        LocaleList locales = context.getResources().getConfiguration().getLocales();
        int size = serviceInfo.getNamedContentLocales().size();
        if (size == 0) {
            return null;
        }
        String[] strArr = new String[size];
        int i = 0;
        Iterator<Locale> it = serviceInfo.getNamedContentLocales().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                break;
            }
            strArr[i2] = it.next().toLanguageTag();
            i = i2 + 1;
        }
        Locale firstMatch = locales.getFirstMatch(strArr);
        return firstMatch == null ? null : serviceInfo.getNameForLocale(firstMatch);
    }
}
