.class public final Lcom/google/zxing/client/j2se/MatrixToImageWriter;
.super Ljava/lang/Object;


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/BitMatrix;)Ljava/awt/image/BufferedImage;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    new-instance v6, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {v6, v4, v5, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_2
    invoke-virtual {v6, v3, v1, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/ByteMatrix;)Ljava/awt/image/BufferedImage;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v5

    new-instance v6, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {v6, v4, v5, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/ByteMatrix;->get(II)B

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_2
    invoke-virtual {v6, v3, v1, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public static writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method

.method public static writeToFile(Lcom/google/zxing/common/ByteMatrix;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/ByteMatrix;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/ByteMatrix;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/ByteMatrix;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    return-void
.end method
