.class Lcom/google/gson/ReflectionAccessFilter$3;
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

    invoke-static {p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isAndroidType(Ljava/lang/Class;)Z

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c2b144"

    const/16 v2, 0x295a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x31t
        0x57t
        0x4t
        0x5dt
        0x51t
        0x57t
        0x17t
        0x5bt
        0xdt
        0x5ft
        0x75t
        0x57t
        0x0t
        0x57t
        0x11t
        0x42t
        0x72t
        0x5dt
        0xft
        0x46t
        0x7t
        0x43t
        0x17t
        0x76t
        0x2ft
        0x7dt
        0x21t
        0x7at
        0x6bt
        0x75t
        0x2ft
        0x7et
        0x3dt
        0x70t
        0x7at
        0x70t
        0x31t
        0x7dt
        0x2bt
        0x75t
    .end array-data
.end method
