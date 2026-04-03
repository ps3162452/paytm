.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/16 v7, 0xa

    const/4 v6, 0x0

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "579fc6"

    const/16 v3, -0x3d72

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ec8c5e"

    const v3, 0x4ea90b0a    # 1.4180365E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "776475"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/List;

    invoke-direct {v0, v1, v10, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    const-string v2, "6f3641"

    const v3, -0x31e9d624

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "cbc1af"

    const v3, 0x4d9778c8    # 3.176594E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "d7d9d7"

    const/16 v3, 0x7b5e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-class v2, [I

    invoke-direct {v0, v1, v9, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "e59b5e"

    const-wide v4, 0x41d2282f6a800000L    # 1.218493866E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    new-array v1, v7, [B

    fill-array-data v1, :array_7

    const-string v2, "040bf4"

    const-wide/32 v4, -0x7a50a861

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "18b925"

    const-wide v4, -0x3e8b71f120000000L    # -2.155339E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "34efc3"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const-class v3, Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "64b3d9"

    const-wide/32 v4, 0x4afc290d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const-class v2, [I

    invoke-direct {v0, v1, v7, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/zxing/DecodeHintType;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v10

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    return-void

    :array_0
    .array-data 1
        0x7at
        0x63t
        0x71t
        0x23t
        0x31t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x35t
        0x36t
        0x6at
        0x26t
        0x6at
        0x27t
        0x24t
        0x31t
        0x7bt
        0x2ct
        0x71t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x67t
        0x78t
        0x65t
        0x67t
        0x7et
        0x77t
        0x7bt
        0x72t
        0x69t
        0x72t
        0x78t
        0x67t
        0x7at
        0x76t
        0x62t
        0x67t
    .end array-data

    :array_3
    .array-data 1
        0x62t
        0x34t
        0x6at
        0x69t
        0x7ct
        0x70t
        0x64t
        0x22t
        0x76t
        0x64t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x20t
        0x2at
        0x22t
        0x63t
        0x20t
        0x25t
        0x37t
        0x27t
        0x31t
        0x6et
        0x32t
        0x23t
        0x37t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x25t
        0x7bt
        0x28t
        0x76t
        0x33t
        0x72t
        0x20t
        0x68t
        0x28t
        0x7ct
        0x2at
        0x70t
        0x30t
        0x7ft
        0x37t
    .end array-data

    :array_6
    .array-data 1
        0x24t
        0x66t
        0x6at
        0x37t
        0x78t
        0x20t
        0x3at
        0x76t
        0x76t
        0x26t
        0x70t
        0x3at
        0x56t
        0xct
        0x66t
        0x21t
        0x7dt
        0x20t
        0x26t
        0x7et
        0x66t
        0x26t
        0x7ct
        0x22t
        0x2ct
        0x61t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x71t
        0x67t
        0x63t
        0x37t
        0x2bt
        0x71t
        0x6ft
        0x73t
        0x63t
        0x53t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x63t
        0x7dt
        0x36t
        0x6ct
        0x60t
        0x7bt
        0x6et
        0x7bt
        0x2dt
        0x7dt
        0x73t
        0x77t
        0x70t
        0x6at
        0x3dt
        0x6at
        0x66t
        0x74t
        0x63t
        0x6ct
        0x3dt
        0x7ct
        0x7ct
        0x71t
    .end array-data

    :array_9
    .array-data 1
        0x7dt
        0x71t
        0x20t
        0x22t
        0x3ct
        0x61t
        0x76t
        0x67t
        0x30t
        0x2at
        0x37t
        0x6ct
        0x63t
        0x7bt
        0x2ct
        0x28t
        0x37t
        0x6ct
        0x70t
        0x75t
        0x29t
        0x2at
        0x21t
        0x72t
        0x70t
        0x7ft
    .end array-data

    nop

    :array_a
    .array-data 1
        0x77t
        0x78t
        0x2et
        0x7ct
        0x33t
        0x7ct
        0x72t
        0x6bt
        0x27t
        0x72t
        0x2at
        0x66t
        0x73t
        0x6ct
        0x36t
        0x76t
        0x2at
        0x6at
        0x7ft
        0x7bt
        0x2ct
        0x60t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    sget-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    return-object v0
.end method
