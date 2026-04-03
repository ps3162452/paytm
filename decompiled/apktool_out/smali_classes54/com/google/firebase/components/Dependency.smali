.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final injection:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d0338d"

    const v2, -0x310e4359

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iput p2, p0, Lcom/google/firebase/components/Dependency;->type:I

    iput p3, p0, Lcom/google/firebase/components/Dependency;->injection:I

    return-void

    :array_0
    .array-data 1
        0x2at
        0x45t
        0x5ft
        0x5ft
        0x18t
        0x0t
        0x1t
        0x40t
        0x56t
        0x5dt
        0x5ct
        0x1t
        0xat
        0x53t
        0x4at
        0x13t
        0x59t
        0xat
        0x2dt
        0x5et
        0x47t
        0x56t
        0x4at
        0x2t
        0x5t
        0x53t
        0x56t
        0x1dt
    .end array-data
.end method

.method public static optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/google/firebase/components/Dependency;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Lcom/google/firebase/components/Dependency;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/firebase/components/Dependency;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/firebase/components/Dependency;

    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    iget v2, p1, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    iget v2, p1, Lcom/google/firebase/components/Dependency;->injection:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDirectInjection()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e79b77"

    const/16 v5, -0x5986

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "454b84"

    const-wide v6, 0x41b591799b000000L    # 3.61855387E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v0, v1, :cond_0

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v4, "8fe7f2"

    invoke-static {v0, v4, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "af50c2"

    const-wide/32 v6, -0x444856ec

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v1, [B

    const/16 v4, 0x18

    aput-byte v4, v3, v2

    const-string v2, "e082c8"

    invoke-static {v3, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v4, "be3d0e"

    invoke-static {v0, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v4, "3dc105"

    invoke-static {v0, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x21t
        0x52t
        0x49t
        0x7t
        0x59t
        0x53t
        0x0t
        0x59t
        0x5at
        0x1bt
        0x4ct
        0x56t
        0xbt
        0x7et
        0x57t
        0x16t
        0x52t
        0x45t
        0x3t
        0x56t
        0x5at
        0x7t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x15t
        0x40t
        0x1bt
        0x48t
        0x51t
        0x9t
    .end array-data

    :array_2
    .array-data 1
        0x4at
        0x3t
        0x14t
        0x42t
        0xft
        0x40t
        0x5dt
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x4dt
        0x46t
        0x51t
        0x59t
        0x11t
        0x57t
        0x2t
        0x12t
        0x8t
    .end array-data

    nop

    :array_4
    .array-data 1
        0xdt
        0x15t
        0x47t
        0xdt
        0x5ft
        0xbt
        0x3t
        0x9t
    .end array-data

    :array_5
    .array-data 1
        0x40t
        0x1t
        0x17t
    .end array-data
.end method
