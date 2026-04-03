.class public final enum Lokhttp3/Protocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lokhttp3/Protocol;

.field public static final enum HTTP_1_0:Lokhttp3/Protocol;

.field public static final enum HTTP_1_1:Lokhttp3/Protocol;

.field public static final enum HTTP_2:Lokhttp3/Protocol;

.field public static final enum SPDY_3:Lokhttp3/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    new-instance v0, Lokhttp3/Protocol;

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "086783"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "0a8505"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    new-instance v0, Lokhttp3/Protocol;

    new-array v1, v7, [B

    fill-array-data v1, :array_2

    const-string v2, "74738a"

    const-wide v4, 0x41d99d7bbdc00000L    # 1.719004919E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "c17129"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    new-instance v0, Lokhttp3/Protocol;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "96f389"

    const v3, 0x4eee03cc    # 1.9966131E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_5

    const-string v3, "96ac49"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    new-instance v0, Lokhttp3/Protocol;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "1a43f0"

    const v3, 0x4ef349da

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_7

    const-string v3, "715d52"

    const-wide v4, -0x3e2caa0eb0800000L    # -1.297597758E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, v0, v10

    sput-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x6ct
        0x62t
        0x67t
        0x67t
        0x2t
        0x6ft
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x15t
        0x4ct
        0x45t
        0x1ft
        0x4t
        0x1et
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x7ft
        0x60t
        0x63t
        0x63t
        0x67t
        0x50t
        0x68t
        0x5t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x45t
        0x43t
        0x41t
        0x1dt
        0x8t
        0x4dt
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x6at
        0x66t
        0x22t
        0x6at
        0x67t
        0xat
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4at
        0x46t
        0x5t
        0x1at
        0x1bt
        0xat
        0x17t
        0x7t
    .end array-data

    :array_6
    .array-data 1
        0x79t
        0x35t
        0x60t
        0x63t
        0x39t
        0x2t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5ft
        0x3t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    :cond_1
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    goto :goto_0

    :cond_2
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bba933"

    const/16 v4, -0x3c7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x37t
        0xct
        0x4t
        0x41t
        0x43t
        0x56t
        0x1t
        0x16t
        0x4t
        0x5dt
        0x13t
        0x43t
        0x10t
        0xdt
        0x15t
        0x56t
        0x50t
        0x5ct
        0xet
        0x58t
        0x41t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 1

    const-class v0, Lokhttp3/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/Protocol;

    return-object v0
.end method

.method public static values()[Lokhttp3/Protocol;
    .locals 1

    sget-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;

    invoke-virtual {v0}, [Lokhttp3/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
