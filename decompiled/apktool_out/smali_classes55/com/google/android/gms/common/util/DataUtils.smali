.class public final Lcom/google/android/gms/common/util/DataUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public static loadImageBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
