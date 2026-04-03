.class public Lcom/google/android/material/checkbox/MaterialCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private centerIfNoTextEnabled:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x4

    new-array v2, v2, [[I

    const/4 v3, 0x0

    new-array v4, v5, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/android/material/checkbox/MaterialCheckBox;->ENABLED_CHECKED_STATES:[[I

    return-void

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    sget v4, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox:[I

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonTint:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCheckBox_useMaterialThemeColors:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    sget v0, Lcom/google/android/material/R$styleable;->MaterialCheckBox_centerIfNoTextEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 8

    const v7, 0x3ec28f5c    # 0.38f

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ENABLED_CHECKED_STATES:[[I

    array-length v1, v0

    new-array v1, v1, [I

    sget v2, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    sget v4, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x1

    const v5, 0x3f0a3d71    # 0.54f

    invoke-static {v3, v4, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v1, v2

    const/4 v2, 0x2

    invoke-static {v3, v4, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v1, v2

    const/4 v2, 0x3

    invoke-static {v3, v4, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method public isCenterIfNoTextEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return v0
.end method

.method public isUseMaterialThemeColors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
