.class Landroidx/fragment/app/FragmentActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 6

    const/16 v4, 0x19

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentController;->attachHost(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "010209"

    const/16 v3, -0x715a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "d3c1a6"

    const-wide/32 v4, -0x5e8a79ed

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentController;->restoreSaveState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x5ft
        0x54t
        0x40t
        0x5ft
        0x50t
        0x54t
        0xbt
        0x43t
        0x47t
        0x40t
        0x49t
        0x5ft
        0x43t
        0x44t
        0x8t
        0x56t
        0x4bt
        0x51t
        0x56t
        0x5dt
        0x57t
        0x5et
        0x4dt
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5t
        0x5dt
        0x7t
        0x43t
        0xet
        0x5ft
        0x0t
        0x9t
        0x10t
        0x44t
        0x11t
        0x46t
        0xbt
        0x41t
        0x17t
        0xbt
        0x7t
        0x44t
        0x5t
        0x54t
        0xet
        0x54t
        0xft
        0x42t
        0x17t
    .end array-data
.end method
