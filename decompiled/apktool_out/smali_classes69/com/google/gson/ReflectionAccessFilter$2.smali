.class Lcom/google/gson/ReflectionAccessFilter$2;
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

    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "97c29f"

    const-wide v2, 0x41d2e0b567000000L    # 1.266865564E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x52t
        0x5t
        0x5et
        0x5ct
        0x5t
        0x4dt
        0x5et
        0xct
        0x5ct
        0x78t
        0x5t
        0x5at
        0x52t
        0x10t
        0x41t
        0x7ft
        0xft
        0x55t
        0x43t
        0x6t
        0x40t
        0x1at
        0x24t
        0x75t
        0x78t
        0x20t
        0x79t
        0x66t
        0x27t
        0x75t
        0x7bt
        0x3ct
        0x78t
        0x78t
        0x30t
        0x78t
    .end array-data
.end method
