package com.airbnb.lottie;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes64.dex */
public class Lottie {
    private Lottie() {
    }

    public static void initialize(@NonNull LottieConfig lottieConfig) {
        L.setFetcher(lottieConfig.networkFetcher);
        L.setCacheProvider(lottieConfig.cacheProvider);
        L.setTraceEnabled(lottieConfig.enableSystraceMarkers);
    }
}
