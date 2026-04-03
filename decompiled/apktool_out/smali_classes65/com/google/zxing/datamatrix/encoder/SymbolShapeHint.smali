.class public final enum Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "941804"

    const-wide/32 v4, -0x597505b4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "71e7bc"

    const-wide/32 v4, -0x3b922b98

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "4faeb7"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x7bt
        0x63t
        0x7bt
        0x75t
        0x6bt
        0x77t
        0x7bt
        0x7ft
        0x7dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x7et
        0x37t
        0x74t
        0x27t
        0x3ct
        0x64t
        0x60t
        0x30t
        0x76t
        0x30t
        0x26t
    .end array-data

    :array_2
    .array-data 1
        0x72t
        0x29t
        0x33t
        0x26t
        0x27t
        0x68t
        0x66t
        0x23t
        0x22t
        0x31t
        0x23t
        0x79t
        0x73t
        0x2at
        0x24t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    const-class v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-object v0
.end method
