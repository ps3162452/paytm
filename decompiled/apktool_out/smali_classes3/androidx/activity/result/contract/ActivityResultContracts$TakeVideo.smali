.class public Landroidx/activity/result/contract/ActivityResultContracts$TakeVideo;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TakeVideo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "103f85"

    const v3, -0x31116055

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "dadf03"

    const-wide v4, -0x3e48871363000000L    # -3.93800861E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x50t
        0x5et
        0x57t
        0x14t
        0x57t
        0x5ct
        0x55t
        0x1et
        0x5et
        0x3t
        0x5ct
        0x5ct
        0x50t
        0x1et
        0x52t
        0x5t
        0x4ct
        0x5ct
        0x5et
        0x5et
        0x1dt
        0x30t
        0x71t
        0x71t
        0x74t
        0x7ft
        0x6ct
        0x25t
        0x79t
        0x65t
        0x65t
        0x65t
        0x61t
        0x23t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xbt
        0x14t
        0x10t
        0x16t
        0x45t
        0x47t
    .end array-data
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakeVideo;->createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getSynchronousResult(Landroid/content/Context;Landroid/net/Uri;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakeVideo;->getSynchronousResult(Landroid/content/Context;Landroid/net/Uri;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public final parseResult(ILandroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "64483e"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x52t
        0x55t
        0x40t
        0x59t
    .end array-data
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakeVideo;->parseResult(ILandroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
