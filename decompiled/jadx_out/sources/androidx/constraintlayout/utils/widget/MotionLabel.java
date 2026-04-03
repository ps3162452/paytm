package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.FloatLayout;
import androidx.constraintlayout.widget.R;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class MotionLabel extends View implements FloatLayout {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    static String TAG = NPStringFog.decode(new byte[]{122, 88, 69, 12, 11, 86, 123, 86, 83, 0, 8}, "771ed8", -1.833942524E9d);
    private boolean mAutoSize;
    private int mAutoSizeTextType;
    float mBackgroundPanX;
    float mBackgroundPanY;
    private float mBaseTextSize;
    private float mDeltaLeft;
    private float mFloatHeight;
    private float mFloatWidth;
    private String mFontFamily;
    private int mGravity;
    private Layout mLayout;
    boolean mNotBuilt;
    Matrix mOutlinePositionMatrix;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    TextPaint mPaint;
    Path mPath;
    RectF mRect;
    float mRotate;
    private float mRound;
    private float mRoundPercent;
    private int mStyleIndex;
    Paint mTempPaint;
    Rect mTempRect;
    private String mText;
    private Drawable mTextBackground;
    private Bitmap mTextBackgroundBitmap;
    private Rect mTextBounds;
    private int mTextFillColor;
    private int mTextOutlineColor;
    private float mTextOutlineThickness;
    private float mTextPanX;
    private float mTextPanY;
    private BitmapShader mTextShader;
    private Matrix mTextShaderMatrix;
    private float mTextSize;
    private int mTextureEffect;
    private float mTextureHeight;
    private float mTextureWidth;
    private CharSequence mTransformed;
    private int mTypefaceIndex;
    private boolean mUseOutline;
    ViewOutlineProvider mViewOutlineProvider;
    float mZoom;
    Paint paintCache;
    float paintTextSize;

    public MotionLabel(Context context) {
        super(context);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = SupportMenu.USER_MASK;
        this.mTextOutlineColor = SupportMenu.USER_MASK;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = NPStringFog.decode(new byte[]{43, 84, 15, 88, 92, 66, 52, 94, 17, 88, 87}, "c1c43b", 5138);
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, null);
    }

    public MotionLabel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = SupportMenu.USER_MASK;
        this.mTextOutlineColor = SupportMenu.USER_MASK;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = NPStringFog.decode(new byte[]{121, 80, 91, 92, 88, 24, 102, 90, 69, 92, 83}, "157078", 1.905764777E9d);
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }

    public MotionLabel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = SupportMenu.USER_MASK;
        this.mTextOutlineColor = SupportMenu.USER_MASK;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = NPStringFog.decode(new byte[]{45, 93, 90, 8, 10, 16, 50, 87, 68, 8, 1}, "e86de0", true, false);
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }

    private void adjustTexture(float f, float f2, float f3, float f4) {
        if (this.mTextShaderMatrix == null) {
            return;
        }
        this.mFloatWidth = f3 - f;
        this.mFloatHeight = f4 - f2;
        updateShaderMatrix();
    }

    private float getHorizontalOffset() {
        float f = Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize;
        TextPaint textPaint = this.mPaint;
        String str = this.mText;
        return (((((Float.isNaN(this.mFloatWidth) ? getMeasuredWidth() : this.mFloatWidth) - getPaddingLeft()) - getPaddingRight()) - (f * textPaint.measureText(str, 0, str.length()))) * (1.0f + this.mTextPanX)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f = Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize;
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        return (((1.0f - this.mTextPanY) * ((((Float.isNaN(this.mFloatHeight) ? getMeasuredHeight() : this.mFloatHeight) - getPaddingTop()) - getPaddingBottom()) - ((fontMetrics.descent - fontMetrics.ascent) * f))) / 2.0f) - (f * fontMetrics.ascent);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setUpTheme(context, attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionLabel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MotionLabel_android_text) {
                    setText(typedArrayObtainStyledAttributes.getText(index));
                } else if (index == R.styleable.MotionLabel_android_fontFamily) {
                    this.mFontFamily = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.MotionLabel_scaleFromTextSize) {
                    this.mBaseTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.mBaseTextSize);
                } else if (index == R.styleable.MotionLabel_android_textSize) {
                    this.mTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.mTextSize);
                } else if (index == R.styleable.MotionLabel_android_textStyle) {
                    this.mStyleIndex = typedArrayObtainStyledAttributes.getInt(index, this.mStyleIndex);
                } else if (index == R.styleable.MotionLabel_android_typeface) {
                    this.mTypefaceIndex = typedArrayObtainStyledAttributes.getInt(index, this.mTypefaceIndex);
                } else if (index == R.styleable.MotionLabel_android_textColor) {
                    this.mTextFillColor = typedArrayObtainStyledAttributes.getColor(index, this.mTextFillColor);
                } else if (index == R.styleable.MotionLabel_borderRound) {
                    this.mRound = typedArrayObtainStyledAttributes.getDimension(index, this.mRound);
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(this.mRound);
                    }
                } else if (index == R.styleable.MotionLabel_borderRoundPercent) {
                    this.mRoundPercent = typedArrayObtainStyledAttributes.getFloat(index, this.mRoundPercent);
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(this.mRoundPercent);
                    }
                } else if (index == R.styleable.MotionLabel_android_gravity) {
                    setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
                } else if (index == R.styleable.MotionLabel_android_autoSizeTextType) {
                    this.mAutoSizeTextType = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.MotionLabel_textOutlineColor) {
                    this.mTextOutlineColor = typedArrayObtainStyledAttributes.getInt(index, this.mTextOutlineColor);
                    this.mUseOutline = true;
                } else if (index == R.styleable.MotionLabel_textOutlineThickness) {
                    this.mTextOutlineThickness = typedArrayObtainStyledAttributes.getDimension(index, this.mTextOutlineThickness);
                    this.mUseOutline = true;
                } else if (index == R.styleable.MotionLabel_textBackground) {
                    this.mTextBackground = typedArrayObtainStyledAttributes.getDrawable(index);
                    this.mUseOutline = true;
                } else if (index == R.styleable.MotionLabel_textBackgroundPanX) {
                    this.mBackgroundPanX = typedArrayObtainStyledAttributes.getFloat(index, this.mBackgroundPanX);
                } else if (index == R.styleable.MotionLabel_textBackgroundPanY) {
                    this.mBackgroundPanY = typedArrayObtainStyledAttributes.getFloat(index, this.mBackgroundPanY);
                } else if (index == R.styleable.MotionLabel_textPanX) {
                    this.mTextPanX = typedArrayObtainStyledAttributes.getFloat(index, this.mTextPanX);
                } else if (index == R.styleable.MotionLabel_textPanY) {
                    this.mTextPanY = typedArrayObtainStyledAttributes.getFloat(index, this.mTextPanY);
                } else if (index == R.styleable.MotionLabel_textBackgroundRotate) {
                    this.mRotate = typedArrayObtainStyledAttributes.getFloat(index, this.mRotate);
                } else if (index == R.styleable.MotionLabel_textBackgroundZoom) {
                    this.mZoom = typedArrayObtainStyledAttributes.getFloat(index, this.mZoom);
                } else if (index == R.styleable.MotionLabel_textureHeight) {
                    this.mTextureHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mTextureHeight);
                } else if (index == R.styleable.MotionLabel_textureWidth) {
                    this.mTextureWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mTextureWidth);
                } else if (index == R.styleable.MotionLabel_textureEffect) {
                    this.mTextureEffect = typedArrayObtainStyledAttributes.getInt(index, this.mTextureEffect);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        setupTexture();
        setupPath();
    }

    private void setTypefaceFromAttrs(String str, int i, int i2) {
        Typeface typefaceCreate = null;
        if (str != null && (typefaceCreate = Typeface.create(str, i2)) != null) {
            setTypeface(typefaceCreate);
            return;
        }
        switch (i) {
            case 1:
                typefaceCreate = Typeface.SANS_SERIF;
                break;
            case 2:
                typefaceCreate = Typeface.SERIF;
                break;
            case 3:
                typefaceCreate = Typeface.MONOSPACE;
                break;
        }
        if (i2 <= 0) {
            this.mPaint.setFakeBoldText(false);
            this.mPaint.setTextSkewX(0.0f);
            setTypeface(typefaceCreate);
        } else {
            Typeface typefaceDefaultFromStyle = typefaceCreate == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typefaceCreate, i2);
            setTypeface(typefaceDefaultFromStyle);
            int style = ((typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0) ^ (-1)) & i2;
            this.mPaint.setFakeBoldText((style & 1) != 0);
            this.mPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    private void setUpTheme(Context context, AttributeSet attributeSet) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.mPaint;
        int i = typedValue.data;
        this.mTextFillColor = i;
        textPaint.setColor(i);
    }

    private void setupTexture() {
        int i;
        int i2 = 128;
        if (this.mTextBackground != null) {
            this.mTextShaderMatrix = new Matrix();
            int intrinsicWidth = this.mTextBackground.getIntrinsicWidth();
            int intrinsicHeight = this.mTextBackground.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.mTextureWidth) ? 128 : (int) this.mTextureWidth;
            }
            if (intrinsicHeight > 0 || (intrinsicHeight = getHeight()) != 0) {
                i2 = intrinsicHeight;
            } else if (!Float.isNaN(this.mTextureHeight)) {
                i2 = (int) this.mTextureHeight;
            }
            if (this.mTextureEffect != 0) {
                i = intrinsicWidth / 2;
                i2 /= 2;
            } else {
                i = intrinsicWidth;
            }
            this.mTextBackgroundBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.mTextBackgroundBitmap);
            this.mTextBackground.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.mTextBackground.setFilterBitmap(true);
            this.mTextBackground.draw(canvas);
            if (this.mTextureEffect != 0) {
                this.mTextBackgroundBitmap = blur(this.mTextBackgroundBitmap, 4);
            }
            this.mTextShader = new BitmapShader(this.mTextBackgroundBitmap, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        }
    }

    private void updateShaderMatrix() {
        float f = Float.isNaN(this.mBackgroundPanX) ? 0.0f : this.mBackgroundPanX;
        float f2 = Float.isNaN(this.mBackgroundPanY) ? 0.0f : this.mBackgroundPanY;
        float f3 = Float.isNaN(this.mZoom) ? 1.0f : this.mZoom;
        float f4 = Float.isNaN(this.mRotate) ? 0.0f : this.mRotate;
        this.mTextShaderMatrix.reset();
        float width = this.mTextBackgroundBitmap.getWidth();
        float height = this.mTextBackgroundBitmap.getHeight();
        float f5 = Float.isNaN(this.mTextureWidth) ? this.mFloatWidth : this.mTextureWidth;
        float f6 = Float.isNaN(this.mTextureHeight) ? this.mFloatHeight : this.mTextureHeight;
        float f7 = (width * f6 < height * f5 ? f5 / width : f6 / height) * f3;
        this.mTextShaderMatrix.postScale(f7, f7);
        float f8 = f5 - (f7 * width);
        float f9 = f6 - (f7 * height);
        if (!Float.isNaN(this.mTextureHeight)) {
            f9 = this.mTextureHeight / 2.0f;
        }
        if (!Float.isNaN(this.mTextureWidth)) {
            f8 = this.mTextureWidth / 2.0f;
        }
        this.mTextShaderMatrix.postTranslate((((f * f8) + f5) - (f7 * width)) * 0.5f, (((f2 * f9) + f6) - (f7 * height)) * 0.5f);
        this.mTextShaderMatrix.postRotate(f4, f5 / 2.0f, f6 / 2.0f);
        this.mTextShader.setLocalMatrix(this.mTextShaderMatrix);
    }

    Bitmap blur(Bitmap bitmap, int i) {
        System.nanoTime();
        int width = bitmap.getWidth() / 2;
        int height = bitmap.getHeight() / 2;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        for (int i2 = 0; i2 < i && width >= 32 && height >= 32; i2++) {
            width /= 2;
            height /= 2;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, width, height, true);
        }
        return bitmapCreateScaledBitmap;
    }

    void buildShape(float f) {
        if (this.mUseOutline || f != 1.0f) {
            this.mPath.reset();
            String str = this.mText;
            int length = str.length();
            this.mPaint.getTextBounds(str, 0, length, this.mTextBounds);
            this.mPaint.getTextPath(str, 0, length, 0.0f, 0.0f, this.mPath);
            if (f != 1.0f) {
                String str2 = TAG;
                String loc = Debug.getLoc();
                StringBuilder sb = new StringBuilder(String.valueOf(loc).length() + 22);
                sb.append(loc);
                sb.append(NPStringFog.decode(new byte[]{23, 71, 7, 81, 88, 80, 23}, "74d045", false));
                sb.append(f);
                Log.v(str2, sb.toString());
                Matrix matrix = new Matrix();
                matrix.postScale(f, f);
                this.mPath.transform(matrix);
            }
            Rect rect = this.mTextBounds;
            rect.right--;
            this.mTextBounds.left++;
            this.mTextBounds.bottom++;
            Rect rect2 = this.mTextBounds;
            rect2.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.mNotBuilt = false;
        }
    }

    public float getRound() {
        return this.mRound;
    }

    public float getRoundPercent() {
        return this.mRoundPercent;
    }

    public float getScaleFromTextSize() {
        return this.mBaseTextSize;
    }

    public float getTextBackgroundPanX() {
        return this.mBackgroundPanX;
    }

    public float getTextBackgroundPanY() {
        return this.mBackgroundPanY;
    }

    public float getTextBackgroundRotate() {
        return this.mRotate;
    }

    public float getTextBackgroundZoom() {
        return this.mZoom;
    }

    public int getTextOutlineColor() {
        return this.mTextOutlineColor;
    }

    public float getTextPanX() {
        return this.mTextPanX;
    }

    public float getTextPanY() {
        return this.mTextPanY;
    }

    public float getTextureHeight() {
        return this.mTextureHeight;
    }

    public float getTextureWidth() {
        return this.mTextureWidth;
    }

    public Typeface getTypeface() {
        return this.mPaint.getTypeface();
    }

    @Override // androidx.constraintlayout.motion.widget.FloatLayout
    public void layout(float f, float f2, float f3, float f4) {
        this.mDeltaLeft = f - ((int) (f + 0.5f));
        int i = ((int) (f3 + 0.5f)) - ((int) (f + 0.5f));
        int i2 = ((int) (f4 + 0.5f)) - ((int) (f2 + 0.5f));
        this.mFloatWidth = f3 - f;
        this.mFloatHeight = f4 - f2;
        adjustTexture(f, f2, f3, f4);
        if (getMeasuredHeight() == i2 && getMeasuredWidth() == i) {
            super.layout((int) (f + 0.5f), (int) (f2 + 0.5f), (int) (f3 + 0.5f), (int) (0.5f + f4));
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i2, BasicMeasure.EXACTLY));
            super.layout((int) (f + 0.5f), (int) (f2 + 0.5f), (int) (f3 + 0.5f), (int) (0.5f + f4));
        }
        if (this.mAutoSize) {
            if (this.mTempRect == null) {
                this.mTempPaint = new Paint();
                this.mTempRect = new Rect();
                this.mTempPaint.set(this.mPaint);
                this.paintTextSize = this.mTempPaint.getTextSize();
            }
            this.mFloatWidth = f3 - f;
            this.mFloatHeight = f4 - f2;
            Paint paint = this.mTempPaint;
            String str = this.mText;
            paint.getTextBounds(str, 0, str.length(), this.mTempRect);
            int iWidth = this.mTempRect.width();
            float fHeight = this.mTempRect.height() * 1.3f;
            float f5 = ((f3 - f) - this.mPaddingRight) - this.mPaddingLeft;
            float f6 = ((f4 - f2) - this.mPaddingBottom) - this.mPaddingTop;
            if (iWidth * f6 > fHeight * f5) {
                this.mPaint.setTextSize((f5 * this.paintTextSize) / iWidth);
            } else {
                this.mPaint.setTextSize((this.paintTextSize * f6) / fHeight);
            }
            if (this.mUseOutline || !Float.isNaN(this.mBaseTextSize)) {
                buildShape(Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize);
            }
        }
    }

    @Override // android.view.View
    public void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        boolean zIsNaN = Float.isNaN(this.mBaseTextSize);
        float f = zIsNaN ? 1.0f : this.mTextSize / this.mBaseTextSize;
        this.mFloatWidth = i3 - i;
        this.mFloatHeight = i4 - i2;
        if (this.mAutoSize) {
            if (this.mTempRect == null) {
                this.mTempPaint = new Paint();
                this.mTempRect = new Rect();
                this.mTempPaint.set(this.mPaint);
                this.paintTextSize = this.mTempPaint.getTextSize();
            }
            Paint paint = this.mTempPaint;
            String str = this.mText;
            paint.getTextBounds(str, 0, str.length(), this.mTempRect);
            int iWidth = this.mTempRect.width();
            int iHeight = (int) (this.mTempRect.height() * 1.3f);
            float f2 = (this.mFloatWidth - this.mPaddingRight) - this.mPaddingLeft;
            float f3 = (this.mFloatHeight - this.mPaddingBottom) - this.mPaddingTop;
            if (!zIsNaN) {
                f = ((float) iWidth) * f3 > ((float) iHeight) * f2 ? f2 / iWidth : f3 / iHeight;
            } else if (iWidth * f3 > iHeight * f2) {
                this.mPaint.setTextSize((f2 * this.paintTextSize) / iWidth);
            } else {
                this.mPaint.setTextSize((this.paintTextSize * f3) / iHeight);
            }
        }
        if (this.mUseOutline || !zIsNaN) {
            adjustTexture(i, i2, i3, i4);
            buildShape(f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize;
        super.onDraw(canvas);
        if (!this.mUseOutline && f == 1.0f) {
            canvas.drawText(this.mText, this.mPaddingLeft + getHorizontalOffset() + this.mDeltaLeft, this.mPaddingTop + getVerticalOffset(), this.mPaint);
            return;
        }
        if (this.mNotBuilt) {
            buildShape(f);
        }
        if (this.mOutlinePositionMatrix == null) {
            this.mOutlinePositionMatrix = new Matrix();
        }
        if (!this.mUseOutline) {
            float horizontalOffset = this.mPaddingLeft + getHorizontalOffset();
            float verticalOffset = this.mPaddingTop + getVerticalOffset();
            this.mOutlinePositionMatrix.reset();
            this.mOutlinePositionMatrix.preTranslate(horizontalOffset, verticalOffset);
            this.mPath.transform(this.mOutlinePositionMatrix);
            this.mPaint.setColor(this.mTextFillColor);
            this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
            canvas.drawPath(this.mPath, this.mPaint);
            this.mOutlinePositionMatrix.reset();
            this.mOutlinePositionMatrix.preTranslate(-horizontalOffset, -verticalOffset);
            this.mPath.transform(this.mOutlinePositionMatrix);
            return;
        }
        this.paintCache.set(this.mPaint);
        this.mOutlinePositionMatrix.reset();
        float horizontalOffset2 = this.mPaddingLeft + getHorizontalOffset();
        float verticalOffset2 = this.mPaddingTop + getVerticalOffset();
        this.mOutlinePositionMatrix.postTranslate(horizontalOffset2, verticalOffset2);
        this.mOutlinePositionMatrix.preScale(f, f);
        this.mPath.transform(this.mOutlinePositionMatrix);
        if (this.mTextShader != null) {
            this.mPaint.setFilterBitmap(true);
            this.mPaint.setShader(this.mTextShader);
        } else {
            this.mPaint.setColor(this.mTextFillColor);
        }
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
        canvas.drawPath(this.mPath, this.mPaint);
        if (this.mTextShader != null) {
            this.mPaint.setShader(null);
        }
        this.mPaint.setColor(this.mTextOutlineColor);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
        canvas.drawPath(this.mPath, this.mPaint);
        this.mOutlinePositionMatrix.reset();
        this.mOutlinePositionMatrix.postTranslate(-horizontalOffset2, -verticalOffset2);
        this.mPath.transform(this.mOutlinePositionMatrix);
        this.mPaint.set(this.paintCache);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.mAutoSize = false;
        this.mPaddingLeft = getPaddingLeft();
        this.mPaddingRight = getPaddingRight();
        this.mPaddingTop = getPaddingTop();
        this.mPaddingBottom = getPaddingBottom();
        if (mode != 1073741824 || mode2 != 1073741824) {
            TextPaint textPaint = this.mPaint;
            String str = this.mText;
            textPaint.getTextBounds(str, 0, str.length(), this.mTextBounds);
            if (mode != 1073741824) {
                size = (int) (this.mTextBounds.width() + 0.99999f);
            }
            int i5 = this.mPaddingLeft + this.mPaddingRight + size;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.mPaint.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                i3 = fontMetricsInt + this.mPaddingTop + this.mPaddingBottom;
                i4 = i5;
            } else {
                i3 = size2;
                i4 = i5;
            }
        } else if (this.mAutoSizeTextType != 0) {
            this.mAutoSize = true;
            i4 = size;
            i3 = size2;
        } else {
            i4 = size;
            i3 = size2;
        }
        setMeasuredDimension(i4, i3);
    }

    public void setGravity(int i) {
        int i2 = (i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 0 ? 8388611 | i : i;
        if ((i2 & 112) == 0) {
            i2 |= 48;
        }
        int i3 = this.mGravity;
        if ((i2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) != (i3 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK)) {
        }
        if (i2 != i3) {
            invalidate();
        }
        this.mGravity = i2;
        switch (i2 & 112) {
            case 48:
                this.mTextPanY = -1.0f;
                break;
            case 80:
                this.mTextPanY = 1.0f;
                break;
            default:
                this.mTextPanY = 0.0f;
                break;
        }
        switch (i2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) {
            case 3:
            case GravityCompat.START /* 8388611 */:
                this.mTextPanX = -1.0f;
                break;
            case 5:
            case GravityCompat.END /* 8388613 */:
                this.mTextPanX = 1.0f;
                break;
            default:
                this.mTextPanX = 0.0f;
                break;
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.mRound = f;
            float f2 = this.mRoundPercent;
            this.mRoundPercent = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.mRound != f;
        this.mRound = f;
        if (f != 0.0f) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            if (this.mRect == null) {
                this.mRect = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.mViewOutlineProvider == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider(this) { // from class: androidx.constraintlayout.utils.widget.MotionLabel.2
                        final MotionLabel this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, this.this$0.getWidth(), this.this$0.getHeight(), this.this$0.mRound);
                        }
                    };
                    this.mViewOutlineProvider = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.mRect.set(0.0f, 0.0f, getWidth(), getHeight());
            this.mPath.reset();
            Path path = this.mPath;
            RectF rectF = this.mRect;
            float f3 = this.mRound;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setRoundPercent(float f) {
        boolean z = this.mRoundPercent != f;
        this.mRoundPercent = f;
        if (f != 0.0f) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            if (this.mRect == null) {
                this.mRect = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.mViewOutlineProvider == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider(this) { // from class: androidx.constraintlayout.utils.widget.MotionLabel.1
                        final MotionLabel this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, this.this$0.getWidth(), this.this$0.getHeight(), (Math.min(r3, r4) * this.this$0.mRoundPercent) / 2.0f);
                        }
                    };
                    this.mViewOutlineProvider = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.mRoundPercent) / 2.0f;
            this.mRect.set(0.0f, 0.0f, width, height);
            this.mPath.reset();
            this.mPath.addRoundRect(this.mRect, fMin, fMin, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setScaleFromTextSize(float f) {
        this.mBaseTextSize = f;
    }

    public void setText(CharSequence charSequence) {
        this.mText = charSequence.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float f) {
        this.mBackgroundPanX = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTextBackgroundPanY(float f) {
        this.mBackgroundPanY = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTextBackgroundRotate(float f) {
        this.mRotate = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTextBackgroundZoom(float f) {
        this.mZoom = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTextFillColor(int i) {
        this.mTextFillColor = i;
        invalidate();
    }

    public void setTextOutlineColor(int i) {
        this.mTextOutlineColor = i;
        this.mUseOutline = true;
        invalidate();
    }

    public void setTextOutlineThickness(float f) {
        this.mTextOutlineThickness = f;
        this.mUseOutline = true;
        if (Float.isNaN(f)) {
            this.mTextOutlineThickness = 1.0f;
            this.mUseOutline = false;
        }
        invalidate();
    }

    public void setTextPanX(float f) {
        this.mTextPanX = f;
        invalidate();
    }

    public void setTextPanY(float f) {
        this.mTextPanY = f;
        invalidate();
    }

    public void setTextSize(float f) {
        this.mTextSize = f;
        String str = TAG;
        String loc = Debug.getLoc();
        float f2 = this.mBaseTextSize;
        StringBuilder sb = new StringBuilder(String.valueOf(loc).length() + 35);
        sb.append(loc);
        sb.append("  ");
        sb.append(f);
        sb.append(NPStringFog.decode(new byte[]{67, 27, 20}, "c44f38", -24528));
        sb.append(f2);
        Log.v(str, sb.toString());
        TextPaint textPaint = this.mPaint;
        if (!Float.isNaN(this.mBaseTextSize)) {
            f = this.mBaseTextSize;
        }
        textPaint.setTextSize(f);
        buildShape(Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float f) {
        this.mTextureHeight = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTextureWidth(float f) {
        this.mTextureWidth = f;
        updateShaderMatrix();
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        if (this.mPaint.getTypeface() != typeface) {
            this.mPaint.setTypeface(typeface);
            if (this.mLayout != null) {
                this.mLayout = null;
                requestLayout();
                invalidate();
            }
        }
    }

    void setupPath() {
        this.mPaddingLeft = getPaddingLeft();
        this.mPaddingRight = getPaddingRight();
        this.mPaddingTop = getPaddingTop();
        this.mPaddingBottom = getPaddingBottom();
        setTypefaceFromAttrs(this.mFontFamily, this.mTypefaceIndex, this.mStyleIndex);
        this.mPaint.setColor(this.mTextFillColor);
        this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mPaint.setFlags(128);
        setTextSize(this.mTextSize);
        this.mPaint.setAntiAlias(true);
    }
}
