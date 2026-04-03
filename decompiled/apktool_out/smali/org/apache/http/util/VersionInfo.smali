.class public Lorg/apache/http/util/VersionInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_MODULE:Ljava/lang/String;

.field public static final PROPERTY_RELEASE:Ljava/lang/String;

.field public static final PROPERTY_TIMESTAMP:Ljava/lang/String;

.field public static final UNAVAILABLE:Ljava/lang/String;

.field public static final VERSION_PROPERTY_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x1

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "45f27e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/VersionInfo;->PROPERTY_MODULE:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f02630"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/VersionInfo;->PROPERTY_RELEASE:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "75f4c3"

    const-wide v2, -0x3e47755af0000000L    # -4.11739408E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/VersionInfo;->PROPERTY_TIMESTAMP:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "a03ea5"

    const/16 v2, 0x3880

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/VersionInfo;->UNAVAILABLE:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "1056c9"

    const/16 v2, -0x12f4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/VersionInfo;->VERSION_PROPERTY_FILE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5dt
        0x5bt
        0x0t
        0x5dt
        0x19t
        0x8t
        0x5bt
        0x51t
        0x13t
        0x5et
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0xft
        0x5et
        0x54t
        0x59t
        0x1dt
        0x42t
        0x3t
        0x5ct
        0x57t
        0x57t
        0x40t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x5et
        0x5bt
        0x0t
        0x5bt
        0x4dt
        0x47t
        0x5et
        0x58t
        0x3t
        0x47t
        0x17t
        0x52t
        0x5at
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x34t
        0x7et
        0x72t
        0x33t
        0x20t
        0x7ct
        0x2dt
        0x71t
        0x71t
        0x29t
        0x24t
    .end array-data

    :array_4
    .array-data 1
        0x47t
        0x55t
        0x47t
        0x45t
        0xat
        0x56t
        0x5ft
        0x1et
        0x45t
        0x44t
        0xct
        0x49t
        0x54t
        0x42t
        0x41t
        0x5ft
        0x6t
        0x4at
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3d480f"

    const-wide/32 v4, -0x473afb7b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x10t
        0x41t
        0x5at
        0x11t
    .end array-data
.end method

.method protected static final fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "010a6c"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x45t
        0x45t
        0x3t
        0x17t
    .end array-data
.end method

.method public static final loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6ff4da"

    const-wide v4, -0x3e2f6e9b9d400000L    # -1.111855499E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x12t
        0x13t
        0x56t
        0x45t
    .end array-data
.end method

.method public static final loadVersionInfo([Ljava/lang/String;Ljava/lang/ClassLoader;)[Lorg/apache/http/util/VersionInfo;
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "da1b38"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x37t
        0x15t
        0x44t
        0x0t
        0x12t
    .end array-data
.end method


# virtual methods
.method public final getClassloader()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "355dec"

    const-wide v4, 0x41c1d7d2b0000000L    # 5.98713696E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x41t
        0x40t
        0x6t
        0x44t
    .end array-data
.end method

.method public final getModule()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "70630a"

    const-wide v4, -0x3e2aacd8da800000L    # -1.431084182E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x44t
        0x43t
        0x51t
        0x11t
    .end array-data
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9ea661"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x11t
        0x14t
        0x54t
        0x17t
    .end array-data
.end method

.method public final getRelease()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "45424f"

    const-wide v4, 0x41d9ef64a1400000L    # 1.740477061E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x41t
        0x41t
        0x50t
        0x15t
    .end array-data
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f9533d"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x4dt
        0x40t
        0x51t
        0x12t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f14eba"

    const v3, -0x34ebf58d    # -9702003.0f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x45t
        0x41t
        0x7t
        0x43t
    .end array-data
.end method
