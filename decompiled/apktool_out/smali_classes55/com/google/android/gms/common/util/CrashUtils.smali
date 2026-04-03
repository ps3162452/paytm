.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;


# static fields
.field private static final zza:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9502b0"

    const-wide v4, -0x3e2823be68c00000L    # -1.601242717E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "8cbbe4"

    const-wide/32 v4, 0x1b058cd

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "781d32"

    const-wide v4, 0x41dd7f0e62000000L    # 1.979464072E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "141125"

    const/16 v4, 0x2688

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "b7c233"

    const-wide/32 v4, -0x6a0a65de

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zza:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x58t
        0x5bt
        0x54t
        0x40t
        0xdt
        0x59t
        0x5dt
        0x1bt
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0xct
        0xft
        0x4ct
        0x4t
        0x5at
        0x5ct
        0x11t
        0xdt
        0xbt
        0x1t
        0x1at
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x59t
        0x5dt
        0x12t
        0x5at
        0x59t
        0x19t
    .end array-data

    :array_3
    .array-data 1
        0x5bt
        0x55t
        0x47t
        0x50t
        0x1ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x8t
        0x56t
        0x15t
        0x53t
        0x4bt
        0x1dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 6
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fb62b2"

    const/16 v3, -0x1d90

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7de47b"

    const-wide/32 v4, 0x75f5e3bf

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x25t
        0x10t
        0x57t
        0x41t
        0xat
        0x67t
        0x12t
        0xbt
        0x5at
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x16t
        0x17t
        0x5bt
        0x45t
        0x42t
        0x56t
        0x0t
        0x1t
        0x5dt
        0x59t
        0x5t
        0x17t
        0x1t
        0x1dt
        0x57t
        0x52t
        0x12t
        0x43t
        0xdt
        0xat
        0x5at
        0x17t
        0x16t
        0x58t
        0x44t
        0x21t
        0x46t
        0x58t
        0x12t
        0x75t
        0xbt
        0x1dt
        0x15t
    .end array-data
.end method
