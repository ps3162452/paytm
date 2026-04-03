.class Landroidx/fragment/app/DialogFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer",
        "<",
        "Landroidx/lifecycle/LifecycleOwner;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {v0}, Landroidx/fragment/app/DialogFragment;->access$200(Landroidx/fragment/app/DialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {v1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "e6ac1b"

    const-wide/32 v4, -0x2b4f0d28

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a35a80"

    const-wide/32 v4, -0x662b8183

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {v2}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "a43e54"

    const/4 v4, 0x0

    invoke-static {v2, v3, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {v1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "677f98"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x5ft
        0x0t
        0xft
        0x5et
        0x5t
        0x23t
        0x44t
        0x0t
        0x4t
        0x5ct
        0x7t
        0xbt
        0x42t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x40t
        0x50t
        0x15t
        0x4ct
        0x59t
        0xft
        0x54t
        0x15t
        0x15t
        0x50t
        0x55t
        0x41t
        0x50t
        0x5at
        0xft
        0x4ct
        0x55t
        0xft
        0x47t
        0x15t
        0x17t
        0x51t
        0x55t
        0x16t
        0x13t
        0x5at
        0xft
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x46t
        0x52t
        0x2t
        0x58t
        0x51t
        0xft
        0x40t
        0x7et
        0x4t
        0x5bt
        0x55t
        0x6t
        0x51t
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x72t
        0x5et
        0x56t
        0xat
        0x56t
        0x5ft
        0x70t
        0x45t
        0x56t
        0x1t
        0x54t
        0x5dt
        0x58t
        0x43t
        0x17t
        0x5t
        0x58t
        0x56t
        0x16t
        0x59t
        0x58t
        0x12t
        0x19t
        0x5at
        0x53t
        0x17t
        0x56t
        0x12t
        0x4dt
        0x59t
        0x55t
        0x5ft
        0x52t
        0x2t
        0x19t
        0x4ct
        0x59t
        0x17t
        0x56t
        0x46t
        0x5at
        0x57t
        0x58t
        0x43t
        0x56t
        0xft
        0x57t
        0x5dt
        0x44t
        0x17t
        0x41t
        0xft
        0x5ct
        0x4ft
    .end array-data
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment$4;->onChanged(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
