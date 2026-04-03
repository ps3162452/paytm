.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 8

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    int-to-long v4, v3

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    int-to-long v6, v3

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    int-to-long v4, p1

    add-long/2addr v0, v4

    long-to-int v0, v0

    invoke-interface {v2, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    invoke-direct {v0, v4, v2, v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "bab264"

    const-wide/32 v2, 0x716d8e26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const-string v3, "fd16cf"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "00e8bb"

    const-wide v2, 0x41c09c44c3800000L    # 5.57353351E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :array_0
    .array-data 1
        0x39t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x10t
        0x6dt
    .end array-data
.end method
