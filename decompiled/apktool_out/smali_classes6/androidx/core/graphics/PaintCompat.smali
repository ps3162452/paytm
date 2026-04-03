.class public final Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;


# static fields
.field private static final EM_STRING:Ljava/lang/String;

.field private static final TOFU_STRING:Ljava/lang/String;

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const-string v1, "45b084"

    const/16 v2, 0x3cb2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/PaintCompat;->EM_STRING:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "76d1ce"

    const-wide/32 v2, -0x5583d9fe

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/PaintCompat;->TOFU_STRING:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 1
        -0x3ct
        -0x57t
        -0x25t
        -0x74t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    sget-object v3, Landroidx/core/graphics/PaintCompat;->TOFU_STRING:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sget-object v3, Landroidx/core/graphics/PaintCompat;->EM_STRING:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v6, v2

    if-nez v7, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v7

    if-le v7, v0, :cond_6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int v8, v2, v7

    invoke-virtual {p0, p1, v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    add-float/2addr v3, v8

    add-int/2addr v2, v7

    goto :goto_1

    :cond_5
    cmpl-float v2, v6, v3

    if-ltz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    cmpl-float v2, v6, v5

    if-nez v2, :cond_0

    invoke-static {}, Landroidx/core/graphics/PaintCompat;->obtainEmptyRects()Landroidx/core/util/Pair;

    move-result-object v2

    sget-object v3, Landroidx/core/graphics/PaintCompat;->TOFU_STRING:Ljava/lang/String;

    sget-object v0, Landroidx/core/graphics/PaintCompat;->TOFU_STRING:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static obtainEmptyRects()Landroidx/core/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/util/Pair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public static setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendMode;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v2, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method
