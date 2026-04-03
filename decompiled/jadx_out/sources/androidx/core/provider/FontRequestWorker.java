package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class FontRequestWorker {
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = RequestExecutor.createDefaultExecutor(NPStringFog.decode(new byte[]{86, 12, 95, 21, 65, 26, 81, 13, 85, 19, 93, 94, 84, 27}, "0c1a27", -1.2589365E8f), 10, 10000);
    static final Object LOCK = new Object();
    static final SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> PENDING_REPLIES = new SimpleArrayMap<>();

    static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(int i) {
            this.mTypeface = null;
            this.mResult = i;
        }

        TypefaceResult(Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }

        boolean isSuccess() {
            return this.mResult == 0;
        }
    }

    private FontRequestWorker() {
    }

    private static String createCacheId(FontRequest fontRequest, int i) {
        return fontRequest.getId() + NPStringFog.decode(new byte[]{27}, "679e80", 9.06369941E8d) + i;
    }

    private static int getFontFamilyResultStatus(FontsContractCompat.FontFamilyResult fontFamilyResult) {
        if (fontFamilyResult.getStatusCode() != 0) {
            switch (fontFamilyResult.getStatusCode()) {
            }
            return -3;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts == null || fonts.length == 0) {
            return 1;
        }
        for (FontsContractCompat.FontInfo fontInfo : fonts) {
            int resultCode = fontInfo.getResultCode();
            if (resultCode != 0) {
                if (resultCode >= 0) {
                    return resultCode;
                }
                return -3;
            }
        }
        return 0;
    }

    static TypefaceResult getFontSync(String str, Context context, FontRequest fontRequest, int i) {
        LruCache<String, Typeface> lruCache = sTypefaceCache;
        Typeface typeface = lruCache.get(str);
        if (typeface != null) {
            return new TypefaceResult(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult fontFamilyResult = FontProvider.getFontFamilyResult(context, fontRequest, null);
            int fontFamilyResultStatus = getFontFamilyResultStatus(fontFamilyResult);
            if (fontFamilyResultStatus != 0) {
                return new TypefaceResult(fontFamilyResultStatus);
            }
            Typeface typefaceCreateFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fontFamilyResult.getFonts(), i);
            if (typefaceCreateFromFontInfo == null) {
                return new TypefaceResult(-3);
            }
            lruCache.put(str, typefaceCreateFromFontInfo);
            return new TypefaceResult(typefaceCreateFromFontInfo);
        } catch (PackageManager.NameNotFoundException e) {
            return new TypefaceResult(-1);
        }
    }

    static Typeface requestFontAsync(Context context, FontRequest fontRequest, int i, Executor executor, CallbackWithHandler callbackWithHandler) {
        String strCreateCacheId = createCacheId(fontRequest, i);
        Typeface typeface = sTypefaceCache.get(strCreateCacheId);
        if (typeface != null) {
            callbackWithHandler.onTypefaceResult(new TypefaceResult(typeface));
        } else {
            Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>(callbackWithHandler) { // from class: androidx.core.provider.FontRequestWorker.2
                final CallbackWithHandler val$callback;

                {
                    this.val$callback = callbackWithHandler;
                }

                @Override // androidx.core.util.Consumer
                public void accept(TypefaceResult typefaceResult) {
                    if (typefaceResult == null) {
                        typefaceResult = new TypefaceResult(-3);
                    }
                    this.val$callback.onTypefaceResult(typefaceResult);
                }
            };
            synchronized (LOCK) {
                SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap = PENDING_REPLIES;
                ArrayList<Consumer<TypefaceResult>> arrayList = simpleArrayMap.get(strCreateCacheId);
                if (arrayList != null) {
                    arrayList.add(consumer);
                    typeface = null;
                } else {
                    ArrayList<Consumer<TypefaceResult>> arrayList2 = new ArrayList<>();
                    arrayList2.add(consumer);
                    simpleArrayMap.put(strCreateCacheId, arrayList2);
                    Callable<TypefaceResult> callable = new Callable<TypefaceResult>(strCreateCacheId, context, fontRequest, i) { // from class: androidx.core.provider.FontRequestWorker.3
                        final Context val$context;
                        final String val$id;
                        final FontRequest val$request;
                        final int val$style;

                        {
                            this.val$id = strCreateCacheId;
                            this.val$context = context;
                            this.val$request = fontRequest;
                            this.val$style = i;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.concurrent.Callable
                        public TypefaceResult call() {
                            try {
                                return FontRequestWorker.getFontSync(this.val$id, this.val$context, this.val$request, this.val$style);
                            } catch (Throwable th) {
                                return new TypefaceResult(-3);
                            }
                        }
                    };
                    if (executor == null) {
                        executor = DEFAULT_EXECUTOR_SERVICE;
                    }
                    RequestExecutor.execute(executor, callable, new Consumer<TypefaceResult>(strCreateCacheId) { // from class: androidx.core.provider.FontRequestWorker.4
                        final String val$id;

                        {
                            this.val$id = strCreateCacheId;
                        }

                        @Override // androidx.core.util.Consumer
                        public void accept(TypefaceResult typefaceResult) {
                            synchronized (FontRequestWorker.LOCK) {
                                ArrayList<Consumer<TypefaceResult>> arrayList3 = FontRequestWorker.PENDING_REPLIES.get(this.val$id);
                                if (arrayList3 == null) {
                                    return;
                                }
                                FontRequestWorker.PENDING_REPLIES.remove(this.val$id);
                                int i2 = 0;
                                while (true) {
                                    int i3 = i2;
                                    if (i3 >= arrayList3.size()) {
                                        return;
                                    }
                                    arrayList3.get(i3).accept(typefaceResult);
                                    i2 = i3 + 1;
                                }
                            }
                        }
                    });
                    typeface = null;
                }
            }
        }
        return typeface;
    }

    static Typeface requestFontSync(Context context, FontRequest fontRequest, CallbackWithHandler callbackWithHandler, int i, int i2) {
        String strCreateCacheId = createCacheId(fontRequest, i);
        Typeface typeface = sTypefaceCache.get(strCreateCacheId);
        if (typeface != null) {
            callbackWithHandler.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        if (i2 == -1) {
            TypefaceResult fontSync = getFontSync(strCreateCacheId, context, fontRequest, i);
            callbackWithHandler.onTypefaceResult(fontSync);
            return fontSync.mTypeface;
        }
        try {
            TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.submit(DEFAULT_EXECUTOR_SERVICE, new Callable<TypefaceResult>(strCreateCacheId, context, fontRequest, i) { // from class: androidx.core.provider.FontRequestWorker.1
                final Context val$context;
                final String val$id;
                final FontRequest val$request;
                final int val$style;

                {
                    this.val$id = strCreateCacheId;
                    this.val$context = context;
                    this.val$request = fontRequest;
                    this.val$style = i;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public TypefaceResult call() {
                    return FontRequestWorker.getFontSync(this.val$id, this.val$context, this.val$request, this.val$style);
                }
            }, i2);
            callbackWithHandler.onTypefaceResult(typefaceResult);
            return typefaceResult.mTypeface;
        } catch (InterruptedException e) {
            callbackWithHandler.onTypefaceResult(new TypefaceResult(-3));
            return null;
        }
    }

    static void resetTypefaceCache() {
        sTypefaceCache.evictAll();
    }
}
