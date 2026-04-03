.class Lcom/google/gson/internal/ConstructorConstructor$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/gson/internal/ConstructorConstructor;

.field final val$rawType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$19;->this$0:Lcom/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$19;->val$rawType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$19;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "fc5309"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/internal/ConstructorConstructor$19;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x76

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9dc341"

    const-wide v4, -0x3e3ad5bf44000000L    # -7.1018124E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x33t
        0xdt
        0x54t
        0x51t
        0x5ct
        0x5ct
        0x46t
        0x17t
        0x5at
        0x13t
        0x53t
        0x4bt
        0x3t
        0x2t
        0x41t
        0x56t
        0x10t
        0x50t
        0x8t
        0x10t
        0x41t
        0x52t
        0x5et
        0x5at
        0x3t
        0x43t
        0x5at
        0x55t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x44t
        0x31t
        0x56t
        0x53t
        0x58t
        0x4at
        0x10t
        0x6t
        0x41t
        0x5dt
        0x5ft
        0x5et
        0x44t
        0x2t
        0x5dt
        0x14t
        0x78t
        0x57t
        0x17t
        0x17t
        0x52t
        0x5at
        0x52t
        0x5ct
        0x27t
        0x11t
        0x56t
        0x55t
        0x45t
        0x56t
        0x16t
        0x43t
        0x5ct
        0x46t
        0x11t
        0x58t
        0x44t
        0x37t
        0x4at
        0x44t
        0x54t
        0x78t
        0x0t
        0x2t
        0x43t
        0x40t
        0x54t
        0x4bt
        0x44t
        0x5t
        0x5ct
        0x46t
        0x11t
        0x4dt
        0xct
        0xat
        0x40t
        0x14t
        0x45t
        0x40t
        0x14t
        0x6t
        0x1ft
        0x14t
        0x5et
        0x4bt
        0x44t
        0x2t
        0x57t
        0x50t
        0x58t
        0x57t
        0x3t
        0x43t
        0x52t
        0x14t
        0x5ft
        0x56t
        0x49t
        0x2t
        0x41t
        0x53t
        0x42t
        0x19t
        0x7t
        0xct
        0x5dt
        0x47t
        0x45t
        0x4bt
        0x11t
        0x0t
        0x47t
        0x5bt
        0x43t
        0x19t
        0x9t
        0x2t
        0x4at
        0x14t
        0x57t
        0x50t
        0x1ct
        0x43t
        0x47t
        0x5ct
        0x58t
        0x4at
        0x44t
        0x13t
        0x41t
        0x5bt
        0x53t
        0x55t
        0x1t
        0xet
        0x1dt
    .end array-data
.end method
