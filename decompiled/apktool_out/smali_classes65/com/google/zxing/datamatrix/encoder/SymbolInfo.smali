.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;


# static fields
.field static final PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field private static symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x1e

    new-array v9, v0, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xb

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0x18

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x12

    const/16 v3, 0xe

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x8

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x9

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xa

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xb

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/16 v3, 0x18

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xc

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x24

    const/16 v3, 0x18

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xd

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2c

    const/16 v3, 0x1c

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x31

    const/16 v3, 0x1c

    const/16 v4, 0x16

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xf

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const/16 v3, 0x24

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x10

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x56

    const/16 v3, 0x2a

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x11

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x72

    const/16 v3, 0x30

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x12

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x90

    const/16 v3, 0x38

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x13

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xae

    const/16 v3, 0x44

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v10, 0x14

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0x54

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x4

    const/16 v7, 0x66

    const/16 v8, 0x2a

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x118

    const/16 v3, 0x70

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0x10

    const/16 v7, 0x8c

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x170

    const/16 v3, 0x90

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x5c

    const/16 v8, 0x24

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1c8

    const/16 v3, 0xc0

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x10

    const/16 v7, 0x72

    const/16 v8, 0x30

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x240

    const/16 v3, 0xe0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x10

    const/16 v7, 0x90

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2b8

    const/16 v3, 0x110

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x10

    const/16 v7, 0xae

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x330

    const/16 v3, 0x150

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x88

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x41a

    const/16 v3, 0x198

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x24

    const/16 v7, 0xaf

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x518

    const/16 v3, 0x1f0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x24

    const/16 v7, 0xa3

    const/16 v8, 0x3e

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v0, 0x1d

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    aput-object v1, v9, v0

    sput-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method

.method constructor <init>(ZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method public static lookup(I)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 2

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 7

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v5, :cond_1

    iget-boolean v5, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v5, :cond_2

    iget-boolean v5, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v5, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    :cond_4
    iget v5, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v5, :cond_0

    :goto_1
    return-object v0

    :cond_5
    if-eqz p4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x4a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7fb49b"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x74t
        0x7t
        0xct
        0x13t
        0x4dt
        0x42t
        0x51t
        0xft
        0xct
        0x50t
        0x19t
        0x3t
        0x17t
        0x15t
        0x1bt
        0x59t
        0x5bt
        0xdt
        0x5bt
        0x46t
        0x3t
        0x46t
        0x4bt
        0x3t
        0x59t
        0x1t
        0x7t
        0x59t
        0x5ct
        0xct
        0x43t
        0x46t
        0x16t
        0x5ct
        0x58t
        0x16t
        0x17t
        0xbt
        0x3t
        0x40t
        0x5at
        0xat
        0x52t
        0x15t
        0x42t
        0x40t
        0x51t
        0x7t
        0x17t
        0xbt
        0x7t
        0x47t
        0x4at
        0x3t
        0x50t
        0x3t
        0x4ct
        0x14t
        0x7dt
        0x3t
        0x43t
        0x7t
        0x42t
        0x57t
        0x56t
        0x6t
        0x52t
        0x11t
        0xdt
        0x46t
        0x5dt
        0x11t
        0xdt
        0x46t
    .end array-data
.end method

.method private static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(IZZ)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    goto :goto_0
.end method

.method public static overrideSymbolSet([Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)V
    .locals 0

    sput-object p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDataCapacity()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    return v0
.end method

.method public getDataLengthForInterleavedBlock(I)I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    return v0
.end method

.method public final getErrorCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    return v0
.end method

.method public final getErrorLengthForInterleavedBlock(I)I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return v0
.end method

.method final getHorizontalDataRegions()I
    .locals 4

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "246c6e"

    const/16 v3, 0x1dc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x71t
        0x55t
        0x58t
        0xdt
        0x59t
        0x11t
        0x12t
        0x5ct
        0x57t
        0xdt
        0x52t
        0x9t
        0x57t
        0x14t
        0x42t
        0xbt
        0x5ft
        0x16t
        0x12t
        0x5at
        0x43t
        0xet
        0x54t
        0x0t
        0x40t
        0x14t
        0x59t
        0x5t
        0x16t
        0x1t
        0x53t
        0x40t
        0x57t
        0x43t
        0x44t
        0x0t
        0x55t
        0x5dt
        0x59t
        0xdt
        0x45t
    .end array-data
.end method

.method public getInterleavedBlockCount()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method final getVerticalDataRegions()I
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "00711c"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/4 v0, 0x2

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x73t
        0x51t
        0x59t
        0x5ft
        0x5et
        0x17t
        0x10t
        0x58t
        0x56t
        0x5ft
        0x55t
        0xft
        0x55t
        0x10t
        0x43t
        0x59t
        0x58t
        0x10t
        0x10t
        0x5et
        0x42t
        0x5ct
        0x53t
        0x6t
        0x42t
        0x10t
        0x58t
        0x57t
        0x11t
        0x7t
        0x51t
        0x44t
        0x56t
        0x11t
        0x43t
        0x6t
        0x57t
        0x59t
        0x58t
        0x5ft
        0x42t
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x13

    const/16 v7, 0xe

    const/16 v6, 0x78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v0, :cond_0

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v2, "27aead"

    const v3, 0x4e91e51c

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "e482a5"

    const-wide/32 v4, -0x6cd7ebcd

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v2, "090ed4"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v2, "92182a"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "2912ac"

    const-wide v4, 0x41dd864df2000000L    # 1.981364168E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v2, "bcc899"

    const-wide/32 v4, -0x49d3a71d

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x60t
        0x52t
        0x2t
        0x11t
        0x0t
        0xat
        0x55t
        0x42t
        0xdt
        0x4t
        0x13t
        0x44t
        0x61t
        0x4et
        0xct
        0x7t
        0xet
        0x8t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x50t
        0x59t
        0x46t
        0x0t
        0x15t
        0x17t
        0x51t
        0x5ft
        0x5bt
        0xet
        0x5bt
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1ct
        0x19t
        0x43t
        0x1ct
        0x9t
        0x56t
        0x5ft
        0x55t
        0x10t
        0x16t
        0xdt
        0x4et
        0x55t
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x12t
        0x42t
        0x41t
        0x5ft
        0x3t
        0x56t
        0x5et
        0x11t
        0x5ct
        0x53t
        0x15t
        0x58t
        0x12t
        0x42t
        0x51t
        0x48t
        0x4t
        0x19t
    .end array-data

    :array_4
    .array-data 1
        0x1et
        0x19t
        0x52t
        0x5dt
        0x5t
        0x6t
        0x45t
        0x56t
        0x43t
        0x56t
        0x12t
        0x43t
    .end array-data

    :array_5
    .array-data 1
        0x31t
        0x12t
        0x16t
        0x59t
        0x4bt
        0x5ct
        0x42t
        0x30t
        0x1at
        0x55t
        0x5bt
        0x56t
        0xet
        0x59t
    .end array-data
.end method
