.class public final Lokhttp3/internal/http/StatusLine;
.super Ljava/lang/Object;


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lokhttp3/Protocol;


# direct methods
.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput p2, p0, Lokhttp3/internal/http/StatusLine;->code:I

    iput-object p3, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    return-void
.end method

.method public static get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;
    .locals 4

    new-instance v0, Lokhttp3/internal/http/StatusLine;

    invoke-virtual {p0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x18

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v2, "7d3080"

    invoke-static {v0, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "fef35d"

    const-wide v4, -0x3e2597bdb3c00000L    # -1.772161329E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    const/16 v1, 0x9

    if-nez v0, :cond_2

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x3

    if-ge v2, v3, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "160799"

    const-wide v4, -0x3e2d0bd395800000L    # -1.27196817E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v0, v4, :cond_3

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "f86782"

    const-wide v4, -0x3e3b6ff0ff000000L    # -6.8997069E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    const-string v2, "104a61"

    const/16 v3, -0x7871

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "d09745"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v2, v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v2, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x3

    if-le v4, v5, :cond_8

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_7

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_6

    const-string v3, "8f93b5"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [B

    fill-array-data v2, :array_7

    const-string v3, "403ac1"

    const-wide/32 v4, 0x2264f352

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lokhttp3/internal/http/StatusLine;

    invoke-direct {v2, v0, v3, v1}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    return-object v2

    :cond_8
    move-object v1, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7ft
        0x30t
        0x67t
        0x60t
        0x17t
        0x1t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0xbt
        0x3t
        0x4bt
        0x45t
        0x1t
        0x5t
        0x11t
        0x3t
        0x57t
        0x15t
        0x17t
        0x12t
        0x4t
        0x12t
        0x46t
        0x46t
        0x44t
        0xat
        0xct
        0x8t
        0x56t
        0xft
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x64t
        0x58t
        0x55t
        0x4ft
        0x49t
        0x5ct
        0x52t
        0x42t
        0x55t
        0x53t
        0x19t
        0x4at
        0x45t
        0x57t
        0x44t
        0x42t
        0x4at
        0x19t
        0x5dt
        0x5ft
        0x5et
        0x52t
        0x3t
        0x19t
    .end array-data

    :array_3
    .array-data 1
        0x33t
        0x56t
        0x53t
        0x4ft
        0x48t
        0x57t
        0x5t
        0x4ct
        0x53t
        0x53t
        0x18t
        0x41t
        0x12t
        0x59t
        0x42t
        0x42t
        0x4bt
        0x12t
        0xat
        0x51t
        0x58t
        0x52t
        0x2t
        0x12t
    .end array-data

    :array_4
    .array-data 1
        0x78t
        0x73t
        0x6dt
        0x41t
    .end array-data

    :array_5
    .array-data 1
        0x31t
        0x5et
        0x5ct
        0x4ft
        0x44t
        0x50t
        0x7t
        0x44t
        0x5ct
        0x53t
        0x14t
        0x46t
        0x10t
        0x51t
        0x4dt
        0x42t
        0x47t
        0x15t
        0x8t
        0x59t
        0x57t
        0x52t
        0xet
        0x15t
    .end array-data

    :array_6
    .array-data 1
        0x6dt
        0x8t
        0x5ct
        0x4bt
        0x12t
        0x50t
        0x5bt
        0x12t
        0x5ct
        0x57t
        0x42t
        0x46t
        0x4ct
        0x7t
        0x4dt
        0x46t
        0x11t
        0x15t
        0x54t
        0xft
        0x57t
        0x56t
        0x58t
        0x15t
    .end array-data

    :array_7
    .array-data 1
        0x61t
        0x5et
        0x56t
        0x19t
        0x13t
        0x54t
        0x57t
        0x44t
        0x56t
        0x5t
        0x43t
        0x42t
        0x40t
        0x51t
        0x47t
        0x14t
        0x10t
        0x11t
        0x58t
        0x59t
        0x5dt
        0x4t
        0x59t
        0x11t
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    const/16 v3, 0x8

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v0, v2, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v2, "fd71d3"

    invoke-static {v0, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v2, "aae1b8"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x2et
        0x30t
        0x63t
        0x61t
        0x4bt
        0x2t
        0x48t
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x29t
        0x35t
        0x31t
        0x61t
        0x4dt
        0x9t
        0x4ft
        0x50t
    .end array-data
.end method
