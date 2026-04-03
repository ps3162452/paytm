.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "418a38"

    const v2, 0x4c823bab    # 6.827964E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x60t
        0x43t
        0x59t
        0xft
        0x40t
        0x51t
        0x40t
        0x58t
        0x57t
        0xft
        0x7ft
        0x59t
        0x4dt
        0x5et
        0x4dt
        0x15t
    .end array-data
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

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

.method public static extractAttributes(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomAttribute;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomAttribute;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/CustomAttribute;

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "13a62b"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Landroidx/constraintlayout/core/motion/CustomAttribute;

    invoke-direct {v6, v1, v5}, Landroidx/constraintlayout/core/motion/CustomAttribute;-><init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 1
        0x56t
        0x56t
        0x15t
        0x7bt
        0x53t
        0x12t
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

.method public static setAttributes(Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomAttribute;",
            ">;)V"
        }
    .end annotation

    const/16 v13, 0x13

    const/16 v12, 0xf

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/CustomAttribute;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "f7c846"

    const-wide v8, -0x3e4c604440000000L    # -3.29235392E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    sget-object v5, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v6, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v13, [B

    fill-array-data v5, :array_1

    const-string v6, "0a970e"

    invoke-static {v5, v6, v11, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    fill-array-data v0, :array_2

    const-string v5, "d93119"

    const-wide/32 v6, -0x40f5da8d

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v5, "18c9db"

    const-wide/32 v6, 0x14c5a1f7

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v13, [B

    fill-array-data v5, :array_4

    const-string v6, "7d2b3b"

    const-wide v8, 0x41d98d205c000000L    # 1.71471704E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    fill-array-data v0, :array_5

    const-string v5, "3932a5"

    invoke-static {v0, v5, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v13, [B

    fill-array-data v5, :array_6

    const-string v6, "d538c9"

    const/16 v7, 0x7038

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    fill-array-data v0, :array_7

    const-string v5, "b1a65f"

    invoke-static {v0, v5, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_4
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_7
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x15t
        0x52t
        0x17t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :array_1
    .array-data 1
        0x10t
        0x22t
        0x4ct
        0x44t
        0x44t
        0xat
        0x5dt
        0x41t
        0x78t
        0x43t
        0x44t
        0x17t
        0x59t
        0x3t
        0x4ct
        0x43t
        0x55t
        0x45t
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x19t
        0x5dt
        0x5et
        0x45t
        0x19t
        0x2t
        0x56t
        0x46t
        0x5ft
        0x55t
        0x19t
        0xbt
        0x57t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x11t
        0x55t
        0x16t
        0x4at
        0x10t
        0x42t
        0x59t
        0x59t
        0x15t
        0x5ct
        0x44t
        0x3t
        0x11t
        0x55t
        0x6t
        0x4dt
        0xct
        0xdt
        0x55t
        0x18t
    .end array-data

    :array_4
    .array-data 1
        0x17t
        0x27t
        0x47t
        0x11t
        0x47t
        0xdt
        0x5at
        0x44t
        0x73t
        0x16t
        0x47t
        0x10t
        0x5et
        0x6t
        0x47t
        0x16t
        0x56t
        0x42t
        0x15t
    .end array-data

    :array_5
    .array-data 1
        0x11t
        0x19t
        0x5dt
        0x5dt
        0x15t
        0x15t
        0x55t
        0x56t
        0x46t
        0x5ct
        0x5t
        0x15t
        0x5ct
        0x57t
        0x13t
    .end array-data

    :array_6
    .array-data 1
        0x44t
        0x76t
        0x46t
        0x4bt
        0x17t
        0x56t
        0x9t
        0x15t
        0x72t
        0x4ct
        0x17t
        0x4bt
        0xdt
        0x57t
        0x46t
        0x4ct
        0x6t
        0x19t
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x40t
        0x11t
        0xft
        0x59t
        0x41t
        0x46t
        0x4t
        0x5et
        0x14t
        0x58t
        0x51t
        0x46t
        0xdt
        0x5ft
        0x41t
    .end array-data
.end method


# virtual methods
.method public applyCustom(Ljava/lang/Object;)V
    .locals 11

    const/16 v10, 0x13

    const/16 v9, 0xf

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "89a4bb"

    const/16 v5, 0x56b

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v10, [B

    fill-array-data v4, :array_1

    const-string v5, "9adfe8"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    const-string v4, "85ea1e"

    invoke-static {v2, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "f8688d"

    const-wide v4, 0x41ca99d7ad000000L    # 8.92579674E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v10, [B

    fill-array-data v4, :array_4

    const-string v5, "636a09"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    const-string v4, "7ca1ea"

    const v5, 0x4e90f262

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v10, [B

    fill-array-data v4, :array_6

    const-string v5, "b37f1a"

    const/16 v6, 0x3c19

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_7

    const-string v4, "a6f2cf"

    const-wide/32 v6, -0x7a26d6aa

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :cond_0
    move-object v1, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x4bt
        0x5ct
        0x15t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0x19t
        0x22t
        0x11t
        0x15t
        0x11t
        0x57t
        0x54t
        0x41t
        0x25t
        0x12t
        0x11t
        0x4at
        0x50t
        0x3t
        0x11t
        0x12t
        0x0t
        0x18t
        0x1bt
    .end array-data

    :array_2
    .array-data 1
        0x1at
        0x15t
        0xbt
        0xet
        0x45t
        0x45t
        0x5et
        0x5at
        0x10t
        0xft
        0x55t
        0x45t
        0x57t
        0x5bt
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x46t
        0x55t
        0x43t
        0x4bt
        0x4ct
        0x44t
        0xet
        0x59t
        0x40t
        0x5dt
        0x18t
        0x5t
        0x46t
        0x55t
        0x53t
        0x4ct
        0x50t
        0xbt
        0x2t
        0x18t
    .end array-data

    :array_4
    .array-data 1
        0x16t
        0x70t
        0x43t
        0x12t
        0x44t
        0x56t
        0x5bt
        0x13t
        0x77t
        0x15t
        0x44t
        0x4bt
        0x5ft
        0x51t
        0x43t
        0x15t
        0x55t
        0x19t
        0x14t
    .end array-data

    :array_5
    .array-data 1
        0x15t
        0x43t
        0xft
        0x5et
        0x11t
        0x41t
        0x51t
        0xct
        0x14t
        0x5ft
        0x1t
        0x41t
        0x58t
        0xdt
        0x41t
    .end array-data

    :array_6
    .array-data 1
        0x42t
        0x70t
        0x42t
        0x15t
        0x45t
        0xet
        0xft
        0x13t
        0x76t
        0x12t
        0x45t
        0x13t
        0xbt
        0x51t
        0x42t
        0x12t
        0x54t
        0x41t
        0x40t
    .end array-data

    :array_7
    .array-data 1
        0x43t
        0x16t
        0x8t
        0x5dt
        0x17t
        0x46t
        0x7t
        0x59t
        0x13t
        0x5ct
        0x7t
        0x46t
        0xet
        0x58t
        0x46t
    .end array-data
.end method

.method public diff(Landroidx/constraintlayout/core/motion/CustomAttribute;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iget-object v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-object v0
.end method

.method public getValueToInterpolate()F
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float v0, v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b8a7c"

    const-wide/32 v4, -0x77fc815d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bc0327"

    const-wide v4, -0x3e773e9800000000L    # -5.1916032E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x72t
        0xdt
        0x54t
        0xet
        0x45t
        0x43t
        0x55t
        0xdt
        0x5dt
        0x12t
        0x17t
        0xdt
        0x5et
        0x16t
        0x18t
        0x9t
        0x56t
        0x15t
        0x54t
        0x42t
        0x59t
        0x41t
        0x44t
        0xat
        0x5ft
        0x5t
        0x54t
        0x4t
        0x17t
        0x0t
        0x5et
        0xet
        0x57t
        0x13t
        0x17t
        0x17t
        0x5et
        0x42t
        0x51t
        0xft
        0x43t
        0x6t
        0x43t
        0x12t
        0x57t
        0xdt
        0x56t
        0x17t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x2t
        0x5et
        0x5dt
        0x5dt
        0x43t
        0x42t
        0xat
        0x5et
        0x47t
        0x57t
        0x45t
        0x12t
        0xct
        0x5ct
        0x52t
        0x46t
        0x52t
        0x42t
        0x30t
        0x44t
        0x41t
        0x5bt
        0x59t
        0x5t
    .end array-data
.end method

.method public getValuesToInterpolate([F)V
    .locals 10

    const-wide v8, 0x400199999999999aL    # 2.2

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v6, 0x0

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

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
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2668c0"

    const v3, -0x310022e0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    aput v0, p1, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x71t
        0x59t
        0x5at
        0x57t
        0x11t
        0x10t
        0x56t
        0x59t
        0x53t
        0x4bt
        0x43t
        0x5et
        0x5dt
        0x42t
        0x16t
        0x50t
        0x2t
        0x46t
        0x57t
        0x16t
        0x57t
        0x18t
        0x10t
        0x59t
        0x5ct
        0x51t
        0x5at
        0x5dt
        0x43t
        0x53t
        0x5dt
        0x5at
        0x59t
        0x4at
        0x43t
        0x44t
        0x5dt
        0x16t
        0x5ft
        0x56t
        0x17t
        0x55t
        0x40t
        0x46t
        0x59t
        0x54t
        0x2t
        0x44t
        0x57t
    .end array-data
.end method

.method public isContinuous()Z
    .locals 2

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public numberOfInterpolatedValues()I
    .locals 2

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setColorValue(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    return-void
.end method

.method public setFloatValue(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    return-void
.end method

.method public setInterpolatedValue(Ljava/lang/Object;[F)V
    .locals 12

    const/16 v11, 0xa

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "899669"

    const/16 v6, 0x6bb3

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v4, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v11, [B

    fill-array-data v5, :array_1

    const-string v6, "bb6c2b"

    invoke-static {v5, v6, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [B

    fill-array-data v3, :array_2

    const-string v5, "e17104"

    const/16 v6, 0x3291

    invoke-static {v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const-string v2, "a97f71"

    const-wide/32 v6, 0x2d5f6029

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x15

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "c15e50"

    const v7, 0x4e380ee3    # 7.7199584E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [B

    fill-array-data v3, :array_4

    const-string v5, "fd216d"

    invoke-static {v3, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    const/16 v3, 0x17

    aput-byte v3, v1, v2

    const-string v2, "5d3d30"

    const v3, -0x315f8c45

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_4
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    aget v4, p2, v4

    float-to-double v4, v4

    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-static {v4}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v4

    const/4 v5, 0x1

    aget v5, p2, v5

    float-to-double v6, v5

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v5

    const/4 v6, 0x2

    aget v6, p2, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v6}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x3

    aget v9, p2, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v9

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1e

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "3d7fe3"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    aget v0, p2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    const/4 v5, 0x1

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x4bt
        0x5ct
        0x4dt
    .end array-data

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0xct
        0xdt
        0x16t
        0xet
        0x57t
        0x16t
        0xat
        0xdt
        0x52t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x45t
        0x5et
        0x59t
        0x11t
        0x66t
        0x5dt
        0x0t
        0x46t
        0x17t
        0x13t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x50t
        0x5bt
        0xbt
        0x5at
        0x44t
        0x43t
        0x50t
        0x56t
        0x6t
        0x50t
        0x43t
        0x10t
        0x11t
        0x58t
        0x0t
        0x41t
        0x58t
        0xct
        0x55t
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x46t
        0xbt
        0x5ct
        0x11t
        0x60t
        0xdt
        0x3t
        0x13t
        0x12t
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x46t
        0xat
        0x56t
        0x4t
        0x9t
        0x56t
        0x13t
        0x10t
        0x58t
        0x46t
        0xct
        0x5dt
        0x47t
        0x1t
        0x45t
        0x16t
        0xat
        0x5ft
        0x52t
        0x10t
        0x52t
        0x46t
        0x16t
        0x47t
        0x41t
        0xdt
        0x59t
        0x1t
        0x16t
        0x13t
    .end array-data
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue([F)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget v0, p1, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    aget v0, p1, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    aget v1, p1, v1

    aget v0, p1, v0

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->hsvToRgb(FFF)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "847d7d"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    aget v2, p1, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_5
    aget v0, p1, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7bt
        0x5bt
        0x5bt
        0xbt
        0x45t
        0x44t
        0x5ct
        0x5bt
        0x52t
        0x17t
        0x17t
        0xat
        0x57t
        0x40t
        0x17t
        0xct
        0x56t
        0x12t
        0x5dt
        0x14t
        0x56t
        0x44t
        0x44t
        0xdt
        0x56t
        0x53t
        0x5bt
        0x1t
        0x17t
        0x7t
        0x57t
        0x58t
        0x58t
        0x16t
        0x17t
        0x10t
        0x57t
        0x14t
        0x5et
        0xat
        0x43t
        0x1t
        0x4at
        0x44t
        0x58t
        0x8t
        0x56t
        0x10t
        0x5dt
    .end array-data
.end method
