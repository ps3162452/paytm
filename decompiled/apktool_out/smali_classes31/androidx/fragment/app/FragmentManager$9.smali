.class Landroidx/fragment/app/FragmentManager$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManager;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback",
        "<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$9;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$9;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "18929e"

    const-wide v4, 0x41a7240678000000L    # 1.9411846E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "1bf950"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    iget v0, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$9;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "6095f8"

    const v4, 0x4bd2c33b    # 2.7625078E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "de8804"

    const v3, 0x4e9a3848

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x7ft
        0x57t
        0x19t
        0x73t
        0x5at
        0x11t
        0x58t
        0x4et
        0x50t
        0x46t
        0x50t
        0x0t
        0x42t
        0x18t
        0x4et
        0x57t
        0x4bt
        0x0t
        0x11t
        0x4bt
        0x4dt
        0x53t
        0x4bt
        0x11t
        0x54t
        0x5ct
        0x19t
        0x54t
        0x56t
        0x17t
        0x11t
        0x4at
        0x5ct
        0x41t
        0x4ct
        0x9t
        0x45t
        0x18t
        0x5ft
        0x5dt
        0x4bt
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x10t
        0x7t
        0x5et
        0x58t
        0x55t
        0x5ft
        0x16t
        0x2bt
        0x58t
        0x5bt
        0x51t
        0x56t
        0x7t
        0x14t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x53t
        0x4dt
        0x5ct
        0x10t
        0x51t
        0x42t
        0x49t
        0x19t
        0x47t
        0x3t
        0x4bt
        0x43t
        0x5ct
        0x4dt
        0x15t
        0x2t
        0x5dt
        0x5at
        0x59t
        0x4ft
        0x50t
        0x14t
        0x5dt
        0x52t
        0x10t
        0x5ft
        0x5at
        0x14t
        0x18t
        0x43t
        0x5et
        0x52t
        0x5bt
        0x9t
        0x4ft
        0x58t
        0x10t
        0x7ft
        0x47t
        0x7t
        0x5ft
        0x5bt
        0x55t
        0x57t
        0x41t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0x22t
        0x17t
        0x59t
        0x5ft
        0x5dt
        0x51t
        0xat
        0x11t
        0x75t
        0x59t
        0x5et
        0x55t
        0x3t
        0x0t
        0x4at
    .end array-data
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$9;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
