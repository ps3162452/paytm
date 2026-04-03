.class public Lcom/android/internal/http/multipart/FilePart;
.super Lcom/android/internal/http/multipart/PartBase;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String;

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String;

.field protected static final FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "71c924"

    const-wide v2, 0x41d21855b7400000L    # 1.214338781E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->DEFAULT_CHARSET:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "cc29ac"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->DEFAULT_CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "515a92"

    const-wide/32 v2, -0x6a504c69

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->DEFAULT_TRANSFER_ENCODING:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "8531bc"

    const/16 v2, -0x209c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->FILE_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        0x62t
        0x2ct
        0x14t
        0xat
        0xct
        0x2t
        0x8t
        0x4et
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x13t
        0x42t
        0x55t
        0x8t
        0x0t
        0x2t
        0x17t
        0x5bt
        0x56t
        0xft
        0x4ct
        0xct
        0x0t
        0x46t
        0x5ct
        0x15t
        0x4et
        0x10t
        0x17t
        0x40t
        0x5ct
        0x0t
        0xet
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x58t
        0x5bt
        0x0t
        0x4bt
        0x4bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x15t
        0x55t
        0x58t
        0xet
        0x6t
        0x56t
        0x54t
        0x5et
        0x54t
        0x5ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;)V
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

    const-string v2, "c065f5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x43t
        0x57t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

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

    const-string v2, "c3fc84"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x47t
        0x13t
        0x1t
        0x19t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

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

    const-string v2, "647b06"

    const-wide/32 v4, 0x47d609c9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x40t
        0x42t
        0x0t
        0x11t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

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

    const-string v2, "bc27f4"

    const-wide v4, -0x3e344dd942000000L    # -9.29320316E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x17t
        0x47t
        0x55t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

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

    const-string v2, "a65adc"

    const/16 v3, -0xa72

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0x42t
        0x40t
        0x3t
        0x45t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

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

    const-string v2, "982309"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6at
        0x4ct
        0x47t
        0x51t
        0x11t
    .end array-data
.end method


# virtual methods
.method protected getSource()Lcom/android/internal/http/multipart/PartSource;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eaf0dc"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x15t
        0x13t
        0x52t
        0x45t
    .end array-data
.end method

.method protected lengthOfData()J
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "abfd38"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x16t
        0x13t
        0x6t
        0x12t
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

    const-string v2, "08fb5c"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x4ct
        0x13t
        0x0t
        0x14t
    .end array-data
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
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

    const-string v2, "06a6cf"

    const v3, -0x314e52ac

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x42t
        0x14t
        0x54t
        0x42t
    .end array-data
.end method
