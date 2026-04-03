.class Landroidx/fragment/app/FragmentManager$11;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$11;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$11;->onActivityResult(Ljava/util/Map;)V

    return-void
.end method

.method public onActivityResult(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/16 v6, 0xf

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [I

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    aput v1, v5, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$11;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8d16ae"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "ee76ff"

    const/16 v3, 0x2351

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    iget v1, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$11;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "b314e5"

    const-wide/32 v4, -0xeec9d5f

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "61c95c"

    const/16 v3, -0x43e3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1, v0, v5}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x76t
        0xbt
        0x11t
        0x46t
        0x4t
        0x17t
        0x55t
        0xdt
        0x42t
        0x45t
        0x8t
        0xat
        0x56t
        0x17t
        0x11t
        0x41t
        0x4t
        0x17t
        0x5dt
        0x44t
        0x43t
        0x53t
        0x10t
        0x10t
        0x5dt
        0x17t
        0x45t
        0x53t
        0x5t
        0x45t
        0x5et
        0xbt
        0x43t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x23t
        0x17t
        0x56t
        0x51t
        0xbt
        0x3t
        0xbt
        0x11t
        0x7at
        0x57t
        0x8t
        0x7t
        0x2t
        0x0t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x32t
        0x56t
        0x43t
        0x59t
        0xct
        0x46t
        0x11t
        0x5at
        0x5et
        0x5at
        0x45t
        0x47t
        0x7t
        0x42t
        0x44t
        0x51t
        0x16t
        0x41t
        0x42t
        0x41t
        0x54t
        0x47t
        0x10t
        0x59t
        0x16t
        0x13t
        0x55t
        0x51t
        0x9t
        0x5ct
        0x14t
        0x56t
        0x43t
        0x51t
        0x1t
        0x15t
        0x4t
        0x5ct
        0x43t
        0x14t
        0x10t
        0x5bt
        0x9t
        0x5dt
        0x5et
        0x43t
        0xbt
        0x15t
        0x24t
        0x41t
        0x50t
        0x53t
        0x8t
        0x50t
        0xct
        0x47t
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x70t
        0x43t
        0x2t
        0x5et
        0x58t
        0x6t
        0x58t
        0x45t
        0x2et
        0x58t
        0x5bt
        0x2t
        0x51t
        0x54t
        0x11t
    .end array-data
.end method
