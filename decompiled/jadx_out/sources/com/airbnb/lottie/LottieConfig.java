package com.airbnb.lottie;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import java.io.File;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieConfig {

    @Nullable
    final LottieNetworkCacheProvider cacheProvider;
    final boolean enableSystraceMarkers;

    @Nullable
    final LottieNetworkFetcher networkFetcher;

    public static final class Builder {

        @Nullable
        private LottieNetworkCacheProvider cacheProvider;
        private boolean enableSystraceMarkers = false;

        @Nullable
        private LottieNetworkFetcher networkFetcher;

        @NonNull
        public LottieConfig build() {
            return new LottieConfig(this.networkFetcher, this.cacheProvider, this.enableSystraceMarkers);
        }

        @NonNull
        public Builder setEnableSystraceMarkers(boolean z) {
            this.enableSystraceMarkers = z;
            return this;
        }

        @NonNull
        public Builder setNetworkCacheDir(@NonNull File file) {
            if (this.cacheProvider != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{54, 80, 4, 23, 92, 23, 11, 75, 65, 4, 85, 69, 7, 89, 5, 28, 25, 86, 66, 91, 0, 6, 81, 82, 66, 72, 19, 10, 79, 94, 6, 93, 19, 68}, "b8ae97", 29996));
            }
            this.cacheProvider = new LottieNetworkCacheProvider(this, file) { // from class: com.airbnb.lottie.LottieConfig.Builder.1
                final Builder this$0;
                final File val$file;

                {
                    this.this$0 = this;
                    this.val$file = file;
                }

                @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                @NonNull
                public File getCacheDir() {
                    if (this.val$file.isDirectory()) {
                        return this.val$file;
                    }
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{5, 4, 91, 92, 0, 23, 0, 12, 84, 81, 69, 90, 19, 22, 76, 20, 7, 82, 70, 4, 24, 80, 12, 69, 3, 6, 76, 91, 23, 78}, "fe84e7", 1.414799899E9d));
                }
            };
            return this;
        }

        @NonNull
        public Builder setNetworkCacheProvider(@NonNull LottieNetworkCacheProvider lottieNetworkCacheProvider) {
            if (this.cacheProvider != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 14, 6, 65, 92, 16, 91, 21, 67, 82, 85, 66, 87, 7, 7, 74, 25, 81, 18, 5, 2, 80, 81, 85, 18, 22, 17, 92, 79, 89, 86, 3, 17, 18}, "2fc390", false, true));
            }
            this.cacheProvider = new LottieNetworkCacheProvider(this, lottieNetworkCacheProvider) { // from class: com.airbnb.lottie.LottieConfig.Builder.2
                final Builder this$0;
                final LottieNetworkCacheProvider val$fileCacheProvider;

                {
                    this.this$0 = this;
                    this.val$fileCacheProvider = lottieNetworkCacheProvider;
                }

                @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                @NonNull
                public File getCacheDir() {
                    File cacheDir = this.val$fileCacheProvider.getCacheDir();
                    if (cacheDir.isDirectory()) {
                        return cacheDir;
                    }
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 81, 6, 94, 93, 65, 85, 89, 9, 83, 24, 12, 70, 67, 17, 22, 90, 4, 19, 81, 69, 82, 81, 19, 86, 83, 17, 89, 74, 24}, "30e68a", false, true));
                }
            };
            return this;
        }

        @NonNull
        public Builder setNetworkFetcher(@NonNull LottieNetworkFetcher lottieNetworkFetcher) {
            this.networkFetcher = lottieNetworkFetcher;
            return this;
        }
    }

    private LottieConfig(@Nullable LottieNetworkFetcher lottieNetworkFetcher, @Nullable LottieNetworkCacheProvider lottieNetworkCacheProvider, boolean z) {
        this.networkFetcher = lottieNetworkFetcher;
        this.cacheProvider = lottieNetworkCacheProvider;
        this.enableSystraceMarkers = z;
    }
}
