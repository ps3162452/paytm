package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.DefaultEmojiCompatConfig;
import androidx.emoji2.text.EmojiProcessor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public class EmojiCompat {
    static final int EMOJI_COUNT_UNLIMITED = Integer.MAX_VALUE;
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;
    private static volatile boolean sHasDoneDefaultConfigLookup;
    private static volatile EmojiCompat sInstance;
    final int[] mEmojiAsDefaultStyleExceptions;
    private final int mEmojiSpanIndicatorColor;
    private final boolean mEmojiSpanIndicatorEnabled;
    private final GlyphChecker mGlyphChecker;
    private final CompatInternal mHelper;
    private final Set<InitCallback> mInitCallbacks;
    private final ReadWriteLock mInitLock = new ReentrantReadWriteLock();
    private volatile int mLoadState = 3;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final int mMetadataLoadStrategy;
    final MetadataRepoLoader mMetadataLoader;
    final boolean mReplaceAll;
    final boolean mUseEmojiAsDefaultStyle;
    public static final String EDITOR_INFO_METAVERSION_KEY = NPStringFog.decode(new byte[]{81, 12, 7, 68, 12, 91, 84, 76, 16, 67, 19, 66, 95, 16, 23, 24, 23, 87, 72, 22, 77, 83, 14, 93, 90, 11, 77, 83, 14, 93, 90, 11, 32, 89, 14, 66, 81, 22, 60, 91, 6, 70, 81, 6, 2, 66, 2, 100, 85, 16, 16, 95, 12, 92}, "0bc6c2", false, true);
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = NPStringFog.decode(new byte[]{82, 88, 7, 71, 12, 92, 87, 24, 16, 64, 19, 69, 92, 68, 23, 27, 23, 80, 75, 66, 77, 80, 14, 90, 89, 95, 77, 80, 14, 90, 89, 95, 32, 90, 14, 69, 82, 66, 60, 71, 6, 69, 95, 87, 0, 80, 34, 89, 95}, "36c5c5", -671121648L);
    private static final String NOT_INITIALIZED_ERROR_TEXT = NPStringFog.decode(new byte[]{112, 11, 91, 95, 80, 34, 90, 11, 68, 84, 77, 65, 92, 21, 20, 91, 86, 21, 21, 15, 90, 92, 77, 8, 84, 10, 93, 79, 92, 5, 27, 108, 62, 108, 86, 20, 21, 11, 65, 70, 77, 65, 92, 8, 93, 65, 80, 0, 89, 15, 78, 80, 25, 36, 88, 9, 94, 92, 122, 14, 88, 22, 85, 65, 25, 17, 71, 15, 91, 71, 25, 21, 90, 70, 70, 80, 95, 4, 71, 3, 90, 86, 80, 15, 82, 70, 64, 93, 92, 65, 112, 11, 91, 95, 80, 34, 90, 11, 68, 84, 77, 65, 92, 8, 71, 65, 88, 15, 86, 3, 26, 63, 51, 53, 93, 3, 20, 88, 86, 18, 65, 70, 88, 92, 82, 4, 89, 31, 20, 86, 88, 20, 70, 3, 20, 90, 95, 65, 65, 14, 93, 70, 25, 4, 71, 20, 91, 71, 25, 8, 70, 70, 80, 92, 74, 0, 87, 10, 93, 91, 94, 65, 65, 14, 81, 21, 124, 12, 90, 12, 93, 118, 86, 12, 69, 7, 64, 124, 87, 8, 65, 15, 85, 89, 80, 27, 80, 20, 62, 80, 80, 21, 93, 3, 70, 21, 92, 25, 69, 10, 93, 86, 80, 21, 89, 31, 20, 92, 87, 65, 116, 8, 80, 71, 86, 8, 81, 43, 85, 91, 80, 7, 80, 21, 64, 27, 65, 12, 89, 74, 20, 90, 75, 65, 87, 31, 20, 92, 87, 2, 89, 19, 80, 92, 87, 6, 63, 7, 90, 81, 75, 14, 92, 2, 76, 27, 92, 12, 90, 12, 93, 7, 3, 4, 88, 9, 94, 92, 11, 76, 87, 19, 90, 81, 85, 4, 81, 72, 62, 63, 120, 20, 65, 9, 89, 84, 77, 8, 86, 70, 93, 91, 80, 21, 92, 7, 88, 92, 67, 0, 65, 15, 91, 91, 25, 8, 70, 70, 64, 76, 73, 8, 86, 7, 88, 89, 64, 65, 69, 3, 70, 83, 86, 19, 88, 3, 80, 21, 91, 24, 21, 35, 89, 90, 83, 8, 118, 9, 89, 69, 88, 21, 124, 8, 93, 65, 80, 0, 89, 15, 78, 80, 75, 79, 21, 47, 82, 63, 64, 14, 64, 70, 85, 71, 92, 65, 91, 9, 64, 21, 92, 25, 69, 3, 87, 65, 80, 15, 82, 70, 64, 90, 25, 8, 91, 15, 64, 92, 88, 13, 92, 28, 81, 21, 124, 12, 90, 12, 93, 118, 86, 12, 69, 7, 64, 21, 84, 0, 91, 19, 85, 89, 85, 24, 21, 15, 90, 21, 64, 14, 64, 20, 20, 84, 73, 17, 89, 15, 87, 84, 77, 8, 90, 8, 24, 63, 73, 13, 80, 7, 71, 80, 25, 2, 93, 3, 87, 94, 25, 21, 90, 70, 81, 91, 74, 20, 71, 3, 20, 92, 77, 65, 93, 7, 71, 21, 87, 14, 65, 70, 86, 80, 92, 15, 21, 20, 81, 88, 86, 23, 80, 2, 20, 83, 75, 14, 88, 70, 77, 90, 76, 19, 21, 39, 100, 126, 30, 18, 21, 11, 85, 91, 80, 7, 80, 21, 64, 27, 25, 56, 90, 19, 20, 86, 88, 15, 63, 2, 91, 21, 77, 9, 92, 21, 20, 92, 87, 65, 116, 8, 80, 71, 86, 8, 81, 70, 103, 65, 76, 5, 92, 9, 20, 64, 74, 8, 91, 1, 20, 119, 76, 8, 89, 2, 20, 11, 25, 32, 91, 7, 88, 76, 67, 4, 21, 39, 100, 126, 23, 107, 63, 47, 90, 21, 77, 9, 80, 70, 117, 101, 114, 65, 116, 8, 85, 89, 64, 27, 80, 20, 24, 21, 92, 15, 70, 19, 70, 80, 25, 21, 93, 7, 64, 21, 77, 9, 80, 70, 71, 65, 88, 19, 65, 19, 68, 21, 92, 15, 65, 20, 77, 21, 95, 14, 71, 108, 113, 88, 86, 11, 92, 37, 91, 88, 73, 0, 65, 47, 90, 92, 77, 8, 84, 10, 93, 79, 92, 19, 21, 7, 90, 81, 25, 40, 91, 15, 64, 92, 88, 13, 92, 28, 85, 65, 80, 14, 91, 54, 70, 90, 79, 8, 81, 3, 70, 21, 80, 18, 21, 22, 70, 80, 74, 4, 91, 18, 20, 92, 87, 107, 21, 39, 90, 81, 75, 14, 92, 2, 121, 84, 87, 8, 83, 3, 71, 65, 23, 25, 88, 10, 26, 21, 112, 7, 21, 15, 64, 21, 80, 18, 21, 11, 93, 70, 74, 8, 91, 1, 20, 90, 75, 65, 86, 9, 90, 65, 88, 8, 91, 21, 20, 65, 86, 14, 89, 21, 14, 91, 86, 5, 80, 91, 22, 71, 92, 12, 90, 16, 81, 23, 21, 65, 84, 8, 80, 21, 64, 14, 64, 108, 93, 91, 77, 4, 91, 2, 20, 65, 86, 65, 64, 21, 81, 21, 88, 20, 65, 9, 89, 84, 77, 8, 86, 70, 87, 90, 87, 7, 92, 1, 65, 71, 88, 21, 92, 9, 90, 25, 25, 23, 80, 20, 93, 83, 64, 91, 63, 108, 20, 21, 8, 79, 21, 63, 91, 64, 75, 65, 84, 22, 68, 89, 80, 2, 84, 18, 93, 90, 87, 65, 81, 9, 81, 70, 25, 15, 90, 18, 20, 92, 87, 2, 89, 19, 80, 80, 25, 4, 88, 9, 94, 92, 11, 76, 87, 19, 90, 81, 85, 4, 81, 108, 20, 21, 11, 79, 21, 39, 88, 89, 25, 12, 90, 2, 65, 89, 92, 18, 21, 2, 91, 21, 87, 14, 65, 70, 87, 90, 87, 21, 84, 15, 90, 21, 88, 15, 21, 3, 76, 86, 85, 20, 70, 15, 91, 91, 25, 12, 84, 8, 93, 83, 92, 18, 65, 70, 70, 64, 85, 4, 21, 0, 91, 71, 51, 65, 21, 70, 20, 21, 124, 12, 90, 12, 93, 118, 86, 12, 69, 7, 64, 124, 87, 8, 65, 15, 85, 89, 80, 27, 80, 20, 20, 90, 75, 65, 124, 8, 93, 65, 80, 0, 89, 15, 78, 84, 77, 8, 90, 8, 100, 71, 86, 23, 92, 2, 81, 71, 23, 65, 115, 9, 70, 21, 84, 14, 71, 3, 20, 92, 
    87, 7, 90, 20, 89, 84, 77, 8, 90, 8, 62, 21, 25, 65, 21, 70, 85, 87, 86, 20, 65, 70, 89, 84, 87, 8, 83, 3, 71, 65, 25, 4, 77, 5, 88, 64, 74, 8, 90, 8, 71, 21, 74, 4, 80, 70, 64, 93, 92, 65, 81, 9, 87, 64, 84, 4, 91, 18, 85, 65, 80, 14, 91, 70, 82, 90, 75, 65, 65, 14, 81, 21, 88, 15, 81, 20, 91, 92, 93, 25, 21, 21, 64, 84, 75, 21, 64, 22, 62, 21, 25, 65, 21, 70, 88, 92, 91, 19, 84, 20, 77, 27, 51, 107, 124, 0, 20, 76, 86, 20, 21, 15, 90, 65, 92, 15, 81, 70, 64, 90, 25, 20, 70, 3, 20, 80, 84, 14, 95, 15, 6, 24, 91, 20, 91, 2, 88, 80, 93, 77, 21, 22, 88, 80, 88, 18, 80, 70, 87, 84, 85, 13, 21, 35, 89, 90, 83, 8, 118, 9, 89, 69, 88, 21, 27, 15, 90, 92, 77, 79, 21, 63, 91, 64, 25, 2, 84, 8, 62, 89, 92, 0, 71, 8, 20, 88, 86, 19, 80, 70, 93, 91, 25, 21, 93, 3, 20, 81, 86, 2, 64, 11, 81, 91, 77, 0, 65, 15, 91, 91, 25, 7, 90, 20, 20, 119, 76, 15, 81, 10, 81, 81, 124, 12, 90, 12, 93, 118, 86, 12, 69, 7, 64, 118, 86, 15, 83, 15, 83, 27, 51, 107, 124, 0, 20, 76, 86, 20, 21, 15, 90, 65, 92, 15, 81, 3, 80, 21, 77, 14, 21, 22, 81, 71, 95, 14, 71, 11, 20, 88, 88, 15, 64, 7, 88, 21, 90, 14, 91, 0, 93, 82, 76, 19, 84, 18, 93, 90, 87, 77, 21, 15, 64, 21, 80, 18, 21, 20, 81, 86, 86, 12, 88, 3, 90, 81, 92, 5, 21, 18, 92, 84, 77, 65, 76, 9, 65, 21, 90, 0, 89, 10, 62, 112, 84, 14, 95, 15, 119, 90, 84, 17, 84, 18, 26, 92, 87, 8, 65, 70, 93, 88, 84, 4, 81, 15, 85, 65, 92, 13, 76, 70, 91, 91, 25, 0, 69, 22, 88, 92, 90, 0, 65, 15, 91, 91, 25, 18, 65, 7, 70, 65, 76, 17, 27, 108, 62, 124, 95, 65, 76, 9, 65, 21, 74, 21, 92, 10, 88, 21, 90, 0, 91, 8, 91, 65, 25, 19, 80, 21, 91, 89, 79, 4, 21, 18, 92, 92, 74, 65, 92, 21, 71, 64, 92, 77, 21, 22, 88, 80, 88, 18, 80, 70, 91, 69, 92, 15, 21, 7, 20, 87, 76, 6, 21, 17, 93, 65, 81, 65, 76, 9, 65, 71, 25, 18, 69, 3, 87, 92, 95, 8, 86, 108, 87, 90, 87, 7, 92, 1, 65, 71, 88, 21, 92, 9, 90, 21, 77, 14, 21, 14, 81, 89, 73, 65, 92, 11, 68, 71, 86, 23, 80, 70, 81, 71, 75, 14, 71, 70, 89, 80, 74, 18, 84, 1, 81, 27}, "5f459a", -3.0502464E7f);
    private static final Object INSTANCE_LOCK = new Object();
    private static final Object CONFIG_LOCK = new Object();

    private static class CompatInternal {
        final EmojiCompat mEmojiCompat;

        CompatInternal(EmojiCompat emojiCompat) {
            this.mEmojiCompat = emojiCompat;
        }

        String getAssetSignature() {
            return "";
        }

        boolean hasEmojiGlyph(CharSequence charSequence) {
            return false;
        }

        boolean hasEmojiGlyph(CharSequence charSequence, int i) {
            return false;
        }

        void loadMetadata() {
            this.mEmojiCompat.onMetadataLoadSuccess();
        }

        CharSequence process(CharSequence charSequence, int i, int i2, int i3, boolean z) {
            return charSequence;
        }

        void updateEditorInfoAttrs(EditorInfo editorInfo) {
        }
    }

    private static final class CompatInternal19 extends CompatInternal {
        private volatile MetadataRepo mMetadataRepo;
        private volatile EmojiProcessor mProcessor;

        CompatInternal19(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        String getAssetSignature() {
            String strSourceSha = this.mMetadataRepo.getMetadataList().sourceSha();
            return strSourceSha == null ? "" : strSourceSha;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        boolean hasEmojiGlyph(CharSequence charSequence) {
            return this.mProcessor.getEmojiMetadata(charSequence) != null;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        boolean hasEmojiGlyph(CharSequence charSequence, int i) {
            EmojiMetadata emojiMetadata = this.mProcessor.getEmojiMetadata(charSequence);
            return emojiMetadata != null && emojiMetadata.getCompatAdded() <= i;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void loadMetadata() {
            try {
                this.mEmojiCompat.mMetadataLoader.load(new MetadataRepoLoaderCallback(this) { // from class: androidx.emoji2.text.EmojiCompat.CompatInternal19.1
                    final CompatInternal19 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onFailed(Throwable th) {
                        this.this$0.mEmojiCompat.onMetadataLoadFailed(th);
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onLoaded(MetadataRepo metadataRepo) {
                        this.this$0.onMetadataLoadSuccess(metadataRepo);
                    }
                });
            } catch (Throwable th) {
                this.mEmojiCompat.onMetadataLoadFailed(th);
            }
        }

        void onMetadataLoadSuccess(MetadataRepo metadataRepo) {
            if (metadataRepo == null) {
                this.mEmojiCompat.onMetadataLoadFailed(new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 87, 64, 83, 87, 2, 77, 83, 102, 87, 67, 12, 25, 81, 85, 92, 93, 12, 77, 18, 86, 87, 19, 13, 76, 94, 88}, "92423c", -6288)));
                return;
            }
            this.mMetadataRepo = metadataRepo;
            this.mProcessor = new EmojiProcessor(this.mMetadataRepo, new SpanFactory(), this.mEmojiCompat.mGlyphChecker, this.mEmojiCompat.mUseEmojiAsDefaultStyle, this.mEmojiCompat.mEmojiAsDefaultStyleExceptions);
            this.mEmojiCompat.onMetadataLoadSuccess();
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        CharSequence process(CharSequence charSequence, int i, int i2, int i3, boolean z) {
            return this.mProcessor.process(charSequence, i, i2, i3, z);
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void updateEditorInfoAttrs(EditorInfo editorInfo) {
            editorInfo.extras.putInt(NPStringFog.decode(new byte[]{84, 87, 5, 65, 95, 95, 81, 23, 18, 70, 64, 70, 90, 75, 21, 29, 68, 83, 77, 77, 79, 86, 93, 89, 95, 80, 79, 86, 93, 89, 95, 80, 34, 92, 93, 70, 84, 77, 62, 94, 85, 66, 84, 93, 0, 71, 81, 96, 80, 75, 18, 90, 95, 88}, "59a306", -5.49055903E8d), this.mMetadataRepo.getMetadataVersion());
            editorInfo.extras.putBoolean(NPStringFog.decode(new byte[]{3, 15, 87, 23, 89, 11, 6, 79, 64, 16, 70, 18, 13, 19, 71, 75, 66, 7, 26, 21, 29, 0, 91, 13, 8, 8, 29, 0, 91, 13, 8, 8, 112, 10, 91, 18, 3, 21, 108, 23, 83, 18, 14, 0, 80, 0, 119, 14, 14}, "ba3e6b", -67794499L), this.mEmojiCompat.mReplaceAll);
        }
    }

    public static abstract class Config {
        int[] mEmojiAsDefaultStyleExceptions;
        boolean mEmojiSpanIndicatorEnabled;
        Set<InitCallback> mInitCallbacks;
        final MetadataRepoLoader mMetadataLoader;
        boolean mReplaceAll;
        boolean mUseEmojiAsDefaultStyle;
        int mEmojiSpanIndicatorColor = -16711936;
        int mMetadataLoadStrategy = 0;
        GlyphChecker mGlyphChecker = new EmojiProcessor.DefaultGlyphChecker();

        protected Config(MetadataRepoLoader metadataRepoLoader) {
            Preconditions.checkNotNull(metadataRepoLoader, NPStringFog.decode(new byte[]{91, 83, 22, 84, 84, 87, 66, 87, 46, 90, 81, 82, 83, 68, 66, 86, 81, 88, 88, 89, 22, 21, 82, 83, 22, 88, 23, 89, 92, 24}, "66b506", -1919725700L));
            this.mMetadataLoader = metadataRepoLoader;
        }

        protected final MetadataRepoLoader getMetadataRepoLoader() {
            return this.mMetadataLoader;
        }

        public Config registerInitCallback(InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, NPStringFog.decode(new byte[]{95, 86, 15, 65, 113, 88, 90, 84, 4, 84, 81, 82, 22, 91, 7, 91, 92, 86, 66, 24, 4, 80, 18, 87, 67, 84, 10}, "68f529", -9.7456416E8f));
            if (this.mInitCallbacks == null) {
                this.mInitCallbacks = new ArraySet();
            }
            this.mInitCallbacks.add(initCallback);
            return this;
        }

        public Config setEmojiSpanIndicatorColor(int i) {
            this.mEmojiSpanIndicatorColor = i;
            return this;
        }

        public Config setEmojiSpanIndicatorEnabled(boolean z) {
            this.mEmojiSpanIndicatorEnabled = z;
            return this;
        }

        public Config setGlyphChecker(GlyphChecker glyphChecker) {
            Preconditions.checkNotNull(glyphChecker, NPStringFog.decode(new byte[]{113, 92, 76, 19, 13, 32, 94, 85, 86, 8, 0, 17, 22, 83, 84, 13, 11, 12, 66, 16, 87, 6, 69, 13, 67, 92, 89}, "605cec", 19046));
            this.mGlyphChecker = glyphChecker;
            return this;
        }

        public Config setMetadataLoadStrategy(int i) {
            this.mMetadataLoadStrategy = i;
            return this;
        }

        public Config setReplaceAll(boolean z) {
            this.mReplaceAll = z;
            return this;
        }

        public Config setUseEmojiAsDefaultStyle(boolean z) {
            return setUseEmojiAsDefaultStyle(z, null);
        }

        public Config setUseEmojiAsDefaultStyle(boolean z, List<Integer> list) {
            this.mUseEmojiAsDefaultStyle = z;
            if (!z || list == null) {
                this.mEmojiAsDefaultStyleExceptions = null;
            } else {
                this.mEmojiAsDefaultStyleExceptions = new int[list.size()];
                int i = 0;
                Iterator<Integer> it = list.iterator();
                while (true) {
                    int i2 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    this.mEmojiAsDefaultStyleExceptions[i2] = it.next().intValue();
                    i = i2 + 1;
                }
                Arrays.sort(this.mEmojiAsDefaultStyleExceptions);
            }
            return this;
        }

        public Config unregisterInitCallback(InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, NPStringFog.decode(new byte[]{88, 95, 80, 22, 37, 86, 93, 93, 91, 3, 5, 92, 17, 82, 88, 12, 8, 88, 69, 17, 91, 7, 70, 89, 68, 93, 85}, "119bf7", -1.95483066E8d));
            Set<InitCallback> set = this.mInitCallbacks;
            if (set != null) {
                set.remove(initCallback);
            }
            return this;
        }
    }

    public interface GlyphChecker {
        boolean hasGlyph(CharSequence charSequence, int i, int i2, int i3);
    }

    public static abstract class InitCallback {
        public void onFailed(Throwable th) {
        }

        public void onInitialized() {
        }
    }

    private static class ListenerDispatcher implements Runnable {
        private final List<InitCallback> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        ListenerDispatcher(InitCallback initCallback, int i) {
            this(Arrays.asList((InitCallback) Preconditions.checkNotNull(initCallback, NPStringFog.decode(new byte[]{12, 91, 8, 71, 37, 89, 9, 89, 3, 82, 5, 83, 69, 86, 0, 93, 8, 87, 17, 21, 3, 86, 70, 86, 16, 89, 13}, "e5a3f8", false, true))), i, null);
        }

        ListenerDispatcher(Collection<InitCallback> collection, int i) {
            this(collection, i, null);
        }

        ListenerDispatcher(Collection<InitCallback> collection, int i, Throwable th) {
            Preconditions.checkNotNull(collection, NPStringFog.decode(new byte[]{81, 8, 81, 17, 34, 85, 84, 10, 90, 4, 2, 95, 75, 70, 91, 4, 15, 90, 87, 18, 24, 7, 4, 20, 86, 19, 84, 9}, "8f8ea4", 1.120598366E9d));
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i;
            this.mThrowable = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.mInitCallbacks.size();
            switch (this.mLoadState) {
                case 1:
                    for (int i = 0; i < size; i++) {
                        this.mInitCallbacks.get(i).onInitialized();
                    }
                    break;
                default:
                    for (int i2 = 0; i2 < size; i2++) {
                        this.mInitCallbacks.get(i2).onFailed(this.mThrowable);
                    }
                    break;
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LoadStrategy {
    }

    public interface MetadataRepoLoader {
        void load(MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    public static abstract class MetadataRepoLoaderCallback {
        public abstract void onFailed(Throwable th);

        public abstract void onLoaded(MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReplaceStrategy {
    }

    static class SpanFactory {
        SpanFactory() {
        }

        EmojiSpan createSpan(EmojiMetadata emojiMetadata) {
            return new TypefaceEmojiSpan(emojiMetadata);
        }
    }

    private EmojiCompat(Config config) {
        this.mReplaceAll = config.mReplaceAll;
        this.mUseEmojiAsDefaultStyle = config.mUseEmojiAsDefaultStyle;
        this.mEmojiAsDefaultStyleExceptions = config.mEmojiAsDefaultStyleExceptions;
        this.mEmojiSpanIndicatorEnabled = config.mEmojiSpanIndicatorEnabled;
        this.mEmojiSpanIndicatorColor = config.mEmojiSpanIndicatorColor;
        this.mMetadataLoader = config.mMetadataLoader;
        this.mMetadataLoadStrategy = config.mMetadataLoadStrategy;
        this.mGlyphChecker = config.mGlyphChecker;
        ArraySet arraySet = new ArraySet();
        this.mInitCallbacks = arraySet;
        if (config.mInitCallbacks != null && !config.mInitCallbacks.isEmpty()) {
            arraySet.addAll(config.mInitCallbacks);
        }
        this.mHelper = Build.VERSION.SDK_INT < 19 ? new CompatInternal(this) : new CompatInternal19(this);
        loadMetadata();
    }

    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            emojiCompat = sInstance;
            Preconditions.checkState(emojiCompat != null, NOT_INITIALIZED_ERROR_TEXT);
        }
        return emojiCompat;
    }

    public static boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            return EmojiProcessor.handleDeleteSurroundingText(inputConnection, editable, i, i2, z);
        }
        return false;
    }

    public static boolean handleOnKeyDown(Editable editable, int i, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return EmojiProcessor.handleOnKeyDown(editable, i, keyEvent);
        }
        return false;
    }

    public static EmojiCompat init(Context context) {
        return init(context, null);
    }

    public static EmojiCompat init(Context context, DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory defaultEmojiCompatConfigFactory) {
        EmojiCompat emojiCompat;
        if (sHasDoneDefaultConfigLookup) {
            return sInstance;
        }
        if (defaultEmojiCompatConfigFactory == null) {
            defaultEmojiCompatConfigFactory = new DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory(null);
        }
        Config configCreate = defaultEmojiCompatConfigFactory.create(context);
        synchronized (CONFIG_LOCK) {
            if (!sHasDoneDefaultConfigLookup) {
                if (configCreate != null) {
                    init(configCreate);
                }
                sHasDoneDefaultConfigLookup = true;
            }
            emojiCompat = sInstance;
        }
        return emojiCompat;
    }

    public static EmojiCompat init(Config config) {
        EmojiCompat emojiCompat = sInstance;
        if (emojiCompat == null) {
            synchronized (INSTANCE_LOCK) {
                emojiCompat = sInstance;
                if (emojiCompat == null) {
                    emojiCompat = new EmojiCompat(config);
                    sInstance = emojiCompat;
                }
            }
        }
        return emojiCompat;
    }

    public static boolean isConfigured() {
        return sInstance != null;
    }

    private boolean isInitialized() {
        return getLoadState() == 1;
    }

    private void loadMetadata() {
        this.mInitLock.writeLock().lock();
        try {
            if (this.mMetadataLoadStrategy == 0) {
                this.mLoadState = 0;
            }
            this.mInitLock.writeLock().unlock();
            if (getLoadState() == 0) {
                this.mHelper.loadMetadata();
            }
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public static EmojiCompat reset(Config config) {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            emojiCompat = new EmojiCompat(config);
            sInstance = emojiCompat;
        }
        return emojiCompat;
    }

    public static EmojiCompat reset(EmojiCompat emojiCompat) {
        EmojiCompat emojiCompat2;
        synchronized (INSTANCE_LOCK) {
            sInstance = emojiCompat;
            emojiCompat2 = sInstance;
        }
        return emojiCompat2;
    }

    public static void skipDefaultConfigurationLookup(boolean z) {
        synchronized (CONFIG_LOCK) {
            sHasDoneDefaultConfigLookup = z;
        }
    }

    public String getAssetSignature() {
        Preconditions.checkState(isInitialized(), NPStringFog.decode(new byte[]{121, 12, 66, 25, 13, 88, 94, 23, 95, 88, 8, 95, 77, 6, 82, 25, 29, 83, 67}, "7c69d6", 1.08049523E9d));
        return this.mHelper.getAssetSignature();
    }

    public int getEmojiSpanIndicatorColor() {
        return this.mEmojiSpanIndicatorColor;
    }

    public int getLoadState() {
        this.mInitLock.readLock().lock();
        try {
            return this.mLoadState;
        } finally {
            this.mInitLock.readLock().unlock();
        }
    }

    public boolean hasEmojiGlyph(CharSequence charSequence) {
        Preconditions.checkState(isInitialized(), NPStringFog.decode(new byte[]{126, 9, 71, 66, 15, 92, 89, 18, 90, 3, 10, 91, 74, 3, 87, 66, 31, 87, 68}, "0f3bf2", false, true));
        Preconditions.checkNotNull(charSequence, NPStringFog.decode(new byte[]{70, 86, 16, 69, 6, 15, 86, 86, 65, 83, 2, 15, 91, 92, 21, 16, 1, 4, 21, 93, 20, 92, 15}, "53a0ca", 705269714L));
        return this.mHelper.hasEmojiGlyph(charSequence);
    }

    public boolean hasEmojiGlyph(CharSequence charSequence, int i) {
        Preconditions.checkState(isInitialized(), NPStringFog.decode(new byte[]{125, 88, 66, 65, 95, 92, 90, 67, 95, 0, 90, 91, 73, 82, 82, 65, 79, 87, 71}, "376a62", -5.73147968E8d));
        Preconditions.checkNotNull(charSequence, NPStringFog.decode(new byte[]{21, 0, 66, 23, 81, 87, 5, 0, 19, 1, 85, 87, 8, 10, 71, 66, 86, 92, 70, 11, 70, 14, 88}, "fe3b49", 1.213418116E9d));
        return this.mHelper.hasEmojiGlyph(charSequence, i);
    }

    public boolean isEmojiSpanIndicatorEnabled() {
        return this.mEmojiSpanIndicatorEnabled;
    }

    public void load() {
        Preconditions.checkState(this.mMetadataLoadStrategy == 1, NPStringFog.decode(new byte[]{101, 7, 66, 20, 93, 84, 66, 3, 82, 85, 68, 80, 122, 13, 87, 80, 99, 69, 68, 3, 66, 81, 87, 72, 22, 22, 89, 20, 124, 126, 119, 38, 105, 103, 100, 99, 119, 54, 115, 115, 105, 110, 123, 35, 120, 97, 113, 125, 22, 22, 89, 20, 85, 73, 83, 1, 67, 64, 85, 17, 91, 3, 88, 65, 81, 93, 22, 14, 89, 85, 84, 88, 88, 5}, "6b6401", 1570439627L));
        if (isInitialized()) {
            return;
        }
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 0) {
                return;
            }
            this.mLoadState = 0;
            this.mInitLock.writeLock().unlock();
            this.mHelper.loadMetadata();
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    void onMetadataLoadFailed(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 2;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState, th));
        } catch (Throwable th2) {
            this.mInitLock.writeLock().unlock();
            throw th2;
        }
    }

    void onMetadataLoadSuccess() {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 1;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState));
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence process(CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence process(CharSequence charSequence, int i, int i2) {
        return process(charSequence, i, i2, Integer.MAX_VALUE);
    }

    public CharSequence process(CharSequence charSequence, int i, int i2, int i3) {
        return process(charSequence, i, i2, i3, 0);
    }

    public CharSequence process(CharSequence charSequence, int i, int i2, int i3, int i4) {
        boolean z;
        Preconditions.checkState(isInitialized(), NPStringFog.decode(new byte[]{126, 13, 69, 17, 93, 88, 89, 22, 88, 80, 88, 95, 74, 7, 85, 17, 77, 83, 68}, "0b1146", 1061667684L));
        Preconditions.checkArgumentNonnegative(i, NPStringFog.decode(new byte[]{64, 64, 84, 67, 76, 20, 80, 85, 91, 95, 87, 64, 19, 86, 80, 17, 86, 81, 84, 85, 65, 88, 78, 81}, "345184", true));
        Preconditions.checkArgumentNonnegative(i2, NPStringFog.decode(new byte[]{85, 91, 81, 17, 7, 85, 94, 91, 90, 69, 68, 86, 85, 21, 91, 84, 3, 85, 68, 92, 67, 84}, "0551d4", 1.5003471E9f));
        Preconditions.checkArgumentNonnegative(i3, NPStringFog.decode(new byte[]{14, 88, 79, 112, 90, 87, 9, 80, 116, 90, 66, 86, 23, 25, 84, 84, 89, 86, 12, 77, 23, 87, 82, 24, 13, 92, 80, 84, 67, 81, 21, 92}, "c97578", true));
        Preconditions.checkArgument(i <= i2, NPStringFog.decode(new byte[]{64, 70, 84, 23, 69, 21, 64, 90, 90, 16, 93, 81, 19, 80, 80, 69, 13, 8, 19, 70, 93, 4, 95, 21, 86, 92, 81}, "325e15", -361491781L));
        if (charSequence == null) {
            return null;
        }
        Preconditions.checkArgument(i <= charSequence.length(), NPStringFog.decode(new byte[]{23, 21, 89, 17, 23, 70, 23, 9, 87, 22, 15, 2, 68, 3, 93, 67, 95, 70, 16, 9, 89, 13, 67, 5, 12, 0, 74, 48, 6, 23, 17, 4, 86, 0, 6, 70, 8, 4, 86, 4, 23, 14}, "da8ccf", 7.75181187E8d));
        Preconditions.checkArgument(i2 <= charSequence.length(), NPStringFog.decode(new byte[]{80, 12, 83, 19, 68, 11, 90, 23, 91, 87, 23, 1, 80, 66, 11, 19, 67, 11, 84, 12, 23, 80, 95, 2, 71, 49, 82, 66, 66, 6, 91, 1, 82, 19, 91, 6, 91, 5, 67, 91}, "5b737c", true));
        if (charSequence.length() == 0 || i == i2) {
            return charSequence;
        }
        switch (i4) {
            case 1:
                z = true;
                break;
            case 2:
                z = false;
                break;
            default:
                z = this.mReplaceAll;
                break;
        }
        return this.mHelper.process(charSequence, i, i2, i3, z);
    }

    public void registerInitCallback(InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, NPStringFog.decode(new byte[]{91, 93, 80, 76, 116, 3, 94, 95, 91, 89, 84, 9, 18, 80, 88, 86, 89, 13, 70, 19, 91, 93, 23, 12, 71, 95, 85}, "23987b", 895608451L));
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 1 || this.mLoadState == 2) {
                this.mMainHandler.post(new ListenerDispatcher(initCallback, this.mLoadState));
            } else {
                this.mInitCallbacks.add(initCallback);
            }
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public void unregisterInitCallback(InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, NPStringFog.decode(new byte[]{81, 89, 92, 64, 115, 0, 84, 91, 87, 85, 83, 10, 24, 84, 84, 90, 94, 14, 76, 23, 87, 81, 16, 15, 77, 91, 89}, "87540a", true));
        this.mInitLock.writeLock().lock();
        try {
            this.mInitCallbacks.remove(initCallback);
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public void updateEditorInfo(EditorInfo editorInfo) {
        if (!isInitialized() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.mHelper.updateEditorInfoAttrs(editorInfo);
    }
}
