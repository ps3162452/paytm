.class final Lcom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;

.field private final itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    iput-object p6, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    iput p4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    iput-object p5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;
    .locals 9

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a7142a"

    const/16 v3, -0x5462

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v6, Landroid/graphics/Rect;

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    invoke-static {p0, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    invoke-static {p0, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v7, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {p0, v7, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/CalendarItemStyle;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    move v0, v5

    goto :goto_0

    :array_0
    .array-data 1
        0x22t
        0x56t
        0x5ft
        0x5at
        0x5dt
        0x15t
        0x41t
        0x54t
        0x43t
        0x51t
        0x53t
        0x15t
        0x4t
        0x17t
        0x50t
        0x14t
        0x71t
        0x0t
        0xdt
        0x52t
        0x5ft
        0x50t
        0x53t
        0x13t
        0x28t
        0x43t
        0x54t
        0x59t
        0x61t
        0x15t
        0x18t
        0x5bt
        0x54t
        0x14t
        0x45t
        0x8t
        0x15t
        0x5ft
        0x11t
        0x55t
        0x12t
        0x12t
        0x15t
        0x4et
        0x5dt
        0x51t
        0x60t
        0x4t
        0x12t
        0x7et
        0x55t
        0x14t
        0x5dt
        0x7t
        0x41t
        0x7t
    .end array-data
.end method


# virtual methods
.method getBottomInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method getLeftInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method getRightInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method getTopInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method styleItem(Landroid/widget/TextView;)V
    .locals 6

    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
