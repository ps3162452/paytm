.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    const/16 v6, 0x3f

    const/4 v5, 0x0

    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "62e0ef"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "7e27c8"

    const/16 v4, -0x716f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "b8fcdb"

    const v4, -0x31be1941

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x3c

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "21a820"

    const/16 v4, -0x798d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x33

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "cb2d3e"

    const v4, 0x4c1c6e76    # 4.1007576E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-array v1, v5, [Ljava/lang/String;

    :cond_2
    invoke-static {v0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const/16 v2, 0x3e

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "e5c1a9"

    const/16 v4, 0x34f6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x3d

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "874ab7"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/activity/result/IntentSenderRequest;

    :try_start_0
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v4

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    const/4 v6, 0x0

    move v2, p1

    :try_start_1
    invoke-static/range {v0 .. v7}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$2;

    invoke-direct {v2, p0, p1, v0}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {v0, v1, p1, v7}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x57t
        0x5ct
        0x1t
        0x42t
        0xat
        0xft
        0x52t
        0x4at
        0x4bt
        0x51t
        0x6t
        0x12t
        0x5ft
        0x44t
        0xct
        0x44t
        0x1ct
        0x48t
        0x44t
        0x57t
        0x16t
        0x45t
        0x9t
        0x12t
        0x18t
        0x51t
        0xat
        0x5et
        0x11t
        0x14t
        0x57t
        0x51t
        0x11t
        0x1et
        0x0t
        0x1et
        0x42t
        0x40t
        0x4t
        0x1et
        0x24t
        0x25t
        0x62t
        0x7bt
        0x33t
        0x79t
        0x31t
        0x3ft
        0x69t
        0x7dt
        0x35t
        0x64t
        0x2ct
        0x29t
        0x78t
        0x61t
        0x3at
        0x72t
        0x30t
        0x28t
        0x72t
        0x7et
        0x20t
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0xbt
        0x56t
        0x45t
        0xct
        0x51t
        0x53t
        0x1dt
        0x1ct
        0x56t
        0x0t
        0x4ct
        0x5et
        0x13t
        0x5bt
        0x43t
        0x1at
        0x16t
        0x45t
        0x0t
        0x41t
        0x42t
        0xft
        0x4ct
        0x19t
        0x6t
        0x5dt
        0x59t
        0x17t
        0x4at
        0x56t
        0x6t
        0x46t
        0x19t
        0x6t
        0x40t
        0x43t
        0x17t
        0x53t
        0x19t
        0x22t
        0x7bt
        0x63t
        0x2ct
        0x64t
        0x7et
        0x37t
        0x61t
        0x68t
        0x2at
        0x62t
        0x63t
        0x2at
        0x77t
        0x79t
        0x36t
        0x6dt
        0x75t
        0x36t
        0x76t
        0x73t
        0x29t
        0x77t
    .end array-data

    :array_2
    .array-data 1
        0x3t
        0x56t
        0x2t
        0x11t
        0xbt
        0xbt
        0x6t
        0x40t
        0x48t
        0x2t
        0x7t
        0x16t
        0xbt
        0x4et
        0xft
        0x17t
        0x1dt
        0x4ct
        0x10t
        0x5dt
        0x15t
        0x16t
        0x8t
        0x16t
        0x4ct
        0x5bt
        0x9t
        0xdt
        0x10t
        0x10t
        0x3t
        0x5bt
        0x12t
        0x4dt
        0x1t
        0x1at
        0x16t
        0x4at
        0x7t
        0x4dt
        0x25t
        0x21t
        0x36t
        0x71t
        0x30t
        0x2at
        0x30t
        0x3bt
        0x3dt
        0x77t
        0x36t
        0x37t
        0x2dt
        0x2dt
        0x2ct
        0x6bt
        0x39t
        0x21t
        0x31t
        0x2ct
        0x26t
        0x74t
        0x23t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x5ft
        0x5t
        0x4at
        0x5dt
        0x59t
        0x56t
        0x49t
        0x4ft
        0x59t
        0x51t
        0x44t
        0x5bt
        0x47t
        0x8t
        0x4ct
        0x4bt
        0x1et
        0x40t
        0x54t
        0x12t
        0x4dt
        0x5et
        0x44t
        0x1ct
        0x52t
        0xet
        0x56t
        0x46t
        0x42t
        0x53t
        0x52t
        0x15t
        0x16t
        0x53t
        0x53t
        0x46t
        0x58t
        0xet
        0x56t
        0x1ct
        0x62t
        0x77t
        0x60t
        0x34t
        0x7dt
        0x61t
        0x64t
        0x6dt
        0x61t
        0x24t
        0x6at
        0x7ft
        0x79t
        0x61t
        0x62t
        0x28t
        0x77t
        0x7ct
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x2t
        0xct
        0x56t
        0x16t
        0x5ct
        0xct
        0x7t
        0x1at
        0x1ct
        0x5t
        0x50t
        0x11t
        0xat
        0x14t
        0x5bt
        0x10t
        0x4at
        0x4bt
        0x11t
        0x7t
        0x41t
        0x11t
        0x5ft
        0x11t
        0x4dt
        0x1t
        0x5dt
        0xat
        0x47t
        0x17t
        0x2t
        0x1t
        0x46t
        0x4at
        0x56t
        0x1dt
        0x17t
        0x10t
        0x53t
        0x4at
        0x63t
        0x20t
        0x31t
        0x2ft
        0x7bt
        0x37t
        0x60t
        0x2ct
        0x2ct
        0x2ct
        0x61t
    .end array-data

    :array_5
    .array-data 1
        0x4t
        0x5bt
        0x7t
        0x43t
        0xet
        0x50t
        0x1t
        0x4dt
        0x4dt
        0x50t
        0x2t
        0x4dt
        0xct
        0x43t
        0xat
        0x45t
        0x18t
        0x17t
        0x17t
        0x50t
        0x10t
        0x44t
        0xdt
        0x4dt
        0x4bt
        0x56t
        0xct
        0x5ft
        0x15t
        0x4bt
        0x4t
        0x56t
        0x17t
        0x1ft
        0x0t
        0x5at
        0x11t
        0x5ct
        0xct
        0x5ft
        0x4ft
        0x70t
        0x2bt
        0x61t
        0x26t
        0x7ft
        0x35t
        0x66t
        0x36t
        0x70t
        0x2dt
        0x75t
        0x24t
        0x6bt
        0x3at
        0x67t
        0x26t
        0x60t
        0x34t
        0x7ct
        0x36t
        0x61t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x59t
        0x59t
        0x50t
        0x13t
        0xdt
        0x5et
        0x5ct
        0x4ft
        0x1at
        0x0t
        0x1t
        0x43t
        0x51t
        0x41t
        0x5dt
        0x15t
        0x1bt
        0x19t
        0x4at
        0x52t
        0x47t
        0x14t
        0xet
        0x43t
        0x16t
        0x54t
        0x5bt
        0xft
        0x16t
        0x45t
        0x59t
        0x54t
        0x40t
        0x4ft
        0x7t
        0x4ft
        0x4ct
        0x45t
        0x55t
        0x4ft
        0x2bt
        0x79t
        0x6ct
        0x72t
        0x7at
        0x35t
        0x3dt
        0x64t
        0x7dt
        0x79t
        0x70t
        0x24t
        0x30t
        0x68t
        0x6at
        0x72t
        0x65t
        0x34t
        0x27t
        0x64t
        0x6ct
    .end array-data
.end method
