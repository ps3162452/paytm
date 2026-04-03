.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field final dValue:D

.field iValue:J

.field key:I

.field final minBitWidth:I

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(IIID)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    return-void
.end method

.method static synthetic access$100(II)I
    .locals 1

    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .locals 1

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method static synthetic access$500(IIJII)I
    .locals 2

    invoke-static/range {p0 .. p5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result v0

    return v0
.end method

.method static blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    move v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x1

    :goto_0
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private elemWidth(II)I
    .locals 6

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result v0

    return v0
.end method

.method private static elemWidth(IIJII)I
    .locals 6

    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    invoke-static {p4, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result v1

    add-int/2addr v1, p4

    mul-int v2, p5, v0

    add-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr v2, p2

    long-to-int v1, v2

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result p1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    goto :goto_0
.end method

.method static float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x3

    const/4 v3, 0x2

    float-to-double v4, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v0
.end method

.method static float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    const/4 v2, 0x3

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move v1, p0

    move v3, v2

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v0
.end method

.method static int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    const/4 v2, 0x1

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    move v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x2

    int-to-long v4, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x0

    int-to-long v4, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method private static packedType(II)B
    .locals 1

    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method private static paddingBytes(II)I
    .locals 2

    xor-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private storedPackedType()B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method private storedPackedType(I)B
    .locals 2

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedWidth(I)I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->packedType(II)B

    move-result v0

    return v0
.end method

.method private storedWidth(I)I
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    goto :goto_0
.end method

.method static uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x1

    int-to-long v4, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    const/4 v2, 0x2

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    move v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x3

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method

.method static uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x0

    int-to-long v4, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v0
.end method
