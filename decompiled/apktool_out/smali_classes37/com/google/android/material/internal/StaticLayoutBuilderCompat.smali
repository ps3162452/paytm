.class final Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    }
.end annotation


# static fields
.field static final DEFAULT_HYPHENATION_FREQUENCY:I

.field static final DEFAULT_LINE_SPACING_ADD:F = 0.0f

.field static final DEFAULT_LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final TEXT_DIRS_CLASS:Ljava/lang/String;

.field private static final TEXT_DIR_CLASS:Ljava/lang/String;

.field private static final TEXT_DIR_CLASS_LTR:Ljava/lang/String;

.field private static final TEXT_DIR_CLASS_RTL:Ljava/lang/String;

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static textDirection:Ljava/lang/Object;


# instance fields
.field private alignment:Landroid/text/Layout$Alignment;

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private end:I

.field private hyphenationFrequency:I

.field private includePad:Z

.field private isRtl:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private source:Ljava/lang/CharSequence;

.field private start:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c99ad1"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIRS_CLASS:Ljava/lang/String;

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "be8ef1"

    const/16 v4, -0xc30

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS:Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "ef6a63"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS_LTR:Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    const-string v3, "7263c9"

    const-wide v4, -0x3e2d37cfdac00000L    # -1.260437653E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS_RTL:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    :goto_0
    sput v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2t
        0x57t
        0x5dt
        0x13t
        0xbt
        0x58t
        0x7t
        0x17t
        0x4dt
        0x4t
        0x1ct
        0x45t
        0x4dt
        0x6dt
        0x5ct
        0x19t
        0x10t
        0x75t
        0xat
        0x4bt
        0x5ct
        0x2t
        0x10t
        0x58t
        0xct
        0x57t
        0x71t
        0x4t
        0x11t
        0x43t
        0xat
        0x4at
        0x4dt
        0x8t
        0x7t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0xbt
        0x5ct
        0x17t
        0x9t
        0x58t
        0x6t
        0x4bt
        0x4ct
        0x0t
        0x1et
        0x45t
        0x4ct
        0x31t
        0x5dt
        0x1dt
        0x12t
        0x75t
        0xbt
        0x17t
        0x5dt
        0x6t
        0x12t
        0x58t
        0xdt
        0xbt
        0x70t
        0x0t
        0x13t
        0x43t
        0xbt
        0x16t
        0x4ct
        0xct
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x29t
        0x32t
        0x64t
    .end array-data

    :array_3
    .array-data 1
        0x65t
        0x66t
        0x7at
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    iput p3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method private createConstructorWithReflection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    move v1, v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    const-class v0, Landroid/text/TextDirectionHeuristic;

    if-eqz v1, :cond_2

    :try_start_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    sput-object v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    :goto_2
    const-class v1, Landroid/text/StaticLayout;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/text/TextPaint;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/text/Layout$Alignment;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    const/4 v0, 0x7

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-class v3, Landroid/text/TextUtils$TruncateAt;

    aput-object v3, v2, v0

    const/16 v0, 0xb

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/16 v0, 0xc

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_3
    const-class v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS_RTL:Ljava/lang/String;

    move-object v1, v0

    :goto_3
    :try_start_3
    sget-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIRS_CLASS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->TEXT_DIR_CLASS_LTR:Ljava/lang/String;

    move-object v1, v0

    goto :goto_3
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 1

    new-instance v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-ne v1, v5, :cond_8

    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    int-to-float v3, v2

    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-ne v0, v5, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    iget v3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    invoke-static {v1, v0, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    :cond_2
    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    cmpl-float v2, v0, v6

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    invoke-virtual {v1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    :cond_4
    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-le v0, v5, :cond_5

    iget v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    :cond_5
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->createConstructorWithReflection()V

    :try_start_0
    sget-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    sget-object v4, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x9

    iget-boolean v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const/4 v4, 0x0

    aput-object v4, v3, v1

    const/16 v1, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEnd(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    iput p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    return-object p0
.end method

.method public setStart(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    return-object p0
.end method
