package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {
    private static final long STARTUP_THREAD_CREATION_DELAY_MS = 500;
    private static final String S_INITIALIZER_THREAD_NAME = NPStringFog.decode(new byte[]{116, 11, 10, 8, 80, 117, 94, 11, 21, 3, 77, 127, 95, 15, 17, 11, 88, 90, 88, 28, 0, 16}, "1feb96", -320482647L);

    static class BackgroundDefaultConfig extends EmojiCompat.Config {
        protected BackgroundDefaultConfig(Context context) {
            super(new BackgroundDefaultLoader(context));
            setMetadataLoadStrategy(1);
        }
    }

    static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {
        private final Context mContext;

        BackgroundDefaultLoader(Context context) {
            this.mContext = context.getApplicationContext();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: doLoad, reason: merged with bridge method [inline-methods] */
        public void m8x5cc8028a(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
            try {
                FontRequestEmojiCompatConfig fontRequestEmojiCompatConfigCreate = DefaultEmojiCompatConfig.create(this.mContext);
                if (fontRequestEmojiCompatConfigCreate == null) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{39, 85, 11, 92, 15, 123, 13, 85, 20, 87, 18, 24, 4, 87, 10, 66, 70, 72, 16, 87, 18, 95, 2, 93, 16, 24, 10, 89, 18, 24, 3, 78, 5, 95, 10, 89, 0, 84, 1, 22, 9, 86, 66, 76, 12, 95, 21, 24, 6, 93, 18, 95, 5, 93, 76}, "b8d6f8", -10400));
                }
                fontRequestEmojiCompatConfigCreate.setLoadingExecutor(threadPoolExecutor);
                fontRequestEmojiCompatConfigCreate.getMetadataRepoLoader().load(new EmojiCompat.MetadataRepoLoaderCallback(this, metadataRepoLoaderCallback, threadPoolExecutor) { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                    final BackgroundDefaultLoader this$0;
                    final ThreadPoolExecutor val$executor;
                    final EmojiCompat.MetadataRepoLoaderCallback val$loaderCallback;

                    {
                        this.this$0 = this;
                        this.val$loaderCallback = metadataRepoLoaderCallback;
                        this.val$executor = threadPoolExecutor;
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onFailed(Throwable th) {
                        try {
                            this.val$loaderCallback.onFailed(th);
                        } finally {
                            this.val$executor.shutdown();
                        }
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onLoaded(MetadataRepo metadataRepo) {
                        try {
                            this.val$loaderCallback.onLoaded(metadataRepo);
                        } finally {
                            this.val$executor.shutdown();
                        }
                    }
                });
            } catch (Throwable th) {
                metadataRepoLoaderCallback.onFailed(th);
                threadPoolExecutor.shutdown();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void load(final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor threadPoolExecutorCreateBackgroundPriorityExecutor = ConcurrencyHelpers.createBackgroundPriorityExecutor(NPStringFog.decode(new byte[]{124, 9, 12, 9, 15, 122, 86, 9, 19, 2, 18, 112, 87, 13, 23, 10, 7, 85, 80, 30, 6, 17}, "9dccf9", true));
            threadPoolExecutorCreateBackgroundPriorityExecutor.execute(new Runnable(this, metadataRepoLoaderCallback, threadPoolExecutorCreateBackgroundPriorityExecutor) { // from class: androidx.emoji2.text.EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0
                public final EmojiCompatInitializer.BackgroundDefaultLoader f$0;
                public final EmojiCompat.MetadataRepoLoaderCallback f$1;
                public final ThreadPoolExecutor f$2;

                {
                    this.f$0 = this;
                    this.f$1 = metadataRepoLoaderCallback;
                    this.f$2 = threadPoolExecutorCreateBackgroundPriorityExecutor;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8x5cc8028a(this.f$1, this.f$2);
                }
            });
        }
    }

    static class LoadEmojiCompatRunnable implements Runnable {
        LoadEmojiCompatRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TraceCompat.beginSection(NPStringFog.decode(new byte[]{112, 9, 93, 90, 12, 122, 90, 9, 66, 81, 17, 23, 112, 9, 93, 90, 12, 122, 90, 9, 66, 81, 17, 112, 91, 13, 70, 89, 4, 85, 92, 30, 87, 66, 75, 75, 64, 10}, "5d20e9", 872491285L));
                if (EmojiCompat.isConfigured()) {
                    EmojiCompat.get().load();
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    public Boolean create(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        EmojiCompat.init(new BackgroundDefaultConfig(context));
        delayUntilFirstResume(context);
        return true;
    }

    void delayUntilFirstResume(Context context) {
        Lifecycle lifecycle = ((LifecycleOwner) AppInitializer.getInstance(context).initializeComponent(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.addObserver(new DefaultLifecycleObserver(this, lifecycle) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            final EmojiCompatInitializer this$0;
            final Lifecycle val$lifecycle;

            {
                this.this$0 = this;
                this.val$lifecycle = lifecycle;
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
                DefaultLifecycleObserver.CC.$default$onCreate(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
                DefaultLifecycleObserver.CC.$default$onDestroy(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                DefaultLifecycleObserver.CC.$default$onPause(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onResume(LifecycleOwner lifecycleOwner) {
                this.this$0.loadEmojiCompatAfterDelay();
                this.val$lifecycle.removeObserver(this);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
                DefaultLifecycleObserver.CC.$default$onStart(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                DefaultLifecycleObserver.CC.$default$onStop(this, lifecycleOwner);
            }
        });
    }

    @Override // androidx.startup.Initializer
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    void loadEmojiCompatAfterDelay() {
        ConcurrencyHelpers.mainHandlerAsync().postDelayed(new LoadEmojiCompatRunnable(), STARTUP_THREAD_CREATION_DELAY_MS);
    }
}
