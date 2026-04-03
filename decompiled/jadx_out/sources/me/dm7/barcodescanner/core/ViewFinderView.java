package me.dm7.barcodescanner.core;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class ViewFinderView extends View implements IViewFinder {
    private static final long ANIMATION_DELAY = 80;
    private static final float LANDSCAPE_HEIGHT_RATIO = 0.625f;
    private static final float LANDSCAPE_WIDTH_HEIGHT_RATIO = 1.4f;
    private static final int MIN_DIMENSION_DIFF = 50;
    private static final int POINT_SIZE = 10;
    private static final float PORTRAIT_WIDTH_HEIGHT_RATIO = 0.75f;
    private static final float PORTRAIT_WIDTH_RATIO = 0.75f;
    private static final float SQUARE_DIMENSION_RATIO = 0.625f;
    protected int mBorderLineLength;
    protected Paint mBorderPaint;
    private final int mDefaultBorderColor;
    private final int mDefaultBorderLineLength;
    private final int mDefaultBorderStrokeWidth;
    private final int mDefaultLaserColor;
    private final int mDefaultMaskColor;
    protected Paint mFinderMaskPaint;
    private Rect mFramingRect;
    protected Paint mLaserPaint;
    protected boolean mSquareViewFinder;
    private int scannerAlpha;
    private static final String TAG = NPStringFog.decode(new byte[]{102, 90, 81, 21, 127, 92, 94, 87, 81, 16, 111, 92, 85, 68}, "034b95", false, false);
    private static final int[] SCANNER_ALPHA = {0, 64, 128, 192, 255, 192, 128, 64};

    public ViewFinderView(Context context) {
        super(context);
        this.mDefaultLaserColor = getResources().getColor(R.color.viewfinder_laser);
        this.mDefaultMaskColor = getResources().getColor(R.color.viewfinder_mask);
        this.mDefaultBorderColor = getResources().getColor(R.color.viewfinder_border);
        this.mDefaultBorderStrokeWidth = getResources().getInteger(R.integer.viewfinder_border_width);
        this.mDefaultBorderLineLength = getResources().getInteger(R.integer.viewfinder_border_length);
        init();
    }

    public ViewFinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDefaultLaserColor = getResources().getColor(R.color.viewfinder_laser);
        this.mDefaultMaskColor = getResources().getColor(R.color.viewfinder_mask);
        this.mDefaultBorderColor = getResources().getColor(R.color.viewfinder_border);
        this.mDefaultBorderStrokeWidth = getResources().getInteger(R.integer.viewfinder_border_width);
        this.mDefaultBorderLineLength = getResources().getInteger(R.integer.viewfinder_border_length);
        init();
    }

    private void init() {
        this.mLaserPaint = new Paint();
        this.mLaserPaint.setColor(this.mDefaultLaserColor);
        this.mLaserPaint.setStyle(Paint.Style.FILL);
        this.mFinderMaskPaint = new Paint();
        this.mFinderMaskPaint.setColor(this.mDefaultMaskColor);
        this.mBorderPaint = new Paint();
        this.mBorderPaint.setColor(this.mDefaultBorderColor);
        this.mBorderPaint.setStyle(Paint.Style.STROKE);
        this.mBorderPaint.setStrokeWidth(this.mDefaultBorderStrokeWidth);
        this.mBorderLineLength = this.mDefaultBorderLineLength;
    }

    public void drawLaser(Canvas canvas) {
        Rect framingRect = getFramingRect();
        this.mLaserPaint.setAlpha(SCANNER_ALPHA[this.scannerAlpha]);
        this.scannerAlpha = (this.scannerAlpha + 1) % SCANNER_ALPHA.length;
        int iHeight = (framingRect.height() / 2) + framingRect.top;
        canvas.drawRect(framingRect.left + 2, iHeight - 1, framingRect.right - 1, iHeight + 2, this.mLaserPaint);
        postInvalidateDelayed(ANIMATION_DELAY, framingRect.left - 10, framingRect.top - 10, framingRect.right + 10, framingRect.bottom + 10);
    }

    public void drawViewFinderBorder(Canvas canvas) {
        Rect framingRect = getFramingRect();
        canvas.drawLine(framingRect.left - 1, framingRect.top - 1, framingRect.left - 1, (framingRect.top - 1) + this.mBorderLineLength, this.mBorderPaint);
        canvas.drawLine(framingRect.left - 1, framingRect.top - 1, (framingRect.left - 1) + this.mBorderLineLength, framingRect.top - 1, this.mBorderPaint);
        canvas.drawLine(framingRect.left - 1, framingRect.bottom + 1, framingRect.left - 1, (framingRect.bottom + 1) - this.mBorderLineLength, this.mBorderPaint);
        canvas.drawLine(framingRect.left - 1, framingRect.bottom + 1, (framingRect.left - 1) + this.mBorderLineLength, framingRect.bottom + 1, this.mBorderPaint);
        canvas.drawLine(framingRect.right + 1, framingRect.top - 1, framingRect.right + 1, (framingRect.top - 1) + this.mBorderLineLength, this.mBorderPaint);
        canvas.drawLine(framingRect.right + 1, framingRect.top - 1, (framingRect.right + 1) - this.mBorderLineLength, framingRect.top - 1, this.mBorderPaint);
        canvas.drawLine(framingRect.right + 1, framingRect.bottom + 1, framingRect.right + 1, (framingRect.bottom + 1) - this.mBorderLineLength, this.mBorderPaint);
        canvas.drawLine(framingRect.right + 1, framingRect.bottom + 1, (framingRect.right + 1) - this.mBorderLineLength, framingRect.bottom + 1, this.mBorderPaint);
    }

    public void drawViewFinderMask(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        Rect framingRect = getFramingRect();
        canvas.drawRect(0.0f, 0.0f, width, framingRect.top, this.mFinderMaskPaint);
        canvas.drawRect(0.0f, framingRect.top, framingRect.left, framingRect.bottom + 1, this.mFinderMaskPaint);
        canvas.drawRect(framingRect.right + 1, framingRect.top, width, framingRect.bottom + 1, this.mFinderMaskPaint);
        canvas.drawRect(0.0f, framingRect.bottom + 1, width, height, this.mFinderMaskPaint);
    }

    @Override // me.dm7.barcodescanner.core.IViewFinder
    public Rect getFramingRect() {
        return this.mFramingRect;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (getFramingRect() == null) {
            return;
        }
        drawViewFinderMask(canvas);
        drawViewFinderBorder(canvas);
        drawLaser(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        updateFramingRect();
    }

    public void setBorderColor(int i) {
        this.mBorderPaint.setColor(i);
    }

    public void setBorderLineLength(int i) {
        this.mBorderLineLength = i;
    }

    public void setBorderStrokeWidth(int i) {
        this.mBorderPaint.setStrokeWidth(i);
    }

    public void setLaserColor(int i) {
        this.mLaserPaint.setColor(i);
    }

    public void setMaskColor(int i) {
        this.mFinderMaskPaint.setColor(i);
    }

    public void setSquareViewFinder(boolean z) {
        this.mSquareViewFinder = z;
    }

    @Override // me.dm7.barcodescanner.core.IViewFinder
    public void setupViewFinder() {
        updateFramingRect();
        invalidate();
    }

    public void updateFramingRect() {
        int width;
        int height;
        synchronized (this) {
            Point point = new Point(getWidth(), getHeight());
            int screenOrientation = DisplayUtils.getScreenOrientation(getContext());
            if (this.mSquareViewFinder) {
                if (screenOrientation != 1) {
                    height = (int) (getHeight() * 0.625f);
                    width = height;
                } else {
                    height = (int) (getWidth() * 0.625f);
                    width = height;
                }
            } else if (screenOrientation != 1) {
                height = (int) (getHeight() * 0.625f);
                width = (int) (LANDSCAPE_WIDTH_HEIGHT_RATIO * height);
            } else {
                width = (int) (getWidth() * 0.75f);
                height = (int) (width * 0.75f);
            }
            if (width > getWidth()) {
                width = getWidth() - 50;
            }
            if (height > getHeight()) {
                height = getHeight() - 50;
            }
            int i = (point.x - width) / 2;
            int i2 = (point.y - height) / 2;
            this.mFramingRect = new Rect(i, i2, width + i, height + i2);
        }
    }
}
