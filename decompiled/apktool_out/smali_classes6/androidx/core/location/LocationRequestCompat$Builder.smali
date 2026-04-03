.class public final Landroidx/core/location/LocationRequestCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMillis:J

.field private mIntervalMillis:J

.field private mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mQuality:I


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/core/location/LocationRequestCompat$Builder;->setIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;

    const/16 v0, 0x66

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    return-void
.end method

.method public constructor <init>(Landroidx/core/location/LocationRequestCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/location/LocationRequestCompat;
    .locals 12

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "38aa3c"

    const/16 v3, -0x2ebb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    new-instance v0, Landroidx/core/location/LocationRequestCompat;

    iget v3, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    iget-wide v4, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    iget v6, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    iget-wide v8, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iget v9, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    iget-wide v10, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    invoke-direct/range {v0 .. v11}, Landroidx/core/location/LocationRequestCompat;-><init>(JIJIJFJ)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x43t
        0x59t
        0x12t
        0x12t
        0x5at
        0x15t
        0x56t
        0x18t
        0xdt
        0xet
        0x50t
        0x2t
        0x47t
        0x51t
        0xet
        0xft
        0x13t
        0x11t
        0x56t
        0x49t
        0x14t
        0x4t
        0x40t
        0x17t
        0x40t
        0x18t
        0xct
        0x14t
        0x40t
        0x17t
        0x13t
        0x50t
        0x0t
        0x17t
        0x56t
        0x43t
        0x52t
        0x56t
        0x41t
        0x4t
        0x4bt
        0x13t
        0x5ft
        0x51t
        0x2t
        0x8t
        0x47t
        0x43t
        0x5et
        0x51t
        0xft
        0x8t
        0x5et
        0x16t
        0x5et
        0x18t
        0x14t
        0x11t
        0x57t
        0x2t
        0x47t
        0x5dt
        0x41t
        0x8t
        0x5dt
        0x17t
        0x56t
        0x4at
        0x17t
        0x0t
        0x5ft
    .end array-data
.end method

.method public clearMinUpdateIntervalMillis()Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    return-object p0
.end method

.method public setDurationMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 7

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bcab1a"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    return-object p0

    nop

    :array_0
    .array-data 1
        0x6t
        0x16t
        0x13t
        0x3t
        0x45t
        0x8t
        0xdt
        0xdt
        0x2ct
        0xbt
        0x5dt
        0xdt
        0xbt
        0x10t
    .end array-data
.end method

.method public setIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 9

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2e3b5a"

    const-wide/32 v6, -0x170cb57f

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5bt
        0xbt
        0x47t
        0x7t
        0x47t
        0x17t
        0x53t
        0x9t
        0x7et
        0xbt
        0x59t
        0xdt
        0x5bt
        0x16t
    .end array-data
.end method

.method public setMaxUpdateDelayMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 7

    const/4 v6, 0x1

    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "be7142"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    return-object p0

    nop

    :array_0
    .array-data 1
        0xft
        0x4t
        0x4ft
        0x64t
        0x44t
        0x56t
        0x3t
        0x11t
        0x52t
        0x75t
        0x51t
        0x5et
        0x3t
        0x1ct
        0x7at
        0x58t
        0x58t
        0x5et
        0xbt
        0x16t
    .end array-data
.end method

.method public setMaxUpdates(I)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7fffffff

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "856536"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v3, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    return-object p0

    :array_0
    .array-data 1
        0x55t
        0x54t
        0x4et
        0x60t
        0x43t
        0x52t
        0x59t
        0x41t
        0x53t
        0x46t
    .end array-data
.end method

.method public setMinUpdateDistanceMeters(F)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 5

    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2254be"

    const v4, -0x31e84455

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroidx/core/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5ft
        0x5bt
        0x5bt
        0x61t
        0x12t
        0x1t
        0x53t
        0x46t
        0x50t
        0x70t
        0xbt
        0x16t
        0x46t
        0x53t
        0x5bt
        0x57t
        0x7t
        0x28t
        0x57t
        0x46t
        0x50t
        0x46t
        0x11t
    .end array-data
.end method

.method public setMinUpdateIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 9

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b9e91c"

    const-wide/32 v6, -0x3db3f19a

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    return-object p0

    nop

    :array_0
    .array-data 1
        0xft
        0x50t
        0xbt
        0x6ct
        0x41t
        0x7t
        0x3t
        0x4dt
        0x0t
        0x70t
        0x5ft
        0x17t
        0x7t
        0x4bt
        0x13t
        0x58t
        0x5dt
        0x2et
        0xbt
        0x55t
        0x9t
        0x50t
        0x42t
    .end array-data
.end method

.method public setQuality(I)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x32

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0faa6c"

    const v5, -0x310018b2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x41t
        0x13t
        0x0t
        0xdt
        0x5ft
        0x17t
        0x49t
        0x46t
        0xct
        0x14t
        0x45t
        0x17t
        0x10t
        0x4t
        0x4t
        0x41t
        0x57t
        0x43t
        0x54t
        0x3t
        0x7t
        0x8t
        0x58t
        0x6t
        0x54t
        0x46t
        0x30t
        0x34t
        0x77t
        0x2ft
        0x79t
        0x32t
        0x38t
        0x41t
        0x55t
        0xct
        0x5et
        0x15t
        0x15t
        0x0t
        0x58t
        0x17t
        0x1ct
        0x46t
        0xft
        0xet
        0x42t
        0x43t
        0x15t
        0x2t
    .end array-data
.end method
