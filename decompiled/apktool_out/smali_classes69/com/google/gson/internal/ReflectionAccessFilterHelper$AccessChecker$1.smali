.class Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$1;
.super Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$canAccessMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$1;->val$canAccessMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;-><init>(Lcom/google/gson/internal/ReflectionAccessFilterHelper$1;)V

    return-void
.end method


# virtual methods
.method public canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$1;->val$canAccessMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2ca04a"

    const-wide v4, 0x41a839f952000000L    # 2.03226281E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x74t
        0x2t
        0x8t
        0x5ct
        0x51t
        0x5t
        0x12t
        0xat
        0xft
        0x46t
        0x5bt
        0xat
        0x5bt
        0xdt
        0x6t
        0x10t
        0x57t
        0x0t
        0x5ct
        0x22t
        0x2t
        0x53t
        0x51t
        0x12t
        0x41t
    .end array-data
.end method
