.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field private final vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .locals 5

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->access$700()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->end:I

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v2, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v3, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v4, v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v2, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    invoke-static {v4, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "82f1e3"

    const-wide/32 v6, 0x35734e01

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v3, 0x6d

    aput-byte v3, v0, v1

    const-string v1, "08e91b"

    const-wide/32 v4, 0x47c66581

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x14t
        0x12t
    .end array-data
.end method
