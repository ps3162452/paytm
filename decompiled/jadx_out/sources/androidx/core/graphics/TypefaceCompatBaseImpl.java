package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class TypefaceCompatBaseImpl {
    private static final int INVALID_KEY = 0;
    private static final String TAG = NPStringFog.decode(new byte[]{100, 73, 21, 83, 94, 84, 83, 85, 38, 89, 85, 69, 81, 68, 39, 87, 75, 80, 121, 93, 21, 90}, "00e685", -11667);
    private ConcurrentHashMap<Long, FontResourcesParserCompat.FontFamilyFilesResourceEntry> mFontFamilies = new ConcurrentHashMap<>();

    private interface StyleExtractor<T> {
        int getWeight(T t);

        boolean isItalic(T t);
    }

    TypefaceCompatBaseImpl() {
    }

    private void addFontFamily(Typeface typeface, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry) {
        long uniqueKey = getUniqueKey(typeface);
        if (uniqueKey != 0) {
            this.mFontFamilies.put(Long.valueOf(uniqueKey), fontFamilyFilesResourceEntry);
        }
    }

    private FontResourcesParserCompat.FontFileResourceEntry findBestEntry(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat.FontFileResourceEntry) findBestFont(fontFamilyFilesResourceEntry.getEntries(), i, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>(this) { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.2
            final TypefaceCompatBaseImpl this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.getWeight();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.isItalic();
            }
        });
    }

    private static <T> T findBestFont(T[] tArr, int i, StyleExtractor<T> styleExtractor) {
        T t;
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t2 = null;
        int i3 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i4 = 0;
        while (i4 < length) {
            T t3 = tArr[i4];
            int iAbs = (styleExtractor.isItalic(t3) == z ? 0 : 1) + (Math.abs(styleExtractor.getWeight(t3) - i2) * 2);
            if (t2 == null || i3 > iAbs) {
                i3 = iAbs;
                t = t3;
            } else {
                t = t2;
            }
            i4++;
            t2 = t;
        }
        return t2;
    }

    private static long getUniqueKey(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField(NPStringFog.decode(new byte[]{15, 83, 77, 10, 79, 84, 62, 91, 87, 16, 77, 80, 15, 81, 92}, "a29c91", 5.46901478E8d));
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{113, 92, 69, 90, 92, 20, 92, 92, 68, 22, 74, 81, 70, 65, 89, 83, 78, 81, 18, 85, 95, 88, 76, 20, 84, 65, 95, 91, 24, 82, 83, 94, 89, 90, 65, 26}, "230684", -9.416022E8f), e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{112, 87, 20, 90, 83, 70, 93, 87, 21, 22, 69, 3, 71, 74, 8, 83, 65, 3, 19, 94, 14, 88, 67, 70, 85, 74, 14, 91, 23, 0, 82, 85, 8, 90, 78, 72}, "38a67f", -3.35296366E8d), e2);
            return 0L;
        }
    }

    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntryFindBestEntry = findBestEntry(fontFamilyFilesResourceEntry, i);
        if (fontFileResourceEntryFindBestEntry == null) {
            return null;
        }
        Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, fontFileResourceEntryFindBestEntry.getResourceId(), fontFileResourceEntryFindBestEntry.getFileName(), i);
        addFontFamily(typefaceCreateFromResourcesFontFile, fontFamilyFilesResourceEntry);
        return typefaceCreateFromResourcesFontFile;
    }

    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Throwable th;
        Typeface typefaceCreateFromInputStream = null;
        if (fontInfoArr.length >= 1) {
            try {
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(findBestInfo(fontInfoArr, i).getUri());
            } catch (IOException e) {
                inputStreamOpenInputStream = null;
            } catch (Throwable th2) {
                inputStreamOpenInputStream = null;
                th = th2;
            }
            try {
                typefaceCreateFromInputStream = createFromInputStream(context, inputStreamOpenInputStream);
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            } catch (IOException e2) {
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            } catch (Throwable th3) {
                th = th3;
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                throw th;
            }
        }
        return typefaceCreateFromInputStream;
    }

    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        Typeface typefaceCreateFromFile = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                    typefaceCreateFromFile = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                tempFile.delete();
            }
        }
        return typefaceCreateFromFile;
    }

    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceCreateFromFile = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                    typefaceCreateFromFile = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                tempFile.delete();
            }
        }
        return typefaceCreateFromFile;
    }

    protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) findBestFont(fontInfoArr, i, new StyleExtractor<FontsContractCompat.FontInfo>(this) { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.1
            final TypefaceCompatBaseImpl this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.getWeight();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.isItalic();
            }
        });
    }

    FontResourcesParserCompat.FontFamilyFilesResourceEntry getFontFamily(Typeface typeface) {
        long uniqueKey = getUniqueKey(typeface);
        if (uniqueKey == 0) {
            return null;
        }
        return this.mFontFamilies.get(Long.valueOf(uniqueKey));
    }
}
