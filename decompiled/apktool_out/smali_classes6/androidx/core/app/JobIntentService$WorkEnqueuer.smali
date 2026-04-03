.class abstract Landroidx/core/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .locals 6

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    iput p1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "371869"

    const-wide/32 v4, 0x4b6cec83

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "884540"

    const-wide v4, -0x3e3d2ff5f9800000L    # -6.31247885E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x74t
        0x5et
        0x47t
        0x5dt
        0x58t
        0x19t
        0x59t
        0x58t
        0x53t
        0x18t
        0x7ft
        0x7dt
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x51t
        0x47t
        0x15t
        0x50t
        0x59t
        0x5et
        0x5et
        0x51t
        0x47t
        0x51t
        0x5et
        0x4ct
        0x18t
        0x40t
        0x5dt
        0x55t
        0x5et
        0x18t
        0x48t
        0x46t
        0x50t
        0x42t
        0x59t
        0x57t
        0x4dt
        0x47t
        0x15t
    .end array-data
.end method

.method public serviceProcessingFinished()V
    .locals 0

    return-void
.end method

.method public serviceProcessingStarted()V
    .locals 0

    return-void
.end method

.method public serviceStartReceived()V
    .locals 0

    return-void
.end method
