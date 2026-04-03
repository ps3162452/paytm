package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
class ResourcesFlusher {
    private static final String TAG = NPStringFog.decode(new byte[]{52, 4, 23, 86, 23, 67, 5, 4, 23, 127, 14, 68, 21, 9, 1, 75}, "fad9b1", -1.626252577E9d);
    private static Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class<?> sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    private ResourcesFlusher() {
    }

    static void flush(Resources resources) throws IllegalAccessException {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            flushNougats(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            flushMarshmallows(resources);
        } else if (Build.VERSION.SDK_INT >= 21) {
            flushLollipops(resources);
        }
    }

    private static void flushLollipops(Resources resources) {
        Map map;
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField(NPStringFog.decode(new byte[]{14, 33, 65, 86, 66, 85, 1, 9, 86, 116, 84, 87, 11, 0}, "ce3754", -8.0054098E8d));
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{32, 14, 71, 85, 0, 21, 13, 14, 70, 25, 22, 80, 23, 19, 91, 92, 18, 80, 67, 51, 87, 74, 11, 64, 17, 2, 87, 74, 71, 88, 39, 19, 83, 78, 5, 87, 15, 4, 113, 88, 7, 93, 6, 65, 84, 80, 1, 89, 7}, "ca29d5", 1.6422066E9f), e);
            }
            sDrawableCacheFieldFetched = true;
        }
        Field field = sDrawableCacheField;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, NPStringFog.decode(new byte[]{32, 88, 16, 85, 7, 66, 13, 88, 17, 25, 17, 7, 23, 69, 12, 92, 21, 7, 67, 65, 4, 85, 22, 7, 67, 81, 23, 86, 14, 66, 49, 82, 22, 86, 22, 16, 0, 82, 22, 26, 14, 38, 17, 86, 18, 88, 1, 14, 6, 116, 4, 90, 11, 7}, "c7e9cb", -1487779643L), e2);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    private static void flushMarshmallows(Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField(NPStringFog.decode(new byte[]{88, 33, 70, 7, 64, 89, 87, 9, 81, 37, 86, 91, 93, 0}, "5e4f78", -799516155L));
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{33, 92, 67, 91, 81, 25, 12, 92, 66, 23, 71, 92, 22, 65, 95, 82, 67, 92, 66, 97, 83, 68, 90, 76, 16, 80, 83, 68, 22, 84, 38, 65, 87, 64, 84, 91, 14, 86, 117, 86, 86, 81, 7, 19, 80, 94, 80, 85, 6}, "b36759", false, false), e);
            }
            sDrawableCacheFieldFetched = true;
        }
        Object obj = null;
        Field field = sDrawableCacheField;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, NPStringFog.decode(new byte[]{112, 93, 22, 88, 2, 18, 93, 93, 23, 20, 20, 87, 71, 64, 10, 81, 16, 87, 19, 68, 2, 88, 19, 87, 19, 84, 17, 91, 11, 18, 97, 87, 16, 91, 19, 64, 80, 87, 16, 23, 11, 118, 65, 83, 20, 85, 4, 94, 86, 113, 2, 87, 14, 87}, "32c4f2", -1.841431206E9d), e2);
            }
        }
        if (obj == null) {
            return;
        }
        flushThemedResourcesCache(obj);
    }

    private static void flushNougats(Resources resources) throws IllegalAccessException {
        Object obj;
        Object obj2;
        if (!sResourcesImplFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField(NPStringFog.decode(new byte[]{15, 100, 6, 71, 90, 64, 16, 85, 6, 71, 124, 88, 18, 90}, "b6c455", 4.5560582E8f));
                sResourcesImplField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{123, 88, 64, 10, 86, 20, 86, 88, 65, 70, 64, 81, 76, 69, 92, 3, 68, 81, 24, 101, 80, 21, 93, 65, 74, 84, 80, 21, 17, 89, 106, 82, 70, 9, 71, 70, 91, 82, 70, 47, 95, 68, 84, 23, 83, 15, 87, 88, 92}, "875f24", false, false), e);
            }
            sResourcesImplFieldFetched = true;
        }
        Field field = sResourcesImplField;
        if (field == null) {
            return;
        }
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{114, 11, 19, 90, 6, 22, 95, 11, 18, 22, 16, 83, 69, 22, 15, 83, 20, 83, 17, 18, 7, 90, 23, 83, 17, 2, 20, 89, 15, 22, 99, 1, 21, 89, 23, 68, 82, 1, 21, 21, 15, 100, 84, 23, 9, 67, 16, 85, 84, 23, 47, 91, 18, 90}, "1df6b6", -1096485211L), e2);
            obj = null;
        }
        if (obj != null) {
            if (!sDrawableCacheFieldFetched) {
                try {
                    Field declaredField2 = obj.getClass().getDeclaredField(NPStringFog.decode(new byte[]{9, 115, 74, 5, 66, 0, 6, 91, 93, 39, 84, 2, 12, 82}, "d78d5a", -1638650384L));
                    sDrawableCacheField = declaredField2;
                    declaredField2.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e(TAG, NPStringFog.decode(new byte[]{115, 9, 17, 90, 7, 18, 94, 9, 16, 22, 17, 87, 68, 20, 13, 83, 21, 87, 16, 52, 1, 69, 12, 71, 66, 5, 1, 69, 42, 95, 64, 10, 71, 91, 39, 64, 81, 17, 5, 84, 15, 87, 115, 7, 7, 94, 6, 18, 86, 15, 1, 90, 7}, "0fd6c2", false, true), e3);
                }
                sDrawableCacheFieldFetched = true;
            }
            Field field2 = sDrawableCacheField;
            if (field2 != null) {
                try {
                    obj2 = field2.get(obj);
                } catch (IllegalAccessException e4) {
                    Log.e(TAG, NPStringFog.decode(new byte[]{117, 94, 22, 13, 93, 19, 88, 94, 23, 65, 75, 86, 66, 67, 10, 4, 79, 86, 22, 71, 2, 13, 76, 86, 22, 87, 17, 14, 84, 19, 100, 84, 16, 14, 76, 65, 85, 84, 16, 40, 84, 67, 90, 18, 14, 37, 75, 82, 65, 80, 1, 13, 92, 112, 87, 82, 11, 4}, "61ca93", -25424), e4);
                    obj2 = null;
                }
            } else {
                obj2 = null;
            }
            if (obj2 != null) {
                flushThemedResourcesCache(obj2);
            }
        }
    }

    private static void flushThemedResourcesCache(Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName(NPStringFog.decode(new byte[]{5, 94, 81, 74, 91, 81, 0, 30, 86, 87, 90, 76, 1, 94, 65, 22, 70, 93, 23, 30, 97, 80, 81, 85, 1, 84, 103, 93, 71, 87, 17, 66, 86, 93, 119, 89, 7, 88, 80}, "d05848", 1.6422212E9f));
            } catch (ClassNotFoundException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{119, 9, 70, 15, 1, 22, 90, 9, 71, 67, 3, 95, 90, 2, 19, 55, 13, 83, 89, 3, 87, 49, 0, 69, 91, 19, 65, 0, 0, 117, 85, 5, 91, 6, 69, 85, 88, 7, 64, 16}, "4f3ce6", 1264626667L), e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class<?> cls = sThemedResourceCacheClazz;
        if (cls == null) {
            return;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = cls.getDeclaredField(NPStringFog.decode(new byte[]{88, 108, 12, 77, 88, 93, 88, 92, 6, 124, 94, 76, 71, 80, 7, 74}, "59b908", true));
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, NPStringFog.decode(new byte[]{123, 92, 16, 10, 83, 16, 86, 92, 17, 70, 69, 85, 76, 65, 12, 3, 65, 85, 24, 103, 13, 3, 90, 85, 92, 97, 0, 21, 88, 69, 74, 80, 0, 37, 86, 83, 80, 86, 70, 11, 98, 94, 76, 91, 0, 11, 82, 84, 125, 93, 17, 20, 94, 85, 75, 19, 3, 15, 82, 92, 92}, "83ef70", -12107), e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        Field field = sThemedResourceCache_mUnthemedEntriesField;
        if (field != null) {
            try {
                longSparseArray = (LongSparseArray) field.get(obj);
            } catch (IllegalAccessException e3) {
                Log.e(TAG, NPStringFog.decode(new byte[]{39, 88, 68, 93, 92, 17, 10, 88, 69, 17, 74, 84, 16, 69, 88, 84, 78, 84, 68, 65, 80, 93, 77, 84, 68, 81, 67, 94, 85, 17, 48, 95, 84, 92, 93, 85, 54, 82, 66, 94, 77, 67, 7, 82, 114, 80, 91, 89, 1, 20, 92, 100, 86, 69, 12, 82, 92, 84, 92, 116, 10, 67, 67, 88, 93, 66}, "d71181", 1.61877417E8d), e3);
                longSparseArray = null;
            }
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }
}
