.class public Lcom/google/gson/internal/ReflectionAccessFilterHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getFilterResult(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/ReflectionAccessFilter;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gson/ReflectionAccessFilter$FilterResult;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ReflectionAccessFilter;

    invoke-interface {v0, p1}, Lcom/google/gson/ReflectionAccessFilter;->check(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    move-result-object v0

    sget-object v2, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    if-eq v0, v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    goto :goto_0
.end method

.method public static isAndroidType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isAndroidType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isAndroidType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a70dba"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "5cb60e"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isJavaType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :array_0
    .array-data 1
        0x0t
        0x59t
        0x54t
        0x16t
        0xdt
        0x8t
        0x5t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0xdt
        0x6t
        0x44t
        0x5ft
        0xct
        0x51t
        0x1bt
        0x4ct
    .end array-data
.end method

.method public static isAnyPlatformType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isAndroidType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "542530"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "2258e4"

    invoke-static {v3, v4, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d2f1dd"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x5et
        0x5bt
        0x46t
        0x59t
        0x5at
        0x5et
        0x1bt
    .end array-data

    :array_1
    .array-data 1
        0x59t
        0x5dt
        0x41t
        0x54t
        0xct
        0x5at
        0x4at
        0x1ct
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x51t
        0x7t
        0x5dt
        0x5t
        0x4at
    .end array-data
.end method

.method public static isJavaType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isJavaType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isJavaType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b4491"

    const/16 v3, -0x37c8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6a4a78"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x3t
        0x42t
        0x55t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ct
        0x0t
        0x42t
        0x0t
        0x4ft
        0x16t
    .end array-data
.end method
