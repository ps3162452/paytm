.class public Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenMultipleDocuments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<[",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
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

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/16 v4, 0x23

    new-instance v0, Landroid/content/Intent;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "bccbf5"

    const/16 v3, 0x4b76

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6131a5"

    const/16 v3, -0x1973

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "623732"

    const/16 v3, 0x62db

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "f7cee7"

    const/16 v3, 0x7c54

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x3t
        0xdt
        0x7t
        0x10t
        0x9t
        0x5ct
        0x6t
        0x4dt
        0xat
        0xct
        0x12t
        0x50t
        0xct
        0x17t
        0x4dt
        0x3t
        0x5t
        0x41t
        0xbt
        0xct
        0xdt
        0x4ct
        0x29t
        0x65t
        0x27t
        0x2dt
        0x3ct
        0x26t
        0x29t
        0x76t
        0x37t
        0x2et
        0x26t
        0x2ct
        0x32t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x5ft
        0x57t
        0x43t
        0xet
        0x5ct
        0x52t
        0x1ft
        0x5at
        0x5ft
        0x15t
        0x50t
        0x58t
        0x45t
        0x1dt
        0x54t
        0x19t
        0x41t
        0x44t
        0x50t
        0x1dt
        0x7ct
        0x28t
        0x78t
        0x73t
        0x6et
        0x67t
        0x68t
        0x31t
        0x70t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x5ct
        0x57t
        0x45t
        0x5ct
        0x5bt
        0x52t
        0x1ct
        0x5at
        0x59t
        0x47t
        0x57t
        0x58t
        0x46t
        0x1dt
        0x52t
        0x4bt
        0x46t
        0x44t
        0x53t
        0x1dt
        0x76t
        0x7ft
        0x7et
        0x79t
        0x65t
        0x6ct
        0x7at
        0x66t
        0x7et
        0x62t
        0x7bt
        0x63t
        0x7bt
        0x76t
    .end array-data

    :array_3
    .array-data 1
        0x4ct
        0x18t
        0x49t
    .end array-data
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public final getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->parseResult(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final parseResult(ILandroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;->getClipDataUris(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
