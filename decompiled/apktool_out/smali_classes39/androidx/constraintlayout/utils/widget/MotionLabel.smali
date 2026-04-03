.class public Landroidx/constraintlayout/utils/widget/MotionLabel;
.super Landroid/view/View;

# interfaces
.implements Landroidx/constraintlayout/motion/widget/FloatLayout;


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field static TAG:Ljava/lang/String;


# instance fields
.field private mAutoSize:Z

.field private mAutoSizeTextType:I

.field mBackgroundPanX:F

.field mBackgroundPanY:F

.field private mBaseTextSize:F

.field private mDeltaLeft:F

.field private mFloatHeight:F

.field private mFloatWidth:F

.field private mFontFamily:Ljava/lang/String;

.field private mGravity:I

.field private mLayout:Landroid/text/Layout;

.field mNotBuilt:Z

.field mOutlinePositionMatrix:Landroid/graphics/Matrix;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field mPaint:Landroid/text/TextPaint;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field private mStyleIndex:I

.field mTempPaint:Landroid/graphics/Paint;

.field mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextBackground:Landroid/graphics/drawable/Drawable;

.field private mTextBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextFillColor:I

.field private mTextOutlineColor:I

.field private mTextOutlineThickness:F

.field private mTextPanX:F

.field private mTextPanY:F

.field private mTextShader:Landroid/graphics/BitmapShader;

.field private mTextShaderMatrix:Landroid/graphics/Matrix;

.field private mTextSize:F

.field private mTextureEffect:I

.field private mTextureHeight:F

.field private mTextureWidth:F

.field private mTransformed:Ljava/lang/CharSequence;

.field private mTypefaceIndex:I

.field private mUseOutline:Z

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field mZoom:F

.field paintCache:Landroid/graphics/Paint;

.field paintTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "771ed8"

    const-wide v2, -0x3e24ac1081000000L    # -1.833942524E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x58t
        0x45t
        0xct
        0xbt
        0x56t
        0x7bt
        0x56t
        0x53t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v1, 0xffff

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c1c43b"

    const/16 v2, 0x1412

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    const v0, 0x800033

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x54t
        0xft
        0x58t
        0x5ct
        0x42t
        0x34t
        0x5et
        0x11t
        0x58t
        0x57t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v1, 0xffff

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    iput-boolean v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "157078"

    const-wide v2, 0x41dc65ea6a400000L    # 1.905764777E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    iput-boolean v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    const v0, 0x800033

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    iput-boolean v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 1
        0x79t
        0x50t
        0x5bt
        0x5ct
        0x58t
        0x18t
        0x66t
        0x5at
        0x45t
        0x5ct
        0x53t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v1, 0xffff

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e86de0"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    const v0, 0x800033

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x5dt
        0x5at
        0x8t
        0xat
        0x10t
        0x32t
        0x57t
        0x44t
        0x8t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    return v0
.end method

.method private adjustTexture(FFFF)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-float v0, p3, p1

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    sub-float v0, p4, p2

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    goto :goto_0
.end method

.method private getHorizontalOffset()F
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    goto :goto_1
.end method

.method private getVerticalOffset()F
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v7, 0x15

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setUpTheme(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel:[I

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_17

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_text:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_fontFamily:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_scaleFromTextSize:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    goto :goto_1

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textSize:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    goto :goto_1

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textStyle:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    goto :goto_1

    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_typeface:I

    if-ne v4, v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    goto :goto_1

    :cond_6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textColor:I

    if-ne v4, v5, :cond_7

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    goto :goto_1

    :cond_7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRound:I

    if-ne v4, v5, :cond_8

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_0

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRound(F)V

    goto :goto_1

    :cond_8
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRoundPercent:I

    if-ne v4, v5, :cond_9

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_0

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    goto :goto_1

    :cond_9
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_gravity:I

    if-ne v4, v5, :cond_a

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setGravity(I)V

    goto/16 :goto_1

    :cond_a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_autoSizeTextType:I

    if-ne v4, v5, :cond_b

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    goto/16 :goto_1

    :cond_b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineColor:I

    if-ne v4, v5, :cond_c

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    goto/16 :goto_1

    :cond_c
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineThickness:I

    if-ne v4, v5, :cond_d

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    goto/16 :goto_1

    :cond_d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackground:I

    if-ne v4, v5, :cond_e

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    goto/16 :goto_1

    :cond_e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanX:I

    if-ne v4, v5, :cond_f

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    goto/16 :goto_1

    :cond_f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanY:I

    if-ne v4, v5, :cond_10

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    goto/16 :goto_1

    :cond_10
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanX:I

    if-ne v4, v5, :cond_11

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    goto/16 :goto_1

    :cond_11
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanY:I

    if-ne v4, v5, :cond_12

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    goto/16 :goto_1

    :cond_12
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundRotate:I

    if-ne v4, v5, :cond_13

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    goto/16 :goto_1

    :cond_13
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundZoom:I

    if-ne v4, v5, :cond_14

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    goto/16 :goto_1

    :cond_14
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureHeight:I

    if-ne v4, v5, :cond_15

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    goto/16 :goto_1

    :cond_15
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureWidth:I

    if-ne v4, v5, :cond_16

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    goto/16 :goto_1

    :cond_16
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureEffect:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setupTexture()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setupPath()V

    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    if-lez p3, :cond_4

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :goto_3
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p3

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/high16 v0, -0x41800000    # -0.25f

    :goto_4
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setUpTheme(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private setupTexture()V
    .locals 5

    const/16 v0, 0x80

    const/4 v4, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :cond_0
    :goto_0
    if-gtz v1, :cond_6

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    if-eqz v1, :cond_5

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    :goto_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    float-to-int v2, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    float-to-int v0, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private updateShaderMatrix()V
    .locals 13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v7, v4

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v8, v4

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    :goto_4
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    move v6, v5

    :goto_5
    mul-float v5, v7, v6

    mul-float v9, v8, v4

    cmpg-float v5, v5, v9

    if-gez v5, :cond_8

    div-float v5, v4, v7

    :goto_6
    mul-float v9, v5, v3

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v3, v9, v7

    sub-float v5, v4, v3

    mul-float v3, v9, v8

    sub-float v3, v6, v3

    iget v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_0

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    div-float/2addr v3, v11

    :cond_0
    iget v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_1

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    div-float/2addr v5, v11

    :cond_1
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    mul-float v5, v9, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v12

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    mul-float v3, v9, v8

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    div-float v2, v4, v11

    div-float v3, v6, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    goto/16 :goto_1

    :cond_4
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    goto/16 :goto_2

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    goto/16 :goto_3

    :cond_6
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    goto :goto_4

    :cond_7
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    move v6, v5

    goto :goto_5

    :cond_8
    div-float v5, v6, v8

    goto :goto_6
.end method


# virtual methods
.method blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v1, 0x2

    invoke-static {p1, v0, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    if-lt v0, v5, :cond_0

    if-ge v2, v5, :cond_1

    :cond_0
    return-object v3

    :cond_1
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method buildShape(F)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    if-nez v0, :cond_0

    cmpl-float v0, p1, v7

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    cmpl-float v0, p1, v7

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "74d045"

    invoke-static {v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x17t
        0x47t
        0x7t
        0x51t
        0x58t
        0x50t
        0x17t
    .end array-data
.end method

.method public getRound()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    return v0
.end method

.method public getScaleFromTextSize()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    return v0
.end method

.method public getTextBackgroundPanX()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    return v0
.end method

.method public getTextBackgroundPanY()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    return v0
.end method

.method public getTextBackgroundRotate()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    return v0
.end method

.method public getTextBackgroundZoom()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    return v0
.end method

.method public getTextOutlineColor()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    return v0
.end method

.method public getTextPanX()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    return v0
.end method

.method public getTextPanY()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    return v0
.end method

.method public getTextureHeight()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    return v0
.end method

.method public getTextureWidth()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public layout(FFFF)V
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v0, p1, v3

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    add-float v0, p3, v3

    float-to-int v0, v0

    add-float v1, p1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    add-float v1, p4, v3

    float-to-int v1, v1

    add-float v2, p2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sub-float v2, p3, p1

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    sub-float v2, p4, p2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->adjustTexture(FFFF)V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    move-result v2

    if-eq v2, v0, :cond_4

    :cond_0
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->measure(II)V

    add-float v0, p1, v3

    float-to-int v0, v0

    add-float v1, p2, v3

    float-to-int v1, v1

    add-float v2, p3, v3

    float-to-int v2, v2

    add-float/2addr v3, p4

    float-to-int v3, v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    :cond_1
    sub-float v0, p3, p1

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    sub-float v0, p4, p2

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v3, p4, p2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v4, v3

    mul-float v5, v1, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :cond_3
    return-void

    :cond_4
    add-float v0, p1, v3

    float-to-int v0, v0

    add-float v1, p2, v3

    float-to-int v1, v1

    add-float v2, p3, v3

    float-to-int v2, v2

    add-float/2addr v3, p4

    float-to-int v3, v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    mul-float/2addr v2, v3

    div-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v1

    goto :goto_2
.end method

.method public layout(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sub-int v2, p3, p1

    int-to-float v2, v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    sub-int v2, p4, p2

    int-to-float v2, v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    if-eqz v1, :cond_6

    int-to-float v6, v2

    mul-float/2addr v6, v5

    int-to-float v7, v3

    mul-float/2addr v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    mul-float/2addr v4, v5

    int-to-float v2, v2

    div-float v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->adjustTexture(FFFF)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    mul-float/2addr v4, v5

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    :cond_6
    int-to-float v0, v2

    mul-float/2addr v0, v5

    int-to-float v6, v3

    mul-float/2addr v6, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    int-to-float v0, v2

    div-float v0, v4, v0

    goto :goto_1

    :cond_7
    int-to-float v0, v3

    div-float v0, v5, v0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    if-nez v2, :cond_1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v1

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    int-to-float v2, v2

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    add-float v1, v2, v3

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    :cond_3
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    int-to-float v1, v1

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    int-to-float v2, v2

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    int-to-float v1, v1

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v10, 0x0

    const v9, 0x3f7fff58    # 0.99999f

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput-boolean v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    if-ne v2, v8, :cond_0

    if-eq v3, v8, :cond_3

    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v10, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eq v2, v8, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v9

    float-to-int v0, v0

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    if-eq v3, v8, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v9

    float-to-int v0, v0

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setMeasuredDimension(II)V

    return-void

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const v4, 0x800007

    and-int v0, p1, v4

    if-nez v0, :cond_3

    const v0, 0x800003

    or-int/2addr v0, p1

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    and-int v2, v0, v4

    and-int v3, v1, v4

    if-eq v2, v3, :cond_1

    :cond_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    :cond_2
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    sparse-switch v1, :sswitch_data_0

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    :goto_1
    and-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_1

    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    :goto_2
    return-void

    :sswitch_0
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    goto :goto_1

    :sswitch_1
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    goto :goto_1

    :sswitch_2
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    goto :goto_2

    :sswitch_3
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x800003 -> :sswitch_3
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRound(F)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x15

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    cmpl-float v3, p1, v4

    if-eqz v3, :cond_8

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4

    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionLabel$2;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_6
    :goto_2
    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_6

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    goto :goto_2
.end method

.method public setRoundPercent(F)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x15

    const/4 v5, 0x0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    cmpl-float v3, p1, v5

    if-eqz v3, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionLabel$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v4, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_4

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    goto :goto_1
.end method

.method public setScaleFromTextSize(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextBackgroundPanX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextBackgroundPanY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextBackgroundRotate(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextBackgroundZoom(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextFillColor(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextOutlineColor(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextOutlineThickness(F)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextPanX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextPanY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 6

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    sget-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "c44f38"

    const/16 v5, -0x5fd0

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    div-float/2addr v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x43t
        0x1bt
        0x14t
    .end array-data
.end method

.method public setTextureHeight(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTextureWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    :cond_0
    return-void
.end method

.method setupPath()V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTextSize(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method
