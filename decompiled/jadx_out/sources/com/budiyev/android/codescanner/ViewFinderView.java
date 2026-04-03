package com.budiyev.android.codescanner;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;

/* JADX INFO: loaded from: classes67.dex */
final class ViewFinderView extends View {
    private int mFrameCornersRadius;
    private int mFrameCornersSize;
    private final Paint mFramePaint;
    private float mFrameRatioHeight;
    private float mFrameRatioWidth;
    private Rect mFrameRect;
    private float mFrameSize;
    private float mFrameVerticalBias;
    private boolean mFrameVisible;
    private final Paint mMaskPaint;
    private boolean mMaskVisible;
    private final Path mPath;

    public ViewFinderView(@NonNull Context context) {
        super(context);
        this.mFrameCornersSize = 0;
        this.mFrameCornersRadius = 0;
        this.mFrameRatioWidth = 1.0f;
        this.mFrameRatioHeight = 1.0f;
        this.mFrameSize = 0.75f;
        this.mFrameVerticalBias = 0.5f;
        this.mMaskVisible = true;
        this.mFrameVisible = true;
        Paint paint = new Paint(1);
        this.mMaskPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.mFramePaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        this.mPath = path;
    }

    private void invalidateFrameRect() {
        invalidateFrameRect(getWidth(), getHeight());
    }

    private void invalidateFrameRect(int i, int i2) {
        int iRound;
        int iRound2;
        if (i <= 0 || i2 <= 0) {
            return;
        }
        float f = i;
        float f2 = i2;
        float f3 = f / f2;
        float f4 = this.mFrameRatioWidth / this.mFrameRatioHeight;
        float f5 = this.mFrameSize;
        if (f3 <= f4) {
            iRound2 = Math.round(f * f5);
            iRound = Math.round(iRound2 / f4);
        } else {
            iRound = Math.round(f2 * f5);
            iRound2 = Math.round(iRound * f4);
        }
        int i3 = (i - iRound2) / 2;
        int iRound3 = Math.round((i2 - iRound) * this.mFrameVerticalBias);
        this.mFrameRect = new Rect(i3, iRound3, iRound2 + i3, iRound + iRound3);
    }

    @FloatRange(from = 0.0d, fromInclusive = false)
    float getFrameAspectRatioHeight() {
        return this.mFrameRatioHeight;
    }

    @FloatRange(from = 0.0d, fromInclusive = false)
    float getFrameAspectRatioWidth() {
        return this.mFrameRatioWidth;
    }

    @ColorInt
    int getFrameColor() {
        return this.mFramePaint.getColor();
    }

    @Px
    int getFrameCornersRadius() {
        return this.mFrameCornersRadius;
    }

    @Px
    int getFrameCornersSize() {
        return this.mFrameCornersSize;
    }

    @Nullable
    Rect getFrameRect() {
        return this.mFrameRect;
    }

    @FloatRange(from = 0.1d, to = 1.0d)
    public float getFrameSize() {
        return this.mFrameSize;
    }

    @Px
    int getFrameThickness() {
        return (int) this.mFramePaint.getStrokeWidth();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getFrameVerticalBias() {
        return this.mFrameVerticalBias;
    }

    @ColorInt
    int getMaskColor() {
        return this.mMaskPaint.getColor();
    }

    boolean isFrameCornersCapRounded() {
        return this.mFramePaint.getStrokeCap() == Paint.Cap.ROUND;
    }

    boolean isFrameVisible() {
        return this.mFrameVisible;
    }

    boolean isMaskVisible() {
        return this.mMaskVisible;
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        Rect rect = this.mFrameRect;
        if (rect == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float top = rect.getTop();
        float left = rect.getLeft();
        float right = rect.getRight();
        float bottom = rect.getBottom();
        float f = this.mFrameCornersSize;
        float f2 = this.mFrameCornersRadius;
        boolean z = this.mMaskVisible;
        boolean z2 = this.mFrameVisible;
        Path path = this.mPath;
        if (f2 <= 0.0f) {
            if (z) {
                path.reset();
                path.moveTo(left, top);
                path.lineTo(right, top);
                path.lineTo(right, bottom);
                path.lineTo(left, bottom);
                path.lineTo(left, top);
                path.moveTo(0.0f, 0.0f);
                float f3 = width;
                path.lineTo(f3, 0.0f);
                float f4 = height;
                path.lineTo(f3, f4);
                path.lineTo(0.0f, f4);
                path.lineTo(0.0f, 0.0f);
                canvas.drawPath(path, this.mMaskPaint);
            }
            if (z2) {
                path.reset();
                float f5 = top + f;
                path.moveTo(left, f5);
                path.lineTo(left, top);
                float f6 = left + f;
                path.lineTo(f6, top);
                float f7 = right - f;
                path.moveTo(f7, top);
                path.lineTo(right, top);
                path.lineTo(right, f5);
                float f8 = bottom - f;
                path.moveTo(right, f8);
                path.lineTo(right, bottom);
                path.lineTo(f7, bottom);
                path.moveTo(f6, bottom);
                path.lineTo(left, bottom);
                path.lineTo(left, f8);
                canvas.drawPath(path, this.mFramePaint);
                return;
            }
            return;
        }
        float fMin = Math.min(f2, Math.max(f - 1.0f, 0.0f));
        if (z) {
            path.reset();
            float f9 = top + fMin;
            path.moveTo(left, f9);
            float f10 = left + fMin;
            path.quadTo(left, top, f10, top);
            float f11 = right - fMin;
            path.lineTo(f11, top);
            path.quadTo(right, top, right, f9);
            float f12 = bottom - fMin;
            path.lineTo(right, f12);
            path.quadTo(right, bottom, f11, bottom);
            path.lineTo(f10, bottom);
            path.quadTo(left, bottom, left, f12);
            path.lineTo(left, f9);
            path.moveTo(0.0f, 0.0f);
            float f13 = width;
            path.lineTo(f13, 0.0f);
            float f14 = height;
            path.lineTo(f13, f14);
            path.lineTo(0.0f, f14);
            path.lineTo(0.0f, 0.0f);
            canvas.drawPath(path, this.mMaskPaint);
        }
        if (z2) {
            path.reset();
            float f15 = top + f;
            path.moveTo(left, f15);
            float f16 = top + fMin;
            path.lineTo(left, f16);
            float f17 = left + fMin;
            path.quadTo(left, top, f17, top);
            float f18 = left + f;
            path.lineTo(f18, top);
            float f19 = right - f;
            path.moveTo(f19, top);
            float f20 = right - fMin;
            path.lineTo(f20, top);
            path.quadTo(right, top, right, f16);
            path.lineTo(right, f15);
            float f21 = bottom - f;
            path.moveTo(right, f21);
            float f22 = bottom - fMin;
            path.lineTo(right, f22);
            path.quadTo(right, bottom, f20, bottom);
            path.lineTo(f19, bottom);
            path.moveTo(f18, bottom);
            path.lineTo(f17, bottom);
            path.quadTo(left, bottom, left, f22);
            path.lineTo(left, f21);
            canvas.drawPath(path, this.mFramePaint);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        invalidateFrameRect(i3 - i, i4 - i2);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        invalidateFrameRect(getMeasuredWidth(), getMeasuredHeight());
    }

    void setFrameAspectRatio(@FloatRange(from = 0.0d, fromInclusive = false) float f, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.mFrameRatioWidth = f;
        this.mFrameRatioHeight = f2;
        invalidateFrameRect();
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameAspectRatioHeight(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.mFrameRatioHeight = f;
        invalidateFrameRect();
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameAspectRatioWidth(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.mFrameRatioWidth = f;
        invalidateFrameRect();
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameColor(@ColorInt int i) {
        this.mFramePaint.setColor(i);
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameCornersCapRounded(boolean z) {
        this.mFramePaint.setStrokeCap(z ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        invalidate();
    }

    void setFrameCornersRadius(@Px int i) {
        this.mFrameCornersRadius = i;
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameCornersSize(@Px int i) {
        this.mFrameCornersSize = i;
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameSize(@FloatRange(from = 0.1d, to = 1.0d) float f) {
        this.mFrameSize = f;
        invalidateFrameRect();
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameThickness(@Px int i) {
        this.mFramePaint.setStrokeWidth(i);
        if (isLaidOut()) {
            invalidate();
        }
    }

    public void setFrameVerticalBias(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.mFrameVerticalBias = f;
        invalidateFrameRect();
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setFrameVisible(boolean z) {
        this.mFrameVisible = z;
    }

    void setMaskColor(@ColorInt int i) {
        this.mMaskPaint.setColor(i);
        if (isLaidOut()) {
            invalidate();
        }
    }

    void setMaskVisible(boolean z) {
        this.mMaskVisible = z;
        if (isLaidOut()) {
            invalidate();
        }
    }
}
