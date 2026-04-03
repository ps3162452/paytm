.class Landroidx/core/app/ActivityRecreator$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityRecreator;->queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activityThread:Ljava/lang/Object;

.field final val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "bcdbb5"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$3;->val$activityThread:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$3;->val$token:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "3f14f7"

    const/16 v4, 0x47a2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    throw v0

    :catchall_0
    move-exception v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "28793a"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "176a05"

    const-wide v4, -0x3e22d0a6d3c00000L    # -1.958569137E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x23t
        0x13t
        0x14t
        0x21t
        0xdt
        0x58t
        0x12t
        0x2t
        0x10t
        0x42t
        0x10t
        0x50t
        0x1t
        0x11t
        0x1t
        0x3t
        0x16t
        0x5ct
        0xdt
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x8t
        0x50t
        0x56t
        0xat
        0x52t
        0x13t
        0x12t
        0x5et
        0x14t
        0x15t
        0x43t
        0x5ct
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x73t
        0x5bt
        0x43t
        0x50t
        0x45t
        0x8t
        0x46t
        0x41t
        0x65t
        0x5ct
        0x50t
        0x13t
        0x57t
        0x59t
        0x43t
        0x56t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x4ft
        0x55t
        0x4t
        0x40t
        0x41t
        0x58t
        0x58t
        0x58t
        0x41t
        0x47t
        0x5dt
        0x58t
        0x5bt
        0x53t
        0x41t
        0x59t
        0x5bt
        0x47t
        0x58t
        0x5dt
        0x8t
        0x5et
        0x52t
        0x11t
        0x47t
        0x53t
        0x13t
        0x56t
        0x5at
        0x43t
        0x5at
        0x65t
        0x15t
        0x5ft
        0x45t
        0x70t
        0x54t
        0x42t
        0x8t
        0x46t
        0x5ct
        0x45t
        0x4et
    .end array-data
.end method
