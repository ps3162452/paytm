.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field private static final VERY_WIDE:I = 0x100000

.field private static sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private final mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d466fc"

    const-wide v2, -0x3e311b9a70800000L    # -1.036569375E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :array_0
    .array-data 1
        0x25t
        0x77t
        0x62t
        0x60t
        0x27t
        0x16t
        0x10t
        0x5bt
        0x65t
        0x5ft
        0x1ct
        0x6t
        0x2ct
        0x51t
        0x5at
        0x46t
        0x3t
        0x11t
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;

    invoke-direct {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;

    invoke-direct {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    invoke-direct {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    goto :goto_0
.end method

.method private static accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "f024ce"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6c3709"

    const-wide v4, 0x41ab7011da000000L    # 2.30164717E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x20t
        0x51t
        0x5bt
        0x58t
        0x6t
        0x1t
        0x46t
        0x44t
        0x5dt
        0x14t
        0x2t
        0x6t
        0x5t
        0x55t
        0x41t
        0x47t
        0x43t
        0x31t
        0x3t
        0x48t
        0x46t
        0x62t
        0xat
        0x0t
        0x11t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0xet
        0x56t
        0x5at
        0x52t
        0x5ct
        0x44t
    .end array-data
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 6

    const/4 v0, 0x0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v4, p1, v1

    if-lez v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array p1, v2, [I

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private clearAutoSizeConfiguration()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0, v1, v2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    const p4, 0x7fffffff

    :cond_0
    invoke-virtual {v1, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;->computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    const/16 v2, 0x43

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b134d0"

    const v4, -0x311076fb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x24t
        0x50t
        0x5at
        0x58t
        0x1t
        0x54t
        0x42t
        0x45t
        0x5ct
        0x14t
        0xbt
        0x52t
        0x16t
        0x50t
        0x5at
        0x5at
        0x44t
        0x64t
        0x7t
        0x49t
        0x47t
        0x70t
        0xdt
        0x42t
        0x7t
        0x52t
        0x47t
        0x5dt
        0xbt
        0x5et
        0x2at
        0x54t
        0x46t
        0x46t
        0xdt
        0x43t
        0x16t
        0x58t
        0x50t
        0x18t
        0x44t
        0x51t
        0x17t
        0x45t
        0x5ct
        0x14t
        0x17t
        0x59t
        0x18t
        0x54t
        0x13t
        0x59t
        0x5t
        0x49t
        0x42t
        0x53t
        0x56t
        0x14t
        0xdt
        0x5et
        0x1t
        0x5et
        0x41t
        0x46t
        0x1t
        0x53t
        0x16t
    .end array-data
.end method

.method private createStaticLayoutForMeasuringPre16(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8

    const/16 v7, 0xb

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "191982"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "860f0d"

    const/16 v3, 0x695e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    new-array v1, v7, [B

    fill-array-data v1, :array_2

    const-string v2, "b4f61d"

    const v3, -0x311a59c4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5ct
        0x6at
        0x41t
        0x58t
        0x5bt
        0x5bt
        0x5ft
        0x5et
        0x7ct
        0x4ct
        0x54t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x65t
        0x40t
        0x7t
        0x53t
        0xdt
        0x56t
        0x51t
        0x71t
        0x2t
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0xft
        0x7dt
        0x8t
        0x55t
        0x5dt
        0x11t
        0x6t
        0x51t
        0x36t
        0x57t
        0x55t
    .end array-data
.end method

.method private createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v2, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v0, v2, :cond_1

    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v0, v0, v1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d3fe22"

    const-wide v4, -0x3e272bf89cc00000L    # -1.666194829E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2at
        0x5ct
        0x46t
        0x4t
        0x44t
        0x53t
        0xdt
        0x5ft
        0x7t
        0x7t
        0x5et
        0x57t
        0x44t
        0x47t
        0x3t
        0x1dt
        0x46t
        0x12t
        0x17t
        0x5at
        0x1ct
        0x0t
        0x41t
        0x12t
        0x10t
        0x5ct
        0x46t
        0x6t
        0x5at
        0x5dt
        0xbt
        0x40t
        0x3t
        0x45t
        0x54t
        0x40t
        0xbt
        0x5et
        0x48t
    .end array-data
.end method

.method private static getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2f3142"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6602ce"

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x74t
        0x7t
        0x5at
        0x5dt
        0x51t
        0x56t
        0x12t
        0x12t
        0x5ct
        0x11t
        0x55t
        0x51t
        0x51t
        0x3t
        0x40t
        0x42t
        0x14t
        0x66t
        0x57t
        0x1et
        0x47t
        0x67t
        0x5dt
        0x57t
        0x45t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x5bt
        0x55t
        0x5ft
        0x1t
        0x0t
        0x44t
    .end array-data
.end method

.method private static getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ee1b39"

    const v4, 0x4e4421a3    # 8.226347E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ba5bc7"

    const/16 v4, -0x3cad

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x23t
        0x4t
        0x58t
        0xet
        0x56t
        0x5dt
        0x45t
        0x11t
        0x5et
        0x42t
        0x41t
        0x5ct
        0x11t
        0x17t
        0x58t
        0x7t
        0x45t
        0x5ct
        0x45t
        0x31t
        0x54t
        0x1at
        0x47t
        0x6ft
        0xct
        0x0t
        0x46t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x48t
        0x15t
        0xft
        0x6t
        0x43t
        0xat
        0xet
        0x51t
    .end array-data
.end method

.method static invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    if-nez p2, :cond_0

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b4faf9"

    const/16 v5, -0x7d07

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "4daa1d"

    const v5, -0x31ebe29c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :cond_1
    throw v0

    nop

    :array_0
    .array-data 1
        0x24t
        0x55t
        0xft
        0xdt
        0x3t
        0x5dt
        0x42t
        0x40t
        0x9t
        0x41t
        0xft
        0x57t
        0x14t
        0x5bt
        0xdt
        0x4t
        0x46t
        0x6dt
        0x7t
        0x4ct
        0x12t
        0x37t
        0xft
        0x5ct
        0x15t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x4dt
        0x41t
        0xct
        0x54t
        0x10t
        0x5ct
        0xbt
        0x5t
    .end array-data
.end method

.method private setRawTextSize(F)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInLayout()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    const/16 v2, 0xb

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b8e984"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    sget-object v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TAG:Ljava/lang/String;

    const/16 v4, 0x2e

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "16de70"

    invoke-static {v4, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0xct
        0x4dt
        0x9t
        0x55t
        0x74t
        0x55t
        0x1bt
        0x57t
        0x10t
        0x4dt
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x57t
        0xdt
        0x9t
        0x52t
        0x54t
        0x11t
        0x42t
        0xbt
        0x45t
        0x5et
        0x5et
        0x47t
        0x59t
        0xft
        0x0t
        0x17t
        0x64t
        0x54t
        0x4et
        0x10t
        0x33t
        0x5et
        0x55t
        0x46t
        0x15t
        0xat
        0x10t
        0x5bt
        0x5ct
        0x7dt
        0x57t
        0x1dt
        0xat
        0x42t
        0x44t
        0x42t
        0x1et
        0x4dt
        0x45t
        0x5at
        0x55t
        0x45t
        0x5et
        0xbt
        0x1t
    .end array-data
.end method

.method private setupAutoSizeText()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-ne v1, v6, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iget v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [I

    :goto_0
    if-ge v0, v1, :cond_1

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    int-to-float v4, v0

    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    :cond_2
    iput-boolean v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return v0

    :cond_3
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_1
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v2, v1, [I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v4, v3

    if-lez v4, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    aget v1, v3, v2

    int-to-float v1, v1

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    add-int/lit8 v1, v4, -0x1

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    move v2, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->initTempTextPaint(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "7911c3"

    const-wide v8, 0x418e106c00000000L    # 6.3049088E7

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v0, v5, v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    iget v5, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v1, v0, v5, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v2, v1, :cond_3

    :cond_1
    move v0, v4

    :goto_1
    return v0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :array_0
    .array-data 1
        0x50t
        0x5ct
        0x45t
        0x7dt
        0x2t
        0x4at
        0x58t
        0x4ct
        0x45t
        0x70t
        0xft
        0x5at
        0x50t
        0x57t
        0x5ct
        0x54t
        0xdt
        0x47t
    .end array-data
.end method

.method private supportsAutoSizeText()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x1d

    const/4 v4, 0x0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_2

    cmpg-float v0, p2, p1

    if-lez v0, :cond_1

    cmpg-float v0, p3, v1

    if-lez v0, :cond_0

    iput v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    iput-boolean v4, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2fb192"

    invoke-static {v1, v2, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "bfe332"

    const-wide v4, -0x3e7154f0a8000000L    # -6.4315883E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v2, "c0c236"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "e589b3"

    const-wide v4, -0x3e23187875400000L    # -1.939742251E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "c1983c"

    const-wide v4, -0x3e4374bdfd000000L    # -4.78888451E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v5, [B

    fill-array-data v1, :array_5

    const-string v2, "d69c44"

    const v3, 0x4e15b110    # 6.278523E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_6

    const-string v2, "bd8860"

    invoke-static {v1, v2, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x66t
        0xet
        0x7t
        0x11t
        0x58t
        0x47t
        0x46t
        0x9t
        0x4ft
        0x42t
        0x50t
        0x48t
        0x57t
        0x46t
        0x11t
        0x45t
        0x5ct
        0x42t
        0x12t
        0x1t
        0x10t
        0x50t
        0x57t
        0x47t
        0x5et
        0x7t
        0x10t
        0x58t
        0x4dt
        0x4bt
        0x12t
        0x4et
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x1et
        0x4ct
        0x13t
        0x5at
        0x41t
        0x42t
        0xat
        0x0t
        0x40t
        0x40t
        0x12t
        0xdt
        0x14t
        0x45t
        0x56t
        0x42t
        0x47t
        0x3t
        0xat
        0x45t
        0x47t
        0x5ct
        0x12t
        0x4at
        0x56t
        0x15t
        0x4bt
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2et
        0x51t
        0x1bt
        0x5bt
        0x5et
        0x43t
        0xet
        0x10t
        0x2t
        0x47t
        0x47t
        0x59t
        0x4et
        0x43t
        0xat
        0x48t
        0x56t
        0x16t
        0x17t
        0x55t
        0x1bt
        0x46t
        0x13t
        0x45t
        0xat
        0x4at
        0x6t
        0x12t
        0x1bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x4dt
        0x11t
        0x19t
        0xbt
        0x40t
        0x45t
        0x59t
        0x5dt
        0x4at
        0x11t
        0x13t
        0xat
        0x47t
        0x18t
        0x5ct
        0x13t
        0x46t
        0x4t
        0x59t
        0x18t
        0x4dt
        0xdt
        0x13t
        0x8t
        0x5ct
        0x56t
        0x50t
        0xft
        0x46t
        0x8t
        0x15t
        0x59t
        0x4ct
        0x16t
        0x5ct
        0x48t
        0x46t
        0x51t
        0x43t
        0x7t
        0x13t
        0x11t
        0x50t
        0x40t
        0x4dt
        0x42t
        0x40t
        0xct
        0x4ft
        0x5dt
        0x19t
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0x49t
        0x10t
    .end array-data

    :array_5
    .array-data 1
        0x29t
        0x5ft
        0x57t
        0xat
        0x59t
        0x41t
        0x9t
        0x16t
        0x58t
        0x16t
        0x40t
        0x5bt
        0x49t
        0x45t
        0x50t
        0x19t
        0x51t
        0x14t
        0x10t
        0x53t
        0x41t
        0x17t
        0x14t
        0x47t
        0xdt
        0x4ct
        0x5ct
        0x43t
        0x1ct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x12t
        0x1ct
        0x11t
        0x18t
        0x5ft
        0x43t
        0x42t
        0x8t
        0x5dt
        0x4bt
        0x45t
        0x10t
        0xdt
        0x16t
        0x18t
        0x5dt
        0x47t
        0x45t
        0x3t
        0x8t
        0x18t
        0x4ct
        0x59t
        0x10t
        0x4at
        0x54t
        0x48t
        0x40t
        0x1ft
    .end array-data
.end method


# virtual methods
.method autoSizeText()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;->isHorizontallyScrollable(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x100000

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sget-object v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre16(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    return v0
.end method

.method initTempTextPaint(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto :goto_0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {v0, p1, v1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    :cond_0
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    :goto_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    :goto_1
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    :goto_2
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    cmpl-float v4, v1, v7

    if-nez v4, :cond_2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v8, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_2
    cmpl-float v4, v2, v7

    if-nez v4, :cond_3

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v8, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_3
    cmpl-float v3, v0, v7

    if-nez v3, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-direct {p0, v1, v2, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    :cond_6
    :goto_3
    return-void

    :cond_7
    iput v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    goto :goto_3

    :cond_8
    move v2, v7

    goto :goto_2

    :cond_9
    move v1, v7

    goto :goto_1

    :cond_a
    move v0, v7

    goto :goto_0
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v2, p2

    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v3, p3

    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_0
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v2, p1

    if-lez v2, :cond_4

    new-array v0, v2, [I

    if-nez p2, :cond_2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1
    if-ge v1, v2, :cond_0

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "66e09b"

    const/16 v3, 0x792f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x78t
        0x59t
        0xbt
        0x55t
        0x19t
        0xdt
        0x50t
        0x16t
        0x11t
        0x58t
        0x5ct
        0x42t
        0x46t
        0x44t
        0x0t
        0x43t
        0x5ct
        0x16t
        0x16t
        0x45t
        0xct
        0x4at
        0x5ct
        0x11t
        0x16t
        0x5ft
        0x16t
        0x10t
        0x4ft
        0x3t
        0x5at
        0x5ft
        0x1t
        0xat
        0x19t
    .end array-data
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "55b496"

    const v3, -0x310a6e00    # -2.0599931E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x60t
        0x5bt
        0x9t
        0x5at
        0x56t
        0x41t
        0x5bt
        0x15t
        0x3t
        0x41t
        0x4dt
        0x59t
        0x18t
        0x46t
        0xbt
        0x4et
        0x5ct
        0x16t
        0x41t
        0x50t
        0x1at
        0x40t
        0x19t
        0x42t
        0x4ct
        0x45t
        0x7t
        0xet
        0x19t
    .end array-data
.end method

.method setTextSizeInternal(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method
