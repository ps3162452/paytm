.class public final Lcom/google/zxing/client/j2se/CommandLineRunner;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildHints()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATAMATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static decode(Ljava/net/URI;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "71bb0e"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6740d5"

    const/16 v4, -0x54cc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v2, v1}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v4, v2}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    if-eqz p2, :cond_1

    invoke-static {p0, v1, v3}, Lcom/google/zxing/client/j2se/CommandLineRunner;->dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V

    :cond_1
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v1, v3, p1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "75e96e"

    const-wide v8, -0x3e2894aeedc00000L    # -1.571636297E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "ea2825"

    const v7, 0x4e2ece9d    # 7.3319405E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xf

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "eb3fc8"

    const/16 v7, -0x5e4e

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "40ad82"

    const/16 v7, 0x574c

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "04aaab"

    const-wide/32 v6, -0xa5eece4

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0xdt
        0x11t
        0x21t
        0xdt
        0x45t
        0x9t
        0x53t
        0x11t
        0xct
        0xdt
        0x44t
        0x45t
        0x5bt
        0x5et
        0x3t
        0x6t
        0x10t
        0xct
        0x5at
        0x50t
        0x5t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0x52t
        0x47t
        0x5ft
        0x11t
        0x47t
        0x55t
        0x52t
        0x14t
        0x5et
        0xbt
        0x41t
        0x16t
        0x51t
        0x5bt
        0x45t
        0xat
        0x51t
        0xct
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x1dt
        0x3t
        0x56t
        0x44t
        0x8t
        0x56t
        0x41t
        0x5ft
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x49t
        0x41t
        0x46t
        0x41t
        0x42t
        0x50t
        0x5ft
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x4ct
        0x58t
        0x39t
        0x34t
        0x2t
        0x4ft
        0x45t
        0x10t
        0x56t
        0x15t
        0x16t
        0x54t
        0x11t
        0x58t
        0x39t
    .end array-data

    :array_5
    .array-data 1
        0x3et
        0x60t
        0x0t
        0x16t
        0x4bt
        0x57t
        0x50t
        0x10t
        0x13t
        0x1t
        0x4bt
        0x47t
        0x58t
        0x44t
        0x5bt
        0x6et
    .end array-data

    :array_6
    .array-data 1
        0xat
        0x14t
        0x2ft
        0xet
        0x41t
        0x0t
        0x51t
        0x46t
        0x2t
        0xet
        0x5t
        0x7t
        0x10t
        0x52t
        0xet
        0x14t
        0xft
        0x6t
    .end array-data
.end method

.method private static decodeOneArgument(Ljava/lang/String;Ljava/util/Hashtable;ZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0x4f

    aput-byte v11, v9, v10

    const-string v10, "a4f0d0"

    const-wide/32 v12, -0x7f68377c

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x4

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    const-string v10, "51302b"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v14, v3

    move v3, v2

    move v2, v14

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v14, v2

    move v2, v3

    move v3, v14

    goto :goto_0

    :cond_0
    const/16 v9, 0x9

    new-array v9, v9, [B

    fill-array-data v9, :array_1

    const-string v10, "987503"

    const-wide v12, 0x41c06fb899000000L    # 5.51514418E8

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/google/zxing/client/j2se/CommandLineRunner;->decode(Ljava/net/URI;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    move-result-object v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_1

    invoke-static {v7, v8}, Lcom/google/zxing/client/j2se/CommandLineRunner;->dumpResult(Ljava/io/File;Lcom/google/zxing/Result;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x9

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "68b824"

    const-wide v8, 0x41d0159dac000000L    # 1.079408304E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xe

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    const-string v7, "935b84"

    const-wide/32 v8, 0x2441197

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xf

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "56c5b9"

    const-wide/32 v8, -0x140f5cd

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v5, "97b2b3"

    const-wide/32 v6, 0x4e3d0963

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Lcom/google/zxing/client/j2se/CommandLineRunner;->decode(Ljava/net/URI;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-static {v2, v3}, Lcom/google/zxing/client/j2se/CommandLineRunner;->dumpResult(Ljava/io/File;Lcom/google/zxing/Result;)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/j2se/CommandLineRunner;->decode(Ljava/net/URI;Ljava/util/Hashtable;Z)Lcom/google/zxing/Result;

    goto :goto_2

    :cond_6
    move v14, v3

    move v3, v2

    move v2, v14

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x1bt
        0x45t
        0x4bt
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x55t
        0x58t
        0x5bt
        0x5ft
        0x1dt
        0x49t
        0x56t
        0x50t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3ct
        0x7ct
        0x7t
        0x5bt
        0x5dt
        0x50t
        0x53t
        0x5ct
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x19t
        0x55t
        0x5ct
        0xet
        0x5dt
        0x47t
        0x19t
        0x5ct
        0x40t
        0x16t
        0x18t
        0x5bt
        0x5ft
        0x13t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x15t
        0x45t
        0x16t
        0x56t
        0x1t
        0x5ct
        0x46t
        0x45t
        0x5t
        0x40t
        0xet
        0x55t
        0x4ct
        0x16t
        0x4bt
    .end array-data

    :array_5
    .array-data 1
        0x1ct
        0x1et
        0x68t
    .end array-data
.end method

.method private static dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V
    .locals 13

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ce64be"

    const v2, 0x4ea8de50    # 1.4165709E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v10, v3, 0x3

    mul-int v0, v10, v9

    new-array v11, v0, [I

    new-array v5, v3, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v0, 0x0

    mul-int v1, v2, v10

    invoke-static {v5, v0, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v3}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_2
    if-ge v1, v9, :cond_5

    :try_start_0
    invoke-virtual {p2, v1, v0}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    mul-int v2, v1, v10

    add-int v4, v2, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int v5, v4, v2

    const/high16 v6, -0x1000000

    aput v6, v11, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_4

    mul-int v4, v1, v10

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    const/high16 v5, -0x10000

    aput v5, v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int v5, v4, v2

    const/4 v6, -0x1

    aput v6, v11, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    mul-int v1, v0, v10

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_9

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_6

    add-int v5, v4, v1

    const/high16 v6, -0x1000000

    aput v6, v11, v5

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_6
    add-int v5, v4, v1

    const/4 v6, -0x1

    aput v6, v11, v5

    goto :goto_8

    :catch_1
    move-exception v0

    :cond_7
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    invoke-direct {v0, v10, v9, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, v10

    move v4, v9

    move-object v5, v11

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bfb3d8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x2f

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "2ce1af"

    const-wide v4, -0x3e372b9eed000000L    # -8.33143334E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x3

    :try_start_3
    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "1b7a65"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v1, v3

    :goto_a
    :try_start_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "a3b5fc"

    const v6, -0x3111b74f

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v0, v2

    :goto_b
    :try_start_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "bece64"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_a
    :goto_d
    throw v0

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_b
    move-object v1, v8

    goto/16 :goto_9

    :array_0
    .array-data 1
        0x4dt
        0x8t
        0x59t
        0x5at
        0xdt
        0x4bt
        0x13t
        0xbt
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x12t
        0x16t
        0x43t
    .end array-data

    :array_2
    .array-data 1
        0x1ct
        0xet
        0xat
        0x5ft
        0xet
        0x48t
        0x42t
        0xdt
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x41t
        0xct
        0x50t
    .end array-data

    :array_4
    .array-data 1
        0x22t
        0x5ct
        0x17t
        0x59t
        0x2t
        0x43t
        0xft
        0x5ct
        0x16t
        0x15t
        0x5t
        0x11t
        0x4t
        0x52t
        0x16t
        0x50t
        0x46t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x21t
        0xat
        0x16t
        0x9t
        0x52t
        0x14t
        0xct
        0xat
        0x17t
        0x45t
        0x41t
        0x46t
        0xbt
        0x11t
        0x6t
        0x45t
        0x42t
        0x5bt
        0x42t
    .end array-data
.end method

.method private static dumpResult(Ljava/io/File;Lcom/google/zxing/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "aebd1a"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/zxing/client/j2se/CommandLineRunner;->writeStringToFile(Ljava/lang/String;Ljava/io/File;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x11t
        0x1at
        0x10t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->buildHints()Ljava/util/Hashtable;

    move-result-object v5

    array-length v6, p0

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_1
    if-ge v4, v6, :cond_7

    aget-object v7, p0, v4

    const/16 v8, 0xc

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "9779d7"

    const v10, 0x4c2b74f1    # 4.4946372E7f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v8, 0xe

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    const-string v9, "5fcd13"

    const-wide/32 v10, 0x4788d4c8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    const/16 v8, 0x12

    new-array v8, v8, [B

    fill-array-data v8, :array_2

    const-string v9, "088b44"

    const v10, 0x4eecd4ab

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    new-array v8, v1, [B

    const/16 v9, 0x18

    aput-byte v9, v8, v3

    const-string v9, "506fad"

    invoke-static {v8, v9, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "e9d258"

    const-wide v4, -0x3e24aab80b800000L    # -1.83429525E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    goto/16 :goto_0

    :cond_7
    array-length v4, p0

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_1

    aget-object v3, p0, v1

    const/4 v6, 0x2

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "b2e279"

    const v8, 0x4eadd423    # 1.4581805E9f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v3, v5, v2, v0}, Lcom/google/zxing/client/j2se/CommandLineRunner;->decodeOneArgument(Ljava/lang/String;Ljava/util/Hashtable;ZZ)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x14t
        0x1at
        0x43t
        0x4bt
        0x1dt
        0x68t
        0x51t
        0x56t
        0x45t
        0x5dt
        0x1t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x4bt
        0x7t
        0x11t
        0x5ct
        0x43t
        0x6at
        0x14t
        0x6t
        0x17t
        0x44t
        0x5ft
        0x41t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1dt
        0x15t
        0x5ct
        0x17t
        0x59t
        0x44t
        0x6ft
        0x5at
        0x54t
        0x3t
        0x57t
        0x5ft
        0x6ft
        0x48t
        0x57t
        0xbt
        0x5at
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0x57t
        0xft
        0x5ct
        0x5at
        0x4ft
        0xbt
        0x19t
        0x7t
        0x5dt
        0x58t
        0x55t
        0x4t
        0x57t
        0x0t
        0x12t
        0x59t
        0x51t
        0xbt
        0x5ct
        0x44t
        0x5dt
        0x45t
        0x4ct
        0xct
        0x56t
        0xat
        0x12t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x1ft
    .end array-data
.end method

.method private static printUsage()V
    .locals 7

    const/16 v6, 0x39

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "833a08"

    const-wide/32 v4, 0x462ef3f9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "06870a"

    const-wide v4, -0x3e29f2a5dc800000L    # -1.479895182E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v1, 0x48

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "aa9c34"

    const-wide/32 v4, 0x44c6d242

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "e3011c"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v1, 0x46

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "dc04a2"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x56t
        0x50t
        0xet
        0x54t
        0x5dt
        0x18t
        0x51t
        0x52t
        0x13t
        0x53t
        0x57t
        0x5ct
        0x56t
        0x13t
        0x8t
        0x5dt
        0x59t
        0x5ft
        0x56t
        0x40t
        0x41t
        0x45t
        0x4bt
        0x51t
        0x5dt
        0x54t
        0x41t
        0x44t
        0x50t
        0x5dt
        0x13t
        0x69t
        0x39t
        0x59t
        0x56t
        0x5ft
        0x13t
        0x5ft
        0x8t
        0x52t
        0x4at
        0x59t
        0x41t
        0x4at
        0x6bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x45t
        0x59t
        0x50t
        0x55t
        0x5bt
        0x10t
        0x75t
        0x57t
        0x5at
        0x5dt
        0x0t
        0x5et
        0x52t
        0x74t
        0x5et
        0x5et
        0x4t
        0x62t
        0x43t
        0x56t
        0x59t
        0x55t
        0x13t
        0x10t
        0x4dt
        0x18t
        0x51t
        0x59t
        0xdt
        0x55t
        0x16t
        0x44t
        0x17t
        0x54t
        0x8t
        0x42t
        0x16t
        0x44t
        0x17t
        0x45t
        0x13t
        0x5ct
        0x16t
        0x45t
        0x17t
        0x6bt
        0x41t
        0x5ft
        0x46t
        0x4ct
        0x5et
        0x5ft
        0xft
        0x43t
        0x16t
        0x65t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x41t
        0x41t
        0x14t
        0x4et
        0x47t
        0x46t
        0x18t
        0x3et
        0x51t
        0x2t
        0x41t
        0x50t
        0x4t
        0x13t
        0x3t
        0x43t
        0x66t
        0x47t
        0x4t
        0x41t
        0x4dt
        0xbt
        0x56t
        0x14t
        0x35t
        0x33t
        0x60t
        0x3ct
        0x7bt
        0x75t
        0x33t
        0x25t
        0x7ct
        0x31t
        0x13t
        0x5ct
        0x8t
        0xft
        0x4dt
        0x4ft
        0x13t
        0x50t
        0x4t
        0x7t
        0x58t
        0x16t
        0x5ft
        0x40t
        0x41t
        0x8t
        0x4at
        0x43t
        0x5dt
        0x5bt
        0x13t
        0xct
        0x58t
        0xft
        0x13t
        0x1ct
        0xct
        0xet
        0x5bt
        0xat
        0x5ft
        0x51t
        0x48t
        0x41t
        0x54t
        0xct
        0x57t
        0x51t
    .end array-data

    :array_3
    .array-data 1
        0x45t
        0x13t
        0x1dt
        0x1ct
        0x55t
        0x16t
        0x8t
        0x43t
        0x6ft
        0x43t
        0x54t
        0x10t
        0x10t
        0x5ft
        0x44t
        0x42t
        0xbt
        0x43t
        0x32t
        0x41t
        0x59t
        0x45t
        0x54t
        0x43t
        0x11t
        0x5bt
        0x55t
        0x11t
        0x55t
        0x6t
        0x6t
        0x5ct
        0x54t
        0x54t
        0x55t
        0x43t
        0x6t
        0x5ct
        0x5et
        0x45t
        0x54t
        0xdt
        0x11t
        0x40t
        0x10t
        0x45t
        0x5et
        0x43t
        0xct
        0x5dt
        0x40t
        0x44t
        0x45t
        0x4dt
        0x11t
        0x4bt
        0x44t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x44t
        0x43t
        0x1dt
        0x19t
        0x5t
        0x47t
        0x9t
        0x13t
        0x6ft
        0x56t
        0xdt
        0x53t
        0x7t
        0x8t
        0x6ft
        0x44t
        0xet
        0x5bt
        0xat
        0x17t
        0xat
        0x14t
        0x22t
        0x5dt
        0x9t
        0x13t
        0x51t
        0x46t
        0x4t
        0x12t
        0x6t
        0xft
        0x51t
        0x57t
        0xat
        0x12t
        0x14t
        0xct
        0x59t
        0x5at
        0x15t
        0x12t
        0x5t
        0xft
        0x57t
        0x5bt
        0x13t
        0x5bt
        0x10t
        0xbt
        0x5dt
        0x47t
        0x41t
        0x53t
        0x17t
        0x43t
        0x59t
        0x5at
        0x11t
        0x47t
        0x10t
        0x4dt
        0x5dt
        0x5bt
        0xft
        0x5dt
        0x4at
        0x13t
        0x5et
        0x53t
    .end array-data
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ce03c7"

    const-wide v4, 0x41d7cfe1aac00000L    # 1.597998763E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1

    nop

    :array_0
    .array-data 1
        0x36t
        0x31t
        0x76t
        0xbt
    .end array-data
.end method
