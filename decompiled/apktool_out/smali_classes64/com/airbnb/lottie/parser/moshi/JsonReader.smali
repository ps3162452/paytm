.class public abstract Lcom/airbnb/lottie/parser/moshi/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;,
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    }
.end annotation


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field failOnUnknown:Z

.field lenient:Z

.field pathIndices:[I

.field pathNames:[Ljava/lang/String;

.field scopes:[I

.field stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "a10fed"

    const/16 v5, -0x2f3e

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    new-array v3, v8, [B

    fill-array-data v3, :array_1

    const-string v4, "b7b945"

    const-wide/32 v6, 0x238640dd

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "2c16a0"

    invoke-static {v3, v4, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v3, v8, [B

    fill-array-data v3, :array_3

    const-string v4, "b053b4"

    const v5, 0x4ee2347b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    new-array v3, v8, [B

    fill-array-data v3, :array_4

    const-string v4, "8cb98a"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v2, v8, [B

    fill-array-data v2, :array_5

    const-string v3, "9feccd"

    const-wide v4, 0x41c8aca4e8000000L    # 8.27935184E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    new-array v2, v8, [B

    fill-array-data v2, :array_6

    const-string v3, "b40351"

    const/16 v4, -0x45be

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v8, [B

    fill-array-data v2, :array_7

    const-string v3, "ff3c99"

    const-wide/32 v4, -0x67a2bf26

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    nop

    :array_0
    .array-data 1
        0x3dt
        0x44t
        0x15t
        0x56t
        0x51t
        0x1ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3et
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6et
        0x3ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3et
        0x44t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x64t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x65t
        0x8t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x3et
        0x46t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x3at
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    return-void
.end method

.method static synthetic access$000(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    return-void
.end method

.method public static of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method private static string(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x22

    const/4 v7, 0x6

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-interface {p0, v10}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x80

    if-ge v1, v6, :cond_1

    aget-object v1, v4, v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v6, 0x2028

    if-ne v1, v6, :cond_4

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v6, "bc26d4"

    invoke-static {v1, v6, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    if-ge v0, v2, :cond_3

    invoke-interface {p0, p1, v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_3
    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v6, 0x2029

    if-ne v1, v6, :cond_0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v6, "bbb699"

    const-wide v8, -0x3e3813ac2b000000L    # -8.0272785E8

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    if-ge v0, v5, :cond_6

    invoke-interface {p0, p1, v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_6
    invoke-interface {p0, v10}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void

    nop

    :array_0
    .array-data 1
        0x3et
        0x16t
        0x0t
        0x6t
        0x56t
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3et
        0x17t
        0x50t
        0x6t
        0xbt
        0x0t
    .end array-data
.end method


# virtual methods
.method public abstract beginArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beginObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonScope;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract hasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextBoolean()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final pushScope(I)V
    .locals 5

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a1daba"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x54t
        0x17t
        0x15t
        0xbt
        0xft
        0x6t
        0x11t
        0x10t
        0xet
        0xdt
        0x41t
        0x5t
        0x54t
        0x1t
        0x11t
        0x42t
        0x0t
        0x15t
        0x11t
    .end array-data
.end method

.method public abstract selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipName()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipValue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "69f1ee"

    const-wide/32 v4, -0x4f0b4976

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x16t
        0x58t
        0x12t
        0x11t
        0x15t
        0x4t
        0x42t
        0x51t
        0x46t
    .end array-data
.end method
