.class final Landroidx/savedstate/Recreator$SavedStateProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/Recreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedStateProvider"
.end annotation


# instance fields
.field final mClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/savedstate/SavedStateRegistry;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "964b79"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    return-void

    :array_0
    .array-data 1
        0x58t
        0x58t
        0x50t
        0x10t
        0x58t
        0x50t
        0x5dt
        0x4et
        0x1at
        0x11t
        0x56t
        0x4ft
        0x5ct
        0x52t
        0x47t
        0x16t
        0x56t
        0x4dt
        0x5ct
        0x18t
        0x66t
        0x7t
        0x44t
        0x4dt
        0x58t
        0x44t
        0x40t
        0x7t
        0x45t
    .end array-data
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "949cf9"

    const/16 v3, 0x235f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5at
        0x58t
        0x58t
        0x10t
        0x15t
        0x5ct
        0x4at
        0x6bt
        0x4dt
        0xct
        0x39t
        0x4bt
        0x5ct
        0x47t
        0x4dt
        0xct
        0x14t
        0x5ct
    .end array-data
.end method
