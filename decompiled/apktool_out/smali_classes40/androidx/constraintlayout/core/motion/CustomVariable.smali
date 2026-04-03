.class public Landroidx/constraintlayout/core/motion/CustomVariable;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBooleanValue:Z

.field private mFloatValue:F

.field private mIntegerValue:I

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "89ec0b"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/CustomVariable;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x4bt
        0x4t
        0xdt
        0x43t
        0xbt
        0x4ct
        0x50t
        0xat
        0xdt
        0x7ct
        0x3t
        0x41t
        0x56t
        0x10t
        0x17t
    .end array-data
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput-object p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput-boolean p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method private static clamp(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    add-int/lit16 v0, v0, -0xff

    shr-int/lit8 v1, v0, 0x1f

    and-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static colorString(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b33c6"

    const v3, 0x4ef74737

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    const/4 v3, 0x0

    const/16 v4, 0x40

    aput-byte v4, v2, v3

    const-string v3, "c5ae5b"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6t
        0x52t
        0x3t
        0x3t
        0x53t
        0x6t
        0x6t
        0x52t
    .end array-data
.end method

.method public static hsvToRgb(FFF)I
    .locals 9

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, -0x1000000

    mul-float v0, p0, v1

    float-to-int v0, v0

    mul-float/2addr v1, p0

    int-to-float v2, v0

    sub-float/2addr v1, v2

    mul-float v2, p2, v8

    sub-float v3, v7, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    mul-float v3, p2, v8

    mul-float v4, v1, p1

    sub-float v4, v7, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    mul-float v4, p2, v8

    sub-float v1, v7, v1

    mul-float/2addr v1, p1

    sub-float v1, v7, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    mul-float v4, v8, p2

    add-float/2addr v4, v6

    float-to-int v4, v4

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    shl-int/lit8 v0, v4, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    or-int/2addr v0, v5

    goto :goto_0

    :pswitch_1
    shl-int/lit8 v0, v1, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    or-int/2addr v0, v5

    goto :goto_0

    :pswitch_2
    shl-int/lit8 v0, v2, 0x10

    shl-int/lit8 v1, v3, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    or-int/2addr v0, v5

    goto :goto_0

    :pswitch_3
    shl-int/lit8 v0, v2, 0x10

    shl-int/lit8 v2, v4, 0x8

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    or-int/2addr v0, v5

    goto :goto_0

    :pswitch_4
    shl-int/lit8 v0, v3, 0x10

    shl-int/lit8 v1, v4, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    or-int/2addr v0, v5

    goto :goto_0

    :pswitch_5
    shl-int/lit8 v0, v4, 0x10

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    or-int/2addr v0, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rgbaTocColor(FFFF)I
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v0, p0, v3

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    mul-float v1, p1, v3

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    mul-float v2, p2, v3

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public copy()Landroidx/constraintlayout/core/motion/CustomVariable;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    return-object v0
.end method

.method public diff(Landroidx/constraintlayout/core/motion/CustomVariable;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_0

    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getBooleanValue()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return v0
.end method

.method public getColorValue()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return v0
.end method

.method public getFloatValue()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return v0
.end method

.method public getIntegerValue()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return v0
.end method

.method public getInterpolatedColor([F)I
    .locals 8

    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    const/4 v2, 0x2

    aget v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    return v0
.end method

.method public getValueToInterpolate()F
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "824d41"

    const/16 v3, -0x241e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2144cc"

    const-wide/32 v4, 0x18f37bed

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_0

    :pswitch_5
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7bt
        0x53t
        0x5at
        0xat
        0x5bt
        0x45t
        0x18t
        0x5bt
        0x5at
        0x10t
        0x51t
        0x43t
        0x48t
        0x5dt
        0x58t
        0x5t
        0x40t
        0x54t
        0x18t
        0x61t
        0x40t
        0x16t
        0x5dt
        0x5ft
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x5et
        0x58t
        0x5bt
        0x11t
        0x43t
        0x56t
        0x5et
        0x51t
        0x47t
        0x43t
        0xdt
        0x5dt
        0x45t
        0x14t
        0x5ct
        0x2t
        0x15t
        0x57t
        0x11t
        0x55t
        0x14t
        0x10t
        0xat
        0x5ct
        0x56t
        0x58t
        0x51t
        0x43t
        0x0t
        0x5dt
        0x5dt
        0x5bt
        0x46t
        0x43t
        0x17t
        0x5dt
        0x11t
        0x5dt
        0x5at
        0x17t
        0x6t
        0x40t
        0x41t
        0x5bt
        0x58t
        0x2t
        0x17t
        0x57t
    .end array-data
.end method

.method public getValuesToInterpolate([F)V
    .locals 10

    const-wide v8, 0x400199999999999aL    # 2.2

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v6, 0x0

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    aput v0, p1, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "efc2f9"

    const v3, -0x33f18ded    # -3.734126E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-double v2, v1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    and-int/lit16 v3, v0, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v7

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    aput v1, p1, v6

    const/4 v1, 0x1

    aput v2, p1, v1

    const/4 v1, 0x2

    aput v3, p1, v1

    const/4 v1, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v7

    aput v0, p1, v1

    goto :goto_0

    :pswitch_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_5
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x26t
        0x7t
        0xdt
        0x5ct
        0x9t
        0x4dt
        0x45t
        0xft
        0xdt
        0x46t
        0x3t
        0x4bt
        0x15t
        0x9t
        0xft
        0x53t
        0x12t
        0x5ct
        0x45t
        0x35t
        0x17t
        0x40t
        0xft
        0x57t
        0x2t
    .end array-data
.end method

.method public isContinuous()Z
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x387
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public numberOfInterpolatedValues()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x386
        :pswitch_0
    .end packed-switch
.end method

.method public setBooleanValue(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method public setFloatValue(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V
    .locals 8

    const/4 v0, 0x1

    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget v4, p2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    :goto_1
    invoke-virtual {p1, v3, v2, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e02916"

    const-wide v4, -0x3e3be9fcb0800000L    # -6.73973919E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    aget v1, p2, v1

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    aget v0, p2, v0

    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    const/4 v2, 0x2

    aget v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    const/4 v3, 0x3

    aget v3, p2, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v5, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    invoke-virtual {p1, v4, v5, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget v1, p2, v1

    invoke-virtual {p1, v0, v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget v1, p2, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x10t
        0x5et
        0x53t
        0x5bt
        0x5dt
        0x53t
        0x45t
        0x44t
        0x5dt
        0x19t
        0x58t
        0x58t
        0x11t
        0x55t
        0x40t
        0x49t
        0x5et
        0x5at
        0x4t
        0x44t
        0x57t
        0x19t
    .end array-data
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setValue([F)V
    .locals 9

    const/4 v0, 0x1

    const/high16 v8, 0x437f0000    # 255.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x0

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget v2, p1, v1

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6dbe8e"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    aget v1, p1, v1

    aget v0, p1, v0

    const/4 v2, 0x2

    aget v2, p1, v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_0

    :pswitch_3
    aget v0, p1, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_0

    :pswitch_4
    aget v0, p1, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 1
        0x75t
        0x5t
        0xct
        0xbt
        0x57t
        0x11t
        0x16t
        0xdt
        0xct
        0x11t
        0x5dt
        0x17t
        0x46t
        0xbt
        0xet
        0x4t
        0x4ct
        0x0t
        0x16t
        0x37t
        0x16t
        0x17t
        0x51t
        0xbt
        0x51t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "cff04c"

    const v3, 0x4dbf7628    # 4.0152397E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->colorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x5ct
        0x59t
        0x59t
        0xft
    .end array-data
.end method
