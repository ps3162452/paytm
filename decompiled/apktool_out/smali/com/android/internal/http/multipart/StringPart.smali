.class public Lcom/android/internal/http/multipart/StringPart;
.super Lcom/android/internal/http/multipart/PartBase;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String;

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "40be7b"

    const/16 v2, -0x1b4d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/StringPart;->DEFAULT_CHARSET:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "eecad6"

    const v2, -0x31a5eb62

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/StringPart;->DEFAULT_CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "ab2026"

    const-wide/32 v2, -0x1f676eee

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/StringPart;->DEFAULT_TRANSFER_ENCODING:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x61t
        0x63t
        0x4ft
        0x24t
        0x64t
        0x21t
        0x7dt
        0x79t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x0t
        0x1bt
        0x15t
        0x4bt
        0x46t
        0x9t
        0x4t
        0xat
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x59t
        0x0t
        0x5bt
        0x44t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "92e1ec"

    const/16 v3, -0x4c3a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x46t
        0x10t
        0x53t
        0x44t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "35028d"

    const v3, 0x4ebc1d8f    # 1.5780269E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x41t
        0x45t
        0x50t
        0x19t
    .end array-data
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cbce8d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x16t
        0x16t
        0x7t
        0x19t
    .end array-data
.end method

.method protected sendData(Ljava/io/OutputStream;)V
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

    const-string v2, "ee01e7"

    const/16 v3, 0x19c6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x11t
        0x45t
        0x53t
        0x44t
    .end array-data
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b1965c"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x45t
        0x4ct
        0x54t
        0x14t
    .end array-data
.end method
