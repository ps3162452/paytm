.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "a24628"

    const-wide v2, 0x41dae39234400000L    # 1.804486865E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "f6f32e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "919d22"

    const-wide v2, 0x41db57cf95c00000L    # 1.834958423E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "fbbc5f"

    const v2, 0x4c86ec73    # 7.073884E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    return-void

    :array_0
    .array-data 1
        0x46t
        0x6et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x6at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0x4ct
        0x62t
        0x39t
        0x8t
        0x1et
        0x19t
        0x3bt
        0x30t
        0x69t
        0x3et
        0x1dt
        0x65t
        0xat
        0x1at
        0x59t
    .end array-data

    :array_3
    .array-data 1
        0x4ct
        0x4dt
    .end array-data
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 6

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3952a3"

    const-wide/32 v4, -0x348fa3e7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x56t
        0x40t
        0x40t
        0x2t
        0x56t
        0x13t
        0x4t
        0x8t
        0x12t
        0xft
        0x46t
        0x5ft
        0x55t
    .end array-data
.end method

.method private checkLenient()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v0, :cond_0

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d7d1c7"

    const-wide v2, -0x3e30a0d400000000L    # -1.05266176E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x31t
        0x44t
        0x1t
        0x11t
        0x29t
        0x44t
        0xbt
        0x59t
        0x36t
        0x54t
        0x2t
        0x53t
        0x1t
        0x45t
        0x4at
        0x42t
        0x6t
        0x43t
        0x28t
        0x52t
        0xat
        0x58t
        0x6t
        0x59t
        0x10t
        0x1ft
        0x10t
        0x43t
        0x16t
        0x52t
        0x4dt
        0x17t
        0x10t
        0x5et
        0x43t
        0x56t
        0x7t
        0x54t
        0x1t
        0x41t
        0x17t
        0x17t
        0x9t
        0x56t
        0x8t
        0x57t
        0xct
        0x45t
        0x9t
        0x52t
        0x0t
        0x11t
        0x29t
        0x64t
        0x2bt
        0x79t
    .end array-data
.end method

.method private doPeek()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-ne v3, v1, :cond_2

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v2, v4, v5

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    :goto_1
    return v0

    :cond_2
    if-ne v3, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    sparse-switch v4, :sswitch_data_1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dd1162"

    const v2, -0x31b5539b    # -8.500739E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_1
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_8

    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v4, v5

    if-ne v3, v6, :cond_5

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    sparse-switch v0, :sswitch_data_2

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "7d7e73"

    const v2, -0x31085a4d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_3
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    :cond_5
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    const/16 v1, 0xe

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    const/16 v0, 0xd

    const/16 v1, 0xd

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v0, 0xc

    const/16 v1, 0xc

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :sswitch_8
    if-eq v3, v6, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v2

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "393e27"

    const-wide/32 v2, -0x5f9870bf

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "4ac87c"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_8
    if-ne v3, v0, :cond_9

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "68d5b4"

    const-wide/32 v2, 0x5eaf2958

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x1

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x7

    aput v6, v4, v5

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x7

    if-ne v3, v4, :cond_c

    invoke-direct {p0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    const/16 v0, 0x12

    const/16 v1, 0x12

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "6bd234"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    if-ne v3, v1, :cond_d

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :cond_d
    :sswitch_a
    if-eq v3, v1, :cond_e

    if-ne v3, v2, :cond_f

    :cond_e
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    const/4 v0, 0x7

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "8d4039"

    const v2, 0x4efdbc91

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_b
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    const/16 v0, 0x8

    const/16 v1, 0x8

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    const/16 v0, 0x9

    const/16 v1, 0x9

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x3

    const/4 v1, 0x3

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    move v0, v1

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "5d32fe"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v0, 0xa

    const/16 v1, 0xa

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x31t
        0xat
        0x45t
        0x54t
        0x44t
        0x5ft
        0xdt
        0xat
        0x50t
        0x45t
        0x53t
        0x56t
        0x44t
        0x5t
        0x43t
        0x43t
        0x57t
        0x4bt
    .end array-data

    nop

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    :array_1
    .array-data 1
        0x62t
        0xat
        0x43t
        0x0t
        0x45t
        0x5et
        0x5et
        0xat
        0x56t
        0x11t
        0x52t
        0x57t
        0x17t
        0xbt
        0x55t
        0xft
        0x52t
        0x50t
        0x43t
    .end array-data

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :array_2
    .array-data 1
        0x76t
        0x41t
        0x43t
        0x0t
        0x51t
        0x43t
        0x56t
        0x5dt
        0x13t
        0xbt
        0x53t
        0x5at
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x19t
        0x13t
        0x5dt
        0x54t
        0x17t
        0x51t
        0x5t
        0x43t
        0x56t
        0x56t
        0xet
        0x51t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_4
    .array-data 1
        0x73t
        0x40t
        0x14t
        0x50t
        0x1t
        0x40t
        0x53t
        0x5ct
        0x44t
        0x12t
        0x58t
        0x13t
    .end array-data

    :array_5
    .array-data 1
        0x7ct
        0x11t
        0xbt
        0x5ct
        0x61t
        0x51t
        0x57t
        0x6t
        0x1t
        0x40t
        0x13t
        0x5dt
        0x45t
        0x42t
        0x7t
        0x5et
        0x5ct
        0x47t
        0x53t
        0x6t
    .end array-data

    :array_6
    .array-data 1
        0x6dt
        0xat
        0x51t
        0x48t
        0x43t
        0x5ct
        0x5bt
        0x10t
        0x51t
        0x54t
        0x13t
        0x4ft
        0x59t
        0x8t
        0x41t
        0x55t
    .end array-data

    :array_7
    .array-data 1
        0x70t
        0x1ct
        0x43t
        0x57t
        0x5t
        0x11t
        0x50t
        0x0t
        0x13t
        0x44t
        0x7t
        0x9t
        0x40t
        0x1t
    .end array-data
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findString(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isLiteral(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    const/16 v3, 0x20

    if-eq v0, v3, :cond_7

    const/16 v3, 0xd

    if-eq v0, v3, :cond_7

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v4, 0x2

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c6277a"

    const-wide/32 v2, -0x7b2cf9e1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x23

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_6

    new-instance v0, Ljava/io/EOFException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a039c6"

    const/16 v3, -0x419b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x36t
        0x58t
        0x46t
        0x52t
        0x45t
        0xct
        0xat
        0x58t
        0x53t
        0x43t
        0x52t
        0x5t
        0x43t
        0x55t
        0x5dt
        0x5at
        0x5at
        0x4t
        0xdt
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x5et
        0x57t
        0x19t
        0xct
        0x50t
        0x41t
        0x59t
        0x5dt
        0x49t
        0x16t
        0x42t
    .end array-data
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3809e4"

    const-wide v2, -0x3e302f8027000000L    # -1.067515826E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    :goto_1
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :array_0
    .array-data 1
        0x66t
        0x56t
        0x44t
        0x5ct
        0x17t
        0x59t
        0x5at
        0x56t
        0x51t
        0x4dt
        0x0t
        0x50t
        0x13t
        0x4bt
        0x44t
        0x4bt
        0xct
        0x5at
        0x54t
    .end array-data
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private peekKeyword()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "504359"

    const-wide v6, -0x3e2f70efbe000000L    # -1.111245064E9

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v5, "10baeb"

    const/16 v6, 0x7a36

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_8

    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v4, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v3

    :goto_2
    return v2

    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    :cond_2
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    const-string v1, "1d77c8"

    const/16 v5, 0x510f

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    const-string v2, "a562da"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    goto :goto_0

    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    :cond_4
    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "857af4"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v2, "d3a807"

    invoke-static {v0, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v1, v5, 0x1

    int-to-long v6, v1

    invoke-interface {v0, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v3

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v4, v5

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->skip(J)V

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x41t
        0x56t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x62t
        0x37t
        0x24t
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x5t
        0x5bt
        0x44t
        0x6t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x27t
        0x74t
        0x7at
        0x61t
        0x21t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        0x40t
        0x5bt
        0xdt
    .end array-data

    :array_5
    .array-data 1
        0x2at
        0x66t
        0x2dt
        0x74t
    .end array-data
.end method

.method private peekNumber()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v0, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_16

    if-eqz v2, :cond_16

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    if-eqz v3, :cond_16

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    if-nez v3, :cond_16

    :cond_2
    if-eqz v3, :cond_15

    :goto_1
    iput-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    const/16 v0, 0x10

    const/16 v1, 0x10

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    :goto_2
    return v0

    :cond_3
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    sparse-switch v6, :sswitch_data_0

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-le v6, v7, :cond_c

    :cond_4
    invoke-direct {p0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_0
    if-nez v1, :cond_6

    const/4 v3, 0x1

    const/4 v1, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x5

    if-ne v1, v6, :cond_7

    const/4 v1, 0x6

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const/4 v6, 0x5

    if-ne v1, v6, :cond_8

    const/4 v1, 0x6

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_2
    const/4 v6, 0x2

    if-eq v1, v6, :cond_9

    const/4 v6, 0x4

    if-ne v1, v6, :cond_a

    :cond_9
    const/4 v1, 0x5

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_3
    const/4 v6, 0x2

    if-ne v1, v6, :cond_b

    const/4 v1, 0x3

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    const/4 v7, 0x1

    if-eq v1, v7, :cond_d

    if-nez v1, :cond_e

    :cond_d
    add-int/lit8 v1, v6, -0x30

    neg-int v1, v1

    int-to-long v4, v1

    const/4 v1, 0x2

    goto :goto_3

    :cond_e
    const/4 v7, 0x2

    if-ne v1, v7, :cond_12

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_f

    const/4 v0, 0x0

    goto :goto_2

    :cond_f
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v4

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    sub-long v6, v8, v6

    const-wide v8, -0xcccccccccccccccL

    cmp-long v8, v4, v8

    if-gtz v8, :cond_10

    const-wide v8, -0xcccccccccccccccL

    cmp-long v8, v4, v8

    if-nez v8, :cond_11

    cmp-long v4, v6, v4

    if-gez v4, :cond_11

    :cond_10
    const/4 v4, 0x1

    :goto_4
    and-int/2addr v2, v4

    move-wide v4, v6

    goto :goto_3

    :cond_11
    const/4 v4, 0x0

    goto :goto_4

    :cond_12
    const/4 v6, 0x3

    if-ne v1, v6, :cond_13

    const/4 v1, 0x4

    goto :goto_3

    :cond_13
    const/4 v6, 0x5

    if-eq v1, v6, :cond_14

    const/4 v6, 0x6

    if-ne v1, v6, :cond_5

    :cond_14
    const/4 v1, 0x7

    goto :goto_3

    :cond_15
    neg-long v4, v4

    goto/16 :goto_1

    :cond_16
    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    const/4 v2, 0x4

    if-eq v1, v2, :cond_17

    const/4 v2, 0x7

    if-ne v1, v2, :cond_18

    :cond_17
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    const/16 v0, 0x11

    const/16 v1, 0x11

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_2

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v6, 0x4

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "527756"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "716642"

    const v4, -0x31b05e17

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "89119a"

    const-wide/32 v4, 0x169a66e0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    int-to-char v0, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    int-to-char v0, v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v3, 0x46

    if-gt v2, v3, :cond_4

    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    int-to-char v0, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "9a2969"

    const-wide/32 v4, 0xce19e61

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->skip(J)V

    :goto_2
    return v0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_2

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_2

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_2

    :sswitch_5
    const/16 v0, 0xc

    goto :goto_2

    :sswitch_6
    int-to-char v0, v1

    goto :goto_2

    :cond_6
    int-to-char v0, v1

    goto :goto_2

    :array_0
    .array-data 1
        0x60t
        0x5ct
        0x43t
        0x52t
        0x47t
        0x5bt
        0x5ct
        0x5ct
        0x56t
        0x43t
        0x50t
        0x52t
        0x15t
        0x57t
        0x44t
        0x54t
        0x54t
        0x46t
        0x50t
        0x12t
        0x44t
        0x52t
        0x44t
        0x43t
        0x50t
        0x5ct
        0x54t
        0x52t
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :array_1
    .array-data 1
        0x7et
        0x5ft
        0x40t
        0x57t
        0x58t
        0x5bt
        0x53t
        0x11t
        0x53t
        0x45t
        0x57t
        0x53t
        0x47t
        0x54t
        0x16t
        0x45t
        0x51t
        0x43t
        0x42t
        0x54t
        0x58t
        0x55t
        0x51t
        0x8t
        0x17t
        0x6dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6dt
        0x57t
        0x45t
        0x54t
        0x4bt
        0xct
        0x51t
        0x57t
        0x50t
        0x45t
        0x5ct
        0x5t
        0x18t
        0x5ct
        0x42t
        0x52t
        0x58t
        0x11t
        0x5dt
        0x19t
        0x42t
        0x54t
        0x48t
        0x14t
        0x5dt
        0x57t
        0x52t
        0x54t
        0x19t
        0x0t
        0x4ct
        0x19t
        0x41t
        0x50t
        0x4dt
        0x9t
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x65t
        0x14t
    .end array-data
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ff11be"

    const/16 v2, 0x6eab

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x8t
        0x45t
        0x54t
        0x10t
        0x8t
        0xft
        0x8t
        0x50t
        0x45t
        0x7t
        0x1t
        0x46t
        0x15t
        0x45t
        0x43t
        0xbt
        0xbt
        0x1t
    .end array-data
.end method

.method private skipToEndOfBlockComment()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_1

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    :goto_1
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    goto :goto_1
.end method

.method private skipToEndOfLine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public beginArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1deef6"

    const v4, -0x31be6019

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9b89c3"

    const v4, 0x4ed7d1c0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x74t
        0x1ct
        0x15t
        0x0t
        0x5t
        0x42t
        0x54t
        0x0t
        0x45t
        0x27t
        0x23t
        0x71t
        0x78t
        0x2at
        0x3at
        0x24t
        0x34t
        0x64t
        0x70t
        0x3dt
        0x45t
        0x7t
        0x13t
        0x42t
        0x11t
        0x13t
        0x4t
        0x16t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x3t
        0x4ct
        0x19t
        0x13t
        0x52t
        0x4dt
        0xat
        0x18t
    .end array-data
.end method

.method public beginObject()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a3c3f5"

    const-wide v4, -0x3e238cfd61000000L    # -1.909197436E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9cca16"

    const v4, -0x319acb32

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x24t
        0x4bt
        0x13t
        0x56t
        0x5t
        0x41t
        0x4t
        0x57t
        0x43t
        0x71t
        0x23t
        0x72t
        0x28t
        0x7dt
        0x3ct
        0x7ct
        0x24t
        0x7ft
        0x24t
        0x70t
        0x37t
        0x13t
        0x4t
        0x40t
        0x15t
        0x13t
        0x14t
        0x52t
        0x15t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x2t
        0x17t
        0x41t
        0x41t
        0x57t
        0x4dt
        0xbt
        0x43t
    .end array-data
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public endArray()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0cce87"

    const-wide/32 v4, -0x6a6697a6

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4972ae"

    const v4, 0x4e7ec119

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0x1bt
        0x13t
        0x0t
        0x5bt
        0x43t
        0x55t
        0x7t
        0x43t
        0x20t
        0x76t
        0x73t
        0x6ft
        0x22t
        0x31t
        0x37t
        0x79t
        0x6et
        0x10t
        0x1t
        0x16t
        0x11t
        0x18t
        0x40t
        0x51t
        0x10t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x58t
        0x43t
        0x12t
        0x11t
        0x4t
        0x40t
        0x51t
        0x17t
    .end array-data
.end method

.method public endObject()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0f84eb"

    const-wide/32 v4, -0x4fb7fb17

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "455990"

    const-wide/32 v4, -0xa7dd0b2

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x1et
        0x48t
        0x51t
        0x6t
        0x16t
        0x55t
        0x2t
        0x18t
        0x71t
        0x2bt
        0x26t
        0x6ft
        0x29t
        0x7at
        0x7et
        0x20t
        0x21t
        0x64t
        0x46t
        0x5at
        0x41t
        0x11t
        0x42t
        0x47t
        0x7t
        0x4bt
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x54t
        0x41t
        0x19t
        0x49t
        0x51t
        0x40t
        0x5dt
        0x15t
    .end array-data
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "9de309"

    invoke-static {v4, v5, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "87967d"

    const-wide v4, 0x41d6bbcad5800000L    # 1.525623638E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x7ct
        0x1ct
        0x15t
        0x56t
        0x53t
        0x4dt
        0x5ct
        0x0t
        0x45t
        0x52t
        0x10t
        0x5bt
        0x56t
        0xbt
        0x9t
        0x56t
        0x51t
        0x57t
        0x19t
        0x6t
        0x10t
        0x47t
        0x10t
        0x4et
        0x58t
        0x17t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x56t
        0x4dt
        0x16t
        0x47t
        0x5t
        0x4ct
        0x5ft
        0x19t
    .end array-data
.end method

.method public nextDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x1a

    const/16 v4, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x0

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iput v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :cond_2
    :goto_1
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    iget-boolean v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v2, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "79ccc8"

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v3, "031169"

    const-wide/32 v4, 0x6cb34602

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-ne v0, v7, :cond_5

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-eq v0, v4, :cond_2

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "daa85b"

    const-wide v4, -0x3e25d438a0c00000L    # -1.756306813E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "29a15b"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    const-string v3, "cca356"

    const-wide v4, -0x3e2973693d800000L    # -1.513249546E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_5

    const-string v3, "88a907"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iput v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x7dt
        0x6at
        0x2ct
        0x2dt
        0x43t
        0x5et
        0x58t
        0x4bt
        0x1t
        0xat
        0x7t
        0x4bt
        0x17t
        0x77t
        0x2t
        0x2dt
        0x43t
        0x59t
        0x59t
        0x5dt
        0x43t
        0xat
        0xdt
        0x5et
        0x5et
        0x57t
        0xat
        0x17t
        0xat
        0x5dt
        0x44t
        0x3t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x52t
        0x45t
        0x11t
        0x46t
        0x58t
        0x44t
        0x5bt
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x21t
        0x19t
        0x11t
        0x5dt
        0x56t
        0x16t
        0x1t
        0x5t
        0x41t
        0x59t
        0x15t
        0x6t
        0xbt
        0x14t
        0x3t
        0x54t
        0x50t
        0x42t
        0x6t
        0x14t
        0x15t
        0x18t
        0x42t
        0x3t
        0x17t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x58t
        0x15t
        0x11t
        0x45t
        0x3t
        0x46t
        0x51t
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x26t
        0x1bt
        0x11t
        0x56t
        0x56t
        0x42t
        0x6t
        0x7t
        0x41t
        0x52t
        0x15t
        0x52t
        0xct
        0x16t
        0x3t
        0x5ft
        0x50t
        0x16t
        0x1t
        0x16t
        0x15t
        0x13t
        0x42t
        0x57t
        0x10t
        0x43t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x18t
        0x59t
        0x15t
        0x19t
        0x40t
        0x56t
        0x4ct
        0x50t
        0x41t
    .end array-data
.end method

.method public nextInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xb

    const/16 v8, 0x18

    const/4 v7, 0x0

    const/16 v6, 0x9

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "527287"

    const/16 v4, 0x47b9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "e7a485"

    const/16 v4, 0x3510

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :cond_3
    :goto_1
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_8

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "4c008e"

    const-wide/32 v4, 0x13b438c8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "7e3521"

    const-wide/32 v4, 0x57cdaa2a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eq v0, v6, :cond_5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    :cond_5
    if-ne v0, v6, :cond_6

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eq v0, v4, :cond_3

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [B

    fill-array-data v2, :array_4

    const-string v3, "d881c2"

    const-wide v4, 0x41d431a1db800000L    # 1.355188078E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "293164"

    const/16 v4, 0x5fcd

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [B

    fill-array-data v2, :array_6

    const-string v3, "d77bee"

    const-wide/32 v4, 0x798608b9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_7

    const-string v3, "baaeb0"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x70t
        0x4at
        0x47t
        0x57t
        0x5bt
        0x43t
        0x50t
        0x56t
        0x17t
        0x53t
        0x56t
        0x17t
        0x5ct
        0x5ct
        0x43t
        0x12t
        0x5at
        0x42t
        0x41t
        0x12t
        0x40t
        0x53t
        0x4bt
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x56t
        0x15t
        0x14t
        0x48t
        0x54t
        0x11t
        0x5ft
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x1bt
        0x40t
        0x55t
        0x5bt
        0x11t
        0x51t
        0x7t
        0x10t
        0x51t
        0x56t
        0x45t
        0x5dt
        0xdt
        0x44t
        0x10t
        0x5at
        0x10t
        0x40t
        0x43t
        0x47t
        0x51t
        0x4bt
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        0x4t
        0x47t
        0x15t
        0x42t
        0x50t
        0x43t
        0xdt
        0x13t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x21t
        0x40t
        0x48t
        0x54t
        0x0t
        0x46t
        0x1t
        0x5ct
        0x18t
        0x50t
        0xdt
        0x12t
        0xdt
        0x56t
        0x4ct
        0x11t
        0x1t
        0x47t
        0x10t
        0x18t
        0x4ft
        0x50t
        0x10t
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x12t
        0x58t
        0x47t
        0x11t
        0x46t
        0x55t
        0x46t
        0x51t
        0x13t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x21t
        0x4ft
        0x47t
        0x7t
        0x6t
        0x11t
        0x1t
        0x53t
        0x17t
        0x3t
        0xbt
        0x45t
        0xdt
        0x59t
        0x43t
        0x42t
        0x7t
        0x10t
        0x10t
        0x17t
        0x40t
        0x3t
        0x16t
        0x45t
    .end array-data

    :array_7
    .array-data 1
        0x42t
        0x0t
        0x15t
        0x45t
        0x12t
        0x51t
        0x16t
        0x9t
        0x41t
    .end array-data
.end method

.method public nextName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0a87ba"

    const/16 v4, -0x6a42

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "fa31ad"

    const-wide v4, 0x41c69a76af000000L    # 7.58443358E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x19t
        0x48t
        0x52t
        0x1t
        0x15t
        0x55t
        0x5t
        0x18t
        0x56t
        0x42t
        0xft
        0x51t
        0xct
        0x5dt
        0x17t
        0x0t
        0x14t
        0x44t
        0x41t
        0x4ft
        0x56t
        0x11t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x0t
        0x47t
        0x11t
        0x11t
        0x5t
        0x12t
        0x9t
        0x13t
    .end array-data
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    const/4 v4, 0x1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_1
    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0f5e1c"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "548587"

    const-wide v4, 0x41ba59f8a2000000L    # 4.4210397E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0x1et
        0x45t
        0x0t
        0x52t
        0x17t
        0x55t
        0x2t
        0x15t
        0x4t
        0x11t
        0x10t
        0x44t
        0x14t
        0x5ct
        0xbt
        0x56t
        0x43t
        0x52t
        0x13t
        0x41t
        0x45t
        0x46t
        0x2t
        0x43t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x55t
        0x4ct
        0x15t
        0x48t
        0x56t
        0x41t
        0x5ct
        0x18t
    .end array-data
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xf

    const/4 v1, -0x1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    if-le v0, v4, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v2, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v0, v2}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    goto :goto_0
.end method

.method public skipName()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "47952d"

    const/16 v4, -0x3d56

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "9e610c"

    const-wide/32 v4, 0x728f116b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    :cond_2
    :goto_0
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "ca8eeb"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "8ffa4a"

    const/16 v4, 0x2382

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "0e4807"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        0x56t
        0x57t
        0x5bt
        0x5dt
        0x10t
        0x14t
        0x44t
        0x52t
        0x5ct
        0x42t
        0x44t
        0x41t
        0x59t
        0x5ct
        0x4dt
        0x42t
        0x1t
        0x57t
        0x43t
        0x5ct
        0x51t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        0x4t
        0x42t
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0x14t
        0x54t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x7dt
        0x1et
        0x16t
        0x4t
        0x57t
        0x15t
        0x5dt
        0x2t
        0x46t
        0x0t
        0x14t
        0xft
        0x59t
        0xbt
        0x3t
        0x41t
        0x56t
        0x14t
        0x4ct
        0x46t
        0x11t
        0x0t
        0x47t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x10t
        0x4t
        0x40t
        0x18t
        0x40t
        0x56t
        0x44t
        0xdt
        0x14t
    .end array-data
.end method

.method public skipValue()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/16 v7, 0x19

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/16 v8, 0x9

    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "424555"

    const-wide/32 v4, 0x74ec58eb

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "5feabd"

    const-wide/32 v4, -0x1ceb5bf9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :cond_1
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_0
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "0d7985"

    const-wide v4, -0x3e49e52155000000L    # -3.70859691E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    :cond_4
    if-ne v2, v9, :cond_5

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ne v2, v6, :cond_7

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "63d8e0"

    const-wide v4, -0x3e3b8fcd2e800000L    # -6.85794723E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v8, [B

    fill-array-data v2, :array_4

    const-string v3, "143ef1"

    const/16 v4, -0x496

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_8

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [B

    fill-array-data v3, :array_5

    const-string v4, "d43d04"

    const-wide/32 v6, -0x524db109

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v8, [B

    fill-array-data v3, :array_6

    const-string v4, "6745c2"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xe

    if-eq v2, v3, :cond_a

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto/16 :goto_0

    :cond_b
    if-eq v2, v8, :cond_c

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    :cond_c
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    const/16 v3, 0xc

    if-ne v2, v3, :cond_f

    :cond_e
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_7

    const-string v3, "769fe8"

    const/16 v4, -0x4a4a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v8, [B

    fill-array-data v2, :array_8

    const-string v3, "4bccc9"

    const/16 v4, 0x1e51

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x77t
        0x53t
        0x5at
        0x5bt
        0x5at
        0x41t
        0x14t
        0x41t
        0x5ft
        0x5ct
        0x45t
        0x15t
        0x41t
        0x5ct
        0x51t
        0x4dt
        0x45t
        0x50t
        0x57t
        0x46t
        0x51t
        0x51t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x7t
        0x11t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x5et
        0x11t
        0x5bt
        0x55t
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x4bt
        0x14t
        0x5dt
        0x6t
        0x44t
        0x53t
        0x57t
        0x44t
        0x59t
        0x45t
        0x46t
        0x57t
        0x5ft
        0x11t
        0x5dt
        0x45t
        0x52t
        0x43t
        0x47t
        0x44t
        0x4ft
        0x4t
        0x43t
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0x55t
        0x47t
        0x45t
        0x16t
        0x50t
        0x45t
        0x5ct
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x21t
        0x4ct
        0x43t
        0x1t
        0x53t
        0x40t
        0x1t
        0x50t
        0x13t
        0x5t
        0x10t
        0x42t
        0x5t
        0x58t
        0x46t
        0x1t
        0x10t
        0x56t
        0x11t
        0x40t
        0x13t
        0x13t
        0x51t
        0x47t
        0x44t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x16t
        0x56t
        0x40t
        0x15t
        0x13t
        0x53t
        0x42t
        0x5ft
        0x14t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x72t
        0x4et
        0x49t
        0x3t
        0x6t
        0x4ct
        0x52t
        0x52t
        0x19t
        0x7t
        0x45t
        0x4et
        0x56t
        0x5at
        0x4ct
        0x3t
        0x45t
        0x5at
        0x42t
        0x42t
        0x19t
        0x11t
        0x4t
        0x4bt
        0x17t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x14t
        0x3t
        0x17t
        0x43t
        0x13t
        0x58t
        0x40t
        0xat
        0x43t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4a805c"

    const-wide v4, 0x41d0e221a6800000L    # 1.133020826E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [B

    const/4 v2, 0x0

    const/16 v3, 0x1d

    aput-byte v3, v1, v2

    const-string v2, "41e860"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x7et
        0x12t
        0x57t
        0x5et
        0x67t
        0x6t
        0x55t
        0x5t
        0x5dt
        0x42t
        0x1dt
    .end array-data
.end method
