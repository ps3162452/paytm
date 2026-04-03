.class public final Landroidx/core/location/LocationRequestCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationRequestCompat$Builder;,
        Landroidx/core/location/LocationRequestCompat$Quality;
    }
.end annotation


# static fields
.field private static final IMPLICIT_MIN_UPDATE_INTERVAL:J = -0x1L

.field public static final PASSIVE_INTERVAL:J = 0x7fffffffffffffffL

.field public static final QUALITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final QUALITY_HIGH_ACCURACY:I = 0x64

.field public static final QUALITY_LOW_POWER:I = 0x68

.field private static sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

.field private static sSetExpireInMethod:Ljava/lang/reflect/Method;

.field private static sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

.field private static sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

.field private static sSetQualityMethod:Ljava/lang/reflect/Method;


# instance fields
.field final mDurationMillis:J

.field final mIntervalMillis:J

.field final mMaxUpdateDelayMillis:J

.field final mMaxUpdates:I

.field final mMinUpdateDistanceMeters:F

.field final mMinUpdateIntervalMillis:J

.field final mQuality:I


# direct methods
.method constructor <init>(JIJIJFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    iput p3, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    iput-wide p7, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    iput-wide p4, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    iput p6, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    iput p9, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    iput-wide p10, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Landroidx/core/location/LocationRequestCompat;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Landroidx/core/location/LocationRequestCompat;

    iget v2, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    iget v3, p1, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    iget-wide v4, p1, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    iget-wide v4, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    iget-wide v4, p1, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    iget v3, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    iget v3, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    iget-wide v4, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method public getMaxUpdates()I
    .locals 1

    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    return v0
.end method

.method public getMinUpdateDistanceMeters()F
    .locals 1

    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    return v0
.end method

.method public getMinUpdateIntervalMillis()J
    .locals 4

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    :cond_0
    return-wide v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toLocationRequest()Landroid/location/LocationRequest;
    .locals 4

    new-instance v0, Landroid/location/LocationRequest$Builder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    invoke-direct {v0, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 8

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationRequestCompat;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-class v0, Landroid/location/LocationRequest;

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "fe14dc"

    const-wide/32 v4, -0x18807445

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationRequestCompat;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    sget-object v0, Landroidx/core/location/LocationRequestCompat;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetQualityMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    const-class v2, Landroid/location/LocationRequest;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "aa686e"

    const-wide v6, -0x3e27746720c00000L    # -1.647207293E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat;->sSetQualityMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_4
    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetQualityMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateIntervalMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    const-class v2, Landroid/location/LocationRequest;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "a723e8"

    const/16 v5, 0x40f8

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_5
    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_8

    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_7

    const-class v2, Landroid/location/LocationRequest;

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "d8da34"

    const-wide v6, -0x3e4288cab7000000L    # -4.94351689E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_7
    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_9

    const-class v2, Landroid/location/LocationRequest;

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "f852b3"

    const-wide/32 v6, 0x34594e2d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_9
    sget-object v2, Landroidx/core/location/LocationRequestCompat;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5t
        0x17t
        0x54t
        0x55t
        0x10t
        0x6t
        0x20t
        0x17t
        0x5et
        0x59t
        0x20t
        0x6t
        0x16t
        0x17t
        0x54t
        0x57t
        0x5t
        0x17t
        0x3t
        0x1t
        0x61t
        0x46t
        0xbt
        0x15t
        0xft
        0x1t
        0x54t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x4t
        0x42t
        0x69t
        0x43t
        0x4t
        0xdt
        0x8t
        0x42t
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x12t
        0x52t
        0x46t
        0x75t
        0x4t
        0x4bt
        0x15t
        0x52t
        0x41t
        0x47t
        0x2ct
        0x56t
        0x15t
        0x52t
        0x40t
        0x45t
        0x4t
        0x54t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x17t
        0x5dt
        0x10t
        0x2ft
        0x46t
        0x59t
        0x31t
        0x48t
        0x0t
        0x0t
        0x47t
        0x51t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x15t
        0x5dt
        0x41t
        0x77t
        0x1at
        0x43t
        0xft
        0x4at
        0x50t
        0x7bt
        0xct
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-wide v8, 0x7fffffffffffffffL

    const/16 v7, 0x14

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "902b57"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_5

    new-array v1, v4, [B

    const/16 v2, 0x74

    aput-byte v2, v1, v6

    const-string v2, "445229"

    const-wide v4, 0x41d29d47dec00000L    # 1.249189755E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    invoke-static {v2, v3, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8e805d"

    const v3, 0x4ddafc5c    # 4.5924646E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    invoke-static {v2, v3, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_0
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "dc6b45"

    const-wide/32 v4, 0x635aba6d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v4, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    const-string v2, "ede851"

    const v3, -0x3209a132

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    invoke-static {v2, v3, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_2
    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    const-string v2, "a9b9ea"

    const-wide/32 v4, 0x33ca331

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "ee2bf0"

    const-wide v4, 0x41be52cad7000000L    # 5.08742359E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    invoke-static {v2, v3, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "e20f65"

    const v3, 0x4eed2037

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "569c57"

    const-wide v4, 0x41d6a69483800000L    # 1.52006299E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "531c35"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "b7b470"

    invoke-static {v1, v2, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x6bt
        0x55t
        0x43t
        0x17t
        0x50t
        0x44t
        0x4dt
        0x6bt
    .end array-data

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0x14t
        0x45t
        0x5ct
        0x45t
        0x47t
        0x5t
        0x4ct
        0xct
        0x57t
        0x5et
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x48t
        0x43t
        0x5bt
        0x3t
        0x4ct
        0x60t
        0x14t
        0x7t
        0x57t
        0x16t
        0x51t
        0x46t
        0x59t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x49t
        0x44t
        0x8t
        0x51t
        0x5bt
        0x64t
        0x15t
        0x0t
        0x4t
        0x4ct
        0x50t
        0x78t
        0xbt
        0x10t
        0x0t
        0x4at
        0x43t
        0x50t
        0x9t
        0x59t
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x19t
        0xft
        0x50t
        0xbt
        0x34t
        0x11t
        0x5dt
        0x3t
        0x4dt
        0x0t
        0x25t
        0x8t
        0x4at
        0x16t
        0x58t
        0xbt
        0x2t
        0x4t
        0x4t
    .end array-data

    :array_5
    .array-data 1
        0x49t
        0x45t
        0x5ft
        0x3t
        0x1et
        0x65t
        0x15t
        0x1t
        0x53t
        0x16t
        0x3t
        0x74t
        0x0t
        0x9t
        0x53t
        0x1bt
        0x5bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x7et
        0x7ft
        0x31t
        0x69t
        0x65t
        0x2at
        0x65t
        0x75t
        0x34t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x15t
        0x74t
        0x78t
        0x2ft
        0x74t
        0x79t
        0x76t
        0x73t
        0x7dt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x15t
        0x7bt
        0x78t
        0x24t
        0x7bt
        0x6at
        0x74t
        0x70t
        0x72t
        0x36t
        0x61t
        0x74t
        0x76t
        0x6at
    .end array-data

    nop

    :array_9
    .array-data 1
        0x32t
        0x76t
        0x31t
        0x67t
        0x7et
        0x66t
        0x27t
    .end array-data
.end method
