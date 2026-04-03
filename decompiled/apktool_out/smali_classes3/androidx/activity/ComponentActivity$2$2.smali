.class Landroidx/activity/ComponentActivity$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$2;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidx/activity/ComponentActivity$2;

.field final val$e:Landroid/content/IntentSender$SendIntentException;

.field final val$requestCode:I


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    iput p2, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    iget v1, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x3e

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "935df7"

    const v6, -0x31e794fc

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x3d

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "27ec93"

    const-wide v6, -0x3e4d9f4dee000000L    # -3.0832693E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/activity/ComponentActivity$2;->dispatchResult(IILandroid/content/Intent;)Z

    return-void

    :array_0
    .array-data 1
        0x58t
        0x5dt
        0x51t
        0x16t
        0x9t
        0x5et
        0x5dt
        0x4bt
        0x1bt
        0x5t
        0x5t
        0x43t
        0x50t
        0x45t
        0x5ct
        0x10t
        0x1ft
        0x19t
        0x4bt
        0x56t
        0x46t
        0x11t
        0xat
        0x43t
        0x17t
        0x50t
        0x5at
        0xat
        0x12t
        0x45t
        0x58t
        0x50t
        0x41t
        0x4at
        0x7t
        0x54t
        0x4dt
        0x5at
        0x5at
        0xat
        0x48t
        0x7et
        0x77t
        0x67t
        0x70t
        0x2at
        0x32t
        0x68t
        0x6at
        0x76t
        0x7bt
        0x20t
        0x23t
        0x65t
        0x66t
        0x61t
        0x70t
        0x35t
        0x33t
        0x72t
        0x6at
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x59t
        0x1t
        0x11t
        0x56t
        0x5at
        0x56t
        0x4ft
        0x4bt
        0x2t
        0x5at
        0x47t
        0x5bt
        0x41t
        0xct
        0x17t
        0x40t
        0x1dt
        0x40t
        0x52t
        0x16t
        0x16t
        0x55t
        0x47t
        0x1ct
        0x54t
        0xat
        0xdt
        0x4dt
        0x41t
        0x53t
        0x54t
        0x11t
        0x4dt
        0x5ct
        0x4bt
        0x46t
        0x45t
        0x4t
        0x4dt
        0x6at
        0x76t
        0x7ct
        0x73t
        0x3at
        0x2at
        0x77t
        0x67t
        0x77t
        0x79t
        0x31t
        0x3ct
        0x7ct
        0x6bt
        0x71t
        0x72t
        0x35t
        0x37t
        0x70t
        0x7ct
        0x7ct
    .end array-data
.end method
