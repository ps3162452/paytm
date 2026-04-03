.class public final enum Lokhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xe

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "016d83"

    const v3, -0x31d438f0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v7}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    new-array v1, v10, [B

    fill-array-data v1, :array_1

    const-string v2, "e879c6"

    const/16 v3, 0x6667

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    new-array v1, v10, [B

    fill-array-data v1, :array_2

    const-string v2, "a6b43f"

    const-wide/32 v4, -0x1fd83cdc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v8}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "9bc026"

    const/16 v3, 0x10f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9, v9}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    new-array v1, v10, [B

    fill-array-data v1, :array_4

    const-string v2, "fa82f8"

    const-wide v4, -0x3e3eaadeef000000L    # -5.81583394E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "03edde"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        0x7et
        0x69t
        0x21t
        0x6at
        0x61t
        0x7ft
        0x63t
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x6at
        0x78t
        0x6dt
        0x2ct
        0x75t
        0x2at
        0x74t
        0x68t
        0x7ct
        0x31t
        0x64t
        0x2at
        0x6at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x28t
        0x78t
        0x36t
        0x71t
        0x61t
        0x28t
        0x20t
        0x7at
        0x3dt
        0x71t
        0x61t
        0x34t
        0x2et
        0x64t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7ft
        0x2et
        0x2ct
        0x67t
        0x6dt
        0x75t
        0x76t
        0x2ct
        0x37t
        0x62t
        0x7dt
        0x7at
        0x66t
        0x27t
        0x31t
        0x62t
        0x7dt
        0x64t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x34t
        0x24t
        0x7et
        0x67t
        0x35t
        0x7dt
        0x22t
        0x3et
        0x6bt
        0x66t
        0x34t
        0x7dt
        0x27t
        0x2ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x73t
        0x72t
        0x2bt
        0x27t
        0x21t
        0x29t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    return-void
.end method

.method public static fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;
    .locals 5

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    const-class v0, Lokhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/ErrorCode;

    return-object v0
.end method

.method public static values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lokhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/ErrorCode;

    return-object v0
.end method
