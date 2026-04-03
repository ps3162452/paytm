package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class TypefaceCompatApi24Impl extends TypefaceCompatBaseImpl {
    private static final String ADD_FONT_WEIGHT_STYLE_METHOD = NPStringFog.decode(new byte[]{86, 92, 6, 117, 10, 89, 67, 111, 7, 90, 2, 95, 67, 107, 22, 74, 9, 82}, "78b3e7", 1.882091054E9d);
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = NPStringFog.decode(new byte[]{80, 19, 83, 82, 70, 0, 117, 19, 89, 94, 116, 4, 94, 8, 90, 90, 87, 22, 100, 8, 66, 91, 118, 0, 85, 0, 67, 95, 70}, "3a632e", -2273);
    private static final String FONT_FAMILY_CLASS = NPStringFog.decode(new byte[]{87, 10, 7, 19, 91, 94, 82, 74, 4, 19, 85, 71, 94, 13, 0, 18, 26, 113, 89, 10, 23, 39, 85, 90, 95, 8, 26}, "6dca47", false, true);
    private static final String TAG = NPStringFog.decode(new byte[]{109, 72, 66, 93, 7, 82, 90, 84, 113, 87, 12, 67, 88, 69, 115, 72, 8, 1, 13, 120, 95, 72, 13}, "9128a3", -16509);
    private static final Method sAddFontWeightStyle;
    private static final Method sCreateFromFamiliesWithDefault;
    private static final Class<?> sFontFamily;
    private static final Constructor<?> sFontFamilyCtor;

    static {
        Method method;
        Constructor<?> constructor;
        Class<?> cls;
        Method method2 = null;
        try {
            Class<?> cls2 = Class.forName(NPStringFog.decode(new byte[]{85, 15, 85, 17, 93, 13, 80, 79, 86, 17, 83, 20, 92, 8, 82, 16, 28, 34, 91, 15, 69, 37, 83, 9, 93, 13, 72}, "4a1c2d", false, false));
            Constructor<?> constructor2 = cls2.getConstructor(new Class[0]);
            Method method3 = cls2.getMethod(NPStringFog.decode(new byte[]{0, 87, 85, 115, 91, 12, 21, 100, 84, 92, 83, 10, 21, 96, 69, 76, 88, 7}, "a3154b", 1275053643L), ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(NPStringFog.decode(new byte[]{81, 67, 85, 84, 21, 83, 116, 67, 95, 88, 39, 87, 95, 88, 92, 92, 4, 69, 101, 88, 68, 93, 37, 83, 84, 80, 69, 89, 21}, "2105a6", 2871), Array.newInstance(cls2, 1).getClass());
            method2 = method3;
            constructor = constructor2;
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(NPStringFog.decode(new byte[]{100, 72, 73, 6, 3, 4, 83, 84, 122, 12, 8, 21, 81, 69, 120, 19, 12, 87, 4, 120, 84, 19, 9}, "019cee", 32591), e.getClass().getName(), e);
            method = null;
            constructor = null;
            cls = null;
        }
        sFontFamilyCtor = constructor;
        sFontFamily = cls;
        sAddFontWeightStyle = method2;
        sCreateFromFamiliesWithDefault = method;
    }

    TypefaceCompatApi24Impl() {
    }

    private static boolean addFontWeightStyle(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) sAddFontWeightStyle.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private static Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(sFontFamily, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    public static boolean isUsable() {
        Method method = sAddFontWeightStyle;
        if (method == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{103, 15, 7, 0, 14, 4, 18, 21, 9, 66, 1, 14, 94, 13, 3, 1, 22, 65, 92, 4, 5, 7, 17, 18, 83, 19, 31, 66, 18, 19, 91, 23, 7, 22, 7, 65, 95, 4, 18, 10, 13, 5, 65, 79, 32, 3, 14, 13, 80, 0, 5, 9, 66, 21, 93, 65, 10, 7, 5, 0, 81, 24, 70, 11, 15, 17, 94, 4, 11, 7, 12, 21, 83, 21, 15, 13, 12, 79}, "2afbba", -9499));
        }
        return method != null;
    }

    private static Object newFamily() {
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object objNewFamily = newFamily();
        if (objNewFamily == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            ByteBuffer byteBufferCopyToDirectBuffer = TypefaceCompatUtil.copyToDirectBuffer(context, resources, fontFileResourceEntry.getResourceId());
            if (byteBufferCopyToDirectBuffer == null || !addFontWeightStyle(objNewFamily, byteBufferCopyToDirectBuffer, fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                return null;
            }
        }
        return createFromFamiliesWithDefault(objNewFamily);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        int i2;
        Object objNewFamily = newFamily();
        if (objNewFamily == null) {
            return null;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            Uri uri = fontInfo.getUri();
            ByteBuffer byteBufferMmap = (ByteBuffer) simpleArrayMap.get(uri);
            if (byteBufferMmap == null) {
                byteBufferMmap = TypefaceCompatUtil.mmap(context, cancellationSignal, uri);
                simpleArrayMap.put(uri, byteBufferMmap);
            }
            i2 = (byteBufferMmap != null && addFontWeightStyle(objNewFamily, byteBufferMmap, fontInfo.getTtcIndex(), fontInfo.getWeight(), fontInfo.isItalic())) ? i2 + 1 : 0;
            return null;
        }
        Typeface typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(objNewFamily);
        if (typefaceCreateFromFamiliesWithDefault == null) {
            return null;
        }
        return Typeface.create(typefaceCreateFromFamiliesWithDefault, i);
    }
}
