.class public Landroidx/activity/result/contract/ActivityResultContracts$GetContent;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
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

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "53dc7d"

    const v3, 0x4eca5bd8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5122e6"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x54t
        0x5dt
        0x0t
        0x11t
        0x58t
        0xdt
        0x51t
        0x1dt
        0xdt
        0xdt
        0x43t
        0x1t
        0x5bt
        0x47t
        0x4at
        0x2t
        0x54t
        0x10t
        0x5ct
        0x5ct
        0xat
        0x4dt
        0x70t
        0x21t
        0x61t
        0x6ct
        0x27t
        0x2ct
        0x79t
        0x30t
        0x70t
        0x7dt
        0x30t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x5ft
        0x56t
        0x40t
        0xat
        0x5ft
        0x51t
        0x1ft
        0x5bt
        0x5ct
        0x11t
        0x53t
        0x5bt
        0x45t
        0x1ct
        0x51t
        0x4t
        0x42t
        0x50t
        0x56t
        0x5dt
        0x40t
        0x1ct
        0x18t
        0x7at
        0x61t
        0x77t
        0x7ct
        0x24t
        0x74t
        0x79t
        0x74t
    .end array-data
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;->getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public final getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final parseResult(ILandroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;->parseResult(ILandroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
