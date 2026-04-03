package com.google.gson;

import com.google.gson.internal.ReflectionAccessFilterHelper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public interface ReflectionAccessFilter {
    public static final ReflectionAccessFilter BLOCK_INACCESSIBLE_JAVA = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.1
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_INACCESSIBLE : FilterResult.INDECISIVE;
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{100, 4, 0, 8, 80, 1, 66, 8, 9, 10, 116, 1, 85, 4, 21, 23, 115, 11, 90, 21, 3, 22, 22, 32, 122, 46, 37, 47, 106, 43, 120, 32, 37, 39, 112, 49, 101, 40, 36, 40, 112, 61, 124, 32, 48, 37}, "6afd5b", false, false);
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_JAVA = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.2
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{107, 82, 5, 94, 92, 5, 77, 94, 12, 92, 120, 5, 90, 82, 16, 65, 127, 15, 85, 67, 6, 64, 26, 36, 117, 120, 32, 121, 102, 39, 117, 123, 60, 120, 120, 48, 120}, "97c29f", 1.266865564E9d);
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_ANDROID = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.3
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAndroidType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{49, 87, 4, 93, 81, 87, 23, 91, 13, 95, 117, 87, 0, 87, 17, 66, 114, 93, 15, 70, 7, 67, 23, 118, 47, 125, 33, 122, 107, 117, 47, 126, 61, 112, 122, 112, 49, 125, 43, 117}, "c2b144", 10586);
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_PLATFORM = new ReflectionAccessFilter() { // from class: com.google.gson.ReflectionAccessFilter.4
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAnyPlatformType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{52, 80, 4, 85, 84, 5, 18, 92, 13, 87, 112, 5, 5, 80, 17, 74, 119, 15, 10, 65, 7, 75, 18, 36, 42, 122, 33, 114, 110, 39, 42, 121, 61, 105, 125, 39, 50, 115, 45, 107, 124}, "f5b91f", false);
        }
    };

    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    FilterResult check(Class<?> cls);
}
