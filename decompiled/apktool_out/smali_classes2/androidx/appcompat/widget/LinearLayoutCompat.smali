.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "405bb2"

    const-wide/32 v2, -0x4285c14e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/LinearLayoutCompat;->ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0x5et
        0x51t
        0x10t
        0xdt
        0x5bt
        0x50t
        0x48t
        0x1bt
        0x3t
        0x12t
        0x42t
        0x57t
        0x5ft
        0x58t
        0x12t
        0x3t
        0x46t
        0x1at
        0x47t
        0x5ct
        0x6t
        0x5t
        0x57t
        0x40t
        0x1et
        0x79t
        0xbt
        0xct
        0x57t
        0x55t
        0x42t
        0x79t
        0x3t
        0x1bt
        0x5dt
        0x41t
        0x44t
        0x76t
        0xdt
        0xft
        0x42t
        0x55t
        0x44t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v9, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    iput v8, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    iput v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v0, 0x800033

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    sget-object v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v7

    sget-object v2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v7, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    :cond_0
    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v7, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_1
    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v7, v0, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    :cond_2
    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v7, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {v7, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v7, v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v7, v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    sget v0, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v7, v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    const/4 v0, -0x1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v1, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    if-ne v3, v0, :cond_2

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x66

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "07a6d9"

    const/16 v3, -0x6bb2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x51

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "60e272"

    const-wide v4, -0x3e3acc8251000000L    # -7.11392094E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5dt
        0x75t
        0x0t
        0x45t
        0x1t
        0x55t
        0x59t
        0x59t
        0x4t
        0x77t
        0x8t
        0x50t
        0x57t
        0x59t
        0x4t
        0x52t
        0x27t
        0x51t
        0x59t
        0x5bt
        0x5t
        0x7ft
        0xat
        0x5dt
        0x55t
        0x4ft
        0x41t
        0x59t
        0x2t
        0x19t
        0x7ct
        0x5et
        0xft
        0x53t
        0x5t
        0x4bt
        0x7ct
        0x56t
        0x18t
        0x59t
        0x11t
        0x4dt
        0x10t
        0x47t
        0xet
        0x5ft
        0xat
        0x4dt
        0x43t
        0x17t
        0x15t
        0x59t
        0x44t
        0x58t
        0x10t
        0x61t
        0x8t
        0x53t
        0x13t
        0x19t
        0x44t
        0x5ft
        0x0t
        0x42t
        0x44t
        0x5dt
        0x5ft
        0x52t
        0x12t
        0x58t
        0x43t
        0x4dt
        0x10t
        0x5ct
        0xft
        0x59t
        0x13t
        0x19t
        0x58t
        0x58t
        0x16t
        0x16t
        0x10t
        0x56t
        0x10t
        0x50t
        0x4t
        0x42t
        0x44t
        0x50t
        0x44t
        0x44t
        0x41t
        0x54t
        0x5t
        0x4at
        0x55t
        0x5bt
        0x8t
        0x58t
        0x1t
        0x17t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :array_1
    .array-data 1
        0x5bt
        0x72t
        0x4t
        0x41t
        0x52t
        0x5et
        0x5ft
        0x5et
        0x0t
        0x73t
        0x5bt
        0x5bt
        0x51t
        0x5et
        0x0t
        0x56t
        0x74t
        0x5at
        0x5ft
        0x5ct
        0x1t
        0x7bt
        0x59t
        0x56t
        0x53t
        0x48t
        0x45t
        0x5dt
        0x51t
        0x12t
        0x7at
        0x59t
        0xbt
        0x57t
        0x56t
        0x40t
        0x7at
        0x51t
        0x1ct
        0x5dt
        0x42t
        0x46t
        0x16t
        0x43t
        0x0t
        0x46t
        0x17t
        0x46t
        0x59t
        0x10t
        0x4t
        0x5ct
        0x17t
        0x5bt
        0x58t
        0x54t
        0x0t
        0x4at
        0x17t
        0x46t
        0x5et
        0x51t
        0x11t
        0x12t
        0x5et
        0x41t
        0x16t
        0x5ft
        0x10t
        0x46t
        0x17t
        0x5dt
        0x50t
        0x10t
        0x7t
        0x5dt
        0x42t
        0x5ct
        0x52t
        0x43t
        0x4bt
    .end array-data
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 24

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v11

    sub-int v13, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v14, v13, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v20, v0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const v4, 0x800007

    and-int v4, v4, v17

    invoke-static {v4, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v16, -0x1

    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    :goto_1
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    mul-int v2, v9, v12

    add-int v21, v10, v2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v12

    :goto_3
    add-int/lit8 v12, v2, 0x1

    goto :goto_2

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x1

    move v9, v2

    move v10, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v18, :cond_4

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    :goto_4
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v5, :cond_2

    and-int/lit8 v5, v17, 0x70

    :cond_2
    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_1

    move v5, v11

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v4

    :goto_6
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v22, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v22, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v12

    add-int v3, v6, v4

    add-int/2addr v3, v5

    add-int v4, v22, v3

    goto/16 :goto_3

    :cond_4
    const/4 v2, -0x1

    goto :goto_4

    :sswitch_2
    sub-int v5, v14, v7

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v5, v5, v22

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    const/16 v23, 0x2

    aget v23, v20, v23

    sub-int v2, v22, v2

    sub-int v2, v23, v2

    sub-int/2addr v5, v2

    goto :goto_5

    :sswitch_3
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v11

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    const/16 v22, 0x1

    aget v22, v19, v22

    sub-int v2, v22, v2

    add-int/2addr v5, v2

    goto :goto_5

    :sswitch_4
    sub-int v2, v13, v11

    sub-int/2addr v2, v15

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v5

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    move v2, v4

    goto :goto_6

    :cond_7
    move v2, v12

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v10

    sub-int v11, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v15, 0x70

    sparse-switch v1, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    :goto_0
    const/4 v8, 0x0

    move v9, v10

    move v4, v1

    :goto_1
    if-ge v8, v14, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v4, v1

    move v1, v8

    :goto_2
    add-int/lit8 v8, v1, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    sub-int v2, p4, p2

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_1

    const v1, 0x800007

    and-int/2addr v1, v15

    :cond_1
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_1

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v3, v1, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v4

    :goto_4
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v1, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v8

    add-int v2, v6, v3

    add-int/2addr v2, v4

    add-int v4, v16, v2

    goto/16 :goto_2

    :sswitch_2
    sub-int v1, v11, v12

    sub-int/2addr v1, v5

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v3, v1, v3

    goto :goto_3

    :sswitch_3
    sub-int v1, v11, v10

    sub-int/2addr v1, v13

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v3, v1, v3

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v8

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 29

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v26, v0

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v26, v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v28, v0

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    :goto_0
    const/4 v5, 0x0

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v7, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v8, v20

    move v9, v5

    move/from16 v5, v18

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v15, v7

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v8

    move v5, v9

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v7, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v8, v20

    move v9, v5

    move/from16 v5, v18

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v19, v6, v3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_a

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3
    if-eqz v27, :cond_9

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    :cond_6
    :goto_4
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_35

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_5
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    if-eqz v27, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v18

    const/4 v7, -0x1

    move/from16 v0, v18

    if-eq v0, v7, :cond_7

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    aget v21, v25, v7

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    aget v21, v26, v7

    sub-int v18, v9, v18

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v26, v7

    :cond_7
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    if-eqz v15, :cond_10

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v7, v15, :cond_10

    const/4 v7, 0x1

    :goto_7
    iget v10, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_12

    if-eqz v3, :cond_11

    move v3, v8

    :goto_8
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v13

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v14, v8

    move v13, v3

    move/from16 v4, v17

    move v9, v5

    move v5, v12

    move/from16 v8, v18

    move/from16 v3, v16

    move v12, v6

    move/from16 v6, v19

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_3

    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_a
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_c

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    const/4 v3, -0x2

    iput v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, 0x0

    move/from16 v21, v3

    :goto_a
    const/4 v3, 0x0

    cmpl-float v3, v19, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_b
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_b

    move/from16 v0, v21

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_c
    if-eqz v28, :cond_6

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto/16 :goto_4

    :cond_c
    const/high16 v3, -0x80000000

    move/from16 v21, v3

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    goto :goto_b

    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v7, v6, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_c

    :cond_f
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto/16 :goto_6

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_11
    move v3, v9

    goto/16 :goto_8

    :cond_12
    if-eqz v3, :cond_13

    :goto_d
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    goto/16 :goto_9

    :cond_13
    move v8, v9

    goto :goto_d

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_15
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    :cond_16
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_e
    if-eqz v28, :cond_1c

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_17

    if-nez v23, :cond_1c

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v4, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v4, v0, :cond_1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    :goto_10
    add-int/lit8 v4, v3, 0x1

    goto :goto_f

    :cond_18
    move/from16 v5, v20

    goto :goto_e

    :cond_19
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_10

    :cond_1a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v9, v9, v17

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_10

    :cond_1b
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v8, v17

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v19

    const v3, 0xffffff

    and-int v3, v3, v19

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v7, v3, v4

    if-nez v16, :cond_1d

    if-eqz v7, :cond_1f

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1f

    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1e

    move v6, v3

    :cond_1e
    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v25, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v26, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v8, v15

    move v9, v6

    move v14, v13

    move/from16 v6, v18

    move v13, v4

    move v15, v3

    :goto_11
    move/from16 v0, v22

    if-ge v15, v0, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_34

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_24

    move v3, v6

    move v4, v8

    move v5, v7

    move v6, v9

    move v7, v13

    move v8, v14

    :goto_12
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v13, v7

    move v14, v8

    move v9, v6

    move v8, v4

    move v7, v5

    move v6, v3

    goto :goto_11

    :cond_1f
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-eqz v28, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_22

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    move/from16 v0, v22

    if-ge v4, v0, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_21

    :cond_20
    :goto_14
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_13

    :cond_21
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_20

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_14

    :cond_22
    move v4, v5

    move v3, v14

    :goto_15
    if-nez v15, :cond_32

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_32

    :goto_16
    const/high16 v4, -0x1000000

    and-int v4, v4, v18

    or-int v4, v4, v19

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v18, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v12, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_23
    return-void

    :cond_24
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-lez v4, :cond_33

    int-to-float v4, v7

    mul-float/2addr v4, v10

    div-float/2addr v4, v9

    float-to-int v5, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v17

    add-int v4, v4, v17

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v4, v4, v17

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v4, v4, v17

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v4, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v17

    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v4, :cond_25

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_28

    :cond_25
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v5

    if-gez v4, :cond_26

    const/4 v4, 0x0

    :cond_26
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->measure(II)V

    :goto_17
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v17, -0x1000000

    and-int v4, v4, v17

    invoke-static {v6, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    sub-float v10, v9, v10

    sub-int v9, v7, v5

    move v7, v6

    :goto_18
    if-eqz v11, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_19
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_2b

    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x1

    :goto_1a
    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v4, :cond_2c

    move v4, v5

    :goto_1b
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v8, :cond_2d

    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_2d

    const/4 v4, 0x1

    :goto_1c
    if-eqz v27, :cond_27

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBaseline()I

    move-result v8

    const/4 v14, -0x1

    if-eq v8, v14, :cond_27

    iget v14, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v14, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    :goto_1d
    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    aget v14, v25, v3

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v25, v3

    aget v14, v26, v3

    sub-int/2addr v6, v8

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v26, v3

    :cond_27
    move v3, v7

    move v6, v10

    move v8, v5

    move v7, v13

    move v5, v9

    goto/16 :goto_12

    :cond_28
    if-lez v5, :cond_29

    move v4, v5

    :goto_1e
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_17

    :cond_29
    const/4 v4, 0x0

    goto :goto_1e

    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_19

    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_1a

    :cond_2c
    move v4, v6

    goto :goto_1b

    :cond_2d
    const/4 v4, 0x0

    goto :goto_1c

    :cond_2e
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto :goto_1d

    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_30

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_30

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_30

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    :cond_30
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v9, 0x2

    aget v9, v26, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_31
    move v4, v13

    move v15, v8

    move v3, v14

    move/from16 v18, v6

    goto/16 :goto_15

    :cond_32
    move v3, v4

    goto/16 :goto_16

    :cond_33
    move v10, v9

    move v9, v7

    move v7, v6

    goto/16 :goto_18

    :cond_34
    move v3, v6

    move v4, v8

    move v5, v7

    move v6, v9

    move v7, v13

    move v8, v14

    goto/16 :goto_12

    :cond_35
    move v6, v12

    goto/16 :goto_5
.end method

.method measureNullChild(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 27

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v25, v0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x1

    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v7, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v8, v18

    move/from16 v9, v19

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v7

    move v15, v3

    move/from16 v16, v4

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v7, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v8, v18

    move/from16 v9, v19

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v17, v6, v3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_6

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_6

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/16 v19, 0x1

    :cond_3
    :goto_2
    if-ltz v24, :cond_4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_4
    move/from16 v0, v24

    if-ge v5, v0, :cond_5

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_a

    :cond_5
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_27

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_27

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_3
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v0, v16

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v14, :cond_b

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v7, v14, :cond_b

    const/4 v7, 0x1

    :goto_4
    iget v10, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_d

    if-eqz v3, :cond_c

    move v3, v8

    :goto_5
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v12

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v13, v8

    move v4, v11

    move v12, v3

    move/from16 v9, v19

    move v3, v15

    move/from16 v8, v18

    move v11, v6

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_6
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_8

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    const/4 v3, -0x2

    iput v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, 0x0

    move/from16 v20, v3

    :goto_7
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_8
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    move/from16 v0, v20

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v7, v6, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v25, :cond_3

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_2

    :cond_8
    const/high16 v3, -0x80000000

    move/from16 v20, v3

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    const/16 v4, 0xad

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "58e18f"

    const/16 v6, 0xeb

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_c
    move v3, v9

    goto/16 :goto_5

    :cond_d
    if-eqz v3, :cond_e

    :goto_9
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    goto/16 :goto_6

    :cond_e
    move v8, v9

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_10
    if-eqz v25, :cond_14

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_11

    if-nez v23, :cond_14

    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v4, 0x0

    :goto_a
    move/from16 v0, v21

    if-ge v4, v0, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    :goto_b
    add-int/lit8 v4, v3, 0x1

    goto :goto_a

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_b

    :cond_13
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v8, v7, v15

    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v17

    const v3, 0xffffff

    and-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    if-nez v19, :cond_15

    if-eqz v4, :cond_17

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_16

    move v6, v3

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    move v9, v14

    move/from16 v5, v16

    move v10, v12

    move v7, v6

    move v6, v4

    move/from16 v12, v18

    move v14, v3

    :goto_c
    move/from16 v0, v21

    if-ge v14, v0, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1c

    move v3, v10

    move v4, v7

    move v8, v12

    move v7, v9

    :goto_d
    add-int/lit8 v9, v14, 0x1

    move v10, v3

    move v12, v8

    move v14, v9

    move v9, v7

    move v7, v4

    goto :goto_c

    :cond_17
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v25, :cond_1a

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    move/from16 v0, v21

    if-ge v4, v0, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_19

    :cond_18
    :goto_f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e

    :cond_19
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_1a
    move v3, v10

    move/from16 v4, v18

    :goto_10
    if-nez v14, :cond_25

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_25

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v3, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v8, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_26

    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v16

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v20, v0

    sub-int/2addr v6, v4

    add-int v13, v13, v16

    add-int v13, v13, v18

    add-int v13, v13, v19

    move/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v13

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v16, v0

    if-nez v16, :cond_1d

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v16

    if-eq v0, v1, :cond_1f

    :cond_1d
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v4, v4, v16

    if-gez v4, :cond_1e

    const/4 v4, 0x0

    :cond_1e
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v13, v4}, Landroid/view/View;->measure(II)V

    :goto_12
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    sub-float v5, v7, v8

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    :goto_13
    iget v7, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_21

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_21

    const/4 v13, 0x1

    :goto_14
    if-eqz v13, :cond_22

    :goto_15
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v9, :cond_23

    iget v7, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_23

    const/4 v7, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v13

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v10

    add-int/2addr v3, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v8

    move v8, v12

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto/16 :goto_d

    :cond_1f
    if-lez v4, :cond_20

    :goto_17
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v13, v4}, Landroid/view/View;->measure(II)V

    goto :goto_12

    :cond_20
    const/4 v4, 0x0

    goto :goto_17

    :cond_21
    const/4 v13, 0x0

    goto :goto_14

    :cond_22
    move v7, v8

    goto :goto_15

    :cond_23
    const/4 v7, 0x0

    goto :goto_16

    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v14, v9

    move/from16 v16, v5

    move v3, v10

    move v4, v12

    goto/16 :goto_10

    :cond_25
    move v3, v4

    goto/16 :goto_11

    :cond_26
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_13

    :cond_27
    move v6, v11

    goto/16 :goto_3

    nop

    :array_0
    .array-data 1
        0x74t
        0x18t
        0x6t
        0x59t
        0x51t
        0xat
        0x51t
        0x18t
        0xat
        0x57t
        0x18t
        0x2at
        0x5ct
        0x56t
        0x0t
        0x50t
        0x4at
        0x2at
        0x54t
        0x41t
        0xat
        0x44t
        0x4ct
        0x46t
        0x42t
        0x51t
        0x11t
        0x59t
        0x18t
        0xft
        0x5bt
        0x5ct
        0x0t
        0x49t
        0x18t
        0xat
        0x50t
        0x4bt
        0x16t
        0x11t
        0x4ct
        0xet
        0x54t
        0x56t
        0x45t
        0x5ct
        0x7at
        0x7t
        0x46t
        0x5dt
        0x9t
        0x58t
        0x56t
        0x3t
        0x74t
        0x54t
        0xct
        0x56t
        0x56t
        0x3t
        0x51t
        0x7bt
        0xdt
        0x58t
        0x54t
        0x2t
        0x7ct
        0x56t
        0x1t
        0x54t
        0x40t
        0x46t
        0x5dt
        0x59t
        0x16t
        0x11t
        0x4ft
        0x3t
        0x5ct
        0x5ft
        0xdt
        0x45t
        0x18t
        0x58t
        0x15t
        0x8t
        0x49t
        0x11t
        0x4ft
        0xet
        0x5ct
        0x5bt
        0xdt
        0x11t
        0x4ft
        0x9t
        0x5bt
        0x1ft
        0x11t
        0x11t
        0x4ft
        0x9t
        0x47t
        0x53t
        0x4bt
        0x11t
        0x18t
        0x23t
        0x5ct
        0x4ct
        0xdt
        0x54t
        0x4at
        0x46t
        0x47t
        0x5dt
        0x8t
        0x5et
        0x4et
        0x3t
        0x15t
        0x4ct
        0xdt
        0x54t
        0x18t
        0x11t
        0x50t
        0x51t
        0x2t
        0x59t
        0x4ct
        0x4at
        0x15t
        0x57t
        0x17t
        0x11t
        0x5ct
        0x9t
        0x5bt
        0x1ft
        0x11t
        0x11t
        0x4bt
        0x3t
        0x41t
        0x18t
        0x8t
        0x73t
        0x59t
        0x15t
        0x50t
        0x54t
        0xct
        0x5ft
        0x5dt
        0x27t
        0x59t
        0x51t
        0x2t
        0x5ft
        0x5dt
        0x2t
        0x76t
        0x50t
        0xct
        0x5dt
        0x5ct
        0x2ft
        0x5bt
        0x5ct
        0x0t
        0x49t
        0x16t
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sget-object v0, Landroidx/appcompat/widget/LinearLayoutCompat;->ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroidx/appcompat/widget/LinearLayoutCompat;->ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "387a4b"

    const/16 v3, 0x43b1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const-string v2, "09052c"

    const v3, 0x4eb53f1b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x51t
        0x59t
        0x44t
        0x4t
        0x14t
        0x3t
        0x5ft
        0x51t
        0x50t
        0xft
        0x51t
        0x6t
        0x13t
        0x5bt
        0x5ft
        0x8t
        0x58t
        0x6t
        0x13t
        0x51t
        0x59t
        0x5t
        0x51t
        0x1at
        0x13t
        0x57t
        0x42t
        0x15t
        0x14t
        0xdt
        0x55t
        0x18t
        0x45t
        0x0t
        0x5at
        0x5t
        0x56t
        0x18t
        0x1ft
        0x51t
        0x18t
        0x42t
    .end array-data
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    goto :goto_0

    :cond_2
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_1

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const v0, 0x800003

    or-int/2addr v0, p1

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    const v2, 0x800007

    and-int v0, p1, v2

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v2, v1

    if-eq v2, v0, :cond_0

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_0

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
