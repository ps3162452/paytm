.class public final Lcom/google/android/gms/common/Scopes;
.super Ljava/lang/Object;


# static fields
.field public static final APP_STATE:Ljava/lang/String;

.field public static final CLOUD_SAVE:Ljava/lang/String;

.field public static final DRIVE_APPFOLDER:Ljava/lang/String;

.field public static final DRIVE_APPS:Ljava/lang/String;

.field public static final DRIVE_FILE:Ljava/lang/String;

.field public static final DRIVE_FULL:Ljava/lang/String;

.field public static final EMAIL:Ljava/lang/String;

.field public static final GAMES:Ljava/lang/String;

.field public static final GAMES_LITE:Ljava/lang/String;

.field public static final LEGACY_USERINFO_EMAIL:Ljava/lang/String;

.field public static final LEGACY_USERINFO_PROFILE:Ljava/lang/String;

.field public static final OPEN_ID:Ljava/lang/String;

.field public static final PLUS_LOGIN:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLUS_ME:Ljava/lang/String;

.field public static final PROFILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x25

    const/4 v6, 0x0

    const/16 v5, 0x2a

    const/4 v4, 0x1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2939ee"

    const-wide/32 v2, -0x7f40ba36

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->APP_STATE:Ljava/lang/String;

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "9c4c03"

    const-wide v2, -0x3e32540802000000L    # -9.95618812E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->CLOUD_SAVE:Ljava/lang/String;

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "4df4db"

    const-wide/32 v2, 0xdae59d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_APPFOLDER:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "4ea639"

    const/16 v2, 0x8f5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_APPS:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "bca86f"

    invoke-static {v0, v1, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_FILE:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "0484e9"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_FULL:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "a674bc"

    const-wide/32 v2, -0x68eb0979

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->EMAIL:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_7

    const-string v1, "7247ad"

    const v2, -0x31c9c87e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->GAMES:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_8

    const-string v1, "2fc96f"

    const-wide v2, 0x41b9bca278000000L    # 4.3179276E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->GAMES_LITE:Ljava/lang/String;

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "749d4e"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->LEGACY_USERINFO_EMAIL:Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "684c52"

    const v2, -0x33e7bd65    # -3.9914092E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->LEGACY_USERINFO_PROFILE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "3ad88e"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->OPEN_ID:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_c

    const-string v1, "aa0e59"

    const-wide/32 v2, -0x3e9ada0e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->PLUS_LOGIN:Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "30db6a"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->PLUS_ME:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "5557bd"

    const-wide/32 v2, -0x5aef4ed8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->PROFILE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5at
        0x4dt
        0x47t
        0x49t
        0x16t
        0x5ft
        0x1dt
        0x16t
        0x44t
        0x4et
        0x12t
        0x4bt
        0x55t
        0x56t
        0x5ct
        0x5et
        0x9t
        0x0t
        0x53t
        0x49t
        0x5at
        0x4at
        0x4bt
        0x6t
        0x5dt
        0x54t
        0x1ct
        0x58t
        0x10t
        0x11t
        0x5at
        0x16t
        0x52t
        0x49t
        0x15t
        0x16t
        0x46t
        0x58t
        0x47t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x17t
        0x40t
        0x13t
        0x43t
        0x9t
        0x16t
        0x4ct
        0x43t
        0x14t
        0x47t
        0x1dt
        0x5et
        0xct
        0x5bt
        0x4t
        0x5ct
        0x56t
        0x58t
        0x13t
        0x5dt
        0x10t
        0x1et
        0x50t
        0x56t
        0xet
        0x1bt
        0x2t
        0x45t
        0x47t
        0x51t
        0x4ct
        0x50t
        0x2t
        0x44t
        0x52t
        0x4at
        0x17t
        0x5bt
        0x11t
        0x55t
        0x5et
        0x56t
        0x1t
        0x5dt
        0xft
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x5ct
        0x10t
        0x12t
        0x44t
        0x17t
        0x58t
        0x1bt
        0x4bt
        0x11t
        0x43t
        0x13t
        0x4ct
        0x53t
        0xbt
        0x9t
        0x53t
        0x8t
        0x7t
        0x55t
        0x14t
        0xft
        0x47t
        0x4at
        0x1t
        0x5bt
        0x9t
        0x49t
        0x55t
        0x11t
        0x16t
        0x5ct
        0x4bt
        0x2t
        0x46t
        0xdt
        0x14t
        0x51t
        0x4at
        0x7t
        0x44t
        0x14t
        0x6t
        0x55t
        0x10t
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ct
        0x11t
        0x15t
        0x46t
        0x40t
        0x3t
        0x1bt
        0x4at
        0x16t
        0x41t
        0x44t
        0x17t
        0x53t
        0xat
        0xet
        0x51t
        0x5ft
        0x5ct
        0x55t
        0x15t
        0x8t
        0x45t
        0x1dt
        0x5at
        0x5bt
        0x8t
        0x4et
        0x57t
        0x46t
        0x4dt
        0x5ct
        0x4at
        0x5t
        0x44t
        0x5at
        0x4ft
        0x51t
        0x4bt
        0x0t
        0x46t
        0x43t
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0xat
        0x17t
        0x15t
        0x48t
        0x45t
        0x5ct
        0x4dt
        0x4ct
        0x16t
        0x4ft
        0x41t
        0x48t
        0x5t
        0xct
        0xet
        0x5ft
        0x5at
        0x3t
        0x3t
        0x13t
        0x8t
        0x4bt
        0x18t
        0x5t
        0xdt
        0xet
        0x4et
        0x59t
        0x43t
        0x12t
        0xat
        0x4ct
        0x5t
        0x4at
        0x5ft
        0x10t
        0x7t
        0x4dt
        0x7t
        0x51t
        0x5at
        0x3t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x58t
        0x40t
        0x4ct
        0x44t
        0x16t
        0x3t
        0x1ft
        0x1bt
        0x4ft
        0x43t
        0x12t
        0x17t
        0x57t
        0x5bt
        0x57t
        0x53t
        0x9t
        0x5ct
        0x51t
        0x44t
        0x51t
        0x47t
        0x4bt
        0x5at
        0x5ft
        0x59t
        0x17t
        0x55t
        0x10t
        0x4dt
        0x58t
        0x1bt
        0x5ct
        0x46t
        0xct
        0x4ft
        0x55t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4t
        0x5bt
        0x56t
        0x5dt
        0xet
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5ft
        0x46t
        0x40t
        0x47t
        0x12t
        0x5et
        0x18t
        0x1dt
        0x43t
        0x40t
        0x16t
        0x4at
        0x50t
        0x5dt
        0x5bt
        0x50t
        0xdt
        0x1t
        0x56t
        0x42t
        0x5dt
        0x44t
        0x4ft
        0x7t
        0x58t
        0x5ft
        0x1bt
        0x56t
        0x14t
        0x10t
        0x5ft
        0x1dt
        0x53t
        0x56t
        0xct
        0x1t
        0x44t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5at
        0x12t
        0x17t
        0x49t
        0x45t
        0x5ct
        0x1dt
        0x49t
        0x14t
        0x4et
        0x41t
        0x48t
        0x55t
        0x9t
        0xct
        0x5et
        0x5at
        0x3t
        0x53t
        0x16t
        0xat
        0x4at
        0x18t
        0x5t
        0x5dt
        0xbt
        0x4ct
        0x58t
        0x43t
        0x12t
        0x5at
        0x49t
        0x4t
        0x58t
        0x5bt
        0x3t
        0x41t
        0x39t
        0xft
        0x50t
        0x42t
        0x3t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x5ft
        0x40t
        0x4dt
        0x14t
        0x47t
        0x5ft
        0x18t
        0x1bt
        0x4et
        0x13t
        0x43t
        0x4bt
        0x50t
        0x5bt
        0x56t
        0x3t
        0x58t
        0x0t
        0x56t
        0x44t
        0x50t
        0x17t
        0x1at
        0x6t
        0x58t
        0x59t
        0x16t
        0x5t
        0x41t
        0x11t
        0x5ft
        0x1bt
        0x4ct
        0x17t
        0x51t
        0x17t
        0x5et
        0x5at
        0x5ft
        0xbt
        0x1at
        0x0t
        0x5at
        0x55t
        0x50t
        0x8t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5et
        0x4ct
        0x40t
        0x13t
        0x46t
        0x8t
        0x19t
        0x17t
        0x43t
        0x14t
        0x42t
        0x1ct
        0x51t
        0x57t
        0x5bt
        0x4t
        0x59t
        0x57t
        0x57t
        0x48t
        0x5dt
        0x10t
        0x1bt
        0x51t
        0x59t
        0x55t
        0x1bt
        0x2t
        0x40t
        0x46t
        0x5et
        0x17t
        0x41t
        0x10t
        0x50t
        0x40t
        0x5ft
        0x56t
        0x52t
        0xct
        0x1bt
        0x42t
        0x44t
        0x57t
        0x52t
        0xat
        0x59t
        0x57t
    .end array-data

    :array_b
    .array-data 1
        0x5ct
        0x11t
        0x1t
        0x56t
        0x51t
        0x1t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x9t
        0x15t
        0x44t
        0x15t
        0x46t
        0x3t
        0x4et
        0x4et
        0x47t
        0x12t
        0x42t
        0x17t
        0x6t
        0xet
        0x5ft
        0x2t
        0x59t
        0x5ct
        0x0t
        0x11t
        0x59t
        0x16t
        0x1bt
        0x5at
        0xet
        0xct
        0x1ft
        0x4t
        0x40t
        0x4dt
        0x9t
        0x4et
        0x40t
        0x9t
        0x40t
        0x4at
        0x4ft
        0xdt
        0x5ft
        0x2t
        0x5ct
        0x57t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x5bt
        0x44t
        0x10t
        0x12t
        0x45t
        0x5bt
        0x1ct
        0x1ft
        0x13t
        0x15t
        0x41t
        0x4ft
        0x54t
        0x5ft
        0xbt
        0x5t
        0x5at
        0x4t
        0x52t
        0x40t
        0xdt
        0x11t
        0x18t
        0x2t
        0x5ct
        0x5dt
        0x4bt
        0x3t
        0x43t
        0x15t
        0x5bt
        0x1ft
        0x14t
        0xet
        0x43t
        0x12t
        0x1dt
        0x5dt
        0x1t
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x47t
        0x5at
        0x51t
        0xbt
        0x8t
        0x50t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
