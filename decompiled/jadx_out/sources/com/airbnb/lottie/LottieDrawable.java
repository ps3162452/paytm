package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    private LottieComposition composition;

    @Nullable
    private CompositionLayer compositionLayer;
    private boolean enableMergePaths;

    @Nullable
    FontAssetDelegate fontAssetDelegate;

    @Nullable
    private FontAssetManager fontAssetManager;

    @Nullable
    private ImageAssetDelegate imageAssetDelegate;

    @Nullable
    private ImageAssetManager imageAssetManager;

    @Nullable
    private ImageAssetManager imageAssetManagerOverride;

    @Nullable
    private String imageAssetsFolder;
    private boolean isApplyingOpacityToLayersEnabled;
    private boolean outlineMasksAndMattes;
    private boolean performanceTrackingEnabled;

    @Nullable
    TextDelegate textDelegate;
    private final Matrix matrix = new Matrix();
    private final LottieValueAnimator animator = new LottieValueAnimator();
    private float scale = 1.0f;
    private boolean systemAnimationsEnabled = true;
    private boolean ignoreSystemAnimationsDisabled = false;
    private boolean safeMode = false;
    private final ArrayList<LazyCompositionTask> lazyCompositionTasks = new ArrayList<>();
    private final ValueAnimator.AnimatorUpdateListener progressUpdateListener = new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.airbnb.lottie.LottieDrawable.1
        final LottieDrawable this$0;

        {
            this.this$0 = this;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (this.this$0.compositionLayer != null) {
                this.this$0.compositionLayer.setProgress(this.this$0.animator.getAnimatedValueAbsolute());
            }
        }
    };
    private int alpha = 255;
    private boolean isExtraScaleEnabled = true;
    private boolean isDirty = false;

    private interface LazyCompositionTask {
        void run(LottieComposition lottieComposition);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    public LottieDrawable() {
        this.animator.addUpdateListener(this.progressUpdateListener);
    }

    private boolean animationsEnabled() {
        return this.systemAnimationsEnabled || this.ignoreSystemAnimationsDisabled;
    }

    private float aspectRatio(Rect rect) {
        return rect.width() / rect.height();
    }

    private boolean boundsMatchesCompositionAspectRatio() {
        LottieComposition lottieComposition = this.composition;
        return lottieComposition == null || getBounds().isEmpty() || aspectRatio(getBounds()) == aspectRatio(lottieComposition.getBounds());
    }

    private void buildCompositionLayer() {
        this.compositionLayer = new CompositionLayer(this, LayerParser.parse(this.composition), this.composition.getLayers(), this.composition);
        if (this.outlineMasksAndMattes) {
            this.compositionLayer.setOutlineMasksAndMattes(true);
        }
    }

    private void drawInternal(@NonNull Canvas canvas) {
        if (boundsMatchesCompositionAspectRatio()) {
            drawWithOriginalAspectRatio(canvas);
        } else {
            drawWithNewAspectRatio(canvas);
        }
    }

    private void drawWithNewAspectRatio(Canvas canvas) {
        float f;
        if (this.compositionLayer == null) {
            return;
        }
        int iSave = -1;
        Rect bounds = getBounds();
        float fWidth = bounds.width() / this.composition.getBounds().width();
        float fHeight = bounds.height() / this.composition.getBounds().height();
        if (this.isExtraScaleEnabled) {
            float fMin = Math.min(fWidth, fHeight);
            if (fMin < 1.0f) {
                f = 1.0f / fMin;
                fWidth /= f;
                fHeight /= f;
            } else {
                f = 1.0f;
            }
            if (f > 1.0f) {
                iSave = canvas.save();
                float fWidth2 = bounds.width() / 2.0f;
                float fHeight2 = bounds.height() / 2.0f;
                float f2 = fWidth2 * fMin;
                float f3 = fMin * fHeight2;
                canvas.translate(fWidth2 - f2, fHeight2 - f3);
                canvas.scale(f, f, f2, f3);
            }
        }
        this.matrix.reset();
        this.matrix.preScale(fWidth, fHeight);
        this.compositionLayer.draw(canvas, this.matrix, this.alpha);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    private void drawWithOriginalAspectRatio(Canvas canvas) {
        float f;
        if (this.compositionLayer == null) {
            return;
        }
        float f2 = this.scale;
        float maxScale = getMaxScale(canvas);
        if (f2 > maxScale) {
            f = this.scale / maxScale;
            f2 = maxScale;
        } else {
            f = 1.0f;
        }
        int iSave = -1;
        if (f > 1.0f) {
            iSave = canvas.save();
            float fWidth = this.composition.getBounds().width() / 2.0f;
            float fHeight = this.composition.getBounds().height() / 2.0f;
            float f3 = fWidth * f2;
            float f4 = fHeight * f2;
            canvas.translate((fWidth * getScale()) - f3, (fHeight * getScale()) - f4);
            canvas.scale(f, f, f3, f4);
        }
        this.matrix.reset();
        this.matrix.preScale(f2, f2);
        this.compositionLayer.draw(canvas, this.matrix, this.alpha);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    @Nullable
    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private FontAssetManager getFontAssetManager() {
        if (getCallback() == null) {
            return null;
        }
        if (this.fontAssetManager == null) {
            this.fontAssetManager = new FontAssetManager(getCallback(), this.fontAssetDelegate);
        }
        return this.fontAssetManager;
    }

    private ImageAssetManager getImageAssetManager() {
        if (this.imageAssetManagerOverride != null) {
            return this.imageAssetManagerOverride;
        }
        if (getCallback() == null) {
            return null;
        }
        if (this.imageAssetManager != null && !this.imageAssetManager.hasSameContext(getContext())) {
            this.imageAssetManager = null;
        }
        if (this.imageAssetManager == null) {
            this.imageAssetManager = new ImageAssetManager(getCallback(), this.imageAssetsFolder, this.imageAssetDelegate, this.composition.getImages());
        }
        return this.imageAssetManager;
    }

    private float getMaxScale(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.composition.getBounds().width(), canvas.getHeight() / this.composition.getBounds().height());
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.animator.addListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.animator.addPauseListener(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.animator.addUpdateListener(animatorUpdateListener);
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, LottieValueCallback<T> lottieValueCallback) {
        boolean z = true;
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, keyPath, t, lottieValueCallback) { // from class: com.airbnb.lottie.LottieDrawable.16
                final LottieDrawable this$0;
                final LottieValueCallback val$callback;
                final KeyPath val$keyPath;
                final Object val$property;

                {
                    this.this$0 = this;
                    this.val$keyPath = keyPath;
                    this.val$property = t;
                    this.val$callback = lottieValueCallback;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.addValueCallback(this.val$keyPath, this.val$property, (LottieValueCallback<Object>) this.val$callback);
                }
            });
            return;
        }
        if (keyPath == KeyPath.COMPOSITION) {
            this.compositionLayer.addValueCallback(t, lottieValueCallback);
        } else if (keyPath.getResolvedElement() != null) {
            keyPath.getResolvedElement().addValueCallback(t, lottieValueCallback);
        } else {
            List<KeyPath> listResolveKeyPath = resolveKeyPath(keyPath);
            for (int i = 0; i < listResolveKeyPath.size(); i++) {
                listResolveKeyPath.get(i).getResolvedElement().addValueCallback(t, lottieValueCallback);
            }
            z = listResolveKeyPath.isEmpty() ? false : true;
        }
        if (z) {
            invalidateSelf();
            if (t == LottieProperty.TIME_REMAP) {
                setProgress(getProgress());
            }
        }
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, SimpleLottieValueCallback<T> simpleLottieValueCallback) {
        addValueCallback(keyPath, t, new LottieValueCallback<T>(this, simpleLottieValueCallback) { // from class: com.airbnb.lottie.LottieDrawable.17
            final LottieDrawable this$0;
            final SimpleLottieValueCallback val$callback;

            {
                this.this$0 = this;
                this.val$callback = simpleLottieValueCallback;
            }

            @Override // com.airbnb.lottie.value.LottieValueCallback
            public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
                return (T) this.val$callback.getValue(lottieFrameInfo);
            }
        });
    }

    public void cancelAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.cancel();
    }

    public void clearComposition() {
        if (this.animator.isRunning()) {
            this.animator.cancel();
        }
        this.composition = null;
        this.compositionLayer = null;
        this.imageAssetManager = null;
        this.animator.clearComposition();
        invalidateSelf();
    }

    public void disableExtraScaleModeInFitXY() {
        this.isExtraScaleEnabled = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.isDirty = false;
        L.beginSection(NPStringFog.decode(new byte[]{113, 70, 86, 18, 0, 83, 89, 81, 20, 1, 19, 80, 66}, "547ea1", false));
        if (this.safeMode) {
            try {
                drawInternal(canvas);
            } catch (Throwable th) {
                Logger.error(NPStringFog.decode(new byte[]{46, 95, 65, 18, 94, 87, 66, 83, 71, 7, 68, 90, 7, 84, 21, 15, 89, 18, 6, 66, 84, 17, 22}, "b05f72", false, false), th);
            }
        } else {
            drawInternal(canvas);
        }
        L.endSection(NPStringFog.decode(new byte[]{113, 22, 87, 22, 86, 81, 89, 1, 21, 5, 69, 82, 66}, "5d6a73", 30860));
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        if (this.enableMergePaths == z) {
            return;
        }
        if (Build.VERSION.SDK_INT < 19) {
            Logger.warning(NPStringFog.decode(new byte[]{127, 84, 69, 83, 4, 68, 66, 80, 67, 92, 18, 68, 83, 67, 82, 20, 15, 11, 70, 17, 68, 65, 17, 20, 93, 67, 67, 81, 5, 68, 66, 67, 82, 25, 42, 13, 70, 17, 124, 85, 21, 74}, "2174ad", -7.42958696E8d));
            return;
        }
        this.enableMergePaths = z;
        if (this.composition != null) {
            buildCompositionLayer();
        }
    }

    public boolean enableMergePathsForKitKatAndAbove() {
        return this.enableMergePaths;
    }

    @MainThread
    public void endAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.endAnimation();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    public LottieComposition getComposition() {
        return this.composition;
    }

    public int getFrame() {
        return (int) this.animator.getFrame();
    }

    @Nullable
    public Bitmap getImageAsset(String str) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager != null) {
            return imageAssetManager.bitmapForId(str);
        }
        return null;
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.imageAssetsFolder;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.composition == null) {
            return -1;
        }
        return (int) (this.composition.getBounds().height() * getScale());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.composition == null) {
            return -1;
        }
        return (int) (this.composition.getBounds().width() * getScale());
    }

    public float getMaxFrame() {
        return this.animator.getMaxFrame();
    }

    public float getMinFrame() {
        return this.animator.getMinFrame();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        if (this.composition != null) {
            return this.composition.getPerformanceTracker();
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.animator.getAnimatedValueAbsolute();
    }

    public int getRepeatCount() {
        return this.animator.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.animator.getRepeatMode();
    }

    public float getScale() {
        return this.scale;
    }

    public float getSpeed() {
        return this.animator.getSpeed();
    }

    @Nullable
    public TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    @Nullable
    public Typeface getTypeface(String str, String str2) {
        FontAssetManager fontAssetManager = getFontAssetManager();
        if (fontAssetManager != null) {
            return fontAssetManager.getTypeface(str, str2);
        }
        return null;
    }

    public boolean hasMasks() {
        return this.compositionLayer != null && this.compositionLayer.hasMasks();
    }

    public boolean hasMatte() {
        return this.compositionLayer != null && this.compositionLayer.hasMatte();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.isDirty) {
            return;
        }
        this.isDirty = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isAnimating() {
        if (this.animator == null) {
            return false;
        }
        return this.animator.isRunning();
    }

    public boolean isApplyingOpacityToLayersEnabled() {
        return this.isApplyingOpacityToLayersEnabled;
    }

    public boolean isLooping() {
        return this.animator.getRepeatCount() == -1;
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.enableMergePaths;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return isAnimating();
    }

    @Deprecated
    public void loop(boolean z) {
        this.animator.setRepeatCount(z ? -1 : 0);
    }

    public void pauseAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.pauseAnimation();
    }

    @MainThread
    public void playAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this) { // from class: com.airbnb.lottie.LottieDrawable.2
                final LottieDrawable this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.playAnimation();
                }
            });
            return;
        }
        if (animationsEnabled() || getRepeatCount() == 0) {
            this.animator.playAnimation();
        }
        if (animationsEnabled()) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        this.animator.endAnimation();
    }

    public void removeAllAnimatorListeners() {
        this.animator.removeAllListeners();
    }

    public void removeAllUpdateListeners() {
        this.animator.removeAllUpdateListeners();
        this.animator.addUpdateListener(this.progressUpdateListener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.animator.removeListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.animator.removePauseListener(animatorPauseListener);
    }

    public void removeAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.animator.removeUpdateListener(animatorUpdateListener);
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        if (this.compositionLayer == null) {
            Logger.warning(NPStringFog.decode(new byte[]{38, 5, 86, 12, 92, 64, 69, 22, 93, 17, 92, 88, 19, 1, 24, 41, 86, 77, 53, 5, 76, 10, 29, 20, 38, 11, 85, 18, 92, 71, 12, 16, 81, 13, 93, 20, 12, 23, 24, 12, 92, 64, 69, 23, 93, 22, 19, 77, 0, 16, 22}, "ed8b34", -2.086627E9f));
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.compositionLayer.resolveKeyPath(keyPath, 0, arrayList, new KeyPath(new String[0]));
        return arrayList;
    }

    @MainThread
    public void resumeAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this) { // from class: com.airbnb.lottie.LottieDrawable.3
                final LottieDrawable this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.resumeAnimation();
                }
            });
            return;
        }
        if (animationsEnabled() || getRepeatCount() == 0) {
            this.animator.resumeAnimation();
        }
        if (animationsEnabled()) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        this.animator.endAnimation();
    }

    public void reverseAnimationSpeed() {
        this.animator.reverseAnimationSpeed();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 255) int i) {
        this.alpha = i;
        invalidateSelf();
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.isApplyingOpacityToLayersEnabled = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Logger.warning(NPStringFog.decode(new byte[]{96, 16, 86, 16, 0, 93, 81, 32, 92, 92, 14, 75, 115, 10, 95, 68, 4, 75, 21, 10, 93, 67, 21, 92, 84, 7, 29}, "5c30a9", true));
    }

    public boolean setComposition(LottieComposition lottieComposition) {
        if (this.composition == lottieComposition) {
            return false;
        }
        this.isDirty = false;
        clearComposition();
        this.composition = lottieComposition;
        buildCompositionLayer();
        this.animator.setComposition(lottieComposition);
        setProgress(this.animator.getAnimatedFraction());
        setScale(this.scale);
        Iterator it = new ArrayList(this.lazyCompositionTasks).iterator();
        while (it.hasNext()) {
            LazyCompositionTask lazyCompositionTask = (LazyCompositionTask) it.next();
            if (lazyCompositionTask != null) {
                lazyCompositionTask.run(lottieComposition);
            }
            it.remove();
        }
        this.lazyCompositionTasks.clear();
        lottieComposition.setPerformanceTrackingEnabled(this.performanceTrackingEnabled);
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ((ImageView) callback).setImageDrawable(null);
            ((ImageView) callback).setImageDrawable(this);
        }
        return true;
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.fontAssetDelegate = fontAssetDelegate;
        if (this.fontAssetManager != null) {
            this.fontAssetManager.setDelegate(fontAssetDelegate);
        }
    }

    public void setFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, i) { // from class: com.airbnb.lottie.LottieDrawable.14
                final LottieDrawable this$0;
                final int val$frame;

                {
                    this.this$0 = this;
                    this.val$frame = i;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setFrame(this.val$frame);
                }
            });
        } else {
            this.animator.setFrame(i);
        }
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.ignoreSystemAnimationsDisabled = z;
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.imageAssetDelegate = imageAssetDelegate;
        if (this.imageAssetManager != null) {
            this.imageAssetManager.setDelegate(imageAssetDelegate);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    void setImageAssetManager(@Nullable ImageAssetManager imageAssetManager) {
        this.imageAssetManagerOverride = imageAssetManager;
    }

    public void setImagesAssetsFolder(@Nullable String str) {
        this.imageAssetsFolder = str;
    }

    public void setMaxFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, i) { // from class: com.airbnb.lottie.LottieDrawable.6
                final LottieDrawable this$0;
                final int val$maxFrame;

                {
                    this.this$0 = this;
                    this.val$maxFrame = i;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMaxFrame(this.val$maxFrame);
                }
            });
        } else {
            this.animator.setMaxFrame(i + 0.99f);
        }
    }

    public void setMaxFrame(String str) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, str) { // from class: com.airbnb.lottie.LottieDrawable.9
                final LottieDrawable this$0;
                final String val$markerName;

                {
                    this.this$0 = this;
                    this.val$markerName = str;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMaxFrame(this.val$markerName);
                }
            });
            return;
        }
        Marker marker = this.composition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 4, 86, 94, 95, 77, 21, 3, 81, 94, 84, 25, 88, 4, 74, 91, 85, 75, 21, 18, 81, 68, 88, 25, 91, 4, 85, 85, 16}, "5e8009", false) + str + NPStringFog.decode(new byte[]{24}, "6bafa1", true));
        }
        setMaxFrame((int) (marker.durationFrames + marker.startFrame));
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, f) { // from class: com.airbnb.lottie.LottieDrawable.7
                final LottieDrawable this$0;
                final float val$maxProgress;

                {
                    this.this$0 = this;
                    this.val$maxProgress = f;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMaxProgress(this.val$maxProgress);
                }
            });
        } else {
            setMaxFrame((int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f));
        }
    }

    public void setMinAndMaxFrame(int i, int i2) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, i, i2) { // from class: com.airbnb.lottie.LottieDrawable.12
                final LottieDrawable this$0;
                final int val$maxFrame;
                final int val$minFrame;

                {
                    this.this$0 = this;
                    this.val$minFrame = i;
                    this.val$maxFrame = i2;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinAndMaxFrame(this.val$minFrame, this.val$maxFrame);
                }
            });
        } else {
            this.animator.setMinAndMaxFrames(i, i2 + 0.99f);
        }
    }

    public void setMinAndMaxFrame(String str) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, str) { // from class: com.airbnb.lottie.LottieDrawable.10
                final LottieDrawable this$0;
                final String val$markerName;

                {
                    this.this$0 = this;
                    this.val$markerName = str;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinAndMaxFrame(this.val$markerName);
                }
            });
            return;
        }
        Marker marker = this.composition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 2, 10, 95, 87, 23, 23, 5, 13, 95, 92, 67, 90, 2, 22, 90, 93, 17, 23, 20, 13, 69, 80, 67, 89, 2, 9, 84, 24}, "7cd18c", true) + str + NPStringFog.decode(new byte[]{75}, "e37997", -1.764319E9f));
        }
        int i = (int) marker.startFrame;
        setMinAndMaxFrame(i, ((int) marker.durationFrames) + i);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, str, str2, z) { // from class: com.airbnb.lottie.LottieDrawable.11
                final LottieDrawable this$0;
                final String val$endMarkerName;
                final boolean val$playEndMarkerStartFrame;
                final String val$startMarkerName;

                {
                    this.this$0 = this;
                    this.val$startMarkerName = str;
                    this.val$endMarkerName = str2;
                    this.val$playEndMarkerStartFrame = z;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinAndMaxFrame(this.val$startMarkerName, this.val$endMarkerName, this.val$playEndMarkerStartFrame);
                }
            });
            return;
        }
        Marker marker = this.composition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 86, 93, 12, 11, 76, 18, 81, 90, 12, 0, 24, 95, 86, 65, 9, 1, 74, 18, 64, 90, 22, 12, 24, 92, 86, 94, 7, 68}, "273bd8", true, false) + str + NPStringFog.decode(new byte[]{28}, "214bbc", -212635242L));
        }
        int i = (int) marker.startFrame;
        Marker marker2 = this.composition.getMarker(str2);
        if (marker2 == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 82, 8, 88, 87, 22, 16, 85, 15, 88, 92, 66, 93, 82, 20, 93, 93, 16, 16, 68, 15, 66, 80, 66, 94, 82, 11, 83, 24}, "03f68b", -1.93529286E8d) + str2 + NPStringFog.decode(new byte[]{77}, "cd1c99", -439417487L));
        }
        setMinAndMaxFrame(i, (int) ((z ? 1.0f : 0.0f) + marker2.startFrame));
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, f, f2) { // from class: com.airbnb.lottie.LottieDrawable.13
                final LottieDrawable this$0;
                final float val$maxProgress;
                final float val$minProgress;

                {
                    this.this$0 = this;
                    this.val$minProgress = f;
                    this.val$maxProgress = f2;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinAndMaxProgress(this.val$minProgress, this.val$maxProgress);
                }
            });
        } else {
            setMinAndMaxFrame((int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f), (int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f2));
        }
    }

    public void setMinFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, i) { // from class: com.airbnb.lottie.LottieDrawable.4
                final LottieDrawable this$0;
                final int val$minFrame;

                {
                    this.this$0 = this;
                    this.val$minFrame = i;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinFrame(this.val$minFrame);
                }
            });
        } else {
            this.animator.setMinFrame(i);
        }
    }

    public void setMinFrame(String str) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, str) { // from class: com.airbnb.lottie.LottieDrawable.8
                final LottieDrawable this$0;
                final String val$markerName;

                {
                    this.this$0 = this;
                    this.val$markerName = str;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinFrame(this.val$markerName);
                }
            });
            return;
        }
        Marker marker = this.composition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 81, 95, 92, 93, 76, 68, 86, 88, 92, 86, 24, 9, 81, 67, 89, 87, 74, 68, 71, 88, 70, 90, 24, 10, 81, 92, 87, 18}, "d01228", true, true) + str + NPStringFog.decode(new byte[]{76}, "b174ff", false, false));
        }
        setMinFrame((int) marker.startFrame);
    }

    public void setMinProgress(float f) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, f) { // from class: com.airbnb.lottie.LottieDrawable.5
                final LottieDrawable this$0;
                final float val$minProgress;

                {
                    this.this$0 = this;
                    this.val$minProgress = f;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setMinProgress(this.val$minProgress);
                }
            });
        } else {
            setMinFrame((int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f));
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        if (this.outlineMasksAndMattes == z) {
            return;
        }
        this.outlineMasksAndMattes = z;
        if (this.compositionLayer != null) {
            this.compositionLayer.setOutlineMasksAndMattes(z);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.performanceTrackingEnabled = z;
        if (this.composition != null) {
            this.composition.setPerformanceTrackingEnabled(z);
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask(this, f) { // from class: com.airbnb.lottie.LottieDrawable.15
                final LottieDrawable this$0;
                final float val$progress;

                {
                    this.this$0 = this;
                    this.val$progress = f;
                }

                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition lottieComposition) {
                    this.this$0.setProgress(this.val$progress);
                }
            });
            return;
        }
        L.beginSection(NPStringFog.decode(new byte[]{38, 23, 7, 68, 86, 86, 14, 0, 69, 64, 82, 64, 50, 23, 9, 84, 69, 81, 17, 22}, "bef374", 577746431L));
        this.animator.setFrame(MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f));
        L.endSection(NPStringFog.decode(new byte[]{32, 23, 2, 71, 80, 86, 8, 0, 64, 67, 84, 64, 52, 23, 12, 87, 67, 81, 23, 22}, "dec014", 1655827075L));
    }

    public void setRepeatCount(int i) {
        this.animator.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.animator.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.safeMode = z;
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public void setSpeed(float f) {
        this.animator.setSpeed(f);
    }

    void setSystemAnimationsAreEnabled(Boolean bool) {
        this.systemAnimationsEnabled = bool.booleanValue();
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.textDelegate = textDelegate;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        endAnimation();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager == null) {
            Logger.warning(NPStringFog.decode(new byte[]{113, 81, 86, 86, 95, 77, 18, 69, 72, 92, 81, 77, 87, 16, 90, 81, 68, 84, 83, 64, 22, 24, 125, 86, 65, 68, 24, 84, 89, 82, 87, 92, 65, 24, 68, 81, 87, 16, 92, 74, 81, 78, 83, 82, 84, 93, 16, 80, 65, 16, 86, 87, 68, 25, 83, 84, 92, 93, 84, 25, 70, 95, 24, 89, 16, 111, 91, 85, 79, 24, 71, 81, 91, 83, 80, 24, 64, 75, 87, 70, 93, 86, 68, 74, 18, 124, 87, 76, 68, 80, 87, 16, 94, 74, 95, 84, 18, 87, 93, 76, 68, 80, 92, 87, 24, 89, 16, 122, 93, 94, 76, 93, 72, 77, 28}, "208809", false, false));
            return null;
        }
        Bitmap bitmapUpdateBitmap = imageAssetManager.updateBitmap(str, bitmap);
        invalidateSelf();
        return bitmapUpdateBitmap;
    }

    public boolean useTextGlyphs() {
        return this.textDelegate == null && this.composition.getCharacters().size() > 0;
    }
}
