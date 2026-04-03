.class public Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TakePicture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroid/net/Uri;",
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
.method public createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "df6ae8"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e7f3bd"

    const-wide v4, -0x3e5f0757da000000L    # -1.42365715E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5t
        0x8t
        0x52t
        0x13t
        0xat
        0x51t
        0x0t
        0x48t
        0x5bt
        0x4t
        0x1t
        0x51t
        0x5t
        0x48t
        0x57t
        0x2t
        0x11t
        0x51t
        0xbt
        0x8t
        0x18t
        0x28t
        0x28t
        0x79t
        0x23t
        0x23t
        0x69t
        0x22t
        0x24t
        0x68t
        0x30t
        0x33t
        0x64t
        0x24t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x42t
        0x12t
        0x43t
        0x17t
        0x10t
    .end array-data
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;->createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;->getSynchronousResult(Landroid/content/Context;Landroid/net/Uri;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public final parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;->parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
