.class Lcom/airbnb/lottie/parser/FontParser;
.super Ljava/lang/Object;


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8e1f16"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f7d097"

    const-wide/32 v4, -0x455e36a8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "351376"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "a3c536"

    const-wide/32 v4, 0x1ba41156

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    nop

    :array_0
    .array-data 1
        0x5et
        0x23t
        0x50t
        0xbt
        0x58t
        0x5at
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x79t
        0x5t
        0x5dt
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x55t
        0x66t
        0x45t
        0x4at
        0x5bt
        0x53t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x40t
        0x0t
        0x50t
        0x5dt
        0x42t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    new-instance v4, Lcom/airbnb/lottie/model/Font;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
