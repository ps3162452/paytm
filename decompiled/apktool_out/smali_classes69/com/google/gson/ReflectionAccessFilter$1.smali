.class Lcom/google/gson/ReflectionAccessFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/ReflectionAccessFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ReflectionAccessFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gson/ReflectionAccessFilter$FilterResult;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isJavaType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6afd5b"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x4t
        0x0t
        0x8t
        0x50t
        0x1t
        0x42t
        0x8t
        0x9t
        0xat
        0x74t
        0x1t
        0x55t
        0x4t
        0x15t
        0x17t
        0x73t
        0xbt
        0x5at
        0x15t
        0x3t
        0x16t
        0x16t
        0x20t
        0x7at
        0x2et
        0x25t
        0x2ft
        0x6at
        0x2bt
        0x78t
        0x20t
        0x25t
        0x27t
        0x70t
        0x31t
        0x65t
        0x28t
        0x24t
        0x28t
        0x70t
        0x3dt
        0x7ct
        0x20t
        0x30t
        0x25t
    .end array-data
.end method
