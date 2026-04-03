.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static sGetSlotIndexMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotIndex(I)I
    .locals 6

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    const-class v0, Landroid/telephony/SubscriptionManager;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a4b16e"

    const v4, 0x4ec2c76b    # 1.6339245E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    :goto_1
    sget-object v0, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    sget-object v0, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const-class v0, Landroid/telephony/SubscriptionManager;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "fba771"

    const/16 v4, 0x3141

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x6t
        0x51t
        0x16t
        0x62t
        0x5at
        0xat
        0x15t
        0x7dt
        0xct
        0x55t
        0x53t
        0x1dt
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x7t
        0x15t
        0x64t
        0x5bt
        0x5et
        0x12t
        0x2bt
        0x5t
    .end array-data
.end method
