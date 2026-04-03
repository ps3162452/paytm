.class public abstract Lcom/android/internal/http/multipart/Part;
.super Ljava/lang/Object;


# static fields
.field protected static final BOUNDARY:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final BOUNDARY_BYTES:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final CHARSET:Ljava/lang/String;

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String;

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String;

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String;

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String;

.field protected static final CRLF_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String;

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE:Ljava/lang/String;

.field protected static final QUOTE_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x25

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "e0b710"

    const v2, -0x31004a49

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e46863"

    const-wide/32 v2, 0x103a1b0c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CHARSET:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "10012c"

    const/16 v2, -0x352a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "3893b1"

    const v2, 0x4ea41abf

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "88d33c"

    const-wide/32 v2, -0x10a2d90f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "459ce7"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CRLF:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "452360"

    const/16 v2, 0x5338

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x13

    aput-byte v1, v0, v5

    const-string v1, "1f94ac"

    const-wide v2, 0x41cc2ece6f800000L    # 9.45659103E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE:Ljava/lang/String;

    sput-object v4, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    sput-object v4, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x48t
        0x1dt
        0x4ft
        0x1at
        0x1ct
        0x1dt
        0x48t
        0x1dt
        0x4ft
        0x1at
        0x1ct
        0x1dt
        0x48t
        0x1dt
        0x4ft
        0x1at
        0x2t
        0x1t
        0x51t
        0x1t
        0x57t
        0xet
        0x3t
        0x6t
        0x50t
        0x3t
        0x57t
        0xft
        0x8t
        0x7t
        0x5ct
        0x3t
        0x50t
        0x4t
        0x9t
        0x4t
        0x53t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5et
        0x14t
        0x55t
        0x50t
        0x57t
        0x41t
        0x16t
        0x51t
        0x42t
        0x5t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x72t
        0x5ft
        0x5et
        0x45t
        0x57t
        0xdt
        0x45t
        0x1dt
        0x74t
        0x58t
        0x41t
        0x13t
        0x5et
        0x43t
        0x59t
        0x45t
        0x5bt
        0xct
        0x5ft
        0xat
        0x10t
        0x57t
        0x5dt
        0x11t
        0x5ct
        0x1dt
        0x54t
        0x50t
        0x46t
        0x2t
        0xat
        0x10t
        0x5et
        0x50t
        0x5ft
        0x6t
        0xct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x70t
        0x57t
        0x57t
        0x47t
        0x7t
        0x5ft
        0x47t
        0x15t
        0x6dt
        0x41t
        0x3t
        0x5ft
        0x40t
        0x5et
        0x5ct
        0x41t
        0x4ft
        0x74t
        0x5dt
        0x5bt
        0x56t
        0x57t
        0xbt
        0x5ft
        0x54t
        0x2t
        0x19t
    .end array-data

    :array_4
    .array-data 1
        0x7bt
        0x57t
        0xat
        0x47t
        0x56t
        0xdt
        0x4ct
        0x15t
        0x30t
        0x4at
        0x43t
        0x6t
        0x2t
        0x18t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x39t
        0x3ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x19t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c898d5"

    const/16 v3, 0x4027

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x4ct
        0x4ct
        0x5at
        0x45t
    .end array-data
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5844bb"

    const-wide/32 v4, 0x6dcd7683

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x4ct
        0x41t
        0x56t
        0x43t
    .end array-data
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "83344b"

    const-wide v4, 0x41c85e7716800000L    # 8.17688109E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x47t
        0x46t
        0x56t
        0x15t
    .end array-data
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7dabf2"

    const-wide/32 v4, -0x39b84ea5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x10t
        0x14t
        0x0t
        0x47t
    .end array-data
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d9a43e"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x37t
        0x4dt
        0x14t
        0x56t
        0x12t
    .end array-data
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8fb447"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x12t
        0x17t
        0x56t
        0x15t
    .end array-data
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "639add"

    const-wide/32 v4, 0x3029e468

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x47t
        0x4ct
        0x3t
        0x45t
    .end array-data
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5dc2e8"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x10t
        0x16t
        0x50t
        0x44t
    .end array-data
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0acd6d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x15t
        0x16t
        0x6t
        0x17t
    .end array-data
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d6ac46"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x42t
        0x14t
        0x1t
        0x15t
    .end array-data
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "658a5c"

    const-wide/32 v4, 0x1f2e869c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x41t
        0x4dt
        0x3t
        0x14t
    .end array-data
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b57e76"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x41t
        0x42t
        0x7t
        0x16t
    .end array-data
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1698a8"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x42t
        0x4ct
        0x5at
        0x40t
    .end array-data
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c37ee4"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x47t
        0x42t
        0x7t
        0x44t
    .end array-data
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c89c89"

    const/16 v3, 0x52d7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x4ct
        0x4ct
        0x1t
        0x19t
    .end array-data
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ada01c"

    const-wide/32 v4, 0x5579a398

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0x10t
        0x14t
        0x52t
        0x10t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e4301e"

    const-wide v4, -0x3e4efd801f000000L    # -2.85376481E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x40t
        0x46t
        0x52t
        0x10t
    .end array-data
.end method
