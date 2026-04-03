package androidx.fragment.app;

import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public class FragmentFactory {
    private static final SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> sClassCacheMap = new SimpleArrayMap<>();

    static boolean isFragmentClass(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(loadClass(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private static Class<?> loadClass(ClassLoader classLoader, String str) throws ClassNotFoundException {
        SimpleArrayMap<String, Class<?>> simpleArrayMap;
        SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> simpleArrayMap2 = sClassCacheMap;
        SimpleArrayMap<String, Class<?>> simpleArrayMap3 = simpleArrayMap2.get(classLoader);
        if (simpleArrayMap3 == null) {
            SimpleArrayMap<String, Class<?>> simpleArrayMap4 = new SimpleArrayMap<>();
            simpleArrayMap2.put(classLoader, simpleArrayMap4);
            simpleArrayMap = simpleArrayMap4;
        } else {
            simpleArrayMap = simpleArrayMap3;
        }
        Class<?> cls = simpleArrayMap.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        simpleArrayMap.put(str, cls2);
        return cls2;
    }

    public static Class<? extends Fragment> loadFragmentClass(ClassLoader classLoader, String str) {
        try {
            return loadClass(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{109, 8, 0, 85, 95, 0, 24, 18, 14, 23, 90, 11, 75, 18, 0, 89, 71, 12, 89, 18, 4, 23, 85, 23, 89, 1, 12, 82, 93, 17, 24}, "8fa73e", -1.6387054E9f) + str + NPStringFog.decode(new byte[]{13, 68, 93, 0, 89, 7, 23, 23, 69, 19, 87, 66, 84, 8, 81, 18, 65, 66, 94, 23, 16, 0, 18, 20, 86, 8, 89, 5, 18, 17, 66, 6, 83, 13, 83, 17, 68, 68, 95, 7, 18, 36, 69, 5, 87, 12, 87, 12, 67}, "7d0a2b", -762612252L), e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{52, 87, 4, 82, 92, 93, 65, 77, 10, 16, 89, 86, 18, 77, 4, 94, 68, 81, 0, 77, 0, 16, 86, 74, 0, 94, 8, 85, 94, 76, 65}, "a9e008", -7.545203E8f) + str + NPStringFog.decode(new byte[]{12, 66, 90, 7, 91, 85, 22, 17, 66, 20, 85, 16, 85, 14, 86, 21, 67, 16, 88, 3, 90, 3, 16, 85, 78, 11, 68, 18, 67}, "6b7f00", true), e2);
        }
    }

    public Fragment instantiate(ClassLoader classLoader, String str) {
        try {
            return loadFragmentClass(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{52, 89, 0, 84, 93, 81, 65, 67, 14, 22, 88, 90, 18, 67, 0, 88, 69, 93, 0, 67, 4, 22, 87, 70, 0, 80, 12, 83, 95, 64, 65}, "a7a614", -22104) + str + NPStringFog.decode(new byte[]{8, 20, 85, 7, 89, 84, 18, 71, 77, 20, 87, 17, 81, 88, 89, 21, 65, 17, 92, 85, 85, 3, 18, 84, 74, 93, 75, 18, 65, 29, 18, 93, 75, 70, 66, 68, 80, 88, 81, 5, 30, 17, 83, 90, 92, 70, 90, 80, 65, 20, 89, 8, 18, 84, 95, 68, 76, 31, 18, 82, 93, 90, 75, 18, 64, 68, 81, 64, 87, 20, 18, 69, 90, 85, 76, 70, 91, 66, 18, 68, 77, 4, 94, 88, 81}, "248f21", true), e);
        } catch (InstantiationException e2) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{99, 91, 3, 1, 85, 82, 22, 65, 13, 67, 80, 89, 69, 65, 3, 13, 77, 94, 87, 65, 7, 67, 95, 69, 87, 82, 15, 6, 87, 67, 22}, "65bc97", 1.640982511E9d) + str + NPStringFog.decode(new byte[]{88, 24, 95, 86, 13, 86, 66, 75, 71, 69, 3, 19, 1, 84, 83, 68, 21, 19, 12, 89, 95, 82, 70, 86, 26, 81, 65, 67, 21, 31, 66, 81, 65, 23, 22, 70, 0, 84, 91, 84, 74, 19, 3, 86, 86, 23, 14, 82, 17, 24, 83, 89, 70, 86, 15, 72, 70, 78, 70, 80, 13, 86, 65, 67, 20, 70, 1, 76, 93, 69, 70, 71, 10, 89, 70, 23, 15, 64, 66, 72, 71, 85, 10, 90, 1}, "b827f3", 1.269895822E9d), e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{51, 86, 87, 87, 84, 3, 70, 76, 89, 21, 81, 8, 21, 76, 87, 91, 76, 15, 7, 76, 83, 21, 94, 20, 7, 95, 91, 80, 86, 18, 70}, "f8658f", false, false) + str + NPStringFog.decode(new byte[]{89, 25, 86, 90, 71, 92, 7, 25, 91, 90, 70, 16, 5, 80, 91, 81, 18, 118, 17, 88, 82, 88, 87, 94, 23, 25, 86, 90, 92, 67, 23, 75, 64, 86, 70, 95, 17}, "c95520", 7.9513197E8f), e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.InstantiationException(NPStringFog.decode(new byte[]{54, 91, 2, 3, 13, 85, 67, 65, 12, 65, 8, 94, 16, 65, 2, 15, 21, 89, 2, 65, 6, 65, 7, 66, 2, 82, 14, 4, 15, 68, 67}, "c5caa0", -1687228633L) + str + NPStringFog.decode(new byte[]{8, 69, 87, 3, 14, 92, 91, 11, 83, 66, 36, 66, 83, 2, 89, 7, 12, 68, 18, 6, 91, 12, 17, 68, 64, 16, 87, 22, 13, 66, 18, 6, 85, 23, 17, 85, 86, 69, 85, 12, 66, 85, 74, 6, 81, 18, 22, 89, 93, 11}, "2e4bb0", -1.433706401E9d), e4);
        }
    }
}
