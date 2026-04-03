package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    private static final FontProviderHelper DEFAULT_FONTS_CONTRACT = new FontProviderHelper();

    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {
        private long mRetryOrigin;
        private final long mTotalMs;

        public ExponentialBackoffRetryPolicy(long j) {
            this.mTotalMs = j;
        }

        @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig.RetryPolicy
        public long getRetryDelay() {
            if (this.mRetryOrigin == 0) {
                this.mRetryOrigin = SystemClock.uptimeMillis();
                return 0L;
            }
            long jUptimeMillis = SystemClock.uptimeMillis() - this.mRetryOrigin;
            if (jUptimeMillis > this.mTotalMs) {
                return -1L;
            }
            return Math.min(Math.max(jUptimeMillis, 1000L), this.mTotalMs - jUptimeMillis);
        }
    }

    public static class FontProviderHelper {
        public Typeface buildTypeface(Context context, FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        public FontsContractCompat.FontFamilyResult fetchFonts(Context context, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.fetchFonts(context, null, fontRequest);
        }

        public void registerObserver(Context context, Uri uri, ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void unregisterObserver(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        private static final String S_TRACE_BUILD_TYPEFACE = NPStringFog.decode(new byte[]{125, 84, 93, 82, 15, 39, 87, 84, 66, 89, 18, 74, 126, 86, 92, 76, 52, 1, 73, 76, 87, 75, 18, 33, 85, 86, 88, 81, 37, 11, 85, 73, 83, 76, 37, 11, 86, 95, 91, 95, 72, 6, 77, 80, 94, 92, 50, 29, 72, 92, 84, 89, 5, 1}, "8928fd", false, false);
        EmojiCompat.MetadataRepoLoaderCallback mCallback;
        private final Context mContext;
        private Executor mExecutor;
        private final FontProviderHelper mFontProviderHelper;
        private final Object mLock = new Object();
        private Handler mMainHandler;
        private Runnable mMainHandlerLoadCallback;
        private ThreadPoolExecutor mMyThreadPoolExecutor;
        private ContentObserver mObserver;
        private final FontRequest mRequest;
        private RetryPolicy mRetryPolicy;

        FontRequestMetadataLoader(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
            Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{34, 12, 87, 76, 92, 65, 21, 67, 90, 89, 87, 87, 14, 23, 25, 90, 92, 25, 15, 22, 85, 84}, "ac9899", true, false));
            Preconditions.checkNotNull(fontRequest, NPStringFog.decode(new byte[]{116, 90, 87, 68, 49, 6, 67, 64, 92, 67, 23, 67, 81, 84, 87, 94, 12, 23, 18, 87, 92, 16, 13, 22, 94, 89}, "2590cc", 1.2021422E9f));
            this.mContext = context.getApplicationContext();
            this.mRequest = fontRequest;
            this.mFontProviderHelper = fontProviderHelper;
        }

        private void cleanUp() {
            synchronized (this.mLock) {
                this.mCallback = null;
                ContentObserver contentObserver = this.mObserver;
                if (contentObserver != null) {
                    this.mFontProviderHelper.unregisterObserver(this.mContext, contentObserver);
                    this.mObserver = null;
                }
                Handler handler = this.mMainHandler;
                if (handler != null) {
                    handler.removeCallbacks(this.mMainHandlerLoadCallback);
                }
                this.mMainHandler = null;
                ThreadPoolExecutor threadPoolExecutor = this.mMyThreadPoolExecutor;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.mExecutor = null;
                this.mMyThreadPoolExecutor = null;
            }
        }

        private FontsContractCompat.FontInfo retrieveFontInfo() {
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResultFetchFonts = this.mFontProviderHelper.fetchFonts(this.mContext, this.mRequest);
                if (fontFamilyResultFetchFonts.getStatusCode() != 0) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{86, 3, 65, 81, 11, 112, 95, 8, 65, 65, 67, 80, 81, 15, 89, 87, 7, 22, 24}, "0f52c6", -391159067L) + fontFamilyResultFetchFonts.getStatusCode() + NPStringFog.decode(new byte[]{72}, "a7ae80", 1047539256L));
                }
                FontsContractCompat.FontInfo[] fonts = fontFamilyResultFetchFonts.getFonts();
                if (fonts == null || fonts.length == 0) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{83, 6, 64, 86, 13, 119, 90, 13, 64, 70, 69, 87, 84, 10, 88, 80, 1, 17, 29, 6, 89, 69, 17, 72, 21, 17, 81, 70, 16, 93, 65, 74}, "5c45e1", false, false));
                }
                return fonts[0];
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{68, 17, 91, 20, 88, 85, 81, 17, 20, 12, 94, 69, 20, 5, 91, 23, 95, 85}, "4c4b11", 3958), e);
            }
        }

        private void scheduleRetry(Uri uri, long j) {
            synchronized (this.mLock) {
                Handler handlerMainHandlerAsync = this.mMainHandler;
                if (handlerMainHandlerAsync == null) {
                    handlerMainHandlerAsync = ConcurrencyHelpers.mainHandlerAsync();
                    this.mMainHandler = handlerMainHandlerAsync;
                }
                if (this.mObserver == null) {
                    ContentObserver contentObserver = new ContentObserver(this, handlerMainHandlerAsync) { // from class: androidx.emoji2.text.FontRequestEmojiCompatConfig.FontRequestMetadataLoader.1
                        final FontRequestMetadataLoader this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // android.database.ContentObserver
                        public void onChange(boolean z, Uri uri2) {
                            this.this$0.loadInternal();
                        }
                    };
                    this.mObserver = contentObserver;
                    this.mFontProviderHelper.registerObserver(this.mContext, uri, contentObserver);
                }
                if (this.mMainHandlerLoadCallback == null) {
                    this.mMainHandlerLoadCallback = new Runnable(this) { // from class: androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1
                        public final FontRequestEmojiCompatConfig.FontRequestMetadataLoader f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.loadInternal();
                        }
                    };
                }
                handlerMainHandlerAsync.postDelayed(this.mMainHandlerLoadCallback, j);
            }
        }

        void createMetadata() {
            synchronized (this.mLock) {
                if (this.mCallback == null) {
                    return;
                }
                try {
                    FontsContractCompat.FontInfo fontInfoRetrieveFontInfo = retrieveFontInfo();
                    int resultCode = fontInfoRetrieveFontInfo.getResultCode();
                    if (resultCode == 2) {
                        synchronized (this.mLock) {
                            RetryPolicy retryPolicy = this.mRetryPolicy;
                            if (retryPolicy != null) {
                                long retryDelay = retryPolicy.getRetryDelay();
                                if (retryDelay >= 0) {
                                    scheduleRetry(fontInfoRetrieveFontInfo.getUri(), retryDelay);
                                    return;
                                }
                            }
                        }
                    }
                    if (resultCode != 0) {
                        throw new RuntimeException(NPStringFog.decode(new byte[]{95, 93, 65, 1, 93, 116, 86, 86, 65, 17, 21, 64, 92, 75, 64, 14, 65, 18, 80, 75, 21, 12, 90, 70, 25, 119, 126, 76, 21, 26}, "985b52", 1.761021674E9d) + resultCode + NPStringFog.decode(new byte[]{24}, "181661", -231775310L));
                    }
                    try {
                        TraceCompat.beginSection(S_TRACE_BUILD_TYPEFACE);
                        Typeface typefaceBuildTypeface = this.mFontProviderHelper.buildTypeface(this.mContext, fontInfoRetrieveFontInfo);
                        ByteBuffer byteBufferMmap = TypefaceCompatUtil.mmap(this.mContext, null, fontInfoRetrieveFontInfo.getUri());
                        if (byteBufferMmap == null || typefaceBuildTypeface == null) {
                            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 88, 87, 4, 85, 1, 23, 66, 89, 70, 86, 20, 82, 88, 22, 0, 80, 8, 82, 24}, "766f9d", -2.60345289E8d));
                        }
                        MetadataRepo metadataRepoCreate = MetadataRepo.create(typefaceBuildTypeface, byteBufferMmap);
                        TraceCompat.endSection();
                        synchronized (this.mLock) {
                            EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = this.mCallback;
                            if (metadataRepoLoaderCallback != null) {
                                metadataRepoLoaderCallback.onLoaded(metadataRepoCreate);
                            }
                        }
                        cleanUp();
                    } catch (Throwable th) {
                        TraceCompat.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    synchronized (this.mLock) {
                        EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = this.mCallback;
                        if (metadataRepoLoaderCallback2 != null) {
                            metadataRepoLoaderCallback2.onFailed(th2);
                        }
                        cleanUp();
                    }
                }
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void load(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.checkNotNull(metadataRepoLoaderCallback, NPStringFog.decode(new byte[]{120, 87, 83, 80, 83, 71, 119, 89, 94, 88, 84, 84, 87, 83, 18, 87, 87, 91, 90, 87, 70, 20, 84, 80, 20, 86, 71, 88, 90}, "482465", false));
            synchronized (this.mLock) {
                this.mCallback = metadataRepoLoaderCallback;
            }
            loadInternal();
        }

        void loadInternal() {
            synchronized (this.mLock) {
                if (this.mCallback == null) {
                    return;
                }
                if (this.mExecutor == null) {
                    ThreadPoolExecutor threadPoolExecutorCreateBackgroundPriorityExecutor = ConcurrencyHelpers.createBackgroundPriorityExecutor(NPStringFog.decode(new byte[]{7, 88, 89, 15, 90, 113, 13, 88, 70, 4, 71}, "b56e32", false, true));
                    this.mMyThreadPoolExecutor = threadPoolExecutorCreateBackgroundPriorityExecutor;
                    this.mExecutor = threadPoolExecutorCreateBackgroundPriorityExecutor;
                }
                this.mExecutor.execute(new Runnable(this) { // from class: androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda0
                    public final FontRequestEmojiCompatConfig.FontRequestMetadataLoader f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.createMetadata();
                    }
                });
            }
        }

        public void setExecutor(Executor executor) {
            synchronized (this.mLock) {
                this.mExecutor = executor;
            }
        }

        public void setRetryPolicy(RetryPolicy retryPolicy) {
            synchronized (this.mLock) {
                this.mRetryPolicy = retryPolicy;
            }
        }
    }

    public static abstract class RetryPolicy {
        public abstract long getRetryDelay();
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest) {
        super(new FontRequestMetadataLoader(context, fontRequest, DEFAULT_FONTS_CONTRACT));
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
        super(new FontRequestMetadataLoader(context, fontRequest, fontProviderHelper));
    }

    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(Handler handler) {
        if (handler != null) {
            setLoadingExecutor(ConcurrencyHelpers.convertHandlerToExecutor(handler));
        }
        return this;
    }

    public FontRequestEmojiCompatConfig setLoadingExecutor(Executor executor) {
        ((FontRequestMetadataLoader) getMetadataRepoLoader()).setExecutor(executor);
        return this;
    }

    public FontRequestEmojiCompatConfig setRetryPolicy(RetryPolicy retryPolicy) {
        ((FontRequestMetadataLoader) getMetadataRepoLoader()).setRetryPolicy(retryPolicy);
        return this;
    }
}
