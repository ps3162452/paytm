.class public final Lcom/google/gson/JsonStreamParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v1, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_1
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public next()Lcom/google/gson/JsonElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    const/16 v2, 0x22

    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-static {v0}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonParseException;

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "67eefe"

    const-wide v4, 0x41cd21c022800000L    # 9.77502277E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonParseException;

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ea15c5"

    const-wide v4, 0x41d5f77195c00000L    # 1.474152023E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_1
    throw v0

    :array_0
    .array-data 1
        0x70t
        0x56t
        0xct
        0x9t
        0x3t
        0x1t
        0x16t
        0x47t
        0x4t
        0x17t
        0x15t
        0xct
        0x58t
        0x50t
        0x45t
        0x2ft
        0x35t
        0x2at
        0x78t
        0x17t
        0x16t
        0xat
        0x13t
        0x17t
        0x55t
        0x52t
        0x45t
        0x11t
        0x9t
        0x45t
        0x7ct
        0x44t
        0xat
        0xbt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x23t
        0x0t
        0x58t
        0x59t
        0x6t
        0x51t
        0x45t
        0x11t
        0x50t
        0x47t
        0x10t
        0x5ct
        0xbt
        0x6t
        0x11t
        0x7ft
        0x30t
        0x7at
        0x2bt
        0x41t
        0x42t
        0x5at
        0x16t
        0x47t
        0x6t
        0x4t
        0x11t
        0x41t
        0xct
        0x15t
        0x2ft
        0x12t
        0x5et
        0x5bt
    .end array-data
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->next()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
