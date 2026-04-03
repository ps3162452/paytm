.class final Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 4

    invoke-direct {p0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fc2a24"

    const/16 v3, -0x6cbc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0xct
        0x50t
        0x12t
        0x51t
        0x5ct
        0x3t
        0x7t
        0x47t
        0xdt
        0x57t
        0x46t
    .end array-data
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v2, Landroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    return-void
.end method
