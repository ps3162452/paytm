.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x40

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "74aa09"

    const-wide/32 v4, 0x27d1e87b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    aget v1, v2, v0

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0x5at
        0x5t
        0x13t
        0x5ft
        0x50t
        0x53t
        0x4ct
        0x4ft
        0x0t
        0x53t
        0x4dt
        0x5et
        0x42t
        0x8t
        0x15t
        0x49t
        0x17t
        0x45t
        0x51t
        0x12t
        0x14t
        0x5ct
        0x4dt
        0x19t
        0x57t
        0xet
        0xft
        0x44t
        0x4bt
        0x56t
        0x57t
        0x15t
        0x4ft
        0x55t
        0x41t
        0x43t
        0x46t
        0x0t
        0x4ft
        0x60t
        0x7ct
        0x65t
        0x79t
        0x28t
        0x32t
        0x63t
        0x70t
        0x78t
        0x7at
        0x3et
        0x26t
        0x62t
        0x78t
        0x79t
        0x60t
        0x3et
        0x33t
        0x75t
        0x6at
        0x62t
        0x78t
        0x35t
        0x32t
    .end array-data
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
