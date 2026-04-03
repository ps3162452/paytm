package com.budiyev.android.codescanner;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
public final class CodeScannerView extends ViewGroup {
    private static final int DEFAULT_AUTO_FOCUS_BUTTON_COLOR = -1;
    private static final boolean DEFAULT_AUTO_FOCUS_BUTTON_VISIBLE = true;
    private static final float DEFAULT_BUTTON_PADDING_DP = 16.0f;
    private static final int DEFAULT_FLASH_BUTTON_COLOR = -1;
    private static final boolean DEFAULT_FLASH_BUTTON_VISIBLE = true;
    private static final float DEFAULT_FRAME_ASPECT_RATIO_HEIGHT = 1.0f;
    private static final float DEFAULT_FRAME_ASPECT_RATIO_WIDTH = 1.0f;
    private static final int DEFAULT_FRAME_COLOR = -1;
    private static final boolean DEFAULT_FRAME_CORNERS_CAP_ROUNDED = false;
    private static final float DEFAULT_FRAME_CORNERS_RADIUS_DP = 0.0f;
    private static final float DEFAULT_FRAME_CORNER_SIZE_DP = 50.0f;
    private static final float DEFAULT_FRAME_SIZE = 0.75f;
    private static final float DEFAULT_FRAME_THICKNESS_DP = 2.0f;
    private static final float DEFAULT_FRAME_VERTICAL_BIAS = 0.5f;
    private static final boolean DEFAULT_FRAME_VISIBLE = true;
    private static final int DEFAULT_MASK_COLOR = 1996488704;
    private static final boolean DEFAULT_MASK_VISIBLE = true;
    private static final float FOCUS_AREA_SIZE_DP = 20.0f;
    private static final int HINT_VIEW_INDEX = 4;
    private static final int MAX_CHILD_COUNT = 5;
    private ImageView mAutoFocusButton;
    private int mAutoFocusButtonColor;
    private Drawable mAutoFocusButtonOffIcon;
    private Drawable mAutoFocusButtonOnIcon;
    private int mAutoFocusButtonPaddingHorizontal;
    private int mAutoFocusButtonPaddingVertical;
    private ButtonPosition mAutoFocusButtonPosition;
    private CodeScanner mCodeScanner;
    private ImageView mFlashButton;
    private int mFlashButtonColor;
    private Drawable mFlashButtonOffIcon;
    private Drawable mFlashButtonOnIcon;
    private int mFlashButtonPaddingHorizontal;
    private int mFlashButtonPaddingVertical;
    private ButtonPosition mFlashButtonPosition;
    private int mFocusAreaSize;
    private Point mPreviewSize;
    private SurfaceView mPreviewView;
    private SizeListener mSizeListener;
    private ViewFinderView mViewFinderView;
    private static final ButtonPosition DEFAULT_AUTO_FOCUS_BUTTON_POSITION = ButtonPosition.TOP_START;
    private static final ButtonPosition DEFAULT_FLASH_BUTTON_POSITION = ButtonPosition.TOP_END;

    /* JADX INFO: renamed from: com.budiyev.android.codescanner.CodeScannerView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$budiyev$android$codescanner$ButtonPosition;

        static {
            int[] iArr = new int[ButtonPosition.values().length];
            $SwitchMap$com$budiyev$android$codescanner$ButtonPosition = iArr;
            try {
                iArr[ButtonPosition.TOP_START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$budiyev$android$codescanner$ButtonPosition[ButtonPosition.TOP_END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$budiyev$android$codescanner$ButtonPosition[ButtonPosition.BOTTOM_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$budiyev$android$codescanner$ButtonPosition[ButtonPosition.BOTTOM_END.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private final class AutoFocusClickListener implements View.OnClickListener {
        final CodeScannerView this$0;

        private AutoFocusClickListener(CodeScannerView codeScannerView) {
            this.this$0 = codeScannerView;
        }

        /* synthetic */ AutoFocusClickListener(CodeScannerView codeScannerView, AnonymousClass1 anonymousClass1) {
            this(codeScannerView);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CodeScanner codeScanner = this.this$0.mCodeScanner;
            if (codeScanner == null || !codeScanner.isAutoFocusSupportedOrUnknown()) {
                return;
            }
            boolean z = !codeScanner.isAutoFocusEnabled();
            codeScanner.setAutoFocusEnabled(z);
            this.this$0.setAutoFocusEnabled(z);
        }
    }

    private final class FlashClickListener implements View.OnClickListener {
        final CodeScannerView this$0;

        private FlashClickListener(CodeScannerView codeScannerView) {
            this.this$0 = codeScannerView;
        }

        /* synthetic */ FlashClickListener(CodeScannerView codeScannerView, AnonymousClass1 anonymousClass1) {
            this(codeScannerView);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CodeScanner codeScanner = this.this$0.mCodeScanner;
            if (codeScanner == null || !codeScanner.isFlashSupportedOrUnknown()) {
                return;
            }
            boolean z = !codeScanner.isFlashEnabled();
            codeScanner.setFlashEnabled(z);
            this.this$0.setFlashEnabled(z);
        }
    }

    public static final class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    interface SizeListener {
        void onSizeChanged(int i, int i2);
    }

    public CodeScannerView(@NonNull Context context) throws Throwable {
        super(context);
        initialize(context, null, 0, 0);
    }

    public CodeScannerView(@NonNull Context context, @Nullable AttributeSet attributeSet) throws Throwable {
        super(context, attributeSet);
        initialize(context, attributeSet, 0, 0);
    }

    public CodeScannerView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) throws Throwable {
        super(context, attributeSet, i);
        initialize(context, attributeSet, i, 0);
    }

    @RequiresApi(21)
    public CodeScannerView(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Throwable {
        super(context, attributeSet, i, i2);
        initialize(context, attributeSet, i, i2);
    }

    @NonNull
    private static ButtonPosition buttonPositionFromAttr(int i) {
        return i != 1 ? i != 2 ? i != 3 ? ButtonPosition.TOP_START : ButtonPosition.BOTTOM_END : ButtonPosition.BOTTOM_START : ButtonPosition.TOP_END;
    }

    private static int indexOfButtonPosition(@NonNull ButtonPosition buttonPosition) {
        int i = AnonymousClass1.$SwitchMap$com$budiyev$android$codescanner$ButtonPosition[buttonPosition.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    private void initialize(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Throwable {
        Throwable th;
        TypedArray typedArray;
        TypedArray typedArrayObtainStyledAttributes;
        AnonymousClass1 anonymousClass1 = null;
        this.mPreviewView = new SurfaceView(context);
        this.mViewFinderView = new ViewFinderView(context);
        float f = context.getResources().getDisplayMetrics().density;
        int iRound = Math.round(DEFAULT_BUTTON_PADDING_DP * f);
        this.mFocusAreaSize = Math.round(FOCUS_AREA_SIZE_DP * f);
        ImageView imageView = new ImageView(context);
        this.mAutoFocusButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.mAutoFocusButton.setOnClickListener(new AutoFocusClickListener(this, anonymousClass1));
        ImageView imageView2 = new ImageView(context);
        this.mFlashButton = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        this.mFlashButton.setOnClickListener(new FlashClickListener(this, anonymousClass1));
        if (attributeSet == null) {
            setFrameAspectRatio(1.0f, 1.0f);
            setMaskColor(DEFAULT_MASK_COLOR);
            setMaskVisible(true);
            setFrameColor(-1);
            setFrameVisible(true);
            setFrameThickness(Math.round(DEFAULT_FRAME_THICKNESS_DP * f));
            setFrameCornersSize(Math.round(50.0f * f));
            setFrameCornersRadius(Math.round(f * 0.0f));
            setFrameCornersCapRounded(false);
            setFrameSize(0.75f);
            setFrameVerticalBias(0.5f);
            setAutoFocusButtonColor(-1);
            setFlashButtonColor(-1);
            setAutoFocusButtonVisible(true);
            setAutoFocusButtonPosition(DEFAULT_AUTO_FOCUS_BUTTON_POSITION);
            setFlashButtonVisible(true);
            setFlashButtonPosition(DEFAULT_FLASH_BUTTON_POSITION);
            setAutoFocusButtonPaddingHorizontal(iRound);
            setAutoFocusButtonPaddingVertical(iRound);
            setFlashButtonPaddingHorizontal(iRound);
            setFlashButtonPaddingVertical(iRound);
            setAutoFocusButtonOnIcon(Utils.getDrawable(context, R.drawable.ic_code_scanner_auto_focus_on));
            setAutoFocusButtonOffIcon(Utils.getDrawable(context, R.drawable.ic_code_scanner_auto_focus_off));
            setFlashButtonOnIcon(Utils.getDrawable(context, R.drawable.ic_code_scanner_flash_on));
            setFlashButtonOffIcon(Utils.getDrawable(context, R.drawable.ic_code_scanner_flash_off));
        } else {
            try {
                typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CodeScannerView, i, i2);
            } catch (Throwable th2) {
                th = th2;
                typedArray = null;
            }
            try {
                setMaskColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CodeScannerView_maskColor, DEFAULT_MASK_COLOR));
                setMaskVisible(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CodeScannerView_maskVisible, true));
                setFrameColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CodeScannerView_frameColor, -1));
                setFrameVisible(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CodeScannerView_frameVisible, true));
                setFrameThickness(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_frameThickness, Math.round(DEFAULT_FRAME_THICKNESS_DP * f)));
                setFrameCornersSize(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_frameCornersSize, Math.round(50.0f * f)));
                setFrameCornersRadius(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_frameCornersRadius, Math.round(f * 0.0f)));
                setFrameCornersCapRounded(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CodeScannerView_frameCornersCapRounded, false));
                setFrameAspectRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.CodeScannerView_frameAspectRatioWidth, 1.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.CodeScannerView_frameAspectRatioHeight, 1.0f));
                setFrameSize(typedArrayObtainStyledAttributes.getFloat(R.styleable.CodeScannerView_frameSize, 0.75f));
                setFrameVerticalBias(typedArrayObtainStyledAttributes.getFloat(R.styleable.CodeScannerView_frameVerticalBias, 0.5f));
                setAutoFocusButtonVisible(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CodeScannerView_autoFocusButtonVisible, true));
                setAutoFocusButtonColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CodeScannerView_autoFocusButtonColor, -1));
                setAutoFocusButtonPosition(buttonPositionFromAttr(typedArrayObtainStyledAttributes.getInt(R.styleable.CodeScannerView_autoFocusButtonPosition, indexOfButtonPosition(DEFAULT_AUTO_FOCUS_BUTTON_POSITION))));
                setAutoFocusButtonPaddingHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_autoFocusButtonPaddingHorizontal, iRound));
                setAutoFocusButtonPaddingVertical(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_autoFocusButtonPaddingVertical, iRound));
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CodeScannerView_autoFocusButtonOnIcon);
                if (drawable == null) {
                    drawable = Utils.getDrawable(context, R.drawable.ic_code_scanner_auto_focus_on);
                }
                setAutoFocusButtonOnIcon(drawable);
                Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CodeScannerView_autoFocusButtonOffIcon);
                if (drawable2 == null) {
                    drawable2 = Utils.getDrawable(context, R.drawable.ic_code_scanner_auto_focus_off);
                }
                setAutoFocusButtonOffIcon(drawable2);
                setFlashButtonVisible(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CodeScannerView_flashButtonVisible, true));
                setFlashButtonColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CodeScannerView_flashButtonColor, -1));
                setFlashButtonPosition(buttonPositionFromAttr(typedArrayObtainStyledAttributes.getInt(R.styleable.CodeScannerView_flashButtonPosition, indexOfButtonPosition(DEFAULT_FLASH_BUTTON_POSITION))));
                setFlashButtonPaddingHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_flashButtonPaddingHorizontal, iRound));
                setFlashButtonPaddingVertical(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.CodeScannerView_flashButtonPaddingVertical, iRound));
                Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CodeScannerView_flashButtonOnIcon);
                if (drawable3 == null) {
                    drawable3 = Utils.getDrawable(context, R.drawable.ic_code_scanner_flash_on);
                }
                setFlashButtonOnIcon(drawable3);
                Drawable drawable4 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CodeScannerView_flashButtonOffIcon);
                if (drawable4 == null) {
                    drawable4 = Utils.getDrawable(context, R.drawable.ic_code_scanner_flash_off);
                }
                setFlashButtonOffIcon(drawable4);
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
            } catch (Throwable th3) {
                th = th3;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray == null) {
                    throw th;
                }
                typedArray.recycle();
                throw th;
            }
        }
        if (isInEditMode()) {
            setAutoFocusEnabled(true);
            setFlashEnabled(true);
        }
        addView(this.mPreviewView, new LayoutParams(-1, -1));
        addView(this.mViewFinderView, new LayoutParams(-1, -1));
        addView(this.mAutoFocusButton, new LayoutParams(-2, -2));
        addView(this.mFlashButton, new LayoutParams(-2, -2));
    }

    private void invalidateAutoFocusButtonPadding() {
        int i = this.mAutoFocusButtonPaddingHorizontal;
        int i2 = this.mAutoFocusButtonPaddingVertical;
        this.mAutoFocusButton.setPadding(i, i2, i, i2);
    }

    private void invalidateFlashButtonPadding() {
        int i = this.mFlashButtonPaddingHorizontal;
        int i2 = this.mFlashButtonPaddingVertical;
        this.mFlashButton.setPadding(i, i2, i, i2);
    }

    private void layoutButton(View view, ButtonPosition buttonPosition, int i, int i2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int layoutDirection = getLayoutDirection();
        int i3 = AnonymousClass1.$SwitchMap$com$budiyev$android$codescanner$ButtonPosition[buttonPosition.ordinal()];
        if (i3 == 1) {
            if (layoutDirection == 1) {
                view.layout(i - measuredWidth, 0, i, measuredHeight);
                return;
            } else {
                view.layout(0, 0, measuredWidth, measuredHeight);
                return;
            }
        }
        if (i3 == 2) {
            if (layoutDirection == 1) {
                view.layout(0, 0, measuredWidth, measuredHeight);
                return;
            } else {
                view.layout(i - measuredWidth, 0, i, measuredHeight);
                return;
            }
        }
        if (i3 == 3) {
            if (layoutDirection == 1) {
                view.layout(i - measuredWidth, i2 - measuredHeight, i, i2);
                return;
            } else {
                view.layout(0, i2 - measuredHeight, measuredWidth, i2);
                return;
            }
        }
        if (i3 != 4) {
            return;
        }
        if (layoutDirection == 1) {
            view.layout(0, i2 - measuredHeight, measuredWidth, i2);
        } else {
            view.layout(i - measuredWidth, i2 - measuredHeight, i, i2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(@Nullable ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(@Nullable AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateLayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getAutoFocusButtonColor() {
        return this.mAutoFocusButtonColor;
    }

    @NonNull
    public Drawable getAutoFocusButtonOffIcon() {
        return this.mAutoFocusButtonOffIcon;
    }

    @NonNull
    public Drawable getAutoFocusButtonOnIcon() {
        return this.mAutoFocusButtonOnIcon;
    }

    @Px
    public int getAutoFocusButtonPaddingHorizontal() {
        return this.mAutoFocusButtonPaddingHorizontal;
    }

    @Px
    public int getAutoFocusButtonPaddingVertical() {
        return this.mAutoFocusButtonPaddingVertical;
    }

    @NonNull
    public ButtonPosition getAutoFocusButtonPosition() {
        return this.mAutoFocusButtonPosition;
    }

    @ColorInt
    public int getFlashButtonColor() {
        return this.mFlashButtonColor;
    }

    @NonNull
    public Drawable getFlashButtonOffIcon() {
        return this.mFlashButtonOffIcon;
    }

    @NonNull
    public Drawable getFlashButtonOnIcon() {
        return this.mFlashButtonOnIcon;
    }

    @Px
    public int getFlashButtonPaddingHorizontal() {
        return this.mFlashButtonPaddingHorizontal;
    }

    @Px
    public int getFlashButtonPaddingVertical() {
        return this.mFlashButtonPaddingVertical;
    }

    @NonNull
    public ButtonPosition getFlashButtonPosition() {
        return this.mFlashButtonPosition;
    }

    @FloatRange(from = 0.0d, fromInclusive = false)
    public float getFrameAspectRatioHeight() {
        return this.mViewFinderView.getFrameAspectRatioHeight();
    }

    @FloatRange(from = 0.0d, fromInclusive = false)
    public float getFrameAspectRatioWidth() {
        return this.mViewFinderView.getFrameAspectRatioWidth();
    }

    @ColorInt
    public int getFrameColor() {
        return this.mViewFinderView.getFrameColor();
    }

    @Px
    public int getFrameCornersRadius() {
        return this.mViewFinderView.getFrameCornersRadius();
    }

    @Px
    public int getFrameCornersSize() {
        return this.mViewFinderView.getFrameCornersSize();
    }

    @Nullable
    Rect getFrameRect() {
        return this.mViewFinderView.getFrameRect();
    }

    @FloatRange(from = 0.1d, to = 1.0d)
    public float getFrameSize() {
        return this.mViewFinderView.getFrameSize();
    }

    @Px
    public int getFrameThickness() {
        return this.mViewFinderView.getFrameThickness();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getFrameVerticalBias() {
        return this.mViewFinderView.getFrameVerticalBias();
    }

    @ColorInt
    public int getMaskColor() {
        return this.mViewFinderView.getMaskColor();
    }

    @NonNull
    SurfaceView getPreviewView() {
        return this.mPreviewView;
    }

    @NonNull
    ViewFinderView getViewFinderView() {
        return this.mViewFinderView;
    }

    public boolean isAutoFocusButtonVisible() {
        return this.mAutoFocusButton.getVisibility() == 0;
    }

    public boolean isFlashButtonVisible() {
        return this.mFlashButton.getVisibility() == 0;
    }

    public boolean isFrameCornersCapRounded() {
        return this.mViewFinderView.isFrameCornersCapRounded();
    }

    public boolean isFrameVisible() {
        return this.mViewFinderView.isFrameVisible();
    }

    public boolean isMaskVisible() {
        return this.mViewFinderView.isMaskVisible();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int childCount = getChildCount();
        if (childCount > 5) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 13, 86, 85, 98, 90, 80, 12, 92, 85, 67, 111, 88, 7, 69, 16, 82, 88, 95, 66, 90, 81, 71, 92, 17, 24, 87, 66, 94, 25, 94, 16, 18, 95, 95, 92, 17, 1, 90, 89, 93, 93}, "1b2019", true));
        }
        int i9 = i3 - i;
        int i10 = i4 - i2;
        Point point = this.mPreviewSize;
        if (point == null) {
            this.mPreviewView.layout(0, 0, i9, i10);
        } else {
            int x = point.getX();
            if (x > i9) {
                int i11 = (x - i9) / 2;
                i5 = 0 - i11;
                i6 = i11 + i9;
            } else {
                i5 = 0;
                i6 = i9;
            }
            int y = point.getY();
            if (y > i10) {
                int i12 = (y - i10) / 2;
                i8 = 0 - i12;
                i7 = i12 + i10;
            } else {
                i7 = i10;
                i8 = 0;
            }
            this.mPreviewView.layout(i5, i8, i6, i7);
        }
        this.mViewFinderView.layout(0, 0, i9, i10);
        layoutButton(this.mAutoFocusButton, this.mAutoFocusButtonPosition, i9, i10);
        layoutButton(this.mFlashButton, this.mFlashButtonPosition, i9, i10);
        if (childCount == 5) {
            Rect frameRect = this.mViewFinderView.getFrameRect();
            int bottom = frameRect != null ? frameRect.getBottom() : 0;
            View childAt = getChildAt(4);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i13 = paddingLeft + layoutParams.leftMargin;
                int i14 = layoutParams.topMargin + paddingTop + bottom;
                childAt.layout(i13, i14, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + i14);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        if (childCount > 5) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 92, 7, 86, 98, 0, 3, 93, 13, 86, 67, 53, 11, 86, 20, 19, 82, 2, 12, 19, 11, 82, 71, 6, 66, 73, 6, 65, 94, 67, 13, 65, 67, 92, 95, 6, 66, 80, 11, 90, 93, 7}, "b3c31c", -1140261134L));
        }
        measureChildWithMargins(this.mPreviewView, i, 0, i2, 0);
        measureChildWithMargins(this.mViewFinderView, i, 0, i2, 0);
        measureChildWithMargins(this.mAutoFocusButton, i, 0, i2, 0);
        measureChildWithMargins(this.mFlashButton, i, 0, i2, 0);
        if (childCount == 5) {
            Rect frameRect = this.mViewFinderView.getFrameRect();
            measureChildWithMargins(getChildAt(4), i, 0, i2, frameRect != null ? frameRect.getBottom() : 0);
        }
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), i), getDefaultSize(getSuggestedMinimumHeight(), i2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        SizeListener sizeListener = this.mSizeListener;
        if (sizeListener != null) {
            sizeListener.onSizeChanged(i, i2);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        CodeScanner codeScanner = this.mCodeScanner;
        Rect frameRect = getFrameRect();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (codeScanner != null && frameRect != null && codeScanner.isAutoFocusSupportedOrUnknown() && codeScanner.isTouchFocusEnabled() && motionEvent.getAction() == 0 && frameRect.isPointInside(x, y)) {
            int i = this.mFocusAreaSize;
            codeScanner.performTouchFocus(new Rect(x - i, y - i, x + i, y + i).fitIn(frameRect));
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAutoFocusButtonColor(@ColorInt int i) {
        this.mAutoFocusButtonColor = i;
        this.mAutoFocusButton.setColorFilter(i);
    }

    public void setAutoFocusButtonOffIcon(@NonNull Drawable drawable) {
        drawable.getClass();
        boolean z = drawable != this.mAutoFocusButtonOffIcon;
        this.mAutoFocusButtonOffIcon = drawable;
        CodeScanner codeScanner = this.mCodeScanner;
        if (!z || codeScanner == null) {
            return;
        }
        setAutoFocusEnabled(codeScanner.isAutoFocusEnabled());
    }

    public void setAutoFocusButtonOnIcon(@NonNull Drawable drawable) {
        drawable.getClass();
        boolean z = drawable != this.mAutoFocusButtonOnIcon;
        this.mAutoFocusButtonOnIcon = drawable;
        CodeScanner codeScanner = this.mCodeScanner;
        if (!z || codeScanner == null) {
            return;
        }
        setAutoFocusEnabled(codeScanner.isAutoFocusEnabled());
    }

    public void setAutoFocusButtonPaddingHorizontal(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 83, 5, 2, 12, 92, 1, 18, 18, 14, 10, 71, 10, 86, 65, 4, 0, 18, 3, 67, 20, 7, 9, 18, 18, 93, 65, 9, 23, 18, 1, 64, 0, 18, 0, 64, 70, 70, 9, 3, 11, 18, 28, 87, 19, 9}, "f2afe2", true, false));
        }
        boolean z = i != this.mAutoFocusButtonPaddingHorizontal;
        this.mAutoFocusButtonPaddingHorizontal = i;
        if (z) {
            invalidateAutoFocusButtonPadding();
        }
    }

    public void setAutoFocusButtonPaddingVertical(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{52, 81, 86, 80, 93, 11, 3, 16, 65, 92, 91, 16, 8, 84, 18, 86, 81, 69, 1, 65, 71, 85, 88, 69, 16, 95, 18, 91, 70, 69, 3, 66, 83, 64, 81, 23, 68, 68, 90, 81, 90, 69, 30, 85, 64, 91}, "d0244e", 879831876L));
        }
        boolean z = i != this.mAutoFocusButtonPaddingVertical;
        this.mAutoFocusButtonPaddingVertical = i;
        if (z) {
            invalidateAutoFocusButtonPadding();
        }
    }

    public void setAutoFocusButtonPosition(@NonNull ButtonPosition buttonPosition) {
        buttonPosition.getClass();
        boolean z = buttonPosition != this.mAutoFocusButtonPosition;
        this.mAutoFocusButtonPosition = buttonPosition;
        if (z && isLaidOut()) {
            requestLayout();
        }
    }

    public void setAutoFocusButtonVisible(boolean z) {
        this.mAutoFocusButton.setVisibility(z ? 0 : 4);
    }

    void setAutoFocusEnabled(boolean z) {
        this.mAutoFocusButton.setImageDrawable(z ? this.mAutoFocusButtonOnIcon : this.mAutoFocusButtonOffIcon);
    }

    void setCodeScanner(@NonNull CodeScanner codeScanner) {
        if (this.mCodeScanner != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 91, 2, 7, 66, 67, 85, 85, 8, 12, 7, 66, 22, 92, 7, 17, 66, 81, 90, 70, 3, 3, 6, 73, 22, 86, 3, 7, 12, 16, 69, 81, 18}, "64fbb0", -4.9808666E8f));
        }
        this.mCodeScanner = codeScanner;
        setAutoFocusEnabled(codeScanner.isAutoFocusEnabled());
        setFlashEnabled(codeScanner.isFlashEnabled());
    }

    public void setFlashButtonColor(@ColorInt int i) {
        this.mFlashButtonColor = i;
        this.mFlashButton.setColorFilter(i);
    }

    public void setFlashButtonOffIcon(@NonNull Drawable drawable) {
        drawable.getClass();
        boolean z = drawable != this.mFlashButtonOffIcon;
        this.mFlashButtonOffIcon = drawable;
        CodeScanner codeScanner = this.mCodeScanner;
        if (!z || codeScanner == null) {
            return;
        }
        setFlashEnabled(codeScanner.isFlashEnabled());
    }

    public void setFlashButtonOnIcon(@NonNull Drawable drawable) {
        drawable.getClass();
        boolean z = drawable != this.mFlashButtonOnIcon;
        this.mFlashButtonOnIcon = drawable;
        CodeScanner codeScanner = this.mCodeScanner;
        if (!z || codeScanner == null) {
            return;
        }
        setFlashEnabled(codeScanner.isFlashEnabled());
    }

    public void setFlashButtonPaddingHorizontal(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{104, 7, 86, 83, 92, 86, 95, 70, 65, 95, 90, 77, 84, 2, 18, 85, 80, 24, 93, 23, 71, 86, 89, 24, 76, 9, 18, 88, 71, 24, 95, 20, 83, 67, 80, 74, 24, 18, 90, 82, 91, 24, 66, 3, 64, 88}, "8f2758", true, false));
        }
        boolean z = i != this.mFlashButtonPaddingHorizontal;
        this.mFlashButtonPaddingHorizontal = i;
        if (z) {
            invalidateFlashButtonPadding();
        }
    }

    public void setFlashButtonPaddingVertical(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 80, 92, 93, 89, 91, 87, 17, 75, 81, 95, 64, 92, 85, 24, 91, 85, 21, 85, 64, 77, 88, 92, 21, 68, 94, 24, 86, 66, 21, 87, 67, 89, 77, 85, 71, 16, 69, 80, 92, 94, 21, 74, 84, 74, 86}, "018905", false, true));
        }
        boolean z = i != this.mFlashButtonPaddingVertical;
        this.mFlashButtonPaddingVertical = i;
        if (z) {
            invalidateFlashButtonPadding();
        }
    }

    public void setFlashButtonPosition(@NonNull ButtonPosition buttonPosition) {
        buttonPosition.getClass();
        boolean z = buttonPosition != this.mFlashButtonPosition;
        this.mFlashButtonPosition = buttonPosition;
        if (z) {
            requestLayout();
        }
    }

    public void setFlashButtonVisible(boolean z) {
        this.mFlashButton.setVisibility(z ? 0 : 4);
    }

    void setFlashEnabled(boolean z) {
        this.mFlashButton.setImageDrawable(z ? this.mFlashButtonOnIcon : this.mFlashButtonOffIcon);
    }

    public void setFrameAspectRatio(@FloatRange(from = 0.0d, fromInclusive = false) float f, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        if (f <= 0.0f || f2 <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 70, 86, 92, 80, 20, 86, 71, 71, 84, 86, 64, 23, 70, 86, 69, 92, 91, 23, 66, 86, 93, 64, 81, 68, 20, 68, 89, 90, 65, 91, 80, 23, 83, 80, 20, 80, 70, 82, 80, 65, 81, 69, 20, 67, 89, 84, 90, 23, 78, 82, 67, 90}, "747154", true));
        }
        this.mViewFinderView.setFrameAspectRatio(f, f2);
    }

    public void setFrameAspectRatioHeight(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 69, 82, 84, 81, 68, 84, 68, 67, 92, 87, 16, 21, 69, 82, 77, 93, 11, 21, 65, 82, 85, 65, 1, 70, 23, 64, 81, 91, 17, 89, 83, 19, 91, 81, 68, 82, 69, 86, 88, 64, 1, 71, 23, 71, 81, 85, 10, 21, 77, 86, 75, 91}, "57394d", 11875));
        }
        this.mViewFinderView.setFrameAspectRatioHeight(f);
    }

    public void setFrameAspectRatioWidth(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 68, 5, 15, 92, 23, 84, 69, 20, 7, 90, 67, 21, 68, 5, 22, 80, 88, 21, 64, 5, 14, 76, 82, 70, 22, 23, 10, 86, 66, 89, 82, 68, 0, 92, 23, 82, 68, 1, 3, 77, 82, 71, 22, 16, 10, 88, 89, 21, 76, 1, 16, 86}, "56db97", false));
        }
        this.mViewFinderView.setFrameAspectRatioWidth(f);
    }

    public void setFrameColor(@ColorInt int i) {
        this.mViewFinderView.setFrameColor(i);
    }

    public void setFrameCornersCapRounded(boolean z) {
        this.mViewFinderView.setFrameCornersCapRounded(z);
    }

    public void setFrameCornersRadius(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 74, 85, 8, 0, 66, 7, 87, 70, 11, 0, 16, 23, 24, 70, 4, 1, 11, 17, 75, 20, 6, 4, 12, 67, 76, 20, 7, 0, 66, 10, 93, 83, 4, 17, 11, 18, 93}, "d84eeb", -513));
        }
        this.mViewFinderView.setFrameCornersRadius(i);
    }

    public void setFrameCornersSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 19, 0, 95, 81, 22, 0, 14, 19, 92, 81, 68, 16, 65, 18, 91, 78, 83, 67, 2, 0, 92, 19, 66, 67, 3, 4, 18, 90, 83, 4, 0, 21, 91, 66, 83}, "caa246", -1.4246822E9f));
        }
        this.mViewFinderView.setFrameCornersSize(i);
    }

    public void setFrameSize(@FloatRange(from = 0.1d, to = 1.0d) float f) {
        if (f < 0.1d || f > 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 82, 75, 18, 83, 66, 3, 94, 86, 18, 70, 89, 24, 86, 19, 68, 84, 92, 23, 86, 19, 65, 93, 95, 23, 95, 87, 18, 87, 85, 66, 81, 86, 70, 66, 85, 7, 93, 19, 2, 27, 1, 66, 82, 93, 86, 21, 1, 78, 19, 90, 92, 86, 92, 23, 64, 90, 68, 80}, "b33250", 1.6095245E9f));
        }
        this.mViewFinderView.setFrameSize(f);
    }

    public void setFrameThickness(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 75, 5, 85, 80, 16, 71, 81, 13, 91, 94, 94, 86, 74, 23, 24, 86, 81, 93, 30, 16, 24, 87, 85, 19, 87, 1, 95, 84, 68, 90, 79, 1}, "39d850", -30626));
        }
        this.mViewFinderView.setFrameThickness(i);
    }

    public void setFrameVerticalBias(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 85, 26, 66, 84, 65, 83, 89, 7, 66, 65, 90, 72, 81, 66, 20, 83, 95, 71, 81, 66, 17, 90, 92, 71, 88, 6, 66, 80, 86, 18, 86, 7, 22, 69, 86, 87, 90, 66, 82, 18, 82, 92, 80, 66, 83, 30, 19, 91, 90, 1, 14, 71, 64, 91, 66, 7}, "24bb23", 8.40130196E8d));
        }
        this.mViewFinderView.setFrameVerticalBias(f);
    }

    public void setFrameVisible(boolean z) {
        this.mViewFinderView.setFrameVisible(z);
    }

    public void setMaskColor(@ColorInt int i) {
        this.mViewFinderView.setMaskColor(i);
    }

    public void setMaskVisible(boolean z) {
        this.mViewFinderView.setMaskVisible(z);
    }

    void setPreviewSize(@Nullable Point point) {
        this.mPreviewSize = point;
        requestLayout();
    }

    void setSizeListener(@Nullable SizeListener sizeListener) {
        this.mSizeListener = sizeListener;
    }
}
