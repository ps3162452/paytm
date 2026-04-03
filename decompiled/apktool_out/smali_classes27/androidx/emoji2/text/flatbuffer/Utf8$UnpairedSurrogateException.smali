.class Landroidx/emoji2/text/flatbuffer/Utf8$UnpairedSurrogateException;
.super Ljava/lang/IllegalArgumentException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnpairedSurrogateException"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6e2569"

    const v3, 0x4e8af722

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "716b47"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0xbt
        0x42t
        0x54t
        0x5ft
        0x4bt
        0x53t
        0x1t
        0x12t
        0x46t
        0x43t
        0x4bt
        0x44t
        0xat
        0x55t
        0x54t
        0x42t
        0x5ct
        0x16t
        0x4t
        0x46t
        0x15t
        0x5ft
        0x57t
        0x52t
        0x0t
        0x4at
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x5et
        0x50t
        0x42t
    .end array-data
.end method
