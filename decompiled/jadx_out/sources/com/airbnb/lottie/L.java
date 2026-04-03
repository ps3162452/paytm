package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;
import com.airbnb.lottie.network.DefaultLottieNetworkFetcher;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.network.NetworkFetcher;
import java.io.File;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class L {
    private static final int MAX_DEPTH = 20;
    private static LottieNetworkCacheProvider cacheProvider;
    private static LottieNetworkFetcher fetcher;
    private static volatile NetworkCache networkCache;
    private static volatile NetworkFetcher networkFetcher;
    private static String[] sections;
    private static long[] startTimeNs;
    public static final String TAG = NPStringFog.decode(new byte[]{41, 42, 99, 99, 40, 33}, "ee77ad", 1.780505732E9d);
    public static boolean DBG = false;
    private static boolean traceEnabled = false;
    private static int traceDepth = 0;
    private static int depthPastMaxDepth = 0;

    private L() {
    }

    public static void beginSection(String str) {
        if (traceEnabled) {
            if (traceDepth == 20) {
                depthPastMaxDepth++;
                return;
            }
            sections[traceDepth] = str;
            startTimeNs[traceDepth] = System.nanoTime();
            TraceCompat.beginSection(str);
            traceDepth++;
        }
    }

    public static float endSection(String str) {
        if (depthPastMaxDepth > 0) {
            depthPastMaxDepth--;
            return 0.0f;
        }
        if (!traceEnabled) {
            return 0.0f;
        }
        traceDepth--;
        if (traceDepth == -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 7, 92, 21, 22, 68, 1, 8, 86, 18, 22, 22, 5, 5, 87, 18, 17, 1, 7, 18, 91, 93, 12, 74, 68, 50, 90, 87, 16, 1, 68, 7, 64, 87, 66, 10, 11, 8, 87, 28}, "df22bd", false, false));
        }
        if (!str.equals(sections[traceDepth])) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{103, 93, 86, 84, 92, 81, 92, 80, 81, 81, 16, 68, 64, 82, 87, 80, 16, 83, 83, 95, 88, 21}, "234500", 9.16834012E8d) + str + NPStringFog.decode(new byte[]{79, 68, 114, 25, 19, 7, 2, 16, 82, 5, 67}, "ad7acb", true) + sections[traceDepth] + NPStringFog.decode(new byte[]{75}, "e53f76", -2.3855368E8f));
        }
        TraceCompat.endSection();
        return (System.nanoTime() - startTimeNs[traceDepth]) / 1000000.0f;
    }

    @NonNull
    public static NetworkCache networkCache(@NonNull Context context) throws Throwable {
        NetworkCache networkCache2 = networkCache;
        if (networkCache2 == null) {
            synchronized (NetworkCache.class) {
                try {
                    networkCache2 = networkCache;
                    if (networkCache2 == null) {
                        NetworkCache networkCache3 = new NetworkCache(cacheProvider != null ? cacheProvider : new LottieNetworkCacheProvider(context) { // from class: com.airbnb.lottie.L.1
                            final Context val$context;

                            {
                                this.val$context = context;
                            }

                            @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                            @NonNull
                            public File getCacheDir() {
                                return new File(this.val$context.getCacheDir(), NPStringFog.decode(new byte[]{84, 9, 66, 71, 95, 92, 103, 8, 83, 71, 65, 86, 74, 13, 105, 80, 87, 90, 80, 3}, "8f6369", true));
                            }
                        });
                        try {
                            networkCache = networkCache3;
                            networkCache2 = networkCache3;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return networkCache2;
    }

    @NonNull
    public static NetworkFetcher networkFetcher(@NonNull Context context) throws Throwable {
        NetworkFetcher networkFetcher2 = networkFetcher;
        if (networkFetcher2 == null) {
            synchronized (NetworkFetcher.class) {
                try {
                    networkFetcher2 = networkFetcher;
                    if (networkFetcher2 == null) {
                        NetworkFetcher networkFetcher3 = new NetworkFetcher(networkCache(context), fetcher != null ? fetcher : new DefaultLottieNetworkFetcher());
                        try {
                            networkFetcher = networkFetcher3;
                            networkFetcher2 = networkFetcher3;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return networkFetcher2;
    }

    public static void setCacheProvider(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        cacheProvider = lottieNetworkCacheProvider;
    }

    public static void setFetcher(LottieNetworkFetcher lottieNetworkFetcher) {
        fetcher = lottieNetworkFetcher;
    }

    public static void setTraceEnabled(boolean z) {
        if (traceEnabled == z) {
            return;
        }
        traceEnabled = z;
        if (traceEnabled) {
            sections = new String[20];
            startTimeNs = new long[20];
        }
    }
}
