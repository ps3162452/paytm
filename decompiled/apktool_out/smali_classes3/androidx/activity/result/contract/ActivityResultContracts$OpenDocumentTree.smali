.class public Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenDocumentTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroid/net/Uri;",
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
.method public createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2b9a97"

    const-wide/32 v4, 0x58f1c480

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz p2, :cond_0

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "cfc2d1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x53t
        0xct
        0x5dt
        0x13t
        0x56t
        0x5et
        0x56t
        0x4ct
        0x50t
        0xft
        0x4dt
        0x52t
        0x5ct
        0x16t
        0x17t
        0x0t
        0x5at
        0x43t
        0x5bt
        0xdt
        0x57t
        0x4ft
        0x76t
        0x67t
        0x77t
        0x2ct
        0x66t
        0x25t
        0x76t
        0x74t
        0x67t
        0x2ft
        0x7ct
        0x2ft
        0x6dt
        0x68t
        0x66t
        0x30t
        0x7ct
        0x24t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x8t
        0x7t
        0x40t
        0xbt
        0x58t
        0x7t
        0x48t
        0x13t
        0x40t
        0xbt
        0x47t
        0xat
        0x2t
        0x6t
        0x40t
        0x4at
        0x54t
        0x1bt
        0x12t
        0x11t
        0x53t
        0x4at
        0x78t
        0x2dt
        0x2ft
        0x37t
        0x7bt
        0x25t
        0x7dt
        0x3ct
        0x33t
        0x31t
        0x7bt
    .end array-data
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;->createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

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
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;->getSynchronousResult(Landroid/content/Context;Landroid/net/Uri;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

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

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;->parseResult(ILandroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
