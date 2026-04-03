.class Landroidx/appcompat/app/TwilightManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroidx/appcompat/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ef8550"

    const/16 v2, -0x45e3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/TwilightManager;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x31t
        0x11t
        0x51t
        0x59t
        0x5ct
        0x57t
        0xdt
        0x12t
        0x75t
        0x54t
        0x5bt
        0x51t
        0x2t
        0x3t
        0x4at
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroidx/appcompat/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    iput-object p1, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;
    .locals 6

    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/app/TwilightManager;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "2f16e1"

    const-wide/32 v4, 0x450537ec

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v2, v1, v0}, Landroidx/appcompat/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    :cond_0
    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    return-object v0

    :array_0
    .array-data 1
        0x5et
        0x9t
        0x52t
        0x57t
        0x11t
        0x58t
        0x5dt
        0x8t
    .end array-data
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "dc9991"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "28acba"

    const-wide/32 v4, 0x528cf66

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x27

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d0c2bc"

    const/16 v5, 0x347c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "346c99"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x5t
        0xdt
        0x5dt
        0x4bt
        0x56t
        0x58t
        0x0t
        0x4dt
        0x49t
        0x5ct
        0x4bt
        0x5ct
        0xdt
        0x10t
        0x4at
        0x50t
        0x56t
        0x5ft
        0x4at
        0x22t
        0x7at
        0x7at
        0x7ct
        0x62t
        0x37t
        0x3ct
        0x7at
        0x76t
        0x78t
        0x63t
        0x37t
        0x26t
        0x66t
        0x75t
        0x76t
        0x72t
        0x25t
        0x37t
        0x70t
        0x76t
        0x77t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ct
        0x5dt
        0x15t
        0x14t
        0xdt
        0x13t
        0x59t
    .end array-data

    :array_2
    .array-data 1
        0x5t
        0x5et
        0x7t
        0x40t
        0xdt
        0xat
        0x0t
        0x1et
        0x13t
        0x57t
        0x10t
        0xet
        0xdt
        0x43t
        0x10t
        0x5bt
        0xdt
        0xdt
        0x4at
        0x71t
        0x20t
        0x71t
        0x27t
        0x30t
        0x37t
        0x6ft
        0x25t
        0x7bt
        0x2ct
        0x26t
        0x3bt
        0x7ct
        0x2ct
        0x71t
        0x23t
        0x37t
        0x2dt
        0x7ft
        0x2dt
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0x44t
        0x45t
    .end array-data
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/TwilightManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "54fdb0"

    const-wide/32 v4, 0x7767d003

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x73t
        0x55t
        0xft
        0x8t
        0x7t
        0x54t
        0x15t
        0x40t
        0x9t
        0x44t
        0x5t
        0x55t
        0x41t
        0x14t
        0xat
        0x5t
        0x11t
        0x44t
        0x15t
        0x5ft
        0x8t
        0xbt
        0x15t
        0x5et
        0x15t
        0x58t
        0x9t
        0x7t
        0x3t
        0x44t
        0x5ct
        0x5bt
        0x8t
    .end array-data
.end method

.method private isStateValid()Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setInstance(Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    sput-object p0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroidx/appcompat/app/TwilightCalculator;->getInstance()Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v14, v3, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget v4, v3, Landroidx/appcompat/app/TwilightCalculator;->state:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :goto_0
    iget-wide v0, v3, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v6, v3, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-nez v3, :cond_2

    :cond_0
    const-wide/32 v4, 0x2932e00

    add-long/2addr v4, v12

    :goto_1
    iput-boolean v2, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    iput-wide v14, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->yesterdaySunset:J

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunrise:J

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunset:J

    iput-wide v6, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    iput-wide v4, v10, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    cmp-long v3, v12, v18

    if-lez v3, :cond_3

    const-wide/16 v4, 0x0

    add-long/2addr v4, v6

    :goto_2
    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    goto :goto_1

    :cond_3
    cmp-long v3, v12, v16

    if-lez v3, :cond_4

    const-wide/16 v4, 0x0

    add-long v4, v4, v18

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    add-long v4, v4, v16

    goto :goto_2
.end method


# virtual methods
.method isNight()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->isStateValid()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Landroidx/appcompat/app/TwilightManager;->updateState(Landroid/location/Location;)V

    iget-boolean v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/appcompat/app/TwilightManager;->TAG:Ljava/lang/String;

    const/16 v3, 0x9c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "bd0be8"

    invoke-static {v3, v4, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x21t
        0xbt
        0x45t
        0xet
        0x1t
        0x18t
        0xct
        0xbt
        0x44t
        0x42t
        0x2t
        0x5dt
        0x16t
        0x44t
        0x5ct
        0x3t
        0x16t
        0x4ct
        0x42t
        0xft
        0x5et
        0xdt
        0x12t
        0x56t
        0x42t
        0x8t
        0x5ft
        0x1t
        0x4t
        0x4ct
        0xbt
        0xbt
        0x5et
        0x4ct
        0x45t
        0x6ct
        0xat
        0xdt
        0x43t
        0x42t
        0xct
        0x4bt
        0x42t
        0x14t
        0x42t
        0xdt
        0x7t
        0x59t
        0x0t
        0x8t
        0x49t
        0x42t
        0x7t
        0x5dt
        0x1t
        0x5t
        0x45t
        0x11t
        0x0t
        0x18t
        0x16t
        0xct
        0x55t
        0x42t
        0x4t
        0x48t
        0x12t
        0x44t
        0x54t
        0xdt
        0x0t
        0x4bt
        0x42t
        0xat
        0x5ft
        0x16t
        0x45t
        0x50t
        0x3t
        0x12t
        0x55t
        0x42t
        0x4t
        0x56t
        0x1bt
        0x44t
        0x5ct
        0xdt
        0x6t
        0x59t
        0x16t
        0xdt
        0x5ft
        0xct
        0x45t
        0x48t
        0x7t
        0x16t
        0x5dt
        0xbt
        0x16t
        0x4bt
        0xbt
        0xbt
        0x5et
        0x11t
        0x4bt
        0x18t
        0x24t
        0x5t
        0x5ct
        0xet
        0xct
        0x56t
        0x5t
        0x44t
        0x52t
        0x3t
        0x6t
        0x53t
        0x42t
        0x10t
        0x5ft
        0x42t
        0xdt
        0x59t
        0x10t
        0x0t
        0x53t
        0xdt
        0x1t
        0x5dt
        0x6t
        0x44t
        0x43t
        0x17t
        0xbt
        0x4at
        0xbt
        0x17t
        0x55t
        0x4dt
        0x16t
        0x4dt
        0xct
        0x17t
        0x55t
        0x16t
        0x45t
        0x4et
        0x3t
        0x8t
        0x45t
        0x7t
        0x16t
        0x16t
    .end array-data
.end method
