.class public final Lcom/budiyev/android/codescanner/CodeScannerView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;,
        Lcom/budiyev/android/codescanner/CodeScannerView$FlashClickListener;,
        Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;,
        Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_FOCUS_BUTTON_COLOR:I = -0x1

.field private static final DEFAULT_AUTO_FOCUS_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

.field private static final DEFAULT_AUTO_FOCUS_BUTTON_VISIBLE:Z = true

.field private static final DEFAULT_BUTTON_PADDING_DP:F = 16.0f

.field private static final DEFAULT_FLASH_BUTTON_COLOR:I = -0x1

.field private static final DEFAULT_FLASH_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

.field private static final DEFAULT_FLASH_BUTTON_VISIBLE:Z = true

.field private static final DEFAULT_FRAME_ASPECT_RATIO_HEIGHT:F = 1.0f

.field private static final DEFAULT_FRAME_ASPECT_RATIO_WIDTH:F = 1.0f

.field private static final DEFAULT_FRAME_COLOR:I = -0x1

.field private static final DEFAULT_FRAME_CORNERS_CAP_ROUNDED:Z = false

.field private static final DEFAULT_FRAME_CORNERS_RADIUS_DP:F = 0.0f

.field private static final DEFAULT_FRAME_CORNER_SIZE_DP:F = 50.0f

.field private static final DEFAULT_FRAME_SIZE:F = 0.75f

.field private static final DEFAULT_FRAME_THICKNESS_DP:F = 2.0f

.field private static final DEFAULT_FRAME_VERTICAL_BIAS:F = 0.5f

.field private static final DEFAULT_FRAME_VISIBLE:Z = true

.field private static final DEFAULT_MASK_COLOR:I = 0x77000000

.field private static final DEFAULT_MASK_VISIBLE:Z = true

.field private static final FOCUS_AREA_SIZE_DP:F = 20.0f

.field private static final HINT_VIEW_INDEX:I = 0x4

.field private static final MAX_CHILD_COUNT:I = 0x5


# instance fields
.field private mAutoFocusButton:Landroid/widget/ImageView;

.field private mAutoFocusButtonColor:I

.field private mAutoFocusButtonOffIcon:Landroid/graphics/drawable/Drawable;

.field private mAutoFocusButtonOnIcon:Landroid/graphics/drawable/Drawable;

.field private mAutoFocusButtonPaddingHorizontal:I

.field private mAutoFocusButtonPaddingVertical:I

.field private mAutoFocusButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

.field private mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

.field private mFlashButton:Landroid/widget/ImageView;

.field private mFlashButtonColor:I

.field private mFlashButtonOffIcon:Landroid/graphics/drawable/Drawable;

.field private mFlashButtonOnIcon:Landroid/graphics/drawable/Drawable;

.field private mFlashButtonPaddingHorizontal:I

.field private mFlashButtonPaddingVertical:I

.field private mFlashButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

.field private mFocusAreaSize:I

.field private mPreviewSize:Lcom/budiyev/android/codescanner/Point;

.field private mPreviewView:Landroid/view/SurfaceView;

.field private mSizeListener:Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;

.field private mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_START:Lcom/budiyev/android/codescanner/ButtonPosition;

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_AUTO_FOCUS_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_END:Lcom/budiyev/android/codescanner/ButtonPosition;

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_FLASH_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/budiyev/android/codescanner/CodeScannerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/budiyev/android/codescanner/CodeScannerView;)Lcom/budiyev/android/codescanner/CodeScanner;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    return-object v0
.end method

.method private static buttonPositionFromAttr(I)Lcom/budiyev/android/codescanner/ButtonPosition;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_START:Lcom/budiyev/android/codescanner/ButtonPosition;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->BOTTOM_END:Lcom/budiyev/android/codescanner/ButtonPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->BOTTOM_START:Lcom/budiyev/android/codescanner/ButtonPosition;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_END:Lcom/budiyev/android/codescanner/ButtonPosition;

    goto :goto_0
.end method

.method private static indexOfButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)I
    .locals 4
    .param p0    # Lcom/budiyev/android/codescanner/ButtonPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/4 v1, 0x2

    sget-object v2, Lcom/budiyev/android/codescanner/CodeScannerView$1;->$SwitchMap$com$budiyev$android$codescanner$ButtonPosition:[I

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ButtonPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v8, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, -0x1

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    new-instance v0, Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-direct {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFocusAreaSize:I

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;

    invoke-direct {v4, p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;-><init>(Lcom/budiyev/android/codescanner/CodeScannerView;Lcom/budiyev/android/codescanner/CodeScannerView$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/budiyev/android/codescanner/CodeScannerView$FlashClickListener;

    invoke-direct {v4, p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView$FlashClickListener;-><init>(Lcom/budiyev/android/codescanner/CodeScannerView;Lcom/budiyev/android/codescanner/CodeScannerView$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_2

    invoke-virtual {p0, v7, v7}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameAspectRatio(FF)V

    const/high16 v1, 0x77000000

    invoke-virtual {p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setMaskColor(I)V

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setMaskVisible(Z)V

    invoke-virtual {p0, v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameColor(I)V

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameVisible(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameThickness(I)V

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersSize(I)V

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersRadius(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersCapRounded(Z)V

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameSize(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameVerticalBias(F)V

    invoke-virtual {p0, v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonColor(I)V

    invoke-virtual {p0, v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonColor(I)V

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonVisible(Z)V

    sget-object v0, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_AUTO_FOCUS_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonVisible(Z)V

    sget-object v0, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_FLASH_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V

    invoke-virtual {p0, v2}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPaddingHorizontal(I)V

    invoke-virtual {p0, v2}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPaddingVertical(I)V

    invoke-virtual {p0, v2}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPaddingHorizontal(I)V

    invoke-virtual {p0, v2}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPaddingVertical(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_auto_focus_on:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonOnIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_auto_focus_off:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonOffIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_flash_on:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonOnIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_flash_off:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonOffIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v1, v5, v5}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    new-instance v1, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v1, v5, v5}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v1, v8, v8}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v1, v8, v8}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView:[I

    invoke-virtual {v3, p2, v4, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_maskColor:I

    const/high16 v4, 0x77000000

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setMaskColor(I)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_maskVisible:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setMaskVisible(Z)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameColor:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameColor(I)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameVisible:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameVisible(Z)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameThickness:I

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameThickness(I)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameCornersSize:I

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersSize(I)V

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameCornersRadius:I

    const/4 v4, 0x0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersRadius(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameCornersCapRounded:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameCornersCapRounded(Z)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameAspectRatioWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sget v3, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameAspectRatioHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameAspectRatio(FF)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameSize:I

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameSize(F)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_frameVerticalBias:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFrameVerticalBias(F)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonVisible:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonVisible(Z)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonColor(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonPosition:I

    sget-object v3, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_AUTO_FOCUS_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->indexOfButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->buttonPositionFromAttr(I)Lcom/budiyev/android/codescanner/ButtonPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonPaddingHorizontal:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPaddingHorizontal(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonPaddingVertical:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonPaddingVertical(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonOnIcon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonOnIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_autoFocusButtonOffIcon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusButtonOffIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonVisible:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonVisible(Z)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonColor(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonPosition:I

    sget-object v3, Lcom/budiyev/android/codescanner/CodeScannerView;->DEFAULT_FLASH_BUTTON_POSITION:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->indexOfButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->buttonPositionFromAttr(I)Lcom/budiyev/android/codescanner/ButtonPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonPaddingHorizontal:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPaddingHorizontal(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonPaddingVertical:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonPaddingVertical(I)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonOnIcon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonOnIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/budiyev/android/codescanner/R$styleable;->CodeScannerView_flashButtonOffIcon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashButtonOffIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_auto_focus_on:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_auto_focus_off:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_flash_on:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget v0, Lcom/budiyev/android/codescanner/R$drawable;->ic_code_scanner_flash_off:I

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    throw v1

    :catchall_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5
.end method

.method private invalidateAutoFocusButtonPadding()V
    .locals 3

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingHorizontal:I

    iget v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingVertical:I

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private invalidateFlashButtonPadding()V
    .locals 3

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingHorizontal:I

    iget v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingVertical:I

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private layoutButton(Landroid/view/View;Lcom/budiyev/android/codescanner/ButtonPosition;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getLayoutDirection()I

    move-result v2

    sget-object v3, Lcom/budiyev/android/codescanner/CodeScannerView$1;->$SwitchMap$com$budiyev$android$codescanner$ButtonPosition:[I

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/ButtonPosition;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v6, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v2, v6, :cond_1

    sub-int v1, p4, v1

    invoke-virtual {p1, v5, v1, v0, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, v0

    sub-int v1, p4, v1

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    if-ne v2, v6, :cond_3

    sub-int v0, p3, v0

    sub-int v1, p4, v1

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    sub-int v1, p4, v1

    invoke-virtual {p1, v5, v1, v0, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    if-ne v2, v6, :cond_5

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    sub-int v0, p3, v0

    invoke-virtual {p1, v0, v5, p3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    if-ne v2, v6, :cond_7

    sub-int v0, p3, v0

    invoke-virtual {p1, v0, v5, p3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v1, -0x2

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAutoFocusButtonColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonColor:I

    return v0
.end method

.method public getAutoFocusButtonOffIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOffIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAutoFocusButtonOnIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOnIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAutoFocusButtonPaddingHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingHorizontal:I

    return v0
.end method

.method public getAutoFocusButtonPaddingVertical()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingVertical:I

    return v0
.end method

.method public getAutoFocusButtonPosition()Lcom/budiyev/android/codescanner/ButtonPosition;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    return-object v0
.end method

.method public getFlashButtonColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonColor:I

    return v0
.end method

.method public getFlashButtonOffIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOffIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlashButtonOnIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOnIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlashButtonPaddingHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingHorizontal:I

    return v0
.end method

.method public getFlashButtonPaddingVertical()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingVertical:I

    return v0
.end method

.method public getFlashButtonPosition()Lcom/budiyev/android/codescanner/ButtonPosition;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    return-object v0
.end method

.method public getFrameAspectRatioHeight()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameAspectRatioHeight()F

    move-result v0

    return v0
.end method

.method public getFrameAspectRatioWidth()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameAspectRatioWidth()F

    move-result v0

    return v0
.end method

.method public getFrameColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameColor()I

    move-result v0

    return v0
.end method

.method public getFrameCornersRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameCornersRadius()I

    move-result v0

    return v0
.end method

.method public getFrameCornersSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameCornersSize()I

    move-result v0

    return v0
.end method

.method getFrameRect()Lcom/budiyev/android/codescanner/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFrameSize()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.1
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameSize()F

    move-result v0

    return v0
.end method

.method public getFrameThickness()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameThickness()I

    move-result v0

    return v0
.end method

.method public getFrameVerticalBias()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameVerticalBias()F

    move-result v0

    return v0
.end method

.method public getMaskColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getMaskColor()I

    move-result v0

    return v0
.end method

.method getPreviewView()Landroid/view/SurfaceView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method getViewFinderView()Lcom/budiyev/android/codescanner/ViewFinderView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    return-object v0
.end method

.method public isAutoFocusButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrameCornersCapRounded()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isFrameCornersCapRounded()Z

    move-result v0

    return v0
.end method

.method public isFrameVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isFrameVisible()Z

    move-result v0

    return v0
.end method

.method public isMaskVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isMaskVisible()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getChildCount()I

    move-result v7

    if-gt v7, v9, :cond_5

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    iget-object v4, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v1, v3, v5}, Landroid/view/SurfaceView;->layout(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, v1, v1, v3, v5}, Lcom/budiyev/android/codescanner/ViewFinderView;->layout(IIII)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->layoutButton(Landroid/view/View;Lcom/budiyev/android/codescanner/ButtonPosition;II)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->layoutButton(Landroid/view/View;Lcom/budiyev/android/codescanner/ButtonPosition;II)V

    if-ne v7, v9, :cond_1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getBottom()I

    move-result v1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;

    iget v5, v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v0, v0, Lcom/budiyev/android/codescanner/CodeScannerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v0

    if-le v0, v3, :cond_3

    sub-int/2addr v0, v3

    div-int/lit8 v2, v0, 0x2

    rsub-int/lit8 v0, v2, 0x0

    add-int/2addr v2, v3

    :goto_1
    invoke-virtual {v4}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v4

    if-le v4, v5, :cond_4

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v6, v4, 0x0

    add-int/2addr v4, v5

    :goto_2
    iget-object v8, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v0, v6, v2, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_4
    move v4, v5

    move v6, v1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b2019"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0xdt
        0x56t
        0x55t
        0x62t
        0x5at
        0x50t
        0xct
        0x5ct
        0x55t
        0x43t
        0x6ft
        0x58t
        0x7t
        0x45t
        0x10t
        0x52t
        0x58t
        0x5ft
        0x42t
        0x5at
        0x51t
        0x47t
        0x5ct
        0x11t
        0x18t
        0x57t
        0x42t
        0x5et
        0x19t
        0x5et
        0x10t
        0x12t
        0x5ft
        0x5ft
        0x5ct
        0x11t
        0x1t
        0x5at
        0x59t
        0x5dt
        0x5dt
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v7, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getChildCount()I

    move-result v6

    if-gt v6, v7, :cond_2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewView:Landroid/view/SurfaceView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-ne v6, v7, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getBottom()I

    move-result v5

    :goto_0
    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/budiyev/android/codescanner/CodeScannerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/budiyev/android/codescanner/CodeScannerView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/budiyev/android/codescanner/CodeScannerView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v5, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b3c31c"

    const-wide/32 v4, -0x43f7010e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x5ct
        0x7t
        0x56t
        0x62t
        0x0t
        0x3t
        0x5dt
        0xdt
        0x56t
        0x43t
        0x35t
        0xbt
        0x56t
        0x14t
        0x13t
        0x52t
        0x2t
        0xct
        0x13t
        0xbt
        0x52t
        0x47t
        0x6t
        0x42t
        0x49t
        0x6t
        0x41t
        0x5et
        0x43t
        0xdt
        0x41t
        0x43t
        0x5ct
        0x5ft
        0x6t
        0x42t
        0x50t
        0xbt
        0x5at
        0x5dt
        0x7t
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mSizeListener:Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusSupportedOrUnknown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->isTouchFocusEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/budiyev/android/codescanner/Rect;->isPointInside(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFocusAreaSize:I

    new-instance v5, Lcom/budiyev/android/codescanner/Rect;

    sub-int v6, v2, v4

    sub-int v7, v3, v4

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    invoke-virtual {v5, v1}, Lcom/budiyev/android/codescanner/Rect;->fitIn(Lcom/budiyev/android/codescanner/Rect;)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->performTouchFocus(Lcom/budiyev/android/codescanner/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAutoFocusButtonColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonColor:I

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setAutoFocusButtonOffIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOffIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOffIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoFocusButtonOnIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOnIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoFocusButtonPaddingHorizontal(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingHorizontal:I

    if-eq p1, v2, :cond_1

    :goto_0
    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingHorizontal:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->invalidateAutoFocusButtonPadding()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "f2afe2"

    invoke-static {v3, v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x36t
        0x53t
        0x5t
        0x2t
        0xct
        0x5ct
        0x1t
        0x12t
        0x12t
        0xet
        0xat
        0x47t
        0xat
        0x56t
        0x41t
        0x4t
        0x0t
        0x12t
        0x3t
        0x43t
        0x14t
        0x7t
        0x9t
        0x12t
        0x12t
        0x5dt
        0x41t
        0x9t
        0x17t
        0x12t
        0x1t
        0x40t
        0x0t
        0x12t
        0x0t
        0x40t
        0x46t
        0x46t
        0x9t
        0x3t
        0xbt
        0x12t
        0x1ct
        0x57t
        0x13t
        0x9t
    .end array-data
.end method

.method public setAutoFocusButtonPaddingVertical(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingVertical:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPaddingVertical:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->invalidateAutoFocusButtonPadding()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d0244e"

    const-wide/32 v4, 0x34712b44

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x51t
        0x56t
        0x50t
        0x5dt
        0xbt
        0x3t
        0x10t
        0x41t
        0x5ct
        0x5bt
        0x10t
        0x8t
        0x54t
        0x12t
        0x56t
        0x51t
        0x45t
        0x1t
        0x41t
        0x47t
        0x55t
        0x58t
        0x45t
        0x10t
        0x5ft
        0x12t
        0x5bt
        0x46t
        0x45t
        0x3t
        0x42t
        0x53t
        0x40t
        0x51t
        0x17t
        0x44t
        0x44t
        0x5at
        0x51t
        0x5at
        0x45t
        0x1et
        0x55t
        0x40t
        0x5bt
    .end array-data
.end method

.method public setAutoFocusButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V
    .locals 1
    .param p1    # Lcom/budiyev/android/codescanner/ButtonPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoFocusButtonVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method setAutoFocusEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOnIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mAutoFocusButtonOffIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method setCodeScanner(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 4
    .param p1    # Lcom/budiyev/android/codescanner/CodeScanner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/CodeScanner;->isFlashEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashEnabled(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "64fbb0"

    const v3, -0x32127e68

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x5bt
        0x2t
        0x7t
        0x42t
        0x43t
        0x55t
        0x55t
        0x8t
        0xct
        0x7t
        0x42t
        0x16t
        0x5ct
        0x7t
        0x11t
        0x42t
        0x51t
        0x5at
        0x46t
        0x3t
        0x3t
        0x6t
        0x49t
        0x16t
        0x56t
        0x3t
        0x7t
        0xct
        0x10t
        0x45t
        0x51t
        0x12t
    .end array-data
.end method

.method public setFlashButtonColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonColor:I

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setFlashButtonOffIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOffIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOffIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->isFlashEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashButtonOnIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOnIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mCodeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->isFlashEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashButtonPaddingHorizontal(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingHorizontal:I

    if-eq p1, v2, :cond_1

    :goto_0
    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingHorizontal:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->invalidateFlashButtonPadding()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "8f2758"

    invoke-static {v3, v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x68t
        0x7t
        0x56t
        0x53t
        0x5ct
        0x56t
        0x5ft
        0x46t
        0x41t
        0x5ft
        0x5at
        0x4dt
        0x54t
        0x2t
        0x12t
        0x55t
        0x50t
        0x18t
        0x5dt
        0x17t
        0x47t
        0x56t
        0x59t
        0x18t
        0x4ct
        0x9t
        0x12t
        0x58t
        0x47t
        0x18t
        0x5ft
        0x14t
        0x53t
        0x43t
        0x50t
        0x4at
        0x18t
        0x12t
        0x5at
        0x52t
        0x5bt
        0x18t
        0x42t
        0x3t
        0x40t
        0x58t
    .end array-data
.end method

.method public setFlashButtonPaddingVertical(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingVertical:I

    if-eq p1, v2, :cond_1

    :goto_0
    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPaddingVertical:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->invalidateFlashButtonPadding()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "018905"

    invoke-static {v3, v4, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x60t
        0x50t
        0x5ct
        0x5dt
        0x59t
        0x5bt
        0x57t
        0x11t
        0x4bt
        0x51t
        0x5ft
        0x40t
        0x5ct
        0x55t
        0x18t
        0x5bt
        0x55t
        0x15t
        0x55t
        0x40t
        0x4dt
        0x58t
        0x5ct
        0x15t
        0x44t
        0x5et
        0x18t
        0x56t
        0x42t
        0x15t
        0x57t
        0x43t
        0x59t
        0x4dt
        0x55t
        0x47t
        0x10t
        0x45t
        0x50t
        0x5ct
        0x5et
        0x15t
        0x4at
        0x54t
        0x4at
        0x56t
    .end array-data
.end method

.method public setFlashButtonPosition(Lcom/budiyev/android/codescanner/ButtonPosition;)V
    .locals 1
    .param p1    # Lcom/budiyev/android/codescanner/ButtonPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonPosition:Lcom/budiyev/android/codescanner/ButtonPosition;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashButtonVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method setFlashEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOnIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mFlashButtonOffIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setFrameAspectRatio(FF)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_0

    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1, p2}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameAspectRatio(FF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "747154"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x71t
        0x46t
        0x56t
        0x5ct
        0x50t
        0x14t
        0x56t
        0x47t
        0x47t
        0x54t
        0x56t
        0x40t
        0x17t
        0x46t
        0x56t
        0x45t
        0x5ct
        0x5bt
        0x17t
        0x42t
        0x56t
        0x5dt
        0x40t
        0x51t
        0x44t
        0x14t
        0x44t
        0x59t
        0x5at
        0x41t
        0x5bt
        0x50t
        0x17t
        0x53t
        0x50t
        0x14t
        0x50t
        0x46t
        0x52t
        0x50t
        0x41t
        0x51t
        0x45t
        0x14t
        0x43t
        0x59t
        0x54t
        0x5at
        0x17t
        0x4et
        0x52t
        0x43t
        0x5at
    .end array-data
.end method

.method public setFrameAspectRatioHeight(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameAspectRatioHeight(F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "57394d"

    const/16 v3, 0x2e63

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x73t
        0x45t
        0x52t
        0x54t
        0x51t
        0x44t
        0x54t
        0x44t
        0x43t
        0x5ct
        0x57t
        0x10t
        0x15t
        0x45t
        0x52t
        0x4dt
        0x5dt
        0xbt
        0x15t
        0x41t
        0x52t
        0x55t
        0x41t
        0x1t
        0x46t
        0x17t
        0x40t
        0x51t
        0x5bt
        0x11t
        0x59t
        0x53t
        0x13t
        0x5bt
        0x51t
        0x44t
        0x52t
        0x45t
        0x56t
        0x58t
        0x40t
        0x1t
        0x47t
        0x17t
        0x47t
        0x51t
        0x55t
        0xat
        0x15t
        0x4dt
        0x56t
        0x4bt
        0x5bt
    .end array-data
.end method

.method public setFrameAspectRatioWidth(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameAspectRatioWidth(F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "56db97"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x44t
        0x5t
        0xft
        0x5ct
        0x17t
        0x54t
        0x45t
        0x14t
        0x7t
        0x5at
        0x43t
        0x15t
        0x44t
        0x5t
        0x16t
        0x50t
        0x58t
        0x15t
        0x40t
        0x5t
        0xet
        0x4ct
        0x52t
        0x46t
        0x16t
        0x17t
        0xat
        0x56t
        0x42t
        0x59t
        0x52t
        0x44t
        0x0t
        0x5ct
        0x17t
        0x52t
        0x44t
        0x1t
        0x3t
        0x4dt
        0x52t
        0x47t
        0x16t
        0x10t
        0xat
        0x58t
        0x59t
        0x15t
        0x4ct
        0x1t
        0x10t
        0x56t
    .end array-data
.end method

.method public setFrameColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameColor(I)V

    return-void
.end method

.method public setFrameCornersCapRounded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameCornersCapRounded(Z)V

    return-void
.end method

.method public setFrameCornersRadius(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameCornersRadius(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d84eeb"

    const/16 v3, -0x201

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x22t
        0x4at
        0x55t
        0x8t
        0x0t
        0x42t
        0x7t
        0x57t
        0x46t
        0xbt
        0x0t
        0x10t
        0x17t
        0x18t
        0x46t
        0x4t
        0x1t
        0xbt
        0x11t
        0x4bt
        0x14t
        0x6t
        0x4t
        0xct
        0x43t
        0x4ct
        0x14t
        0x7t
        0x0t
        0x42t
        0xat
        0x5dt
        0x53t
        0x4t
        0x11t
        0xbt
        0x12t
        0x5dt
    .end array-data
.end method

.method public setFrameCornersSize(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameCornersSize(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "caa246"

    const v3, -0x31562a26

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x25t
        0x13t
        0x0t
        0x5ft
        0x51t
        0x16t
        0x0t
        0xet
        0x13t
        0x5ct
        0x51t
        0x44t
        0x10t
        0x41t
        0x12t
        0x5bt
        0x4et
        0x53t
        0x43t
        0x2t
        0x0t
        0x5ct
        0x13t
        0x42t
        0x43t
        0x3t
        0x4t
        0x12t
        0x5at
        0x53t
        0x4t
        0x0t
        0x15t
        0x5bt
        0x42t
        0x53t
    .end array-data
.end method

.method public setFrameSize(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.1
            to = 1.0
        .end annotation
    .end param

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameSize(F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b33250"

    const v3, 0x4ebfdeca    # 1.6095245E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ft
        0x52t
        0x4bt
        0x12t
        0x53t
        0x42t
        0x3t
        0x5et
        0x56t
        0x12t
        0x46t
        0x59t
        0x18t
        0x56t
        0x13t
        0x44t
        0x54t
        0x5ct
        0x17t
        0x56t
        0x13t
        0x41t
        0x5dt
        0x5ft
        0x17t
        0x5ft
        0x57t
        0x12t
        0x57t
        0x55t
        0x42t
        0x51t
        0x56t
        0x46t
        0x42t
        0x55t
        0x7t
        0x5dt
        0x13t
        0x2t
        0x1bt
        0x1t
        0x42t
        0x52t
        0x5dt
        0x56t
        0x15t
        0x1t
        0x4et
        0x13t
        0x5at
        0x5ct
        0x56t
        0x5ct
        0x17t
        0x40t
        0x5at
        0x44t
        0x50t
    .end array-data
.end method

.method public setFrameThickness(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameThickness(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "39d850"

    const/16 v3, -0x77a2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x4bt
        0x5t
        0x55t
        0x50t
        0x10t
        0x47t
        0x51t
        0xdt
        0x5bt
        0x5et
        0x5et
        0x56t
        0x4at
        0x17t
        0x18t
        0x56t
        0x51t
        0x5dt
        0x1et
        0x10t
        0x18t
        0x57t
        0x55t
        0x13t
        0x57t
        0x1t
        0x5ft
        0x54t
        0x44t
        0x5at
        0x4ft
        0x1t
    .end array-data
.end method

.method public setFrameVerticalBias(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameVerticalBias(F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "24bb23"

    const-wide v4, 0x41c909af4a000000L    # 8.40130196E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x55t
        0x1at
        0x42t
        0x54t
        0x41t
        0x53t
        0x59t
        0x7t
        0x42t
        0x41t
        0x5at
        0x48t
        0x51t
        0x42t
        0x14t
        0x53t
        0x5ft
        0x47t
        0x51t
        0x42t
        0x11t
        0x5at
        0x5ct
        0x47t
        0x58t
        0x6t
        0x42t
        0x50t
        0x56t
        0x12t
        0x56t
        0x7t
        0x16t
        0x45t
        0x56t
        0x57t
        0x5at
        0x42t
        0x52t
        0x12t
        0x52t
        0x5ct
        0x50t
        0x42t
        0x53t
        0x1et
        0x13t
        0x5bt
        0x5at
        0x1t
        0xet
        0x47t
        0x40t
        0x5bt
        0x42t
        0x7t
    .end array-data
.end method

.method public setFrameVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setFrameVisible(Z)V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setMaskColor(I)V

    return-void
.end method

.method public setMaskVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mViewFinderView:Lcom/budiyev/android/codescanner/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/ViewFinderView;->setMaskVisible(Z)V

    return-void
.end method

.method setPreviewSize(Lcom/budiyev/android/codescanner/Point;)V
    .locals 0
    .param p1    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->requestLayout()V

    return-void
.end method

.method setSizeListener(Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;)V
    .locals 0
    .param p1    # Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView;->mSizeListener:Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;

    return-void
.end method
