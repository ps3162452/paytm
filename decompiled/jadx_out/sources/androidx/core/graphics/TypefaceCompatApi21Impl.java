package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static Method sAddFontWeightStyle;
    private static Method sCreateFromFamiliesWithDefault;
    private static Class<?> sFontFamily;
    private static Constructor<?> sFontFamilyCtor;
    private static final String ADD_FONT_WEIGHT_STYLE_METHOD = NPStringFog.decode(new byte[]{88, 0, 81, 117, 10, 88, 77, 51, 80, 90, 2, 94, 77, 55, 65, 74, 9, 83}, "9d53e6", -1.615783E8f);
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = NPStringFog.decode(new byte[]{83, 70, 85, 83, 70, 0, 118, 70, 95, 95, 116, 4, 93, 93, 92, 91, 87, 22, 103, 93, 68, 90, 118, 0, 86, 85, 69, 94, 70}, "04022e", true);
    private static final String FONT_FAMILY_CLASS = NPStringFog.decode(new byte[]{7, 86, 85, 16, 14, 10, 2, 22, 86, 16, 0, 19, 14, 81, 82, 17, 79, 37, 9, 86, 69, 36, 0, 14, 15, 84, 72}, "f81bac", false, true);
    private static final String TAG = NPStringFog.decode(new byte[]{96, 28, 67, 1, 94, 86, 87, 0, 112, 11, 85, 71, 85, 17, 114, 20, 81, 5, 5, 44, 94, 20, 84}, "4e3d87", -1436868344L);
    private static boolean sHasInitBeenCalled = false;

    TypefaceCompatApi21Impl() {
    }

    private static boolean addFontWeightStyle(Object obj, String str, int i, boolean z) {
        init();
        try {
            return ((Boolean) sAddFontWeightStyle.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static Typeface createFromFamiliesWithDefault(Object obj) {
        init();
        try {
            Object objNewInstance = Array.newInstance(sFontFamily, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink(NPStringFog.decode(new byte[]{77, 22, 67, 95, 1, 78, 17, 3, 93, 86, 77, 7, 6, 73}, "bf10ba", 1798897284L) + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }

    private static void init() {
        Method method;
        Constructor<?> constructor;
        Class<?> cls;
        Method method2 = null;
        if (sHasInitBeenCalled) {
            return;
        }
        sHasInitBeenCalled = true;
        try {
            Class<?> cls2 = Class.forName(FONT_FAMILY_CLASS);
            Constructor<?> constructor2 = cls2.getConstructor(new Class[0]);
            Method method3 = cls2.getMethod(ADD_FONT_WEIGHT_STYLE_METHOD, String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, Array.newInstance(cls2, 1).getClass());
            method2 = method3;
            constructor = constructor2;
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(TAG, e.getClass().getName(), e);
            method = null;
            constructor = null;
            cls = null;
        }
        sFontFamilyCtor = constructor;
        sFontFamily = cls;
        sAddFontWeightStyle = method2;
        sCreateFromFamiliesWithDefault = method;
    }

    private static Object newFamily() {
        init();
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object objNewFamily = newFamily();
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            File tempFile = TypefaceCompatUtil.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.copyToFile(tempFile, resources, fontFileResourceEntry.getResourceId())) {
                    return null;
                }
                if (!addFontWeightStyle(objNewFamily, tempFile.getPath(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                    return null;
                }
                tempFile.delete();
            } catch (RuntimeException e) {
                return null;
            } finally {
                tempFile.delete();
            }
        }
        return createFromFamiliesWithDefault(objNewFamily);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        if (fontInfoArr.length < 1) {
            return null;
        }
        FontsContractCompat.FontInfo fontInfoFindBestInfo = findBestInfo(fontInfoArr, i);
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(fontInfoFindBestInfo.getUri(), NPStringFog.decode(new byte[]{65}, "3982d6", -23164), cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    return null;
                }
                parcelFileDescriptorOpenFileDescriptor.close();
                return null;
            }
            try {
                File file = getFile(parcelFileDescriptorOpenFileDescriptor);
                if (file != null && file.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceCreateFromInputStream = super.createFromInputStream(context, fileInputStream);
                    fileInputStream.close();
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceCreateFromInputStream;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th4) {
                    }
                }
                throw th3;
            }
        } catch (IOException e) {
            return null;
        }
    }
}
