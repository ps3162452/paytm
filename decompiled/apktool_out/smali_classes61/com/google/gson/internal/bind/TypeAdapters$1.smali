.class Lcom/google/gson/internal/bind/TypeAdapters$1;
.super Lcom/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x4e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "470a1f"

    const-wide/32 v4, -0x6f57cf38

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0x43t
        0x44t
        0x4t
        0x5ct
        0x16t
        0x40t
        0x52t
        0x54t
        0x41t
        0x45t
        0x9t
        0x14t
        0x53t
        0x55t
        0x12t
        0x54t
        0x14t
        0x5dt
        0x56t
        0x5ct
        0x8t
        0x4bt
        0x3t
        0x14t
        0x56t
        0x10t
        0xbt
        0x50t
        0x10t
        0x55t
        0x19t
        0x5ct
        0x0t
        0x5ft
        0x1t
        0x1at
        0x74t
        0x5ct
        0x0t
        0x42t
        0x15t
        0x1at
        0x17t
        0x76t
        0xet
        0x43t
        0x1t
        0x5bt
        0x43t
        0x10t
        0x15t
        0x5et
        0x46t
        0x46t
        0x52t
        0x57t
        0x8t
        0x42t
        0x12t
        0x51t
        0x45t
        0x10t
        0x0t
        0x11t
        0x12t
        0x4dt
        0x47t
        0x55t
        0x41t
        0x50t
        0x2t
        0x55t
        0x47t
        0x44t
        0x4t
        0x43t
        0x59t
    .end array-data
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$1;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4adb7f"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "335ad2"

    const v4, -0x3203ee06

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x15t
        0x10t
        0x7t
        0x5at
        0x16t
        0x40t
        0x4t
        0x0t
        0x42t
        0x43t
        0x9t
        0x14t
        0x12t
        0x1t
        0x10t
        0x5et
        0x7t
        0x58t
        0x8t
        0x1et
        0x7t
        0x17t
        0xct
        0x55t
        0x17t
        0x5t
        0x4ct
        0x5bt
        0x7t
        0x5at
        0x6t
        0x4at
        0x21t
        0x5bt
        0x7t
        0x47t
        0x12t
        0x5et
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x1dt
        0x13t
        0x73t
        0xet
        0x16t
        0x55t
        0x5ct
        0x47t
        0x15t
        0x15t
        0xbt
        0x12t
        0x41t
        0x56t
        0x52t
        0x8t
        0x17t
        0x46t
        0x56t
        0x41t
        0x15t
        0x0t
        0x44t
        0x46t
        0x4at
        0x43t
        0x50t
        0x41t
        0x5t
        0x56t
        0x52t
        0x43t
        0x41t
        0x4t
        0x16t
        0xdt
    .end array-data
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$1;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V

    return-void
.end method
