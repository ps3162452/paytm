.class Lcom/google/gson/internal/ConstructorConstructor$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
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

.field final val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->this$0:Lcom/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/16 v3, 0x11

    const/16 v6, 0xd

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "cc8fce"

    const v5, -0x319aea14

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    const-string v4, "ba86fb"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f8a002"

    const v5, 0x4dc2644b    # 4.076691E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [B

    fill-array-data v3, :array_3

    const-string v4, "69ff07"

    const-wide v6, 0x41858a0020000000L    # 4.5170692E7

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x25t
        0x2t
        0x51t
        0xat
        0x6t
        0x1t
        0x43t
        0x17t
        0x57t
        0x46t
        0xat
        0xbt
        0x15t
        0xct
        0x53t
        0x3t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x16t
        0x51t
        0x42t
        0xet
        0x42t
        0xct
        0xet
        0x18t
        0x57t
        0x14t
        0x5t
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x59t
        0x8t
        0x5ct
        0x55t
        0x56t
        0x46t
        0x4ct
        0xet
        0x10t
        0x59t
        0x5ct
        0x10t
        0x57t
        0xat
        0x55t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        0x4et
        0xft
        0x12t
        0x58t
        0x17t
        0x58t
        0x56t
        0x46t
        0x7t
        0x42t
        0x50t
        0x45t
    .end array-data
.end method
