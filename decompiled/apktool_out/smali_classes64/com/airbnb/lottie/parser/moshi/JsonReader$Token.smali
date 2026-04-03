.class public final enum Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7786b"

    const/16 v3, -0x6837

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "44afca"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "3885a6"

    const v3, 0x4eb3d5e4    # 1.5085696E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "c38fa5"

    const/16 v3, -0x39ea

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "892833"

    const v3, 0x4dd4180d    # 4.4479325E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "032317"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-array v1, v7, [B

    fill-array-data v1, :array_6

    const-string v2, "35492f"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-array v1, v8, [B

    fill-array-data v1, :array_7

    const-string v2, "1b3394"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-array v1, v6, [B

    fill-array-data v1, :array_8

    const-string v2, "f22bb5"

    const v3, 0x4e3ab99e    # 7.831817E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "7271a1"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v1, v0, v8

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x72t
        0x70t
        0x71t
        0x78t
        0x3dt
        0x27t
        0x65t
        0x65t
        0x79t
        0x6ft
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x7at
        0x25t
        0x39t
        0x22t
        0x33t
        0x66t
        0x75t
        0x38t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x7dt
        0x7ft
        0x7ct
        0x2ft
        0x69t
        0x7ct
        0x7at
        0x72t
        0x70t
        0x22t
        0x62t
    .end array-data

    :array_3
    .array-data 1
        0x26t
        0x7dt
        0x7ct
        0x39t
        0x2et
        0x77t
        0x29t
        0x76t
        0x7bt
        0x32t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x76t
        0x78t
        0x7ft
        0x7dt
    .end array-data

    :array_5
    .array-data 1
        0x63t
        0x67t
        0x60t
        0x7at
        0x7ft
        0x70t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7dt
        0x60t
        0x79t
        0x7bt
        0x77t
        0x34t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x73t
        0x2dt
        0x7ct
        0x7ft
        0x7ct
        0x75t
        0x7ft
    .end array-data

    :array_8
    .array-data 1
        0x28t
        0x67t
        0x7et
        0x2et
    .end array-data

    :array_9
    .array-data 1
        0x72t
        0x7ct
        0x73t
        0x6et
        0x25t
        0x7et
        0x74t
        0x67t
        0x7at
        0x74t
        0x2ft
        0x65t
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0
.end method
