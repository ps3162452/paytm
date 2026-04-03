package com.facebook.shimmer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes68.dex */
public class Shimmer {
    private static final int COMPONENT_COUNT = 4;
    long repeatDelay;
    final float[] positions = new float[4];
    final int[] colors = new int[4];
    final RectF bounds = new RectF();
    int direction = 0;

    @ColorInt
    int highlightColor = -1;

    @ColorInt
    int baseColor = 1291845631;
    int shape = 0;
    int fixedWidth = 0;
    int fixedHeight = 0;
    float widthRatio = 1.0f;
    float heightRatio = 1.0f;
    float intensity = 0.0f;
    float dropoff = 0.5f;
    float tilt = 20.0f;
    boolean clipToChildren = true;
    boolean autoStart = true;
    boolean alphaShimmer = true;
    int repeatCount = -1;
    int repeatMode = 1;
    long animationDuration = 1000;

    public static class AlphaHighlightBuilder extends Builder<AlphaHighlightBuilder> {
        public AlphaHighlightBuilder() {
            this.mShimmer.alphaShimmer = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.shimmer.Shimmer.Builder
        public AlphaHighlightBuilder getThis() {
            return this;
        }
    }

    public static abstract class Builder<T extends Builder<T>> {
        final Shimmer mShimmer = new Shimmer();

        private static float clamp(float f, float f2, float f3) {
            return Math.min(f2, Math.max(f, f3));
        }

        public Shimmer build() {
            this.mShimmer.updateColors();
            this.mShimmer.updatePositions();
            return this.mShimmer;
        }

        public T consumeAttributes(Context context, AttributeSet attributeSet) {
            return (T) consumeAttributes(context.obtainStyledAttributes(attributeSet, R.styleable.ShimmerFrameLayout, 0, 0));
        }

        T consumeAttributes(TypedArray typedArray) {
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_clip_to_children)) {
                setClipToChildren(typedArray.getBoolean(R.styleable.ShimmerFrameLayout_shimmer_clip_to_children, this.mShimmer.clipToChildren));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_auto_start)) {
                setAutoStart(typedArray.getBoolean(R.styleable.ShimmerFrameLayout_shimmer_auto_start, this.mShimmer.autoStart));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_base_alpha)) {
                setBaseAlpha(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_highlight_alpha)) {
                setHighlightAlpha(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_duration)) {
                setDuration(typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_duration, (int) this.mShimmer.animationDuration));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_repeat_count)) {
                setRepeatCount(typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_repeat_count, this.mShimmer.repeatCount));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_repeat_delay)) {
                setRepeatDelay(typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_repeat_delay, (int) this.mShimmer.repeatDelay));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_repeat_mode)) {
                setRepeatMode(typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_repeat_mode, this.mShimmer.repeatMode));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_direction)) {
                int i = typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_direction, this.mShimmer.direction);
                if (i == 1) {
                    setDirection(1);
                } else if (i == 2) {
                    setDirection(2);
                } else if (i != 3) {
                    setDirection(0);
                } else {
                    setDirection(3);
                }
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_shape)) {
                if (typedArray.getInt(R.styleable.ShimmerFrameLayout_shimmer_shape, this.mShimmer.shape) != 1) {
                    setShape(0);
                } else {
                    setShape(1);
                }
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_dropoff)) {
                setDropoff(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_dropoff, this.mShimmer.dropoff));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_fixed_width)) {
                setFixedWidth(typedArray.getDimensionPixelSize(R.styleable.ShimmerFrameLayout_shimmer_fixed_width, this.mShimmer.fixedWidth));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_fixed_height)) {
                setFixedHeight(typedArray.getDimensionPixelSize(R.styleable.ShimmerFrameLayout_shimmer_fixed_height, this.mShimmer.fixedHeight));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_intensity)) {
                setIntensity(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_intensity, this.mShimmer.intensity));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_width_ratio)) {
                setWidthRatio(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_width_ratio, this.mShimmer.widthRatio));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_height_ratio)) {
                setHeightRatio(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_height_ratio, this.mShimmer.heightRatio));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_tilt)) {
                setTilt(typedArray.getFloat(R.styleable.ShimmerFrameLayout_shimmer_tilt, this.mShimmer.tilt));
            }
            return (T) getThis();
        }

        public T copyFrom(Shimmer shimmer) {
            setDirection(shimmer.direction);
            setShape(shimmer.shape);
            setFixedWidth(shimmer.fixedWidth);
            setFixedHeight(shimmer.fixedHeight);
            setWidthRatio(shimmer.widthRatio);
            setHeightRatio(shimmer.heightRatio);
            setIntensity(shimmer.intensity);
            setDropoff(shimmer.dropoff);
            setTilt(shimmer.tilt);
            setClipToChildren(shimmer.clipToChildren);
            setAutoStart(shimmer.autoStart);
            setRepeatCount(shimmer.repeatCount);
            setRepeatMode(shimmer.repeatMode);
            setRepeatDelay(shimmer.repeatDelay);
            setDuration(shimmer.animationDuration);
            this.mShimmer.baseColor = shimmer.baseColor;
            this.mShimmer.highlightColor = shimmer.highlightColor;
            return (T) getThis();
        }

        protected abstract T getThis();

        public T setAutoStart(boolean z) {
            this.mShimmer.autoStart = z;
            return (T) getThis();
        }

        public T setBaseAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
            int iClamp = (int) (clamp(0.0f, 1.0f, f) * 255.0f);
            Shimmer shimmer = this.mShimmer;
            shimmer.baseColor = (iClamp << 24) | (shimmer.baseColor & ViewCompat.MEASURED_SIZE_MASK);
            return (T) getThis();
        }

        public T setClipToChildren(boolean z) {
            this.mShimmer.clipToChildren = z;
            return (T) getThis();
        }

        public T setDirection(int i) {
            this.mShimmer.direction = i;
            return (T) getThis();
        }

        public T setDropoff(float f) {
            if (f >= 0.0f) {
                this.mShimmer.dropoff = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{36, 80, 66, 6, 93, 16, 10, 87, 66, 2, 95, 89, 7, 25, 80, 17, 92, 64, 12, 95, 82, 67, 69, 81, 15, 76, 81, 89, 19}, "c94c30", -1.1124161E9f) + f);
        }

        public T setDuration(long j) {
            if (j >= 0) {
                this.mShimmer.animationDuration = j;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{36, 95, 19, 85, 89, 66, 2, 22, 11, 85, 80, 3, 23, 95, 19, 85, 23, 6, 22, 68, 4, 68, 94, 13, 13, 12, 69}, "c6e07b", false, true) + j);
        }

        public T setFixedHeight(@Px int i) {
            if (i >= 0) {
                this.mShimmer.fixedHeight = i;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 89, 65, 1, 92, 66, 15, 94, 65, 5, 94, 11, 2, 16, 95, 1, 91, 5, 14, 68, 13, 68}, "f07d2b", 15161) + i);
        }

        public T setFixedWidth(@Px int i) {
            if (i >= 0) {
                this.mShimmer.fixedWidth = i;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 12, 16, 81, 90, 25, 11, 11, 16, 85, 88, 80, 6, 69, 17, 93, 80, 77, 10, 95, 70}, "bef449", -13525) + i);
        }

        public T setHeightRatio(float f) {
            if (f >= 0.0f) {
                this.mShimmer.heightRatio = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 94, 65, 84, 91, 19, 92, 89, 65, 80, 89, 90, 81, 23, 95, 84, 92, 84, 93, 67, 23, 67, 84, 71, 92, 88, 13, 17}, "577153", false) + f);
        }

        public T setHighlightAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
            int iClamp = (int) (clamp(0.0f, 1.0f, f) * 255.0f);
            Shimmer shimmer = this.mShimmer;
            shimmer.highlightColor = (iClamp << 24) | (shimmer.highlightColor & ViewCompat.MEASURED_SIZE_MASK);
            return (T) getThis();
        }

        public T setIntensity(float f) {
            if (f >= 0.0f) {
                this.mShimmer.intensity = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{36, 80, 69, 87, 15, 65, 10, 87, 69, 83, 13, 8, 7, 25, 90, 92, 21, 4, 13, 74, 90, 70, 24, 65, 21, 88, 95, 71, 4, 91, 67}, "c932aa", false) + f);
        }

        public T setRepeatCount(int i) {
            this.mShimmer.repeatCount = i;
            return (T) getThis();
        }

        public T setRepeatDelay(long j) {
            if (j >= 0) {
                this.mShimmer.repeatDelay = j;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 91, 20, 0, 10, 66, 4, 18, 12, 0, 3, 3, 17, 91, 20, 0, 68, 16, 0, 66, 7, 4, 16, 66, 1, 87, 14, 4, 29, 88, 69}, "e2bedb", -10360) + j);
        }

        public T setRepeatMode(int i) {
            this.mShimmer.repeatMode = i;
            return (T) getThis();
        }

        public T setShape(int i) {
            this.mShimmer.shape = i;
            return (T) getThis();
        }

        public T setTilt(float f) {
            this.mShimmer.tilt = f;
            return (T) getThis();
        }

        public T setWidthRatio(float f) {
            if (f >= 0.0f) {
                this.mShimmer.widthRatio = f;
                return (T) getThis();
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 92, 21, 7, 95, 22, 93, 91, 21, 3, 93, 95, 80, 21, 20, 11, 85, 66, 92, 21, 17, 3, 69, 95, 91, 15, 67}, "45cb16", -1.0721616E9f) + f);
        }
    }

    public static class ColorHighlightBuilder extends Builder<ColorHighlightBuilder> {
        public ColorHighlightBuilder() {
            this.mShimmer.alphaShimmer = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.facebook.shimmer.Shimmer.Builder
        public ColorHighlightBuilder consumeAttributes(TypedArray typedArray) {
            super.consumeAttributes(typedArray);
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_base_color)) {
                setBaseColor(typedArray.getColor(R.styleable.ShimmerFrameLayout_shimmer_base_color, this.mShimmer.baseColor));
            }
            if (typedArray.hasValue(R.styleable.ShimmerFrameLayout_shimmer_highlight_color)) {
                setHighlightColor(typedArray.getColor(R.styleable.ShimmerFrameLayout_shimmer_highlight_color, this.mShimmer.highlightColor));
            }
            return getThis();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.shimmer.Shimmer.Builder
        public ColorHighlightBuilder getThis() {
            return this;
        }

        public ColorHighlightBuilder setBaseColor(@ColorInt int i) {
            this.mShimmer.baseColor = (16777215 & i) | (this.mShimmer.baseColor & ViewCompat.MEASURED_STATE_MASK);
            return getThis();
        }

        public ColorHighlightBuilder setHighlightColor(@ColorInt int i) {
            this.mShimmer.highlightColor = i;
            return getThis();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Direction {
        public static final int BOTTOM_TO_TOP = 3;
        public static final int LEFT_TO_RIGHT = 0;
        public static final int RIGHT_TO_LEFT = 2;
        public static final int TOP_TO_BOTTOM = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Shape {
        public static final int LINEAR = 0;
        public static final int RADIAL = 1;
    }

    Shimmer() {
    }

    int height(int i) {
        int i2 = this.fixedHeight;
        return i2 > 0 ? i2 : Math.round(this.heightRatio * i);
    }

    void updateBounds(int i, int i2) {
        double dMax = Math.max(i, i2);
        double dSin = Math.sin(1.5707963267948966d - Math.toRadians(this.tilt % 90.0f));
        Double.isNaN(dMax);
        Double.isNaN(dMax);
        float f = -(Math.round(((float) ((dMax / dSin) - dMax)) / 2.0f) * 3);
        this.bounds.set(f, f, width(i) + r0, r0 + height(i2));
    }

    void updateColors() {
        if (this.shape != 1) {
            int[] iArr = this.colors;
            int i = this.baseColor;
            iArr[0] = i;
            int i2 = this.highlightColor;
            iArr[1] = i2;
            iArr[2] = i2;
            iArr[3] = i;
            return;
        }
        int[] iArr2 = this.colors;
        int i3 = this.highlightColor;
        iArr2[0] = i3;
        iArr2[1] = i3;
        int i4 = this.baseColor;
        iArr2[2] = i4;
        iArr2[3] = i4;
    }

    void updatePositions() {
        if (this.shape != 1) {
            this.positions[0] = Math.max(((1.0f - this.intensity) - this.dropoff) / 2.0f, 0.0f);
            this.positions[1] = Math.max(((1.0f - this.intensity) - 0.001f) / 2.0f, 0.0f);
            this.positions[2] = Math.min(((this.intensity + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.positions[3] = Math.min(((this.intensity + 1.0f) + this.dropoff) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.positions;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.intensity, 1.0f);
        this.positions[2] = Math.min(this.intensity + this.dropoff, 1.0f);
        this.positions[3] = 1.0f;
    }

    int width(int i) {
        int i2 = this.fixedWidth;
        return i2 > 0 ? i2 : Math.round(this.widthRatio * i);
    }
}
