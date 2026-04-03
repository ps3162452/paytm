.class public Lcom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;

.field public final fontFamily:Ljava/lang/String;

.field private final fontFamilyResourceId:I

.field private fontResolved:Z

.field public final hasLetterSpacing:Z

.field public final letterSpacing:F

.field public final shadowColor:Landroid/content/res/ColorStateList;

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field private textColor:Landroid/content/res/ColorStateList;

.field public final textColorHint:Landroid/content/res/ColorStateList;

.field public final textColorLink:Landroid/content/res/ColorStateList;

.field private textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d7bd86"

    const-wide/32 v2, 0x68be6729

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/resources/TextAppearance;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x52t
        0x1at
        0x10t
        0x79t
        0x46t
        0x14t
        0x52t
        0x3t
        0x16t
        0x59t
        0x58t
        0x7t
        0x52t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    sget-object v0, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    iput v3, p0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/material/resources/TextAppearance;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/material/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    return p1
.end method

.method private createFallbackFont()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldLoadFontSynchronously(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getFallbackFont()Landroid/graphics/Typeface;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/material/resources/TextAppearance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c704ae"

    const-wide/32 v6, 0x5e00a0b3

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :array_0
    .array-data 1
        0x26t
        0x45t
        0x42t
        0x5bt
        0x13t
        0x45t
        0xft
        0x58t
        0x51t
        0x50t
        0x8t
        0xbt
        0x4t
        0x17t
        0x56t
        0x5bt
        0xft
        0x11t
        0x43t
    .end array-data
.end method

.method public getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/google/android/material/resources/TextAppearance$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance$2;-><init>(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    return-void
.end method

.method public getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    :goto_0
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    if-nez v0, :cond_0

    iput-boolean v6, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v6}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/google/android/material/resources/TextAppearance$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/material/resources/TextAppearance$1;-><init>(Lcom/google/android/material/resources/TextAppearance;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v6, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    invoke-virtual {p2, v6}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/android/material/resources/TextAppearance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c0d231"

    const/16 v5, 0x425

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v6, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    const/4 v0, -0x3

    invoke-virtual {p2, v0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    goto :goto_1

    :array_0
    .array-data 1
        0x26t
        0x42t
        0x16t
        0x5dt
        0x41t
        0x11t
        0xft
        0x5ft
        0x5t
        0x56t
        0x5at
        0x5ft
        0x4t
        0x10t
        0x2t
        0x5dt
        0x5dt
        0x45t
        0x43t
    .end array-data
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    return v0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    return-void
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iget v2, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iget v3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v4, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v5, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_1
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    goto :goto_0
.end method

.method public updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 2

    invoke-static {p1, p3}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_1
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
