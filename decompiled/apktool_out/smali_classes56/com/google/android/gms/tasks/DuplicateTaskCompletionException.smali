.class public final Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;
.super Ljava/lang/IllegalStateException;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static of(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<*>;)",
            "Ljava/lang/IllegalStateException;"
        }
    .end annotation

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "15924c"

    const/16 v3, 0xab1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    const-string v1, "4ebd02"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c41193"

    const v5, -0x31c4b430    # -7.8557696E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    const-string v1, "030125"

    const v3, -0x311e3ab2

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "d86389"

    const/16 v3, -0x242d

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "e747b2"

    const/16 v3, 0x5093

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x75t
        0x40t
        0x49t
        0x5et
        0x5dt
        0x0t
        0x50t
        0x41t
        0x5ct
        0x66t
        0x55t
        0x10t
        0x5at
        0x76t
        0x56t
        0x5ft
        0x44t
        0xft
        0x54t
        0x41t
        0x50t
        0x5dt
        0x5at
        0x26t
        0x49t
        0x56t
        0x5ct
        0x42t
        0x40t
        0xat
        0x5et
        0x5bt
        0x19t
        0x51t
        0x55t
        0xdt
        0x11t
        0x5at
        0x57t
        0x5et
        0x4dt
        0x43t
        0x53t
        0x50t
        0x19t
        0x51t
        0x46t
        0x6t
        0x50t
        0x41t
        0x5ct
        0x56t
        0x14t
        0x5t
        0x43t
        0x5at
        0x54t
        0x12t
        0x57t
        0xct
        0x5ct
        0x45t
        0x55t
        0x57t
        0x40t
        0x6t
        0x55t
        0x15t
        0x6dt
        0x53t
        0x47t
        0x8t
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x4t
        0xbt
        0x8t
        0x45t
        0x40t
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x5bt
        0x5ct
        0x41t
        0x55t
        0x56t
        0x17t
        0x51t
        0x11t
        0x46t
        0x50t
        0x47t
        0xbt
        0xet
        0x11t
    .end array-data

    :array_3
    .array-data 1
        0x42t
        0x56t
        0x43t
        0x44t
        0x5et
        0x41t
        0x10t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x59t
        0x58t
        0x50t
        0x5dt
        0x55t
        0x8t
        0x59t
        0x42t
        0x5at
        0x57t
        0x57t
    .end array-data

    :array_5
    .array-data 1
        0x10t
        0x59t
        0x5ft
        0x59t
        0xdt
        0x45t
        0xbt
        0x17t
        0x5dt
        0x44t
        0x11t
        0x47t
        0x0t
    .end array-data
.end method
