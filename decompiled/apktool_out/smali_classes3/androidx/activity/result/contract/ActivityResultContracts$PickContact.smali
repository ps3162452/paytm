.class public final Landroidx/activity/result/contract/ActivityResultContracts$PickContact;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickContact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Ljava/lang/Void;",
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

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickContact;->createIntent(Landroid/content/Context;Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/Void;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8bba29"

    const/16 v3, -0x3588

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a0b942"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x59t
        0xct
        0x6t
        0x13t
        0x5dt
        0x50t
        0x5ct
        0x4ct
        0xbt
        0xft
        0x46t
        0x5ct
        0x56t
        0x16t
        0x4ct
        0x0t
        0x51t
        0x4dt
        0x51t
        0xdt
        0xct
        0x4ft
        0x62t
        0x70t
        0x7bt
        0x29t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x5et
        0x6t
        0x17t
        0x55t
        0x5ct
        0x5t
        0x42t
        0xdt
        0x50t
        0x50t
        0x1ct
        0x2t
        0x45t
        0x10t
        0x4at
        0x5bt
        0x40t
        0x4ft
        0x54t
        0xbt
        0x4bt
        0x1bt
        0x51t
        0xet
        0x5et
        0x16t
        0x58t
        0x57t
        0x46t
    .end array-data
.end method

.method public parseResult(ILandroid/content/Intent;)Landroid/net/Uri;
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

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickContact;->parseResult(ILandroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
