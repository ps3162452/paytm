.class final Lokhttp3/Dns$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Dns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6cef38"

    const-wide v4, -0x3e58b39fbe000000L    # -1.95440673E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "fbc35b"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :array_0
    .array-data 1
        0x5et
        0xct
        0x16t
        0x12t
        0x5dt
        0x59t
        0x5bt
        0x6t
        0x45t
        0x5bt
        0xet
        0x18t
        0x58t
        0x16t
        0x9t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x10t
        0xct
        0x58t
        0x50t
        0xct
        0x46t
        0x11t
        0x1at
        0x40t
        0x41t
        0x7t
        0xbt
        0x42t
        0x1t
        0x56t
        0x5dt
        0x3t
        0x10t
        0xbt
        0xct
        0x46t
        0x47t
        0x42t
        0x0t
        0xdt
        0x11t
        0x13t
        0x51t
        0xct
        0x15t
        0x42t
        0xft
        0x5ct
        0x5at
        0x9t
        0x13t
        0x12t
        0x43t
        0x5ct
        0x53t
        0x42t
    .end array-data
.end method
