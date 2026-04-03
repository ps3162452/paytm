.class Lcom/google/gson/ReflectionAccessFilter$4;
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

    invoke-static {p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isAnyPlatformType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f5b91f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x50t
        0x4t
        0x55t
        0x54t
        0x5t
        0x12t
        0x5ct
        0xdt
        0x57t
        0x70t
        0x5t
        0x5t
        0x50t
        0x11t
        0x4at
        0x77t
        0xft
        0xat
        0x41t
        0x7t
        0x4bt
        0x12t
        0x24t
        0x2at
        0x7at
        0x21t
        0x72t
        0x6et
        0x27t
        0x2at
        0x79t
        0x3dt
        0x69t
        0x7dt
        0x27t
        0x32t
        0x73t
        0x2dt
        0x6bt
        0x7ct
    .end array-data
.end method
