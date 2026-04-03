package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;

/* JADX INFO: loaded from: classes62.dex */
public final class Headers {
    private final String[] namesAndValues;

    public static final class Builder {
        final List<String> namesAndValues = new ArrayList(20);

        private void checkNameAndValue(String str, String str2) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{95, 88, 9, 81, 24, 89, 12, 25, 10, 65, 84, 8}, "19d48d", 1747250590L));
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{15, 5, 90, 87, 66, 13, 18, 68, 82, 95, 18, 16, 24}, "ad72bd", -1.047262712E9d));
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(Util.format(NPStringFog.decode(new byte[]{51, 12, 93, 77, 19, 82, 5, 22, 93, 81, 67, 84, 14, 3, 74, 21, 70, 20, 86, 86, 64, 21, 2, 67, 70, 71, 92, 21, 10, 89, 70, 10, 93, 84, 7, 82, 20, 66, 86, 84, 14, 82, 92, 66, 29, 70}, "fb85c7", -26219), Integer.valueOf(cCharAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{18, 87, 88, 23, 0, 67, 2, 89, 70, 66, 11, 2, 9, 83, 20}, "d64bec", -14601) + str + NPStringFog.decode(new byte[]{17, 14, 91, 70, 87, 19, 93, 95}, "13ff9f", true));
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char cCharAt2 = str2.charAt(i2);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(Util.format(NPStringFog.decode(new byte[]{99, 11, 93, 29, 65, 86, 85, 17, 93, 1, 17, 80, 94, 4, 74, 69, 20, 16, 6, 81, 64, 69, 80, 71, 22, 64, 92, 69, 88, 93, 22, 64, 75, 69, 71, 82, 90, 16, 93, 95, 17, 22, 69}, "6e8e13", 29413), Integer.valueOf(cCharAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        public Builder add(String str) {
            int iIndexOf = str.indexOf(NPStringFog.decode(new byte[]{88}, "b508de", 1.903235898E9d));
            if (iIndexOf == -1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{52, 92, 83, 28, 21, 1, 2, 70, 83, 0, 69, 12, 4, 83, 82, 1, 23, 94, 65}, "a26ded", -30484) + str);
            }
            return add(str.substring(0, iIndexOf).trim(), str.substring(iIndexOf + 1));
        }

        public Builder add(String str, String str2) {
            checkNameAndValue(str, str2);
            return addLenient(str, str2);
        }

        Builder addLenient(String str) {
            int iIndexOf = str.indexOf(NPStringFog.decode(new byte[]{11}, "1ab348", false), 1);
            return iIndexOf != -1 ? addLenient(str.substring(0, iIndexOf), str.substring(iIndexOf + 1)) : str.startsWith(NPStringFog.decode(new byte[]{92}, "f0b48a", true)) ? addLenient("", str.substring(1)) : addLenient("", str);
        }

        Builder addLenient(String str, String str2) {
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }

        public Headers build() {
            return new Headers(this);
        }

        public String get(String str) {
            for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(size))) {
                    return this.namesAndValues.get(size + 1);
                }
            }
            return null;
        }

        public Builder removeAll(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.namesAndValues.size()) {
                    return this;
                }
                if (str.equalsIgnoreCase(this.namesAndValues.get(i2))) {
                    this.namesAndValues.remove(i2);
                    this.namesAndValues.remove(i2);
                    i2 -= 2;
                }
                i = i2 + 2;
            }
        }

        public Builder set(String str, String str2) {
            checkNameAndValue(str, str2);
            removeAll(str);
            addLenient(str, str2);
            return this;
        }
    }

    Headers(Builder builder) {
        this.namesAndValues = (String[]) builder.namesAndValues.toArray(new String[builder.namesAndValues.size()]);
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    private static String get(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static Headers of(Map<String, String> map) {
        if (map == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{91, 86, 82, 92, 84, 65, 64, 19, 14, 5, 17, 93, 70, 95, 95}, "333813", -7.3769466E8f));
        }
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 87, 89, 86, 86, 20, 64, 18, 91, 83, 93, 8, 92, 70, 24, 80, 86, 70, 93, 71, 84, 94}, "32823f", true, true));
            }
            String strTrim = entry.getKey().trim();
            String strTrim2 = entry.getValue().trim();
            if (strTrim.length() == 0 || strTrim.indexOf(0) != -1 || strTrim2.indexOf(0) != -1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{51, 92, 80, 65, 68, 6, 5, 70, 80, 93, 20, 11, 3, 83, 81, 92, 70, 89, 70}, "f2594c", -377785931L) + strTrim + NPStringFog.decode(new byte[]{14, 25}, "491cad", 24965) + strTrim2);
            }
            strArr[i] = strTrim;
            strArr[i + 1] = strTrim2;
            i += 2;
        }
        return new Headers(strArr);
    }

    public static Headers of(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{11, 89, 8, 1, 64, 121, 11, 92, 51, 5, 95, 77, 0, 75, 69, 89, 14, 24, 11, 77, 9, 8}, "e8ed38", 994));
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 27, 68, 82, 84, 71, 80, 7, 20, 86, 91, 71, 80, 17, 90, 86, 67, 90, 91, 4, 20, 95, 82, 82, 81, 6, 70, 23, 89, 82, 88, 6, 71, 23, 86, 93, 81, 67, 66, 86, 91, 70, 80, 16}, "5c4773", 23378));
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 86, 7, 86, 85, 71, 16, 19, 5, 83, 94, 91, 12, 71, 70, 80, 85, 21, 13, 70, 10, 94}, "c3f205", -1.96220219E9d));
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 90, 0, 28, 72, 0, 7, 64, 0, 0, 24, 13, 1, 85, 1, 1, 74, 95, 68}, "d4ed8e", 2140332468L) + str + NPStringFog.decode(new byte[]{9, 18}, "328090", 1.3222205E9f) + str2);
            }
        }
        return new Headers(strArr2);
    }

    public long byteCount() {
        long length = this.namesAndValues.length * 2;
        int length2 = this.namesAndValues.length;
        for (int i = 0; i < length2; i++) {
            length += (long) this.namesAndValues[i].length();
        }
        return length;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Headers) && Arrays.equals(((Headers) obj).namesAndValues, this.namesAndValues);
    }

    @Nullable
    public String get(String str) {
        return get(this.namesAndValues, str);
    }

    @Nullable
    public Date getDate(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return HttpDate.parse(str2);
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    public String name(int i) {
        return this.namesAndValues[i * 2];
    }

    public Set<String> names() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        Collections.addAll(builder.namesAndValues, this.namesAndValues);
        return builder;
    }

    public int size() {
        return this.namesAndValues.length / 2;
    }

    public Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            String lowerCase = name(i).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i)).append(NPStringFog.decode(new byte[]{89, 24}, "c84ed1", 19918)).append(value(i)).append("\n");
        }
        return sb.toString();
    }

    public String value(int i) {
        return this.namesAndValues[(i * 2) + 1];
    }

    public List<String> values(String str) {
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(name(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }
}
