.class Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentIntentSenderContract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;
    .locals 7

    const/16 v6, 0x3f

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e2bb04"

    const-wide v4, -0x3e3793059c800000L    # -8.19590343E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "45c5de"

    const-wide v4, -0x3e277223e7000000L    # -1.64780042E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    const-string v4, "6cb114"

    const/16 v5, 0x76a2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "1ebb25"

    const-wide/32 v4, -0x4f135fff

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "f62203"

    const-wide v4, -0x3e20954b8d800000L    # -2.108346826E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v2

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p2

    :cond_0
    const/16 v1, 0x3d

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "591507"

    const v3, 0x4ed15fca

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "f3eff8"

    const v4, 0x4ecb6b32    # 1.7064E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "e6b48b"

    const-wide v4, 0x41d569cdf7400000L    # 1.437022173E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :array_0
    .array-data 1
        0x4t
        0x5ct
        0x6t
        0x10t
        0x5ft
        0x5dt
        0x1t
        0x4at
        0x4ct
        0x3t
        0x53t
        0x40t
        0xct
        0x44t
        0xbt
        0x16t
        0x49t
        0x1at
        0x17t
        0x57t
        0x11t
        0x17t
        0x5ct
        0x40t
        0x4bt
        0x51t
        0xdt
        0xct
        0x44t
        0x46t
        0x4t
        0x51t
        0x16t
        0x4ct
        0x51t
        0x57t
        0x11t
        0x5bt
        0xdt
        0xct
        0x1et
        0x7dt
        0x2bt
        0x66t
        0x27t
        0x2ct
        0x64t
        0x6bt
        0x36t
        0x77t
        0x2ct
        0x26t
        0x75t
        0x66t
        0x3at
        0x60t
        0x27t
        0x33t
        0x65t
        0x71t
        0x36t
        0x66t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x5bt
        0x7t
        0x47t
        0xbt
        0xct
        0x50t
        0x4dt
        0x4dt
        0x54t
        0x7t
        0x11t
        0x5dt
        0x43t
        0xat
        0x41t
        0x1dt
        0x4bt
        0x46t
        0x50t
        0x10t
        0x40t
        0x8t
        0x11t
        0x1at
        0x56t
        0xct
        0x5bt
        0x10t
        0x17t
        0x55t
        0x56t
        0x17t
        0x1bt
        0x1t
        0x1dt
        0x40t
        0x47t
        0x2t
        0x1bt
        0x25t
        0x26t
        0x60t
        0x7ct
        0x35t
        0x7ct
        0x30t
        0x3ct
        0x6bt
        0x7at
        0x33t
        0x61t
        0x2dt
        0x2at
        0x7at
        0x66t
        0x3ct
        0x77t
        0x31t
        0x2bt
        0x70t
        0x79t
        0x26t
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0xdt
        0x6t
        0x43t
        0x5et
        0x5dt
        0x52t
        0x1bt
        0x4ct
        0x50t
        0x52t
        0x40t
        0x5ft
        0x15t
        0xbt
        0x45t
        0x48t
        0x1at
        0x44t
        0x6t
        0x11t
        0x44t
        0x5dt
        0x40t
        0x18t
        0x0t
        0xdt
        0x5ft
        0x45t
        0x46t
        0x57t
        0x0t
        0x16t
        0x1ft
        0x54t
        0x4ct
        0x42t
        0x11t
        0x3t
        0x1ft
        0x70t
        0x77t
        0x62t
        0x2at
        0x34t
        0x78t
        0x65t
        0x6dt
        0x69t
        0x2ct
        0x32t
        0x65t
        0x78t
        0x7bt
        0x78t
        0x30t
        0x3dt
        0x73t
        0x64t
        0x7at
        0x72t
        0x2ft
        0x27t
    .end array-data

    :array_3
    .array-data 1
        0x50t
        0xbt
        0x6t
        0x10t
        0x5dt
        0x5ct
        0x55t
        0x1dt
        0x4ct
        0x3t
        0x51t
        0x41t
        0x58t
        0x13t
        0xbt
        0x16t
        0x4bt
        0x1bt
        0x43t
        0x0t
        0x11t
        0x17t
        0x5et
        0x41t
        0x1ft
        0x6t
        0xdt
        0xct
        0x46t
        0x47t
        0x50t
        0x6t
        0x16t
        0x4ct
        0x57t
        0x4dt
        0x45t
        0x17t
        0x3t
        0x4ct
        0x73t
        0x76t
        0x65t
        0x2ct
        0x34t
        0x2bt
        0x66t
        0x6ct
        0x6et
        0x2at
        0x32t
        0x36t
        0x7bt
        0x7at
        0x7ft
        0x36t
        0x3dt
        0x20t
        0x67t
        0x7bt
        0x75t
        0x29t
        0x27t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x58t
        0x56t
        0x40t
        0x5ft
        0x5at
        0x2t
        0x4et
        0x1ct
        0x54t
        0x42t
        0x52t
        0x1t
        0x5bt
        0x57t
        0x5ct
        0x44t
        0x1dt
        0x3t
        0x4et
        0x46t
        0x40t
        0x51t
        0x1dt
        0x27t
        0x75t
        0x66t
        0x7bt
        0x66t
        0x7at
        0x32t
        0x6ft
        0x6dt
        0x7dt
        0x60t
        0x67t
        0x2ft
        0x79t
        0x7ct
        0x61t
        0x6ft
        0x71t
        0x33t
        0x78t
        0x76t
        0x7et
        0x75t
    .end array-data

    :array_5
    .array-data 1
        0x54t
        0x57t
        0x55t
        0x47t
        0x5ft
        0x5et
        0x51t
        0x41t
        0x1ft
        0x54t
        0x53t
        0x43t
        0x5ct
        0x4ft
        0x58t
        0x41t
        0x49t
        0x19t
        0x47t
        0x5ct
        0x42t
        0x40t
        0x5ct
        0x43t
        0x1bt
        0x5at
        0x5et
        0x5bt
        0x44t
        0x45t
        0x54t
        0x5at
        0x45t
        0x1bt
        0x55t
        0x4ft
        0x41t
        0x4bt
        0x50t
        0x1bt
        0x79t
        0x79t
        0x61t
        0x7ct
        0x7ft
        0x61t
        0x6ft
        0x64t
        0x70t
        0x77t
        0x75t
        0x70t
        0x62t
        0x68t
        0x67t
        0x7ct
        0x60t
        0x60t
        0x75t
        0x64t
        0x61t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x25t
        0x41t
        0x0t
        0x7t
        0x12t
        0x5dt
        0x2ft
        0x5dt
        0x11t
        0x3t
        0x8t
        0x4ct
        0x46t
        0x50t
        0x17t
        0x3t
        0x7t
        0x4ct
        0x3t
        0x57t
        0x45t
        0x12t
        0xet
        0x5dt
        0x46t
        0x55t
        0xat
        0xat
        0xat
        0x57t
        0x11t
        0x5at
        0xbt
        0x1t
        0x46t
        0x51t
        0x8t
        0x47t
        0x0t
        0x8t
        0x12t
        0x2t
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x23t
        0x44t
        0x3t
        0x53t
        0x55t
        0x7t
        0xbt
        0x42t
        0x2ft
        0x55t
        0x56t
        0x3t
        0x2t
        0x53t
        0x10t
    .end array-data
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;
    .locals 1

    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    move-result-object v0

    return-object v0
.end method
