.class public final Lokhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    iput-object p1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ConnectionSpec;

    invoke-virtual {v0, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ConnectionSpec;

    invoke-virtual {v0, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3e0ade"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0ae6e6"

    const/16 v4, -0x5a04

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "e75644"

    const-wide/32 v4, -0x25d552b3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v0, p1, v2}, Lokhttp3/internal/Internal;->apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x66t
        0xbt
        0x51t
        0x3t
        0x8t
        0x0t
        0x13t
        0x11t
        0x5ft
        0x41t
        0x2t
        0xct
        0x5dt
        0x1t
        0x10t
        0x0t
        0x7t
        0x6t
        0x56t
        0x15t
        0x44t
        0x0t
        0x6t
        0x9t
        0x56t
        0x45t
        0x40t
        0x13t
        0xbt
        0x11t
        0x5ct
        0x6t
        0x5ft
        0xdt
        0x17t
        0x4bt
        0x13t
        0xct
        0x43t
        0x27t
        0x5t
        0x9t
        0x5ft
        0x7t
        0x51t
        0x2t
        0xft
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x1ct
        0x41t
        0x8t
        0x59t
        0x1t
        0x53t
        0x43t
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x49t
        0x17t
        0x46t
        0x43t
        0x44t
        0x44t
        0xat
        0x45t
        0x41t
        0x53t
        0x50t
        0x14t
        0x15t
        0x45t
        0x5at
        0x42t
        0x5bt
        0x57t
        0xat
        0x5bt
        0x46t
        0xbt
    .end array-data
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
