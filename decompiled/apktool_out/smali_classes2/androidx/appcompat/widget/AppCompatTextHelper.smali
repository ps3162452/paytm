.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_0
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 3

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/16 v1, 0x11

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    if-nez p5, :cond_0

    if-eqz p6, :cond_6

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p5, :cond_2

    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    if-eqz p6, :cond_4

    :goto_2
    if-eqz p4, :cond_5

    :goto_3
    invoke-virtual {v1, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    aget-object p5, v0, v2

    goto :goto_0

    :cond_3
    aget-object p2, v0, v4

    goto :goto_1

    :cond_4
    aget-object p6, v0, v3

    goto :goto_2

    :cond_5
    aget-object p4, v0, v5

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_1

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    if-nez v1, :cond_8

    aget-object v1, v0, v3

    if-eqz v1, :cond_b

    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v2, v0, v2

    if-eqz p2, :cond_9

    :goto_5
    aget-object v3, v0, v3

    if-eqz p4, :cond_a

    :goto_6
    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    aget-object p2, v0, v4

    goto :goto_5

    :cond_a
    aget-object p4, v0, v5

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    :goto_7
    if-eqz p2, :cond_d

    :goto_8
    if-eqz p3, :cond_e

    :goto_9
    if-eqz p4, :cond_f

    :goto_a
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_c
    aget-object p1, v0, v2

    goto :goto_7

    :cond_d
    aget-object p2, v0, v4

    goto :goto_8

    :cond_e
    aget-object p3, v0, v3

    goto :goto_9

    :cond_f
    aget-object p4, v0, v5

    goto :goto_a
.end method

.method private setCompoundTints()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    return-void
.end method

.method private setTextSizeInternal(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 10

    const/16 v9, 0x1c

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_0

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v0, v8, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    :cond_0
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    :goto_0
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, p0, v3, v4, v6}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_8

    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v4, v8, :cond_8

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    move v3, v1

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_2
    :goto_2
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v3, :cond_9

    move v3, v1

    :goto_3
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_4
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v3, :cond_4

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_a

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v8, :cond_a

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_4
    :goto_6
    return-void

    :cond_5
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_6

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_6

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_6
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    :try_start_1
    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_9
    move v3, v2

    goto :goto_3

    :cond_a
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_6

    :catch_1
    move-exception v3

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v3

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    aget-object v1, v0, v4

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v3

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    aget-object v0, v0, v4

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v20

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move/from16 v8, p2

    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v4, -0x1

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    :cond_2
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    :cond_5
    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v0, v3, Landroid/text/method/PasswordTransformationMethod;

    move/from16 v22, v0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_2a

    sget-object v12, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    if-nez v22, :cond_6

    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v13, v14, :cond_29

    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_7
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_28

    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object/from16 v24, v7

    move-object v7, v6

    move-object/from16 v6, v24

    :goto_0
    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_27

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_26

    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_26

    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    :goto_3
    sget-object v10, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    const/4 v11, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v10, v2, v11}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v10

    if-nez v22, :cond_9

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_9

    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v3, 0x1

    :cond_9
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_c

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_a

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_a
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_b

    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v7}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_b
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_c

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_c
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_d

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v10, v8}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_d
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_e

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_e

    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v10, v9}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_e
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_f

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_f

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-nez v22, :cond_13

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_14
    :goto_4
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_15
    if-eqz v8, :cond_16

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    sget-boolean v3, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_17
    :goto_6
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v10, v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_18

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_18
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v10, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_19
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    const/4 v7, -0x1

    invoke-virtual {v10, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1a

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_1a
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    const/4 v7, -0x1

    invoke-virtual {v10, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_25

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_7
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    const/4 v11, -0x1

    invoke-virtual {v10, v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1b

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_1b
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    const/4 v11, -0x1

    invoke-virtual {v10, v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1c

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_1c
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_1d
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    const/4 v4, -0x1

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1e
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v4, -0x1

    invoke-virtual {v10, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    const/4 v5, -0x1

    invoke-virtual {v10, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    const/4 v6, -0x1

    invoke-virtual {v10, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v6, v3}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_1f
    const/4 v3, -0x1

    if-eq v4, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_20
    const/4 v3, -0x1

    if-eq v5, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v3, v5}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_21
    return-void

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    :cond_23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_16

    const/4 v3, 0x0

    const/16 v4, 0x2c

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto/16 :goto_6

    :cond_25
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_26
    move-object v9, v11

    goto/16 :goto_2

    :cond_27
    move-object v8, v10

    goto/16 :goto_1

    :cond_28
    move-object v7, v6

    move-object v6, v8

    goto/16 :goto_0

    :cond_29
    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    goto/16 :goto_0

    :cond_2a
    move-object v8, v12

    move-object v9, v13

    move-object v5, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_3
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    iget v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-direct {v1, p0, v0, p2, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method onLayout(ZIIII)V
    .locals 1

    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_0
    return-void
.end method

.method onSetCompoundDrawables()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTextSize(IF)V
    .locals 1

    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    :cond_0
    return-void
.end method
