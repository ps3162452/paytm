.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/zxing/ResultMetadataType;

.field public static final enum BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ORIENTATION:Lcom/google/zxing/ResultMetadataType;

.field public static final enum OTHER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

.field public static final enum POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "79e709"

    const v3, 0x4edcab37

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d0193a"

    const-wide/32 v4, -0x6a55cc81

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "4c88fb"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "1fb23a"

    const-wide v4, -0x3e20868cf7c00000L    # -2.112212001E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "82a025"

    const/16 v3, -0x5f79

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "e0b83f"

    const-wide/32 v4, 0x34a56749

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "a8e7e1"

    const-wide/32 v4, 0x5cfbf8ac

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "73a7d3"

    const/16 v3, 0x5f26

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "e361f9"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "c4c98d"

    const-wide/32 v4, 0x8dda6be

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "795f9e"

    const-wide/32 v4, 0x473e83e5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x6dt
        0x2dt
        0x72t
        0x62t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2bt
        0x62t
        0x78t
        0x7ct
        0x7dt
        0x35t
        0x25t
        0x64t
        0x78t
        0x76t
        0x7dt
    .end array-data

    :array_2
    .array-data 1
        0x76t
        0x3at
        0x6ct
        0x7dt
        0x39t
        0x31t
        0x71t
        0x24t
        0x75t
        0x7dt
        0x28t
        0x36t
        0x67t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x34t
        0x30t
        0x7dt
        0x61t
        0x3et
        0x72t
        0x29t
        0x30t
        0x60t
        0x76t
        0x22t
        0x65t
        0x2ft
        0x2dt
        0x7ct
        0x6ct
        0x2dt
        0x74t
        0x30t
        0x27t
        0x7et
    .end array-data

    nop

    :array_4
    .array-data 1
        0x71t
        0x61t
        0x32t
        0x65t
        0x77t
        0x6at
        0x76t
        0x67t
        0x2ct
        0x72t
        0x77t
        0x67t
    .end array-data

    :array_5
    .array-data 1
        0x36t
        0x65t
        0x25t
        0x7ft
        0x76t
        0x35t
        0x31t
        0x75t
        0x26t
        0x67t
        0x63t
        0x34t
        0x2ct
        0x73t
        0x27t
    .end array-data

    :array_6
    .array-data 1
        0x31t
        0x77t
        0x36t
        0x64t
        0x2ct
        0x73t
        0x2dt
        0x7dt
        0x3at
        0x74t
        0x2at
        0x64t
        0x2ft
        0x6ct
        0x37t
        0x6et
    .end array-data

    :array_7
    .array-data 1
        0x62t
        0x63t
        0x22t
        0x68t
        0x21t
        0x72t
        0x79t
        0x6ct
        0x24t
        0x6ft
        0x30t
        0x76t
        0x79t
        0x60t
        0x28t
        0x78t
        0x2at
    .end array-data

    nop

    :array_8
    .array-data 1
        0x35t
        0x77t
        0x70t
        0x5t
        0x57t
        0xet
        0x3at
        0x76t
        0x6et
        0x65t
        0x34t
        0x78t
        0x3at
        0x7et
        0x73t
        0x65t
        0x27t
        0x7dt
        0x24t
        0x67t
        0x77t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x30t
        0x60t
        0x31t
        0x6ct
        0x7bt
        0x30t
        0x36t
        0x66t
        0x26t
        0x7dt
        0x67t
        0x25t
        0x33t
        0x64t
        0x26t
        0x77t
        0x7ct
        0x3bt
        0x30t
        0x71t
        0x32t
        0x6ct
        0x7dt
        0x2at
        0x20t
        0x71t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x64t
        0x6dt
        0x67t
        0x33t
        0x7at
        0x31t
        0x62t
        0x6bt
        0x70t
        0x22t
        0x66t
        0x24t
        0x67t
        0x69t
        0x70t
        0x28t
        0x7dt
        0x3at
        0x67t
        0x78t
        0x67t
        0x2ft
        0x6dt
        0x3ct
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .locals 1

    const-class v0, Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .locals 1

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method
