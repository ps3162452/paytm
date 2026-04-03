.class public final Lcom/google/zxing/client/j2se/ImageConverter;
.super Ljava/lang/Object;


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final FORMAT:Ljava/lang/String;

.field private static final RED:I = -0x10000

.field private static final WHITE:I = -0x1

.field private static rowSampling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "91cb4b"

    const v2, 0x4e8ee48e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/j2se/ImageConverter;->FORMAT:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/zxing/client/j2se/ImageConverter;->rowSampling:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x5ft
        0x4t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertImage(Ljava/net/URI;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/high16 v1, -0x1000000

    const/4 v4, 0x0

    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    new-instance v3, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-direct {v0, v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v7, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v9

    new-instance v10, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {v10, v8, v9, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v8}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    sget-boolean v3, Lcom/google/zxing/client/j2se/ImageConverter;->rowSampling:Z

    if-eqz v3, :cond_3

    move v6, v4

    :goto_0
    if-ge v6, v9, :cond_6

    :try_start_0
    invoke-virtual {v7, v6, v0}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move v5, v4

    :goto_1
    if-ge v5, v8, :cond_1

    invoke-virtual {v3, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    invoke-virtual {v10, v5, v6, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :catch_0
    move-exception v3

    move v3, v4

    :goto_3
    if-ge v3, v8, :cond_2

    const/high16 v5, -0x10000

    invoke-virtual {v10, v3, v6, v5}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    move-object v0, v3

    :cond_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move v5, v4

    :goto_4
    if-ge v5, v9, :cond_6

    move v3, v4

    :goto_5
    if-ge v3, v8, :cond_5

    invoke-virtual {v6, v3, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_6
    invoke-virtual {v10, v3, v5, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_4
    move v0, v2

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_6
    invoke-static {p0}, Lcom/google/zxing/client/j2se/ImageConverter;->getOutput(Ljava/net/URI;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3d75d6"

    const/16 v5, -0x2109

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v1, Lcom/google/zxing/client/j2se/ImageConverter;->FORMAT:Ljava/lang/String;

    invoke-static {v10, v1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x16t
        0x5et
        0x41t
        0xdt
        0x58t
        0x54t
        0x44t
        0x58t
        0x40t
        0x10t
        0x46t
        0x46t
        0x10t
        0x17t
        0x41t
        0xbt
        0x16t
        0x16t
        0x17t
        0x3dt
    .end array-data
.end method

.method private static getFileOfUri(Ljava/net/URI;)Ljava/io/File;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v3, 0x1c

    aput-byte v3, v1, v4

    const-string v3, "212846"

    const/16 v4, -0x1ca4

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method private static getOutput(Ljava/net/URI;)Ljava/io/File;
    .locals 6

    const/16 v4, 0x2e

    invoke-static {p0}, Lcom/google/zxing/client/j2se/ImageConverter;->getFileOfUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e24bd9"

    const-wide/32 v4, -0x325b11ef

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-boolean v0, Lcom/google/zxing/client/j2se/ImageConverter;->rowSampling:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "ac4816"

    const/16 v3, -0x1b52

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/j2se/ImageConverter;->FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "50ce6d"

    const v3, 0x4ee2e77c

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1

    :array_0
    .array-data 1
        0x26t
        0x5dt
        0x5at
        0x14t
        0x1t
        0x4bt
        0x11t
        0x57t
        0x50t
        0x2bt
        0x9t
        0x58t
        0x2t
        0x57t
        0x1at
        0x12t
        0xat
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0xct
        0x43t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x54t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6048db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/zxing/client/j2se/ImageConverter;->rowSampling:Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "2d97f2"

    const v5, 0x4eb2ba7d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/zxing/client/j2se/ImageConverter;->rowSampling:Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput-byte v5, v3, v4

    const-string v4, "5638fe"

    const-wide v6, 0x41dc3378b4800000L    # 1.892541138E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1e

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "565d4f"

    const v7, 0x4e42e97b    # 8.175203E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_a

    aget-object v0, p0, v1

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput-byte v5, v3, v4

    const-string v4, "58da31"

    const/16 v5, -0x6f96

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, 0x1e

    aput-byte v9, v7, v8

    const-string v8, "0fdd2d"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const-string v8, "e4f253"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/16 v7, 0x9

    new-array v7, v7, [B

    fill-array-data v7, :array_4

    const-string v8, "ef2a46"

    const v9, 0x4ec598ac

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const/16 v7, 0x8

    new-array v7, v7, [B

    fill-array-data v7, :array_5

    const-string v8, "ce0376"

    const/16 v9, -0x6618

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x7

    new-array v7, v7, [B

    fill-array-data v7, :array_6

    const-string v8, "f9cd2e"

    const-wide/32 v10, -0x4e9e6344

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/client/j2se/ImageConverter;->convertImage(Ljava/net/URI;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/client/j2se/ImageConverter;->convertImage(Ljava/net/URI;)V

    goto/16 :goto_3

    :cond_9
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/zxing/client/j2se/ImageConverter;->convertImage(Ljava/net/URI;)V

    goto/16 :goto_3

    :cond_a
    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x42t
        0x5bt
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0x56t
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x7ct
        0x51t
        0x5bt
        0xbt
        0x46t
        0xft
        0x5bt
        0x51t
        0x15t
        0x11t
        0x5at
        0x14t
        0x50t
        0x55t
        0x5at
        0x3t
        0x5at
        0xft
        0x4ft
        0x53t
        0x51t
        0x44t
        0x5bt
        0x16t
        0x41t
        0x5ft
        0x5at
        0xat
        0xet
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4bt
        0x40t
        0x1et
        0x46t
    .end array-data

    :array_4
    .array-data 1
        0x4bt
        0xbt
        0x5dt
        0xft
        0x5bt
        0x18t
        0x15t
        0x8t
        0x55t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4dt
        0x17t
        0x5ft
        0x44t
        0x19t
        0x46t
        0xdt
        0x2t
    .end array-data

    :array_6
    .array-data 1
        0x48t
        0xbt
        0x7t
        0x4at
        0x42t
        0xbt
        0x1t
    .end array-data
.end method
