.class Lcom/google/gson/internal/ConstructorConstructor$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
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

.field private final unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

.field final val$rawType:Ljava/lang/Class;

.field final val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->this$0:Lcom/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/gson/internal/UnsafeAllocator;->create()Lcom/google/gson/internal/UnsafeAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x29

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "de6ae3"

    const-wide/32 v6, -0x3c379679

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "b876a9"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x31t
        0xbt
        0x57t
        0x3t
        0x9t
        0x56t
        0x44t
        0x11t
        0x59t
        0x41t
        0xct
        0x5dt
        0x12t
        0xat
        0x5dt
        0x4t
        0x45t
        0x5dt
        0xbt
        0x48t
        0x57t
        0x13t
        0x2t
        0x40t
        0x44t
        0x6t
        0x59t
        0xft
        0x16t
        0x47t
        0x16t
        0x10t
        0x55t
        0x15t
        0xat
        0x41t
        0x44t
        0x3t
        0x59t
        0x13t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ct
        0x18t
        0x65t
        0x53t
        0x6t
        0x50t
        0x11t
        0x4ct
        0x52t
        0x44t
        0x8t
        0x57t
        0x5t
        0x18t
        0x56t
        0x58t
        0x41t
        0x70t
        0xct
        0x4bt
        0x43t
        0x57t
        0xft
        0x5at
        0x7t
        0x7bt
        0x45t
        0x53t
        0x0t
        0x4dt
        0xdt
        0x4at
        0x17t
        0x41t
        0x8t
        0x4dt
        0xat
        0x18t
        0x70t
        0x45t
        0xet
        0x57t
        0x42t
        0x5et
        0x58t
        0x44t
        0x41t
        0x4dt
        0xat
        0x51t
        0x44t
        0x16t
        0x15t
        0x40t
        0x12t
        0x5dt
        0x17t
        0x5bt
        0x0t
        0x40t
        0x42t
        0x5et
        0x5et
        0x4et
        0x41t
        0x4dt
        0xat
        0x51t
        0x44t
        0x16t
        0x11t
        0x4bt
        0xdt
        0x5at
        0x5bt
        0x53t
        0xct
        0x17t
    .end array-data
.end method
