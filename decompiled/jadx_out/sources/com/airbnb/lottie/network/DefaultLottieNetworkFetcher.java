package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class DefaultLottieNetworkFetcher implements LottieNetworkFetcher {
    @Override // com.airbnb.lottie.network.LottieNetworkFetcher
    @NonNull
    public LottieFetchResult fetchSync(@NonNull String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(NPStringFog.decode(new byte[]{33, 35, 102}, "ff2e91", 5.494426E8f));
        httpURLConnection.connect();
        return new DefaultLottieFetchResult(httpURLConnection);
    }
}
