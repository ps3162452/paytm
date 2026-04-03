package com.airbnb.lottie.network;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class NetworkFetcher {

    @NonNull
    private final LottieNetworkFetcher fetcher;

    @NonNull
    private final NetworkCache networkCache;

    public NetworkFetcher(@NonNull NetworkCache networkCache, @NonNull LottieNetworkFetcher lottieNetworkFetcher) {
        this.networkCache = networkCache;
        this.fetcher = lottieNetworkFetcher;
    }

    @Nullable
    @WorkerThread
    private LottieComposition fetchFromCache(@NonNull String str, @Nullable String str2) {
        if (str2 == null) {
            return null;
        }
        Pair<FileExtension, InputStream> pairFetch = this.networkCache.fetch(str);
        if (pairFetch != null) {
            FileExtension fileExtension = (FileExtension) pairFetch.first;
            InputStream inputStream = (InputStream) pairFetch.second;
            LottieResult<LottieComposition> lottieResultFromZipStreamSync = fileExtension == FileExtension.ZIP ? LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(inputStream), str) : LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str);
            if (lottieResultFromZipStreamSync.getValue() != null) {
                return lottieResultFromZipStreamSync.getValue();
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.airbnb.lottie.network.LottieFetchResult] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.airbnb.lottie.network.LottieFetchResult] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8, types: [com.airbnb.lottie.network.LottieFetchResult] */
    /* JADX WARN: Type inference failed for: r4v9 */
    @androidx.annotation.NonNull
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.airbnb.lottie.LottieResult<com.airbnb.lottie.LottieComposition> fetchFromNetwork(@androidx.annotation.NonNull java.lang.String r11, @androidx.annotation.Nullable java.lang.String r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.network.NetworkFetcher.fetchFromNetwork(java.lang.String, java.lang.String):com.airbnb.lottie.LottieResult");
    }

    @NonNull
    private LottieResult<LottieComposition> fromInputStream(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) throws IOException {
        FileExtension fileExtension;
        LottieResult<LottieComposition> lottieResultFromZipStream;
        if (str2 == null) {
            str2 = NPStringFog.decode(new byte[]{7, 70, 22, 91, 91, 85, 7, 66, 15, 88, 92, 25, 12, 69, 9, 89}, "f6f726", -226330456L);
        }
        if (str2.contains(NPStringFog.decode(new byte[]{85, 20, 17, 92, 81, 2, 85, 16, 8, 95, 86, 78, 78, 13, 17}, "4da08a", false, true)) || str.split(NPStringFog.decode(new byte[]{106, 12}, "63777a", 1.5606086E9f))[0].endsWith(NPStringFog.decode(new byte[]{30, 9, 87, 17, 68, 88, 85}, "0e8e01", -19863))) {
            Logger.debug(NPStringFog.decode(new byte[]{46, 7, 13, 7, 94, 81, 8, 1, 67, 25, 91, 72, 70, 20, 6, 16, 66, 87, 8, 21, 6, 77}, "ffcc28", 1.668500178E9d));
            fileExtension = FileExtension.ZIP;
            lottieResultFromZipStream = fromZipStream(str, inputStream, str3);
        } else {
            Logger.debug(NPStringFog.decode(new byte[]{97, 87, 90, 0, 94, 21, 86, 86, 25, 15, 68, 12, 93, 18, 75, 0, 68, 19, 92, 92, 74, 0, 25}, "329e7c", false, true));
            fileExtension = FileExtension.JSON;
            lottieResultFromZipStream = fromJsonStream(str, inputStream, str3);
        }
        if (str3 != null && lottieResultFromZipStream.getValue() != null) {
            this.networkCache.renameTempFile(str, fileExtension);
        }
        return lottieResultFromZipStream;
    }

    @NonNull
    private LottieResult<LottieComposition> fromJsonStream(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        return str2 == null ? LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null) : LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(new File(this.networkCache.writeTempCacheFile(str, inputStream, FileExtension.JSON).getAbsolutePath())), str);
    }

    @NonNull
    private LottieResult<LottieComposition> fromZipStream(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        return str2 == null ? LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(inputStream), null) : LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(new FileInputStream(this.networkCache.writeTempCacheFile(str, inputStream, FileExtension.ZIP))), str);
    }

    @NonNull
    @WorkerThread
    public LottieResult<LottieComposition> fetchSync(@NonNull String str, @Nullable String str2) {
        LottieComposition lottieCompositionFetchFromCache = fetchFromCache(str, str2);
        if (lottieCompositionFetchFromCache != null) {
            return new LottieResult<>(lottieCompositionFetchFromCache);
        }
        Logger.debug(NPStringFog.decode(new byte[]{119, 88, 12, 8, 82, 23, 95, 89, 11, 69, 85, 12, 68, 22}, "66ee3c", -1.5610555E9f) + str + NPStringFog.decode(new byte[]{69, 94, 12, 77, 21, 4, 10, 69, 13, 93, 21, 11, 11, 16, 0, 88, 86, 10, 0, 30, 67, 127, 80, 22, 6, 88, 10, 87, 82, 66, 3, 66, 12, 84, 21, 12, 0, 68, 20, 86, 71, 9, 75}, "e0c95b", true, false));
        return fetchFromNetwork(str, str2);
    }
}
