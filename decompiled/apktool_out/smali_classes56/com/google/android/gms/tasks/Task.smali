.class public abstract Lcom/google/android/gms/tasks/Task;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "56cef8"

    const-wide v4, 0x41cd2adb47800000L    # 9.78695823E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x54t
        0x52t
        0x7t
        0x2at
        0x8t
        0x7bt
        0x54t
        0x58t
        0x0t
        0x0t
        0xat
        0x5dt
        0x51t
        0x7at
        0xat
        0x16t
        0x12t
        0x5dt
        0x5bt
        0x53t
        0x11t
        0x45t
        0xft
        0x4bt
        0x15t
        0x58t
        0xct
        0x11t
        0x46t
        0x51t
        0x58t
        0x46t
        0xft
        0x0t
        0xbt
        0x5dt
        0x5bt
        0x42t
        0x6t
        0x1t
        0x48t
    .end array-data
.end method

.method public addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b56e79"

    const-wide/32 v4, -0x27f255ab

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x3t
        0x51t
        0x52t
        0x2at
        0x59t
        0x7at
        0x3t
        0x5bt
        0x55t
        0x0t
        0x5bt
        0x5ct
        0x6t
        0x79t
        0x5ft
        0x16t
        0x43t
        0x5ct
        0xct
        0x50t
        0x44t
        0x45t
        0x5et
        0x4at
        0x42t
        0x5bt
        0x59t
        0x11t
        0x17t
        0x50t
        0xft
        0x45t
        0x5at
        0x0t
        0x5at
        0x5ct
        0xct
        0x41t
        0x53t
        0x1t
        0x19t
    .end array-data
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e6242e"

    const-wide/32 v4, 0x7167a08f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x4t
        0x52t
        0x56t
        0x7bt
        0x5ct
        0x26t
        0x4t
        0x58t
        0x51t
        0x51t
        0x5et
        0x0t
        0x1t
        0x7at
        0x5bt
        0x47t
        0x46t
        0x0t
        0xbt
        0x53t
        0x40t
        0x14t
        0x5bt
        0x16t
        0x45t
        0x58t
        0x5dt
        0x40t
        0x12t
        0xct
        0x8t
        0x46t
        0x5et
        0x51t
        0x5ft
        0x0t
        0xbt
        0x42t
        0x57t
        0x50t
    .end array-data
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "836433"

    const-wide v4, 0x41cf98b323000000L    # 1.060202054E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x52t
        0x7bt
        0x5dt
        0x70t
        0x57t
        0x5et
        0x46t
        0x58t
        0x56t
        0x47t
        0x5dt
        0x7ft
        0x5ft
        0x47t
        0x47t
        0x56t
        0x56t
        0x56t
        0x44t
        0x14t
        0x5at
        0x40t
        0x18t
        0x5dt
        0x59t
        0x40t
        0x13t
        0x5at
        0x55t
        0x43t
        0x5at
        0x51t
        0x5et
        0x56t
        0x56t
        0x47t
        0x53t
        0x50t
    .end array-data
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f9a12c"

    const-wide v4, 0x41de2b1bea800000L    # 2.024566698E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7t
        0x5dt
        0x5t
        0x7et
        0x5ct
        0x20t
        0x9t
        0x54t
        0x11t
        0x5dt
        0x57t
        0x17t
        0x3t
        0x75t
        0x8t
        0x42t
        0x46t
        0x6t
        0x8t
        0x5ct
        0x13t
        0x11t
        0x5bt
        0x10t
        0x46t
        0x57t
        0xet
        0x45t
        0x12t
        0xat
        0xbt
        0x49t
        0xdt
        0x54t
        0x5ft
        0x6t
        0x8t
        0x4dt
        0x4t
        0x55t
    .end array-data
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a6dc14"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x52t
        0x0t
        0x2ct
        0x5ft
        0x77t
        0xet
        0x5bt
        0x14t
        0xft
        0x54t
        0x40t
        0x4t
        0x7at
        0xdt
        0x10t
        0x45t
        0x51t
        0xft
        0x53t
        0x16t
        0x43t
        0x58t
        0x47t
        0x41t
        0x58t
        0xbt
        0x17t
        0x11t
        0x5dt
        0xct
        0x46t
        0x8t
        0x6t
        0x5ct
        0x51t
        0xft
        0x42t
        0x1t
        0x7t
    .end array-data
.end method

.method public abstract addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "92370b"

    const-wide/32 v4, 0x1cdffda3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5at
        0x5dt
        0x5dt
        0x43t
        0x59t
        0xct
        0x4ct
        0x57t
        0x64t
        0x5et
        0x44t
        0xat
        0x19t
        0x5bt
        0x40t
        0x17t
        0x5et
        0xdt
        0x4dt
        0x12t
        0x5at
        0x5at
        0x40t
        0xet
        0x5ct
        0x5ft
        0x56t
        0x59t
        0x44t
        0x7t
        0x5dt
    .end array-data
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3f697d"

    const v3, -0x31091ae2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x50t
        0x9t
        0x58t
        0x4dt
        0x5et
        0xat
        0x46t
        0x3t
        0x61t
        0x50t
        0x43t
        0xct
        0x13t
        0xft
        0x45t
        0x19t
        0x59t
        0xbt
        0x47t
        0x46t
        0x5ft
        0x54t
        0x47t
        0x8t
        0x56t
        0xbt
        0x53t
        0x57t
        0x43t
        0x1t
        0x57t
    .end array-data
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9fc5c8"

    const-wide v4, 0x41d6532516000000L    # 1.498190936E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5at
        0x9t
        0xdt
        0x41t
        0xat
        0x56t
        0x4ct
        0x3t
        0x34t
        0x5ct
        0x17t
        0x50t
        0x6dt
        0x7t
        0x10t
        0x5et
        0x43t
        0x51t
        0x4at
        0x46t
        0xdt
        0x5at
        0x17t
        0x18t
        0x50t
        0xbt
        0x13t
        0x59t
        0x6t
        0x55t
        0x5ct
        0x8t
        0x17t
        0x50t
        0x7t
    .end array-data
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a01741"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2t
        0x5ft
        0x5ft
        0x43t
        0x5dt
        0x5ft
        0x14t
        0x55t
        0x66t
        0x5et
        0x40t
        0x59t
        0x35t
        0x51t
        0x42t
        0x5ct
        0x14t
        0x58t
        0x12t
        0x10t
        0x5ft
        0x58t
        0x40t
        0x11t
        0x8t
        0x5dt
        0x41t
        0x5bt
        0x51t
        0x5ct
        0x4t
        0x5et
        0x45t
        0x52t
        0x50t
    .end array-data
.end method

.method public abstract getException()Ljava/lang/Exception;
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isSuccessful()Z
.end method

.method public onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "48538e"

    const/16 v3, -0x5b9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x56t
        0x66t
        0x46t
        0x5bt
        0x6t
        0x51t
        0x4bt
        0x46t
        0x67t
        0x59t
        0x16t
        0x5ft
        0x18t
        0x5ct
        0x40t
        0x18t
        0xbt
        0x5bt
        0x4ct
        0x15t
        0x5at
        0x55t
        0x15t
        0x58t
        0x5dt
        0x58t
        0x56t
        0x56t
        0x11t
        0x51t
        0x5ct
    .end array-data
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "76db50"

    const-wide v4, 0x41d6e08608400000L    # 1.535252513E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x58t
        0x58t
        0x37t
        0x17t
        0x56t
        0x53t
        0x52t
        0x45t
        0x17t
        0x36t
        0x54t
        0x43t
        0x5ct
        0x16t
        0xdt
        0x11t
        0x15t
        0x5et
        0x58t
        0x42t
        0x44t
        0xbt
        0x58t
        0x40t
        0x5bt
        0x53t
        0x9t
        0x7t
        0x5bt
        0x44t
        0x52t
        0x52t
    .end array-data
.end method
