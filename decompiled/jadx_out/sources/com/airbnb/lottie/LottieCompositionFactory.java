package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import n.NPStringFog;
import okio.BufferedSource;
import okio.Okio;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes64.dex */
public class LottieCompositionFactory {
    private static final Map<String, LottieTask<LottieComposition>> taskCache = new HashMap();
    private static final byte[] MAGIC = {80, 75, 3, 4};

    private LottieCompositionFactory() {
    }

    private static LottieTask<LottieComposition> cache(@Nullable String str, Callable<LottieResult<LottieComposition>> callable) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.getInstance().get(str);
        if (lottieComposition != null) {
            return new LottieTask<>(new Callable<LottieResult<LottieComposition>>(lottieComposition) { // from class: com.airbnb.lottie.LottieCompositionFactory.9
                final LottieComposition val$cachedComposition;

                {
                    this.val$cachedComposition = lottieComposition;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public LottieResult<LottieComposition> call() {
                    return new LottieResult<>(this.val$cachedComposition);
                }
            });
        }
        if (str != null && taskCache.containsKey(str)) {
            return taskCache.get(str);
        }
        LottieTask<LottieComposition> lottieTask = new LottieTask<>(callable);
        if (str == null) {
            return lottieTask;
        }
        lottieTask.addListener(new LottieListener<LottieComposition>(str) { // from class: com.airbnb.lottie.LottieCompositionFactory.10
            final String val$cacheKey;

            {
                this.val$cacheKey = str;
            }

            @Override // com.airbnb.lottie.LottieListener
            public void onResult(LottieComposition lottieComposition2) {
                LottieCompositionFactory.taskCache.remove(this.val$cacheKey);
            }
        });
        lottieTask.addFailureListener(new LottieListener<Throwable>(str) { // from class: com.airbnb.lottie.LottieCompositionFactory.11
            final String val$cacheKey;

            {
                this.val$cacheKey = str;
            }

            @Override // com.airbnb.lottie.LottieListener
            public void onResult(Throwable th) {
                LottieCompositionFactory.taskCache.remove(this.val$cacheKey);
            }
        });
        taskCache.put(str, lottieTask);
        return lottieTask;
    }

    public static void clearCache(Context context) {
        taskCache.clear();
        LottieCompositionCache.getInstance().clear();
        L.networkCache(context).clear();
    }

    @Nullable
    private static LottieImageAsset findImageAssetForFileName(LottieComposition lottieComposition, String str) {
        for (LottieImageAsset lottieImageAsset : lottieComposition.getImages().values()) {
            if (lottieImageAsset.getFileName().equals(str)) {
                return lottieImageAsset;
            }
        }
        return null;
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str) {
        return fromAsset(context, str, NPStringFog.decode(new byte[]{5, 21, 17, 93, 71, 110}, "dfb831", 744066491L) + str);
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str, @Nullable String str2) {
        return cache(str2, new Callable<LottieResult<LottieComposition>>(context.getApplicationContext(), str, str2) { // from class: com.airbnb.lottie.LottieCompositionFactory.2
            final Context val$appContext;
            final String val$cacheKey;
            final String val$fileName;

            {
                this.val$appContext = context;
                this.val$fileName = str;
                this.val$cacheKey = str2;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromAssetSync(this.val$appContext, this.val$fileName, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str) {
        return fromAssetSync(context, str, NPStringFog.decode(new byte[]{5, 23, 75, 81, 70, 57}, "dd842f", true, false) + str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str, @Nullable String str2) {
        try {
            return (str.endsWith(NPStringFog.decode(new byte[]{31, 24, 80, 71}, "1b9774", false, false)) || str.endsWith(NPStringFog.decode(new byte[]{77, 93, 93, 64, 71, 92, 6}, "c12435", false))) ? fromZipStreamSync(new ZipInputStream(context.getAssets().open(str)), str2) : fromJsonInputStreamSync(context.getAssets().open(str), str2);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    @Deprecated
    public static LottieTask<LottieComposition> fromJson(JSONObject jSONObject, @Nullable String str) {
        return cache(str, new Callable<LottieResult<LottieComposition>>(jSONObject, str) { // from class: com.airbnb.lottie.LottieCompositionFactory.5
            final String val$cacheKey;
            final JSONObject val$json;

            {
                this.val$json = jSONObject;
                this.val$cacheKey = str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonSync(this.val$json, this.val$cacheKey);
            }
        });
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(InputStream inputStream, @Nullable String str) {
        return cache(str, new Callable<LottieResult<LottieComposition>>(inputStream, str) { // from class: com.airbnb.lottie.LottieCompositionFactory.4
            final String val$cacheKey;
            final InputStream val$stream;

            {
                this.val$stream = inputStream;
                this.val$cacheKey = str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonInputStreamSync(this.val$stream, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, @Nullable String str) {
        return fromJsonInputStreamSync(inputStream, str, true);
    }

    @WorkerThread
    private static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, @Nullable String str, boolean z) {
        try {
            return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(inputStream))), str);
        } finally {
            if (z) {
                Utils.closeQuietly(inputStream);
            }
        }
    }

    public static LottieTask<LottieComposition> fromJsonReader(JsonReader jsonReader, @Nullable String str) {
        return cache(str, new Callable<LottieResult<LottieComposition>>(jsonReader, str) { // from class: com.airbnb.lottie.LottieCompositionFactory.7
            final String val$cacheKey;
            final JsonReader val$reader;

            {
                this.val$reader = jsonReader;
                this.val$cacheKey = str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonReaderSync(this.val$reader, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, @Nullable String str) {
        return fromJsonReaderSyncInternal(jsonReader, str, true);
    }

    private static LottieResult<LottieComposition> fromJsonReaderSyncInternal(JsonReader jsonReader, @Nullable String str, boolean z) {
        LottieResult<LottieComposition> lottieResult;
        try {
            try {
                LottieComposition lottieComposition = LottieCompositionMoshiParser.parse(jsonReader);
                if (str != null) {
                    LottieCompositionCache.getInstance().put(str, lottieComposition);
                }
                lottieResult = new LottieResult<>(lottieComposition);
            } catch (Exception e) {
                lottieResult = new LottieResult<>(e);
                if (z) {
                    Utils.closeQuietly(jsonReader);
                }
            }
            return lottieResult;
        } finally {
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
        }
    }

    public static LottieTask<LottieComposition> fromJsonString(String str, @Nullable String str2) {
        return cache(str2, new Callable<LottieResult<LottieComposition>>(str, str2) { // from class: com.airbnb.lottie.LottieCompositionFactory.6
            final String val$cacheKey;
            final String val$json;

            {
                this.val$json = str;
                this.val$cacheKey = str2;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonStringSync(this.val$json, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonStringSync(String str, @Nullable String str2) {
        return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    @WorkerThread
    @Deprecated
    public static LottieResult<LottieComposition> fromJsonSync(JSONObject jSONObject, @Nullable String str) {
        return fromJsonStringSync(jSONObject.toString(), str);
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes int i) {
        return fromRawRes(context, i, rawResCacheKey(context, i));
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes int i, @Nullable String str) {
        return cache(str, new Callable<LottieResult<LottieComposition>>(new WeakReference(context), context.getApplicationContext(), i, str) { // from class: com.airbnb.lottie.LottieCompositionFactory.3
            final Context val$appContext;
            final String val$cacheKey;
            final WeakReference val$contextRef;
            final int val$rawRes;

            {
                this.val$contextRef = weakReference;
                this.val$appContext = context;
                this.val$rawRes = i;
                this.val$cacheKey = str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                Context context2 = (Context) this.val$contextRef.get();
                if (context2 == null) {
                    context2 = this.val$appContext;
                }
                return LottieCompositionFactory.fromRawResSync(context2, this.val$rawRes, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i) {
        return fromRawResSync(context, i, rawResCacheKey(context, i));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i, @Nullable String str) {
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i)));
            return isZipCompressed(bufferedSourceBuffer).booleanValue() ? fromZipStreamSync(new ZipInputStream(bufferedSourceBuffer.inputStream()), str) : fromJsonInputStreamSync(bufferedSourceBuffer.inputStream(), str);
        } catch (Resources.NotFoundException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str) {
        return fromUrl(context, str, NPStringFog.decode(new byte[]{76, 65, 88, 59}, "934d95", false) + str);
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str, @Nullable String str2) {
        return cache(str2, new Callable<LottieResult<LottieComposition>>(context, str, str2) { // from class: com.airbnb.lottie.LottieCompositionFactory.1
            final String val$cacheKey;
            final Context val$context;
            final String val$url;

            {
                this.val$context = context;
                this.val$url = str;
                this.val$cacheKey = str2;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                LottieResult<LottieComposition> lottieResultFetchSync = L.networkFetcher(this.val$context).fetchSync(this.val$url, this.val$cacheKey);
                if (this.val$cacheKey != null && lottieResultFetchSync.getValue() != null) {
                    LottieCompositionCache.getInstance().put(this.val$cacheKey, lottieResultFetchSync.getValue());
                }
                return lottieResultFetchSync;
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str) {
        return fromUrlSync(context, str, str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str, @Nullable String str2) {
        LottieResult<LottieComposition> lottieResultFetchSync = L.networkFetcher(context).fetchSync(str, str2);
        if (str2 != null && lottieResultFetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, lottieResultFetchSync.getValue());
        }
        return lottieResultFetchSync;
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, @Nullable String str) {
        return cache(str, new Callable<LottieResult<LottieComposition>>(zipInputStream, str) { // from class: com.airbnb.lottie.LottieCompositionFactory.8
            final String val$cacheKey;
            final ZipInputStream val$inputStream;

            {
                this.val$inputStream = zipInputStream;
                this.val$cacheKey = str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromZipStreamSync(this.val$inputStream, this.val$cacheKey);
            }
        });
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, @Nullable String str) {
        try {
            return fromZipStreamSyncInternal(zipInputStream, str);
        } finally {
            Utils.closeQuietly(zipInputStream);
        }
    }

    @WorkerThread
    private static LottieResult<LottieComposition> fromZipStreamSyncInternal(ZipInputStream zipInputStream, @Nullable String str) {
        LottieComposition value;
        LottieComposition lottieComposition = null;
        HashMap map = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains(NPStringFog.decode(new byte[]{107, 102, 121, 37, 37, 45, 103, 97}, "494dfb", -1.9896413E9f))) {
                    zipInputStream.closeEntry();
                    value = lottieComposition;
                } else if (nextEntry.getName().equalsIgnoreCase(NPStringFog.decode(new byte[]{91, 0, 90, 80, 95, 80, 69, 21, 26, 83, 74, 90, 88}, "6a4995", 7.9570106E8f))) {
                    zipInputStream.closeEntry();
                    value = lottieComposition;
                } else if (nextEntry.getName().contains(NPStringFog.decode(new byte[]{31, 95, 66, 12, 11}, "151ceb", false, true))) {
                    value = fromJsonReaderSyncInternal(JsonReader.of(Okio.buffer(Okio.source(zipInputStream))), null, false).getValue();
                } else if (name.contains(NPStringFog.decode(new byte[]{30, 17, 10, 84}, "0ad326", -7.66473676E8d)) || name.contains(NPStringFog.decode(new byte[]{25, 71, 81, 90, 64}, "704804", 8704)) || name.contains(NPStringFog.decode(new byte[]{24, 91, 18, 5}, "61bb77", false, false)) || name.contains(NPStringFog.decode(new byte[]{76, 90, 69, 81, 1}, "b054f7", 5.0868089E7d))) {
                    map.put(name.split(NPStringFog.decode(new byte[]{24}, "7a9d50", -22460))[r0.length - 1], BitmapFactory.decodeStream(zipInputStream));
                    value = lottieComposition;
                } else {
                    zipInputStream.closeEntry();
                    value = lottieComposition;
                }
                lottieComposition = value;
                nextEntry = zipInputStream.getNextEntry();
            }
            if (lottieComposition == null) {
                return new LottieResult<>((Throwable) new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 90, 80, 85, 9, 85, 69, 64, 94, 23, 21, 81, 23, 71, 84, 23, 6, 95, 8, 68, 94, 68, 12, 68, 12, 91, 95}, "e417e0", 1.7473953E9f)));
            }
            for (Map.Entry entry : map.entrySet()) {
                LottieImageAsset lottieImageAssetFindImageAssetForFileName = findImageAssetForFileName(lottieComposition, (String) entry.getKey());
                if (lottieImageAssetFindImageAssetForFileName != null) {
                    lottieImageAssetFindImageAssetForFileName.setBitmap(Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), lottieImageAssetFindImageAssetForFileName.getWidth(), lottieImageAssetFindImageAssetForFileName.getHeight()));
                }
            }
            for (Map.Entry<String, LottieImageAsset> entry2 : lottieComposition.getImages().entrySet()) {
                if (entry2.getValue().getBitmap() == null) {
                    return new LottieResult<>((Throwable) new IllegalStateException(NPStringFog.decode(new byte[]{108, 94, 84, 19, 83, 19, 81, 69, 17, 15, 89, 19, 81, 91, 80, 6, 83, 19, 94, 89, 67, 65}, "861a63", 7109) + entry2.getValue().getFileName()));
                }
            }
            if (str != null) {
                LottieCompositionCache.getInstance().put(str, lottieComposition);
            }
            return new LottieResult<>(lottieComposition);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private static boolean isNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static Boolean isZipCompressed(BufferedSource bufferedSource) {
        try {
            BufferedSource bufferedSourcePeek = bufferedSource.peek();
            for (byte b : MAGIC) {
                if (bufferedSourcePeek.readByte() != b) {
                    return false;
                }
            }
            bufferedSourcePeek.close();
            return true;
        } catch (Exception e) {
            Logger.error(NPStringFog.decode(new byte[]{35, 87, 15, 91, 3, 80, 69, 66, 9, 23, 5, 92, 0, 85, 13, 23, 28, 93, 21, 22, 0, 94, 10, 81, 69, 94, 3, 86, 2, 81, 23}, "e6f7f4", true, false), e);
            return false;
        }
    }

    private static String rawResCacheKey(Context context, @RawRes int i) {
        return NPStringFog.decode(new byte[]{23, 2, 64, 107, 86, 68}, "ec7937", true, true) + (isNightMode(context) ? NPStringFog.decode(new byte[]{108, 95, 92, 6, 10, 68, 108}, "315ab0", 24780) : NPStringFog.decode(new byte[]{110, 2, 7, 79, 105}, "1ff665", -2025078114L)) + i;
    }

    public static void setMaxCacheSize(int i) {
        LottieCompositionCache.getInstance().resize(i);
    }
}
