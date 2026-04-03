.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$IconGravity;,
        Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field public static final ICON_GRAVITY_END:I = 0x3

.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_END:I = 0x4

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field public static final ICON_GRAVITY_TEXT_TOP:I = 0x20

.field public static final ICON_GRAVITY_TOP:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private broadcasting:Z

.field private checked:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I

.field private iconPadding:I

.field private iconSize:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private iconTop:I

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field private final onCheckedChangeListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1ea2d3"

    const-wide v2, 0x41db62ab92c00000L    # 1.837805131E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->LOG_TAG:Ljava/lang/String;

    new-array v0, v5, [I

    const v1, 0x101009f

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    new-array v0, v5, [I

    const v1, 0x10100a0

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x4t
        0x15t
        0x57t
        0x16t
        0x5at
        0x50t
        0x9t
        0x23t
        0x47t
        0x10t
        0x47t
        0x5et
        0xbt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget v4, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    iput-boolean v7, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean v7, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    new-array v5, v7, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    invoke-static {v2, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {v2, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    new-instance v2, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-static {v0, p2, p3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method private getA11yClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/CompoundButton;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Landroid/widget/Button;

    goto :goto_0
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTextAlignment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextHeight()I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTextWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private isIconEnd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIconStart()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIconTop()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetIconDrawable()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v0, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateIcon(Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v1, :cond_4

    :goto_1
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    iget v6, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    add-int/2addr v0, v5

    add-int/2addr v1, v6

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v1, v5, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_9

    :cond_8
    move v0, v3

    :goto_3
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method private updateIconPosition(II)V
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, v1, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v3, v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-ne v0, v6, :cond_8

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v3, v0, :cond_8

    :cond_4
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v0, v1, v0

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextWidth()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v0

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr v0, v4

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_a

    div-int/lit8 v0, v0, 0x2

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    move-result v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-ne v4, v6, :cond_c

    :goto_1
    if-eq v3, v1, :cond_b

    neg-int v0, v0

    :cond_b
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnCheckedChangeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getInsetBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetBottom()I

    move-result v0

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetTop()I

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x60

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a3f70e"

    const/16 v3, 0x5dca

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x47t
        0x12t
        0x52t
        0x5dt
        0x15t
        0x15t
        0x56t
        0x2t
        0x17t
        0x44t
        0xat
        0x41t
        0x54t
        0x3t
        0x43t
        0x10t
        0x36t
        0x9t
        0x52t
        0x16t
        0x52t
        0x71t
        0x15t
        0x11t
        0x56t
        0x7t
        0x45t
        0x51t
        0xbt
        0x2t
        0x56t
        0x2bt
        0x58t
        0x54t
        0x0t
        0xdt
        0x13t
        0x0t
        0x45t
        0x5ft
        0x8t
        0x41t
        0x52t
        0x46t
        0x7at
        0x51t
        0x11t
        0x4t
        0x41t
        0xft
        0x56t
        0x5ct
        0x27t
        0x14t
        0x47t
        0x12t
        0x58t
        0x5et
        0x45t
        0x16t
        0x5bt
        0xft
        0x54t
        0x58t
        0x45t
        0x9t
        0x52t
        0x15t
        0x17t
        0x51t
        0xbt
        0x41t
        0x5ct
        0x10t
        0x52t
        0x42t
        0x12t
        0x13t
        0x5at
        0x12t
        0x43t
        0x55t
        0xbt
        0x41t
        0x51t
        0x7t
        0x54t
        0x5bt
        0x2t
        0x13t
        0x5ct
        0x13t
        0x59t
        0x54t
        0x4bt
    .end array-data
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateMaskBounds(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean v1, v0, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public refreshDrawableState()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x138

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e987f2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x28t
        0x58t
        0x4ct
        0x52t
        0x14t
        0x5bt
        0x4t
        0x55t
        0x7at
        0x42t
        0x12t
        0x46t
        0xat
        0x57t
        0x18t
        0x5at
        0x7t
        0x5ct
        0x4t
        0x5et
        0x5dt
        0x44t
        0x46t
        0x5bt
        0x11t
        0x4at
        0x18t
        0x58t
        0x11t
        0x5ct
        0x45t
        0x5bt
        0x59t
        0x54t
        0xdt
        0x55t
        0x17t
        0x56t
        0x4dt
        0x59t
        0x2t
        0x12t
        0x11t
        0x56t
        0x18t
        0x54t
        0x9t
        0x5ct
        0x11t
        0x4bt
        0x57t
        0x5bt
        0x46t
        0x57t
        0x9t
        0x5ct
        0x4et
        0x56t
        0x12t
        0x5bt
        0xat
        0x57t
        0x14t
        0x17t
        0x15t
        0x5at
        0x4t
        0x49t
        0x5dt
        0x1bt
        0x46t
        0x51t
        0xat
        0x55t
        0x57t
        0x45t
        0x46t
        0x53t
        0xbt
        0x5dt
        0x18t
        0x44t
        0x12t
        0x53t
        0x11t
        0x5ct
        0x4bt
        0x19t
        0x46t
        0x71t
        0xat
        0x57t
        0x4bt
        0x5et
        0x2t
        0x57t
        0x17t
        0x19t
        0x4dt
        0x44t
        0xft
        0x5ct
        0x2t
        0x19t
        0x5at
        0x56t
        0x5t
        0x59t
        0x2t
        0x4bt
        0x57t
        0x42t
        0x8t
        0x56t
        0x31t
        0x50t
        0x56t
        0x43t
        0x4at
        0x12t
        0x16t
        0x51t
        0x59t
        0x47t
        0x3t
        0x73t
        0x15t
        0x49t
        0x5dt
        0x56t
        0x14t
        0x53t
        0xbt
        0x5at
        0x5dt
        0x17t
        0x7t
        0x5ct
        0x1t
        0x19t
        0x57t
        0x43t
        0xet
        0x57t
        0x17t
        0x19t
        0x59t
        0x43t
        0x12t
        0x40t
        0xct
        0x5bt
        0x4dt
        0x43t
        0x3t
        0x41t
        0x45t
        0x4et
        0x50t
        0x52t
        0x14t
        0x57t
        0x45t
        0x58t
        0x4et
        0x56t
        0xft
        0x5et
        0x4t
        0x5bt
        0x54t
        0x52t
        0x48t
        0x12t
        0x24t
        0x19t
        0x5bt
        0x42t
        0x15t
        0x46t
        0xat
        0x54t
        0x18t
        0x55t
        0x7t
        0x51t
        0xet
        0x5et
        0x4at
        0x58t
        0x13t
        0x5ct
        0x1t
        0x19t
        0x4ft
        0x5et
        0xat
        0x5et
        0x45t
        0x50t
        0x5ft
        0x59t
        0x9t
        0x40t
        0x0t
        0x19t
        0x4ct
        0x5ft
        0x3t
        0x41t
        0x0t
        0x19t
        0x59t
        0x43t
        0x12t
        0x40t
        0xct
        0x5bt
        0x4dt
        0x43t
        0x3t
        0x41t
        0x45t
        0x58t
        0x56t
        0x53t
        0x46t
        0x4bt
        0xat
        0x4ct
        0x18t
        0x44t
        0xet
        0x5dt
        0x10t
        0x55t
        0x5ct
        0x17t
        0x5t
        0x5dt
        0xbt
        0x4at
        0x51t
        0x53t
        0x3t
        0x40t
        0x45t
        0x51t
        0x59t
        0x59t
        0x2t
        0x5et
        0xct
        0x57t
        0x5ft
        0x17t
        0xft
        0x5ct
        0x11t
        0x5ct
        0x4at
        0x56t
        0x5t
        0x46t
        0xct
        0x56t
        0x56t
        0x17t
        0x15t
        0x46t
        0x4t
        0x4dt
        0x5dt
        0x44t
        0x46t
        0x41t
        0x10t
        0x5at
        0x50t
        0x17t
        0x7t
        0x41t
        0x45t
        0x49t
        0x4at
        0x52t
        0x15t
        0x41t
        0x0t
        0x5dt
        0x14t
        0x17t
        0x0t
        0x5dt
        0x6t
        0x4ct
        0x4bt
        0x52t
        0x2t
        0x12t
        0x4t
        0x57t
        0x5ct
        0x17t
        0x2t
        0x5bt
        0x16t
        0x58t
        0x5at
        0x5bt
        0x3t
        0x56t
    .end array-data
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCheckable(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-interface {v0, p0, v2}, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a021f0"

    const v3, 0x4e763dc0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x8t
        0x53t
        0x5dt
        0x5ft
        0x35t
        0x59t
        0x1bt
        0x55t
        0x12t
        0x52t
        0x7t
        0x5et
        0xft
        0x5ft
        0x46t
        0x11t
        0x4t
        0x55t
        0x41t
        0x5ct
        0x57t
        0x42t
        0x15t
        0x10t
        0x15t
        0x58t
        0x53t
        0x5ft
        0x46t
        0x0t
    .end array-data
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetBottom(I)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetTop(I)V

    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;->onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x5e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b18163"

    const/16 v3, 0x1a21

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x23t
        0x45t
        0x4ct
        0x54t
        0x5bt
        0x43t
        0x16t
        0x54t
        0x5ct
        0x11t
        0x42t
        0x5ct
        0x42t
        0x42t
        0x5dt
        0x45t
        0x16t
        0x60t
        0xat
        0x50t
        0x48t
        0x54t
        0x77t
        0x43t
        0x12t
        0x54t
        0x59t
        0x43t
        0x57t
        0x5dt
        0x1t
        0x54t
        0x75t
        0x5et
        0x52t
        0x56t
        0xet
        0x11t
        0x57t
        0x5ft
        0x16t
        0x52t
        0x42t
        0x7ct
        0x59t
        0x45t
        0x53t
        0x41t
        0xbt
        0x50t
        0x54t
        0x73t
        0x43t
        0x47t
        0x16t
        0x5et
        0x56t
        0x11t
        0x41t
        0x5bt
        0xbt
        0x52t
        0x50t
        0x11t
        0x5et
        0x52t
        0x11t
        0x11t
        0x59t
        0x5ft
        0x16t
        0x5ct
        0x14t
        0x54t
        0x4at
        0x46t
        0x44t
        0x5at
        0x16t
        0x45t
        0x5dt
        0x5ft
        0x16t
        0x51t
        0x3t
        0x52t
        0x53t
        0x56t
        0x44t
        0x5ct
        0x17t
        0x5ft
        0x5ct
        0x1ft
    .end array-data
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShouldDrawSurfaceColorStroke(Z)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setTextAlignment(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
