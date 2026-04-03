.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 51

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v3, 0x7

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x1

    const/16 v8, 0x13

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0xa

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v8, 0x1

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0xd

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x1

    const/16 v10, 0xd

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v6, 0x11

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x1

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v3, v9, v2

    const/4 v2, 0x2

    aput-object v4, v9, v2

    const/4 v2, 0x3

    aput-object v5, v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0xa

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v8, 0x1

    const/16 v9, 0x22

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x1

    const/16 v10, 0x1c

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x16

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x1

    const/16 v11, 0x16

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v7, 0x1c

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    const/4 v2, 0x3

    aput-object v5, v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0xf

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x1

    const/16 v10, 0x37

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x1

    const/16 v11, 0x2c

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x12

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x2

    const/16 v12, 0x11

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v5, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v3, v11, v2

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v5, v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x14

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x1

    const/16 v11, 0x50

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x12

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x2

    const/16 v12, 0x20

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v5, v9

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v9, 0x10

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x0

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x4

    const/16 v14, 0x9

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v10, v11

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v2, 0x1

    aput-object v3, v12, v2

    const/4 v2, 0x2

    aput-object v4, v12, v2

    const/4 v2, 0x3

    aput-object v5, v12, v2

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x1

    const/16 v12, 0x6c

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x18

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v5, v10

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x12

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x0

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x2

    const/16 v14, 0xf

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x2

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v10, v11

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v10, 0x16

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x0

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x2

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x2

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v11, v12

    invoke-direct {v5, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v11, 0x5

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_3

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v2, 0x1

    aput-object v3, v13, v2

    const/4 v2, 0x2

    aput-object v4, v13, v2

    const/4 v2, 0x3

    aput-object v5, v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x12

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x0

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x4

    const/16 v14, 0x1b

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v5, v11

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x18

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x0

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x4

    const/16 v15, 0x13

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v11, v12

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v11, 0x1c

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x4

    const/16 v16, 0xf

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v12, v13

    invoke-direct {v5, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v12, 0x6

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_4

    const/4 v14, 0x4

    new-array v14, v14, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v2, 0x1

    aput-object v3, v14, v2

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v5, v14, v2

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x14

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x2

    const/16 v14, 0x4e

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x12

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x0

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x4

    const/16 v15, 0x1f

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v5, v12

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x12

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x2

    const/16 v16, 0xe

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x4

    const/16 v16, 0xf

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v12, v13

    invoke-direct {v4, v5, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x4

    const/16 v17, 0xd

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x1

    const/16 v17, 0xe

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v13, v14

    invoke-direct {v5, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v13, 0x7

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_5

    const/4 v15, 0x4

    new-array v15, v15, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/4 v2, 0x1

    aput-object v3, v15, v2

    const/4 v2, 0x2

    aput-object v4, v15, v2

    const/4 v2, 0x3

    aput-object v5, v15, v2

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x18

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x2

    const/16 v15, 0x61

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x16

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x2

    const/16 v16, 0x26

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v5, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x2

    const/16 v16, 0x27

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v5, v13

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x4

    const/16 v17, 0x12

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x2

    const/16 v17, 0x13

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v13, v14

    invoke-direct {v4, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v13, 0x1a

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x4

    const/16 v18, 0xe

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x2

    const/16 v18, 0xf

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v5, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v14, 0x8

    const/4 v15, 0x3

    new-array v15, v15, [I

    fill-array-data v15, :array_6

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/4 v2, 0x1

    aput-object v3, v16, v2

    const/4 v2, 0x2

    aput-object v4, v16, v2

    const/4 v2, 0x3

    aput-object v5, v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x2

    const/16 v16, 0x74

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x16

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x3

    const/16 v17, 0x24

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v5, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x2

    const/16 v17, 0x25

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v5, v14

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x14

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x4

    const/16 v18, 0x10

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x4

    const/16 v18, 0x11

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v4, v5, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v14, 0x18

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x4

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x4

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v15, v16

    invoke-direct {v5, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v15, 0x9

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    const/4 v2, 0x1

    aput-object v3, v17, v2

    const/4 v2, 0x2

    aput-object v4, v17, v2

    const/4 v2, 0x3

    aput-object v5, v17, v2

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x12

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x2

    const/16 v17, 0x44

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v4, v5

    const/4 v5, 0x1

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x2

    const/16 v17, 0x45

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x4

    const/16 v18, 0x2b

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v5, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x1

    const/16 v18, 0x2c

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v5, v15

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x18

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x6

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x2

    const/16 v19, 0x14

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v15, v16

    invoke-direct {v4, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v15, 0x1c

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x6

    const/16 v20, 0xf

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x2

    const/16 v20, 0x10

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v16, 0xa

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_8

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    const/4 v2, 0x1

    aput-object v3, v18, v2

    const/4 v2, 0x2

    aput-object v4, v18, v2

    const/4 v2, 0x3

    aput-object v5, v18, v2

    invoke-direct/range {v15 .. v18}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x14

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x4

    const/16 v18, 0x51

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1e

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x1

    const/16 v19, 0x32

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v5, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x4

    const/16 v19, 0x33

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v5, v16

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1c

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x4

    const/16 v20, 0x16

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x4

    const/16 v20, 0x17

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v16, 0x18

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x3

    const/16 v21, 0xc

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x8

    const/16 v21, 0xd

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v17, 0xb

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_9

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v2, v19, v20

    const/4 v2, 0x1

    aput-object v3, v19, v2

    const/4 v2, 0x2

    aput-object v4, v19, v2

    const/4 v2, 0x3

    aput-object v5, v19, v2

    invoke-direct/range {v16 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x18

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x2

    const/16 v19, 0x5c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v4, v5

    const/4 v5, 0x1

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x2

    const/16 v19, 0x5d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v17, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x16

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x6

    const/16 v20, 0x24

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v5, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x2

    const/16 v20, 0x25

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v5, v17

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1a

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x4

    const/16 v21, 0x14

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x6

    const/16 v21, 0x15

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v17, 0x1c

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x7

    const/16 v22, 0xe

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x4

    const/16 v22, 0xf

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v17, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v18, 0xc

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_a

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v2, v20, v21

    const/4 v2, 0x1

    aput-object v3, v20, v2

    const/4 v2, 0x2

    aput-object v4, v20, v2

    const/4 v2, 0x3

    aput-object v5, v20, v2

    invoke-direct/range {v17 .. v20}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x4

    const/16 v20, 0x6b

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v18, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x16

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v18, 0x0

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x8

    const/16 v21, 0x25

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v5, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x1

    const/16 v21, 0x26

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v5, v18

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x8

    const/16 v22, 0x14

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x4

    const/16 v22, 0x15

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v18, 0x16

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0xc

    const/16 v23, 0xb

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x4

    const/16 v23, 0xc

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v18, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v19, 0xd

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_b

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    const/4 v2, 0x1

    aput-object v3, v21, v2

    const/4 v2, 0x2

    aput-object v4, v21, v2

    const/4 v2, 0x3

    aput-object v5, v21, v2

    invoke-direct/range {v18 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x3

    const/16 v21, 0x73

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v4, v5

    const/4 v5, 0x1

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x1

    const/16 v21, 0x74

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v19, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x18

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v19, 0x0

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x4

    const/16 v22, 0x28

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v5, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x5

    const/16 v22, 0x29

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v5, v19

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x14

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0xb

    const/16 v23, 0x10

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x5

    const/16 v23, 0x11

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v19, 0x18

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0xb

    const/16 v24, 0xc

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x5

    const/16 v24, 0xd

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v19, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v20, 0xe

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_c

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v2, v22, v23

    const/4 v2, 0x1

    aput-object v3, v22, v2

    const/4 v2, 0x2

    aput-object v4, v22, v2

    const/4 v2, 0x3

    aput-object v5, v22, v2

    invoke-direct/range {v19 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x16

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x5

    const/16 v22, 0x57

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v4, v5

    const/4 v5, 0x1

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x1

    const/16 v22, 0x58

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v20, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x18

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x5

    const/16 v23, 0x29

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v5, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x5

    const/16 v23, 0x2a

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v5, v20

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x5

    const/16 v24, 0x18

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x7

    const/16 v24, 0x19

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v20, 0x18

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0xb

    const/16 v25, 0xc

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x7

    const/16 v25, 0xd

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v20, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v21, 0xf

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_d

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v2, v23, v24

    const/4 v2, 0x1

    aput-object v3, v23, v2

    const/4 v2, 0x2

    aput-object v4, v23, v2

    const/4 v2, 0x3

    aput-object v5, v23, v2

    invoke-direct/range {v20 .. v23}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x18

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x5

    const/16 v23, 0x62

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v4, v5

    const/4 v5, 0x1

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x1

    const/16 v23, 0x63

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v21, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v21, 0x0

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x7

    const/16 v24, 0x2d

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v5, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x3

    const/16 v24, 0x2e

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v5, v21

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x18

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0xf

    const/16 v25, 0x13

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x2

    const/16 v25, 0x14

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v21, 0x1e

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x3

    const/16 v26, 0xf

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0xd

    const/16 v26, 0x10

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v21, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v22, 0x10

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_e

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v2, v24, v25

    const/4 v2, 0x1

    aput-object v3, v24, v2

    const/4 v2, 0x2

    aput-object v4, v24, v2

    const/4 v2, 0x3

    aput-object v5, v24, v2

    invoke-direct/range {v21 .. v24}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x1

    const/16 v24, 0x6b

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v4, v5

    const/4 v5, 0x1

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x5

    const/16 v24, 0x6c

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v22, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v22, 0x0

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0xa

    const/16 v25, 0x2e

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v5, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x1

    const/16 v25, 0x2f

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v5, v22

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1c

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x1

    const/16 v26, 0x16

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0xf

    const/16 v26, 0x17

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v22, 0x1c

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x2

    const/16 v27, 0xe

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x11

    const/16 v27, 0xf

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v22, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v23, 0x11

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_f

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v2, v25, v26

    const/4 v2, 0x1

    aput-object v3, v25, v2

    const/4 v2, 0x2

    aput-object v4, v25, v2

    const/4 v2, 0x3

    aput-object v5, v25, v2

    invoke-direct/range {v22 .. v25}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x5

    const/16 v25, 0x78

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v4, v5

    const/4 v5, 0x1

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x1

    const/16 v25, 0x79

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v23, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x9

    const/16 v26, 0x2b

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v5, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x4

    const/16 v26, 0x2c

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v5, v23

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1c

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x11

    const/16 v27, 0x16

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x1

    const/16 v27, 0x17

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v23, 0x1c

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x2

    const/16 v28, 0xe

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v24, v25

    const/16 v25, 0x1

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x13

    const/16 v28, 0xf

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v23, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v24, 0x12

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_10

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v2, v26, v27

    const/4 v2, 0x1

    aput-object v3, v26, v2

    const/4 v2, 0x2

    aput-object v4, v26, v2

    const/4 v2, 0x3

    aput-object v5, v26, v2

    invoke-direct/range {v23 .. v26}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x3

    const/16 v26, 0x71

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v4, v5

    const/4 v5, 0x1

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x4

    const/16 v26, 0x72

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v24, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x3

    const/16 v27, 0x2c

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v5, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0xb

    const/16 v27, 0x2d

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v5, v24

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1a

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x11

    const/16 v28, 0x15

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v24, v25

    const/16 v25, 0x1

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x4

    const/16 v28, 0x16

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v24, 0x1a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x9

    const/16 v29, 0xd

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v25, v26

    const/16 v26, 0x1

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x10

    const/16 v29, 0xe

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v25, v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v24, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v25, 0x13

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_11

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v2, v27, v28

    const/4 v2, 0x1

    aput-object v3, v27, v2

    const/4 v2, 0x2

    aput-object v4, v27, v2

    const/4 v2, 0x3

    aput-object v5, v27, v2

    invoke-direct/range {v24 .. v27}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x3

    const/16 v27, 0x6b

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v4, v5

    const/4 v5, 0x1

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x5

    const/16 v27, 0x6c

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v25, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v25, 0x0

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x3

    const/16 v28, 0x29

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v5, v25

    const/16 v25, 0x1

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0xd

    const/16 v28, 0x2a

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v5, v25

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0xf

    const/16 v29, 0x18

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v25, v26

    const/16 v26, 0x1

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x5

    const/16 v29, 0x19

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v25, 0x1c

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0xf

    const/16 v30, 0xf

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v26, v27

    const/16 v27, 0x1

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0xa

    const/16 v30, 0x10

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v26, v27

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v25, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v26, 0x14

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_12

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v2, v28, v29

    const/4 v2, 0x1

    aput-object v3, v28, v2

    const/4 v2, 0x2

    aput-object v4, v28, v2

    const/4 v2, 0x3

    aput-object v5, v28, v2

    invoke-direct/range {v25 .. v28}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x4

    const/16 v28, 0x74

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v4, v5

    const/4 v5, 0x1

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x4

    const/16 v28, 0x75

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v26, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1a

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v26, 0x0

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x11

    const/16 v29, 0x2a

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v5, v26

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1c

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x11

    const/16 v30, 0x16

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v26, v27

    const/16 v27, 0x1

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x6

    const/16 v30, 0x17

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v26, 0x1e

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x13

    const/16 v31, 0x10

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x6

    const/16 v31, 0x11

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v27, v28

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v26, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v27, 0x15

    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_13

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v2, v29, v30

    const/4 v2, 0x1

    aput-object v3, v29, v2

    const/4 v2, 0x2

    aput-object v4, v29, v2

    const/4 v2, 0x3

    aput-object v5, v29, v2

    invoke-direct/range {v26 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x2

    const/16 v29, 0x6f

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v4, v5

    const/4 v5, 0x1

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x7

    const/16 v29, 0x70

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v27, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v27, 0x0

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x11

    const/16 v30, 0x2e

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v5, v27

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x7

    const/16 v31, 0x18

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x10

    const/16 v31, 0x19

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v27, v28

    move-object/from16 v0, v27

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v27, 0x18

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0x22

    const/16 v32, 0xd

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v28, v29

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v27, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v28, 0x16

    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_14

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v2, v30, v31

    const/4 v2, 0x1

    aput-object v3, v30, v2

    const/4 v2, 0x2

    aput-object v4, v30, v2

    const/4 v2, 0x3

    aput-object v5, v30, v2

    invoke-direct/range {v27 .. v30}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x4

    const/16 v30, 0x79

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v4, v5

    const/4 v5, 0x1

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x5

    const/16 v30, 0x7a

    invoke-direct/range {v28 .. v30}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v28, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v28, 0x0

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x4

    const/16 v31, 0x2f

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v5, v28

    const/16 v28, 0x1

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0xe

    const/16 v31, 0x30

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v5, v28

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0xb

    const/16 v32, 0x18

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0xe

    const/16 v32, 0x19

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v28, 0x1e

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0x10

    const/16 v33, 0xf

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v29, v30

    const/16 v30, 0x1

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0xe

    const/16 v33, 0x10

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v28, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v29, 0x17

    const/16 v30, 0x5

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_15

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v2, v31, v32

    const/4 v2, 0x1

    aput-object v3, v31, v2

    const/4 v2, 0x2

    aput-object v4, v31, v2

    const/4 v2, 0x3

    aput-object v5, v31, v2

    invoke-direct/range {v28 .. v31}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x6

    const/16 v31, 0x75

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v4, v5

    const/4 v5, 0x1

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x4

    const/16 v31, 0x76

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v29, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v29, 0x0

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0x6

    const/16 v32, 0x2d

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v5, v29

    const/16 v29, 0x1

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0xe

    const/16 v32, 0x2e

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v5, v29

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0xb

    const/16 v33, 0x18

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v29, v30

    const/16 v30, 0x1

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0x10

    const/16 v33, 0x19

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v29, 0x1e

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x1e

    const/16 v34, 0x10

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v30, v31

    const/16 v31, 0x1

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x2

    const/16 v34, 0x11

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v30, v31

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v29, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v30, 0x18

    const/16 v31, 0x5

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_16

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v2, v32, v33

    const/4 v2, 0x1

    aput-object v3, v32, v2

    const/4 v2, 0x2

    aput-object v4, v32, v2

    const/4 v2, 0x3

    aput-object v5, v32, v2

    invoke-direct/range {v29 .. v32}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1a

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0x8

    const/16 v32, 0x6a

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v4, v5

    const/4 v5, 0x1

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0x4

    const/16 v32, 0x6b

    invoke-direct/range {v30 .. v32}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v30, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v30, 0x0

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0x8

    const/16 v33, 0x2f

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v5, v30

    const/16 v30, 0x1

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0xd

    const/16 v33, 0x30

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v5, v30

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x7

    const/16 v34, 0x18

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v30, v31

    const/16 v31, 0x1

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x16

    const/16 v34, 0x19

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v30, 0x1e

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x16

    const/16 v35, 0xf

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v31, v32

    const/16 v32, 0x1

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0xd

    const/16 v35, 0x10

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v31, v32

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v30, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v31, 0x19

    const/16 v32, 0x5

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    fill-array-data v32, :array_17

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v2, v33, v34

    const/4 v2, 0x1

    aput-object v3, v33, v2

    const/4 v2, 0x2

    aput-object v4, v33, v2

    const/4 v2, 0x3

    aput-object v5, v33, v2

    invoke-direct/range {v30 .. v33}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1c

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0xa

    const/16 v33, 0x72

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v4, v5

    const/4 v5, 0x1

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0x2

    const/16 v33, 0x73

    invoke-direct/range {v31 .. v33}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v31, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v31, 0x0

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x13

    const/16 v34, 0x2e

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v5, v31

    const/16 v31, 0x1

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x4

    const/16 v34, 0x2f

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v5, v31

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1c

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x1c

    const/16 v35, 0x16

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v31, v32

    const/16 v32, 0x1

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x6

    const/16 v35, 0x17

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v31, v32

    move-object/from16 v0, v31

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v31, 0x1e

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x21

    const/16 v36, 0x10

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v32, v33

    const/16 v33, 0x1

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x4

    const/16 v36, 0x11

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v32, v33

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v31, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v32, 0x1a

    const/16 v33, 0x5

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v33, v0

    fill-array-data v33, :array_18

    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v2, v34, v35

    const/4 v2, 0x1

    aput-object v3, v34, v2

    const/4 v2, 0x2

    aput-object v4, v34, v2

    const/4 v2, 0x3

    aput-object v5, v34, v2

    invoke-direct/range {v31 .. v34}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x8

    const/16 v34, 0x7a

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v4, v5

    const/4 v5, 0x1

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x4

    const/16 v34, 0x7b

    invoke-direct/range {v32 .. v34}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v32, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v32, 0x0

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x16

    const/16 v35, 0x2d

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v5, v32

    const/16 v32, 0x1

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x3

    const/16 v35, 0x2e

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v5, v32

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x8

    const/16 v36, 0x17

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v32, v33

    const/16 v33, 0x1

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x1a

    const/16 v36, 0x18

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v32, v33

    move-object/from16 v0, v32

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v32, 0x1e

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0xc

    const/16 v37, 0xf

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v33, v34

    const/16 v34, 0x1

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x1c

    const/16 v37, 0x10

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v33, v34

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v32, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v33, 0x1b

    const/16 v34, 0x5

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_19

    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v2, v35, v36

    const/4 v2, 0x1

    aput-object v3, v35, v2

    const/4 v2, 0x2

    aput-object v4, v35, v2

    const/4 v2, 0x3

    aput-object v5, v35, v2

    invoke-direct/range {v32 .. v35}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x3

    const/16 v35, 0x75

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v4, v5

    const/4 v5, 0x1

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0xa

    const/16 v35, 0x76

    invoke-direct/range {v33 .. v35}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v33, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v33, 0x0

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x3

    const/16 v36, 0x2d

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v5, v33

    const/16 v33, 0x1

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x17

    const/16 v36, 0x2e

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v5, v33

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x4

    const/16 v37, 0x18

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v33, v34

    const/16 v34, 0x1

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x1f

    const/16 v37, 0x19

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v33, v34

    move-object/from16 v0, v33

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v33, 0x1e

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0xb

    const/16 v38, 0xf

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x1f

    const/16 v38, 0x10

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v34, v35

    move/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v33, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v34, 0x1c

    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_1a

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v2, v36, v37

    const/4 v2, 0x1

    aput-object v3, v36, v2

    const/4 v2, 0x2

    aput-object v4, v36, v2

    const/4 v2, 0x3

    aput-object v5, v36, v2

    invoke-direct/range {v33 .. v36}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x7

    const/16 v36, 0x74

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v4, v5

    const/4 v5, 0x1

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x7

    const/16 v36, 0x75

    invoke-direct/range {v34 .. v36}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v34, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v34, 0x0

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x15

    const/16 v37, 0x2d

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v5, v34

    const/16 v34, 0x1

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x7

    const/16 v37, 0x2e

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v5, v34

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x1

    const/16 v38, 0x17

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x25

    const/16 v38, 0x18

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v34, v35

    move-object/from16 v0, v34

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v34, 0x1e

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x13

    const/16 v39, 0xf

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v35, v36

    const/16 v36, 0x1

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x1a

    const/16 v39, 0x10

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v35, v36

    move/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v34, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v35, 0x1d

    const/16 v36, 0x6

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    fill-array-data v36, :array_1b

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v2, v37, v38

    const/4 v2, 0x1

    aput-object v3, v37, v2

    const/4 v2, 0x2

    aput-object v4, v37, v2

    const/4 v2, 0x3

    aput-object v5, v37, v2

    invoke-direct/range {v34 .. v37}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x5

    const/16 v37, 0x73

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v4, v5

    const/4 v5, 0x1

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0xa

    const/16 v37, 0x74

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v35, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v35, 0x0

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x13

    const/16 v38, 0x2f

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v5, v35

    const/16 v35, 0x1

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0xa

    const/16 v38, 0x30

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v5, v35

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0xf

    const/16 v39, 0x18

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v35, v36

    const/16 v36, 0x1

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x19

    const/16 v39, 0x19

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v35, 0x1e

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x17

    const/16 v40, 0xf

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v36, v37

    const/16 v37, 0x1

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x19

    const/16 v40, 0x10

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v36, v37

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v35, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v36, 0x1e

    const/16 v37, 0x6

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_1c

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v2, v38, v39

    const/4 v2, 0x1

    aput-object v3, v38, v2

    const/4 v2, 0x2

    aput-object v4, v38, v2

    const/4 v2, 0x3

    aput-object v5, v38, v2

    invoke-direct/range {v35 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0xd

    const/16 v38, 0x73

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v4, v5

    const/4 v5, 0x1

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x3

    const/16 v38, 0x74

    invoke-direct/range {v36 .. v38}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v36, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v36, 0x0

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x2

    const/16 v39, 0x2e

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v5, v36

    const/16 v36, 0x1

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x1d

    const/16 v39, 0x2f

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v5, v36

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x2a

    const/16 v40, 0x18

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v36, v37

    const/16 v37, 0x1

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x1

    const/16 v40, 0x19

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v36, v37

    move-object/from16 v0, v36

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v36, 0x1e

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x17

    const/16 v41, 0xf

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v37, v38

    const/16 v38, 0x1

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x1c

    const/16 v41, 0x10

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v37, v38

    move/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v36, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v37, 0x1f

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    fill-array-data v38, :array_1d

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v2, v39, v40

    const/4 v2, 0x1

    aput-object v3, v39, v2

    const/4 v2, 0x2

    aput-object v4, v39, v2

    const/4 v2, 0x3

    aput-object v5, v39, v2

    invoke-direct/range {v36 .. v39}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x11

    const/16 v39, 0x73

    invoke-direct/range {v37 .. v39}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v37, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v37, 0x0

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0xa

    const/16 v40, 0x2e

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v5, v37

    const/16 v37, 0x1

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x17

    const/16 v40, 0x2f

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v5, v37

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0xa

    const/16 v41, 0x18

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v37, v38

    const/16 v38, 0x1

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x23

    const/16 v41, 0x19

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v37, v38

    move-object/from16 v0, v37

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v37, 0x1e

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x13

    const/16 v42, 0xf

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v38, v39

    const/16 v39, 0x1

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x23

    const/16 v42, 0x10

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v38, v39

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v37, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v38, 0x20

    const/16 v39, 0x6

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    fill-array-data v39, :array_1e

    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v2, v40, v41

    const/4 v2, 0x1

    aput-object v3, v40, v2

    const/4 v2, 0x2

    aput-object v4, v40, v2

    const/4 v2, 0x3

    aput-object v5, v40, v2

    invoke-direct/range {v37 .. v40}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x11

    const/16 v40, 0x73

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v4, v5

    const/4 v5, 0x1

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x1

    const/16 v40, 0x74

    invoke-direct/range {v38 .. v40}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v38, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v38, 0x0

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0xe

    const/16 v41, 0x2e

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v5, v38

    const/16 v38, 0x1

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x15

    const/16 v41, 0x2f

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v5, v38

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x1d

    const/16 v42, 0x18

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v38, v39

    const/16 v39, 0x1

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x13

    const/16 v42, 0x19

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v38, v39

    move-object/from16 v0, v38

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v38, 0x1e

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0xb

    const/16 v43, 0xf

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v39, v40

    const/16 v40, 0x1

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x2e

    const/16 v43, 0x10

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v39, v40

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v38, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v39, 0x21

    const/16 v40, 0x6

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    fill-array-data v40, :array_1f

    const/16 v41, 0x4

    move/from16 v0, v41

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v2, v41, v42

    const/4 v2, 0x1

    aput-object v3, v41, v2

    const/4 v2, 0x2

    aput-object v4, v41, v2

    const/4 v2, 0x3

    aput-object v5, v41, v2

    invoke-direct/range {v38 .. v41}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0xd

    const/16 v41, 0x73

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v4, v5

    const/4 v5, 0x1

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x6

    const/16 v41, 0x74

    invoke-direct/range {v39 .. v41}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v39, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v39, 0x0

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0xe

    const/16 v42, 0x2e

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v5, v39

    const/16 v39, 0x1

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x17

    const/16 v42, 0x2f

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v5, v39

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x2c

    const/16 v43, 0x18

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v39, v40

    const/16 v40, 0x1

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x7

    const/16 v43, 0x19

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v39, v40

    move-object/from16 v0, v39

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v39, 0x1e

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x3b

    const/16 v44, 0x10

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v40, v41

    const/16 v41, 0x1

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x1

    const/16 v44, 0x11

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v40, v41

    move/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v39, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v40, 0x22

    const/16 v41, 0x6

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    fill-array-data v41, :array_20

    const/16 v42, 0x4

    move/from16 v0, v42

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v2, v42, v43

    const/4 v2, 0x1

    aput-object v3, v42, v2

    const/4 v2, 0x2

    aput-object v4, v42, v2

    const/4 v2, 0x3

    aput-object v5, v42, v2

    invoke-direct/range {v39 .. v42}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0xc

    const/16 v42, 0x79

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v4, v5

    const/4 v5, 0x1

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x7

    const/16 v42, 0x7a

    invoke-direct/range {v40 .. v42}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v40, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v40, 0x0

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0xc

    const/16 v43, 0x2f

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v5, v40

    const/16 v40, 0x1

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x1a

    const/16 v43, 0x30

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v5, v40

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x27

    const/16 v44, 0x18

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v40, v41

    const/16 v41, 0x1

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0xe

    const/16 v44, 0x19

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v40, v41

    move-object/from16 v0, v40

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v40, 0x1e

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x16

    const/16 v45, 0xf

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v41, v42

    const/16 v42, 0x1

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x29

    const/16 v45, 0x10

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v41, v42

    move/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v40, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v41, 0x23

    const/16 v42, 0x7

    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v42, v0

    fill-array-data v42, :array_21

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v2, v43, v44

    const/4 v2, 0x1

    aput-object v3, v43, v2

    const/4 v2, 0x2

    aput-object v4, v43, v2

    const/4 v2, 0x3

    aput-object v5, v43, v2

    invoke-direct/range {v40 .. v43}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x6

    const/16 v43, 0x79

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v4, v5

    const/4 v5, 0x1

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0xe

    const/16 v43, 0x7a

    invoke-direct/range {v41 .. v43}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v41, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v41, 0x0

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x6

    const/16 v44, 0x2f

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v5, v41

    const/16 v41, 0x1

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x22

    const/16 v44, 0x30

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v5, v41

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x2e

    const/16 v45, 0x18

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v41, v42

    const/16 v42, 0x1

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0xa

    const/16 v45, 0x19

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v41, v42

    move-object/from16 v0, v41

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v41, 0x1e

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x2

    const/16 v46, 0xf

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v42, v43

    const/16 v43, 0x1

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x40

    const/16 v46, 0x10

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v42, v43

    move/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v41, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v42, 0x24

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_22

    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v2, v44, v45

    const/4 v2, 0x1

    aput-object v3, v44, v2

    const/4 v2, 0x2

    aput-object v4, v44, v2

    const/4 v2, 0x3

    aput-object v5, v44, v2

    invoke-direct/range {v41 .. v44}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x11

    const/16 v44, 0x7a

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v4, v5

    const/4 v5, 0x1

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x4

    const/16 v44, 0x7b

    invoke-direct/range {v42 .. v44}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v42, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v42, 0x0

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x1d

    const/16 v45, 0x2e

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v5, v42

    const/16 v42, 0x1

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0xe

    const/16 v45, 0x2f

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v5, v42

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x31

    const/16 v46, 0x18

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v42, v43

    const/16 v43, 0x1

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0xa

    const/16 v46, 0x19

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v42, 0x1e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x18

    const/16 v47, 0xf

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v43, v44

    const/16 v44, 0x1

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x2e

    const/16 v47, 0x10

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v43, v44

    move/from16 v0, v42

    move-object/from16 v1, v43

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v42, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v43, 0x25

    const/16 v44, 0x7

    move/from16 v0, v44

    new-array v0, v0, [I

    move-object/from16 v44, v0

    fill-array-data v44, :array_23

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v2, v45, v46

    const/4 v2, 0x1

    aput-object v3, v45, v2

    const/4 v2, 0x2

    aput-object v4, v45, v2

    const/4 v2, 0x3

    aput-object v5, v45, v2

    invoke-direct/range {v42 .. v45}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x4

    const/16 v45, 0x7a

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v4, v5

    const/4 v5, 0x1

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x12

    const/16 v45, 0x7b

    invoke-direct/range {v43 .. v45}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v43, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v43, 0x0

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0xd

    const/16 v46, 0x2e

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v5, v43

    const/16 v43, 0x1

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x20

    const/16 v46, 0x2f

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v5, v43

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x30

    const/16 v47, 0x18

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v43, v44

    const/16 v44, 0x1

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0xe

    const/16 v47, 0x19

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v43, 0x1e

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x2a

    const/16 v48, 0xf

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v44, v45

    const/16 v45, 0x1

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x20

    const/16 v48, 0x10

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v44, v45

    move/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v43, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v44, 0x26

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_24

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v2, v46, v47

    const/4 v2, 0x1

    aput-object v3, v46, v2

    const/4 v2, 0x2

    aput-object v4, v46, v2

    const/4 v2, 0x3

    aput-object v5, v46, v2

    invoke-direct/range {v43 .. v46}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x14

    const/16 v46, 0x75

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v4, v5

    const/4 v5, 0x1

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x4

    const/16 v46, 0x76

    invoke-direct/range {v44 .. v46}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v44, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v44, 0x0

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x28

    const/16 v47, 0x2f

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v5, v44

    const/16 v44, 0x1

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x7

    const/16 v47, 0x30

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v5, v44

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x2b

    const/16 v48, 0x18

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v44, v45

    const/16 v45, 0x1

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x16

    const/16 v48, 0x19

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v44, 0x1e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v48, 0xa

    const/16 v49, 0xf

    invoke-direct/range {v47 .. v49}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v47, v45, v46

    const/16 v46, 0x1

    new-instance v47, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v48, 0x43

    const/16 v49, 0x10

    invoke-direct/range {v47 .. v49}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v47, v45, v46

    move/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v44, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v45, 0x27

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_25

    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v2, v47, v48

    const/4 v2, 0x1

    aput-object v3, v47, v2

    const/4 v2, 0x2

    aput-object v4, v47, v2

    const/4 v2, 0x3

    aput-object v5, v47, v2

    invoke-direct/range {v44 .. v47}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v3, 0x1e

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x0

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x13

    const/16 v47, 0x76

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v4, v5

    const/4 v5, 0x1

    new-instance v45, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v46, 0x6

    const/16 v47, 0x77

    invoke-direct/range {v45 .. v47}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v45, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v45, 0x0

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x12

    const/16 v48, 0x2f

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v5, v45

    const/16 v45, 0x1

    new-instance v46, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v47, 0x1f

    const/16 v48, 0x30

    invoke-direct/range {v46 .. v48}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v46, v5, v45

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v5, 0x1e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v48, 0x22

    const/16 v49, 0x18

    invoke-direct/range {v47 .. v49}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v47, v45, v46

    const/16 v46, 0x1

    new-instance v47, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v48, 0x22

    const/16 v49, 0x19

    invoke-direct/range {v47 .. v49}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v47, v45, v46

    move-object/from16 v0, v45

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v45, 0x1e

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v49, 0x14

    const/16 v50, 0xf

    invoke-direct/range {v48 .. v50}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v48, v46, v47

    const/16 v47, 0x1

    new-instance v48, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v49, 0x3d

    const/16 v50, 0x10

    invoke-direct/range {v48 .. v50}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v48, v46, v47

    move/from16 v0, v45

    move-object/from16 v1, v46

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v45, 0x28

    move/from16 v0, v45

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v6, v45, v46

    const/4 v6, 0x1

    aput-object v7, v45, v6

    const/4 v6, 0x2

    aput-object v8, v45, v6

    const/4 v6, 0x3

    aput-object v9, v45, v6

    const/4 v6, 0x4

    aput-object v10, v45, v6

    const/4 v6, 0x5

    aput-object v11, v45, v6

    const/4 v6, 0x6

    aput-object v12, v45, v6

    const/4 v6, 0x7

    aput-object v13, v45, v6

    const/16 v6, 0x8

    aput-object v14, v45, v6

    const/16 v6, 0x9

    aput-object v15, v45, v6

    const/16 v6, 0xa

    aput-object v16, v45, v6

    const/16 v6, 0xb

    aput-object v17, v45, v6

    const/16 v6, 0xc

    aput-object v18, v45, v6

    const/16 v6, 0xd

    aput-object v19, v45, v6

    const/16 v6, 0xe

    aput-object v20, v45, v6

    const/16 v6, 0xf

    aput-object v21, v45, v6

    const/16 v6, 0x10

    aput-object v22, v45, v6

    const/16 v6, 0x11

    aput-object v23, v45, v6

    const/16 v6, 0x12

    aput-object v24, v45, v6

    const/16 v6, 0x13

    aput-object v25, v45, v6

    const/16 v6, 0x14

    aput-object v26, v45, v6

    const/16 v6, 0x15

    aput-object v27, v45, v6

    const/16 v6, 0x16

    aput-object v28, v45, v6

    const/16 v6, 0x17

    aput-object v29, v45, v6

    const/16 v6, 0x18

    aput-object v30, v45, v6

    const/16 v6, 0x19

    aput-object v31, v45, v6

    const/16 v6, 0x1a

    aput-object v32, v45, v6

    const/16 v6, 0x1b

    aput-object v33, v45, v6

    const/16 v6, 0x1c

    aput-object v34, v45, v6

    const/16 v6, 0x1d

    aput-object v35, v45, v6

    const/16 v6, 0x1e

    aput-object v36, v45, v6

    const/16 v6, 0x1f

    aput-object v37, v45, v6

    const/16 v6, 0x20

    aput-object v38, v45, v6

    const/16 v6, 0x21

    aput-object v39, v45, v6

    const/16 v6, 0x22

    aput-object v40, v45, v6

    const/16 v6, 0x23

    aput-object v41, v45, v6

    const/16 v6, 0x24

    aput-object v42, v45, v6

    const/16 v6, 0x25

    aput-object v43, v45, v6

    const/16 v6, 0x26

    aput-object v44, v45, v6

    const/16 v6, 0x27

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v8, 0x28

    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_26

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    const/4 v2, 0x3

    aput-object v5, v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v7, v45, v6

    return-object v45

    nop

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    :goto_0
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    aget v3, v3, v0

    if-ne v3, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0, v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    if-ge v3, v2, :cond_1

    add-int/lit8 v1, v0, 0x7

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-gt v2, v0, :cond_3

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    add-int/lit8 v0, p0, -0x11

    :try_start_0
    div-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x28

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x6

    const/16 v11, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v3

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    invoke-virtual {v4, v1, v1, v11, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x8

    const/16 v2, 0x8

    invoke-virtual {v4, v0, v1, v2, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x8

    const/16 v2, 0x8

    invoke-virtual {v4, v1, v0, v11, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v5, v0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v6, v0, v2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    add-int/lit8 v7, v5, -0x1

    if-eq v0, v7, :cond_1

    :cond_0
    add-int/lit8 v7, v5, -0x1

    if-ne v2, v7, :cond_2

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v6, -0x2

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, -0x11

    invoke-virtual {v4, v12, v11, v13, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x11

    invoke-virtual {v4, v11, v12, v0, v13}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    if-le v0, v12, :cond_5

    add-int/lit8 v0, v3, -0xb

    invoke-virtual {v4, v0, v1, v14, v12}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0xb

    invoke-virtual {v4, v1, v0, v12, v14}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    return-object v4
.end method

.method public getAlignmentPatternCenters()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    return-object v0
.end method

.method public getDimensionForVersion()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
