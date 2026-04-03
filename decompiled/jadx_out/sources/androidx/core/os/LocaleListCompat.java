package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LocaleListCompat {
    private static final LocaleListCompat sEmptyLocaleList = create(new Locale[0]);
    private LocaleListInterface mImpl;

    private LocaleListCompat(LocaleListInterface localeListInterface) {
        this.mImpl = localeListInterface;
    }

    public static LocaleListCompat create(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? wrap(new LocaleList(localeArr)) : new LocaleListCompat(new LocaleListCompatWrapper(localeArr));
    }

    static Locale forLanguageTagCompat(String str) {
        if (str.contains(NPStringFog.decode(new byte[]{78}, "c4b255", -1.909285213E9d))) {
            String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{24}, "5f3744", false), -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains(NPStringFog.decode(new byte[]{107}, "4d8b01", -2.1292484E9f))) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split(NPStringFog.decode(new byte[]{59}, "d92ace", 6.54852941E8d), -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 7, 93, 68, 15, 92, 18, 70, 67, 5, 19, 64, 3, 70, 95, 5, 15, 84, 19, 7, 84, 1, 65, 71, 7, 1, 9, 68, 58}, "ff3da3", true) + str + NPStringFog.decode(new byte[]{101}, "891857", -1.7827557E9f));
    }

    public static LocaleListCompat forLanguageTags(String str) {
        int i = 0;
        if (str == null || str.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{72}, "d1b55d", -8.21537265E8d), -1);
        Locale[] localeArr = new Locale[strArrSplit.length];
        while (true) {
            int i2 = i;
            if (i2 >= localeArr.length) {
                return create(localeArr);
            }
            localeArr[i2] = Build.VERSION.SDK_INT >= 21 ? Locale.forLanguageTag(strArrSplit[i2]) : forLanguageTagCompat(strArrSplit[i2]);
            i = i2 + 1;
        }
    }

    public static LocaleListCompat getAdjustedDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(LocaleList.getAdjustedDefault()) : create(Locale.getDefault());
    }

    public static LocaleListCompat getDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(LocaleList.getDefault()) : create(Locale.getDefault());
    }

    public static LocaleListCompat getEmptyLocaleList() {
        return sEmptyLocaleList;
    }

    public static LocaleListCompat wrap(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    @Deprecated
    public static LocaleListCompat wrap(Object obj) {
        return wrap((LocaleList) obj);
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocaleListCompat) && this.mImpl.equals(((LocaleListCompat) obj).mImpl);
    }

    public Locale get(int i) {
        return this.mImpl.get(i);
    }

    public Locale getFirstMatch(String[] strArr) {
        return this.mImpl.getFirstMatch(strArr);
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    public int indexOf(Locale locale) {
        return this.mImpl.indexOf(locale);
    }

    public boolean isEmpty() {
        return this.mImpl.isEmpty();
    }

    public int size() {
        return this.mImpl.size();
    }

    public String toLanguageTags() {
        return this.mImpl.toLanguageTags();
    }

    public String toString() {
        return this.mImpl.toString();
    }

    public Object unwrap() {
        return this.mImpl.getLocaleList();
    }
}
