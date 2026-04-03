.class Lcom/google/gson/internal/bind/TypeAdapters$34;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters;->newFactoryForMultipleTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$base:Ljava/lang/Class;

.field final val$sub:Ljava/lang/Class;

.field final val$typeAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$base:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$sub:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$base:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$sub:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5083b4"

    const-wide v4, 0x41bb503f28000000L    # 4.5824388E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$base:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [B

    const/16 v2, 0x12

    aput-byte v2, v1, v7

    const-string v2, "9f6087"

    const v3, -0x31653e07

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$sub:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1dcc96"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$34;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [B

    const/16 v2, 0x6c

    aput-byte v2, v1, v7

    const-string v2, "16a7df"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x73t
        0x51t
        0x5bt
        0x47t
        0xdt
        0x46t
        0x4ct
        0x6bt
        0x4ct
        0x4at
        0x12t
        0x51t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1dt
        0x5t
        0x7t
        0x2t
        0x49t
        0x42t
        0x54t
        0x16t
        0x5et
    .end array-data
.end method
