package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    private static final int RESOLVE_BY_FONT_TABLE = -1;
    protected final Method mAbortCreation;
    protected final Method mAddFontFromAssetManager;
    protected final Method mAddFontFromBuffer;
    protected final Method mCreateFromFamiliesWithDefault;
    protected final Class<?> mFontFamily;
    protected final Constructor<?> mFontFamilyCtor;
    protected final Method mFreeze;
    private static final String ABORT_CREATION_METHOD = NPStringFog.decode(new byte[]{89, 85, 88, 66, 76, 114, 74, 82, 86, 68, 81, 94, 86}, "877081", 1.710530771E9d);
    private static final String ADD_FONT_FROM_ASSET_MANAGER_METHOD = NPStringFog.decode(new byte[]{86, 6, 0, 36, 14, 89, 67, 36, 22, 13, 12, 118, 68, 17, 1, 22, 44, 86, 89, 3, 3, 7, 19}, "7bdba7", -16463);
    private static final String ADD_FONT_FROM_BUFFER_METHOD = NPStringFog.decode(new byte[]{85, 6, 85, 127, 89, 94, 64, 36, 67, 86, 91, 114, 65, 4, 87, 92, 68}, "4b1960", 2.0304317E9f);
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = NPStringFog.decode(new byte[]{84, 64, 93, 3, 70, 83, 113, 64, 87, 15, 116, 87, 90, 91, 84, 11, 87, 69, 96, 91, 76, 10, 118, 83, 81, 83, 77, 14, 70}, "728b26", true, true);
    private static final String FONT_FAMILY_CLASS = NPStringFog.decode(new byte[]{5, 15, 82, 69, 94, 92, 0, 79, 81, 69, 80, 69, 12, 8, 85, 68, 31, 115, 11, 15, 66, 113, 80, 88, 13, 13, 79}, "da6715", -9306);
    private static final String FREEZE_METHOD = NPStringFog.decode(new byte[]{0, 75, 0, 1, 79, 83}, "f9ed56", true);
    private static final String TAG = NPStringFog.decode(new byte[]{98, 72, 64, 7, 85, 88, 85, 84, 115, 13, 94, 73, 87, 69, 113, 18, 90, 11, 0, 120, 93, 18, 95}, "610b39", true, true);

    public TypefaceCompatApi26Impl() {
        Method methodObtainCreateFromFamiliesWithDefaultMethod;
        Method method;
        Method method2;
        Method method3;
        Constructor<?> constructor;
        Class<?> cls;
        Method method4 = null;
        try {
            Class<?> clsObtainFontFamily = obtainFontFamily();
            Constructor<?> constructorObtainFontFamilyCtor = obtainFontFamilyCtor(clsObtainFontFamily);
            Method methodObtainAddFontFromAssetManagerMethod = obtainAddFontFromAssetManagerMethod(clsObtainFontFamily);
            Method methodObtainAddFontFromBufferMethod = obtainAddFontFromBufferMethod(clsObtainFontFamily);
            Method methodObtainFreezeMethod = obtainFreezeMethod(clsObtainFontFamily);
            Method methodObtainAbortCreationMethod = obtainAbortCreationMethod(clsObtainFontFamily);
            methodObtainCreateFromFamiliesWithDefaultMethod = obtainCreateFromFamiliesWithDefaultMethod(clsObtainFontFamily);
            method4 = methodObtainAbortCreationMethod;
            method = methodObtainFreezeMethod;
            method2 = methodObtainAddFontFromBufferMethod;
            method3 = methodObtainAddFontFromAssetManagerMethod;
            constructor = constructorObtainFontFamilyCtor;
            cls = clsObtainFontFamily;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(NPStringFog.decode(new byte[]{48, 29, 68, 3, 94, 86, 7, 1, 119, 9, 85, 71, 5, 16, 117, 22, 81, 5, 82, 45, 89, 22, 84}, "dd4f87", -357758810L), NPStringFog.decode(new byte[]{98, 90, 80, 85, 89, 0, 23, 64, 94, 23, 86, 10, 91, 88, 84, 84, 65, 69, 89, 81, 82, 82, 70, 22, 86, 70, 72, 23, 88, 0, 67, 92, 94, 83, 70, 69, 81, 91, 67, 23, 86, 9, 86, 71, 66, 23}, "74175e", true, false) + e.getClass().getName(), e);
            methodObtainCreateFromFamiliesWithDefaultMethod = null;
            method = null;
            method2 = null;
            method3 = null;
            constructor = null;
            cls = null;
        }
        this.mFontFamily = cls;
        this.mFontFamilyCtor = constructor;
        this.mAddFontFromAssetManager = method3;
        this.mAddFontFromBuffer = method2;
        this.mFreeze = method;
        this.mAbortCreation = method4;
        this.mCreateFromFamiliesWithDefault = methodObtainCreateFromFamiliesWithDefaultMethod;
    }

    private void abortCreation(Object obj) {
        try {
            this.mAbortCreation.invoke(obj, new Object[0]);
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
        }
    }

    private boolean addFontFromAssetManager(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.mAddFontFromAssetManager.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean addFontFromBuffer(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.mAddFontFromBuffer.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean freeze(Object obj) {
        try {
            return ((Boolean) this.mFreeze.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean isFontFamilyPrivateAPIAvailable() {
        if (this.mAddFontFromAssetManager == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{101, 13, 7, 81, 14, 86, 16, 23, 9, 19, 1, 92, 92, 15, 3, 80, 22, 19, 94, 6, 5, 86, 17, 64, 81, 17, 31, 19, 18, 65, 89, 21, 7, 71, 7, 19, 93, 6, 18, 91, 13, 87, 67, 77, 70, 117, 3, 95, 92, 1, 7, 80, 9, 19, 68, 12, 70, 95, 7, 84, 81, 0, 31, 19, 11, 94, 64, 15, 3, 94, 7, 93, 68, 2, 18, 90, 13, 93, 30}, "0cf3b3", false));
        }
        return this.mAddFontFromAssetManager != null;
    }

    private Object newFamily() {
        try {
            return this.mFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    protected Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(this.mFontFamily, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.mCreateFromFamiliesWithDefault.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        if (!isFontFamilyPrivateAPIAvailable()) {
            return super.createFromFontFamilyFilesResourceEntry(context, fontFamilyFilesResourceEntry, resources, i);
        }
        Object objNewFamily = newFamily();
        if (objNewFamily == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            if (!addFontFromAssetManager(context, objNewFamily, fontFileResourceEntry.getFileName(), fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.getVariationSettings()))) {
                abortCreation(objNewFamily);
                return null;
            }
        }
        if (freeze(objNewFamily)) {
            return createFromFamiliesWithDefault(objNewFamily);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Throwable] */
    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Typeface typefaceCreateFromFamiliesWithDefault;
        boolean z = false;
        if (fontInfoArr.length < 1) {
            return null;
        }
        if (!isFontFamilyPrivateAPIAvailable()) {
            FontsContractCompat.FontInfo fontInfoFindBestInfo = findBestInfo(fontInfoArr, i);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(fontInfoFindBestInfo.getUri(), NPStringFog.decode(new byte[]{22}, "d41d1a", true), cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(fontInfoFindBestInfo.getWeight()).setItalic(fontInfoFindBestInfo.isItalic()).build();
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        return typefaceBuild;
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (Throwable th2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> fontInfoIntoByteBuffer = TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fontInfoArr, cancellationSignal);
        Object objNewFamily = newFamily();
        if (objNewFamily == null) {
            return null;
        }
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            ByteBuffer byteBuffer = fontInfoIntoByteBuffer.get(fontInfo.getUri());
            if (byteBuffer != null) {
                if (!addFontFromBuffer(objNewFamily, byteBuffer, fontInfo.getTtcIndex(), fontInfo.getWeight(), fontInfo.isItalic() ? 1 : 0)) {
                    abortCreation(objNewFamily);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            abortCreation(objNewFamily);
            return null;
        }
        if (freeze(objNewFamily) && (typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(objNewFamily)) != null) {
            return Typeface.create(typefaceCreateFromFamiliesWithDefault, i);
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        if (!isFontFamilyPrivateAPIAvailable()) {
            return super.createFromResourcesFontFile(context, resources, i, str, i2);
        }
        Object objNewFamily = newFamily();
        if (objNewFamily == null) {
            return null;
        }
        if (!addFontFromAssetManager(context, objNewFamily, str, 0, -1, -1, null)) {
            abortCreation(objNewFamily);
            return null;
        }
        if (freeze(objNewFamily)) {
            return createFromFamiliesWithDefault(objNewFamily);
        }
        return null;
    }

    protected Method obtainAbortCreationMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(ABORT_CREATION_METHOD, new Class[0]);
    }

    protected Method obtainAddFontFromAssetManagerMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(ADD_FONT_FROM_ASSET_MANAGER_METHOD, AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    protected Method obtainAddFontFromBufferMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(ADD_FONT_FROM_BUFFER_METHOD, ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    protected Method obtainCreateFromFamiliesWithDefaultMethod(Class<?> cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Class<?> obtainFontFamily() throws ClassNotFoundException {
        return Class.forName(FONT_FAMILY_CLASS);
    }

    protected Constructor<?> obtainFontFamilyCtor(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    protected Method obtainFreezeMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(FREEZE_METHOD, new Class[0]);
    }
}
