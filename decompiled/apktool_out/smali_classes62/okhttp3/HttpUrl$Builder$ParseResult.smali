.class final enum Lokhttp3/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "93d6c2"

    const/16 v3, 0x77c9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "497751"

    const-wide v4, -0x3e29069391c00000L    # -1.541779897E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "44598a"

    const-wide/32 v4, -0x4104cd58

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "2fdfcb"

    const v3, -0x31a5b62f    # -9.155677E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    new-instance v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "fcdb0c"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lokhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    const/4 v0, 0x5

    new-array v0, v0, [Lokhttp3/HttpUrl$Builder$ParseResult;

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v10

    sput-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

    return-void

    nop

    :array_0
    .array-data 1
        0x6at
        0x66t
        0x27t
        0x75t
        0x26t
        0x61t
        0x6at
    .end array-data

    :array_1
    .array-data 1
        0x79t
        0x70t
        0x64t
        0x64t
        0x7ct
        0x7ft
        0x73t
        0x66t
        0x64t
        0x74t
        0x7dt
        0x74t
        0x79t
        0x7ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x61t
        0x7at
        0x66t
        0x6ct
        0x68t
        0x31t
        0x7bt
        0x66t
        0x61t
        0x7ct
        0x7ct
        0x3et
        0x67t
        0x77t
        0x7dt
        0x7ct
        0x75t
        0x24t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7bt
        0x28t
        0x32t
        0x27t
        0x2ft
        0x2bt
        0x76t
        0x39t
        0x34t
        0x29t
        0x31t
        0x36t
    .end array-data

    :array_4
    .array-data 1
        0x2ft
        0x2dt
        0x32t
        0x23t
        0x7ct
        0x2at
        0x22t
        0x3ct
        0x2ct
        0x2dt
        0x63t
        0x37t
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

.method public static valueOf(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    const-class v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v0
.end method

.method public static values()[Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lokhttp3/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Lokhttp3/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
