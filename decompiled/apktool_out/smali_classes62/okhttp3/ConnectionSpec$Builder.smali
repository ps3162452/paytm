.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    iget-object v0, p1, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1f3287"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    :array_0
    .array-data 1
        0x5ft
        0x9t
        0x13t
        0x51t
        0x51t
        0x47t
        0x59t
        0x3t
        0x41t
        0x12t
        0x4bt
        0x42t
        0x58t
        0x12t
        0x56t
        0x41t
        0x18t
        0x51t
        0x5et
        0x14t
        0x13t
        0x51t
        0x54t
        0x52t
        0x50t
        0x14t
        0x47t
        0x57t
        0x40t
        0x43t
        0x11t
        0x5t
        0x5ct
        0x5ct
        0x56t
        0x52t
        0x52t
        0x12t
        0x5at
        0x5dt
        0x56t
        0x44t
    .end array-data
.end method

.method public allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0ef830"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5et
        0xat
        0x46t
        0x6ct
        0x7ft
        0x63t
        0x10t
        0x13t
        0x3t
        0x4at
        0x40t
        0x59t
        0x5ft
        0xbt
        0x15t
        0x18t
        0x55t
        0x5ft
        0x42t
        0x45t
        0x5t
        0x54t
        0x56t
        0x51t
        0x42t
        0x11t
        0x3t
        0x40t
        0x47t
        0x10t
        0x53t
        0xat
        0x8t
        0x56t
        0x56t
        0x53t
        0x44t
        0xct
        0x9t
        0x56t
        0x40t
    .end array-data
.end method

.method public build()Lokhttp3/ConnectionSpec;
    .locals 1

    new-instance v0, Lokhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 6

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7f360"

    const/16 v3, 0x4d52

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ce0937"

    const-wide v4, -0x3e269f9ab1c00000L    # -1.702991161E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x8t
        0x58t
        0x46t
        0x50t
        0x5ft
        0x40t
        0xet
        0x52t
        0x14t
        0x13t
        0x45t
        0x45t
        0xft
        0x43t
        0x3t
        0x40t
        0x16t
        0x56t
        0x9t
        0x45t
        0x46t
        0x50t
        0x5at
        0x55t
        0x7t
        0x45t
        0x12t
        0x56t
        0x4et
        0x44t
        0x46t
        0x54t
        0x9t
        0x5dt
        0x58t
        0x55t
        0x5t
        0x43t
        0xft
        0x5ct
        0x58t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x11t
        0x10t
        0x55t
        0x56t
        0x56t
        0x10t
        0x11t
        0x10t
        0x56t
        0x5dt
        0x52t
        0x43t
        0x6t
        0x59t
        0x49t
        0x5bt
        0x52t
        0x11t
        0x45t
        0x43t
        0x4ct
        0x5at
        0x43t
        0x6t
        0x45t
        0x59t
        0x4at
        0x13t
        0x45t
        0x6t
        0x14t
        0x45t
        0x50t
        0x41t
        0x52t
        0x7t
    .end array-data
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 6

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2e12b9"

    const-wide/32 v4, -0x3ed3fb0e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5ct
        0xat
        0x11t
        0x51t
        0xbt
        0x49t
        0x5at
        0x0t
        0x43t
        0x12t
        0x11t
        0x4ct
        0x5bt
        0x11t
        0x54t
        0x41t
        0x42t
        0x5ft
        0x5dt
        0x17t
        0x11t
        0x51t
        0xet
        0x5ct
        0x53t
        0x17t
        0x45t
        0x57t
        0x1at
        0x4dt
        0x12t
        0x6t
        0x5et
        0x5ct
        0xct
        0x5ct
        0x51t
        0x11t
        0x58t
        0x5dt
        0xct
        0x4at
    .end array-data
.end method

.method public supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bccbf7"

    const/16 v3, 0x43a9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0

    :array_0
    .array-data 1
        0xct
        0xct
        0x43t
        0x36t
        0x2at
        0x64t
        0x42t
        0x6t
        0x1bt
        0x16t
        0x3t
        0x59t
        0x11t
        0xat
        0xct
        0xct
        0x15t
        0x17t
        0x4t
        0xct
        0x11t
        0x42t
        0x5t
        0x5bt
        0x7t
        0x2t
        0x11t
        0x16t
        0x3t
        0x4ft
        0x16t
        0x43t
        0x0t
        0xdt
        0x8t
        0x59t
        0x7t
        0x0t
        0x17t
        0xbt
        0x9t
        0x59t
        0x11t
    .end array-data
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "235546"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c9b703"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    :array_0
    .array-data 1
        0x5ct
        0x5ct
        0x15t
        0x61t
        0x78t
        0x65t
        0x12t
        0x45t
        0x50t
        0x47t
        0x47t
        0x5ft
        0x5dt
        0x5dt
        0x46t
        0x15t
        0x52t
        0x59t
        0x40t
        0x13t
        0x56t
        0x59t
        0x51t
        0x57t
        0x40t
        0x47t
        0x50t
        0x4dt
        0x40t
        0x16t
        0x51t
        0x5ct
        0x5bt
        0x5bt
        0x51t
        0x55t
        0x46t
        0x5at
        0x5at
        0x5bt
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x4dt
        0x42t
        0x5bt
        0x55t
        0x52t
        0x10t
        0x4dt
        0x42t
        0x58t
        0x5et
        0x56t
        0x43t
        0x6dt
        0x2et
        0x64t
        0x10t
        0x45t
        0x6t
        0x4bt
        0x11t
        0x5et
        0x5ft
        0x5dt
        0x43t
        0x50t
        0x11t
        0x17t
        0x42t
        0x56t
        0x12t
        0x4ct
        0xbt
        0x45t
        0x55t
        0x57t
    .end array-data
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "08d69a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5et
        0x57t
        0x44t
        0x62t
        0x75t
        0x32t
        0x10t
        0x4et
        0x1t
        0x44t
        0x4at
        0x8t
        0x5ft
        0x56t
        0x17t
        0x16t
        0x5ft
        0xet
        0x42t
        0x18t
        0x7t
        0x5at
        0x5ct
        0x0t
        0x42t
        0x4ct
        0x1t
        0x4et
        0x4dt
        0x41t
        0x53t
        0x57t
        0xat
        0x58t
        0x5ct
        0x2t
        0x44t
        0x51t
        0xbt
        0x58t
        0x4at
    .end array-data
.end method
