.class public abstract Landroidx/fragment/app/FragmentTransaction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransaction$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SET_MAX_LIFECYCLE:I = 0xa

.field static final OP_SET_PRIMARY_NAV:I = 0x8

.field static final OP_SHOW:I = 0x5

.field static final OP_UNSET_PRIMARY_NAV:I = 0x9

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field private final mClassLoader:Ljava/lang/ClassLoader;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mEnterAnim:I

.field mExitAnim:I

.field private final mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    iput-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    iput-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x44

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f27106"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x6c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0611b3"

    const v3, 0x4eefd9b1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x5at
        0x52t
        0x11t
        0x76t
        0x44t
        0x7t
        0x55t
        0x5at
        0x54t
        0x5et
        0x42t
        0x2bt
        0x53t
        0x59t
        0x50t
        0x57t
        0x53t
        0x14t
        0x12t
        0x5at
        0x44t
        0x43t
        0x42t
        0x46t
        0x50t
        0x52t
        0x11t
        0x51t
        0x42t
        0x12t
        0x53t
        0x54t
        0x59t
        0x55t
        0x52t
        0x46t
        0x46t
        0x58t
        0x11t
        0x59t
        0x42t
        0x15t
        0x5at
        0x58t
        0x42t
        0x44t
        0x16t
        0x12t
        0x5dt
        0x17t
        0x52t
        0x42t
        0x53t
        0x7t
        0x46t
        0x52t
        0x11t
        0x51t
        0x16t
        0x20t
        0x40t
        0x56t
        0x56t
        0x5dt
        0x53t
        0x8t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x44t
        0x54t
        0x50t
        0x16t
        0x5at
        0x5et
        0x51t
        0x11t
        0x50t
        0x42t
        0x75t
        0x42t
        0x57t
        0x56t
        0x5ct
        0x7t
        0x5dt
        0x44t
        0x16t
        0x43t
        0x54t
        0x13t
        0x46t
        0x59t
        0x44t
        0x54t
        0x42t
        0x42t
        0x47t
        0x58t
        0x57t
        0x45t
        0x11t
        0x16t
        0x5bt
        0x59t
        0x45t
        0x11t
        0x77t
        0x10t
        0x52t
        0x57t
        0x5bt
        0x54t
        0x5ft
        0x16t
        0x67t
        0x42t
        0x57t
        0x5ft
        0x42t
        0x3t
        0x50t
        0x44t
        0x5ft
        0x5et
        0x5ft
        0x42t
        0x44t
        0x51t
        0x45t
        0x11t
        0x53t
        0x17t
        0x5at
        0x5ct
        0x42t
        0x11t
        0x46t
        0xbt
        0x47t
        0x58t
        0x16t
        0x77t
        0x43t
        0x3t
        0x54t
        0x5dt
        0x53t
        0x5ft
        0x45t
        0x2ft
        0x52t
        0x5et
        0x57t
        0x56t
        0x54t
        0x10t
        0x1dt
        0x52t
        0x53t
        0x56t
        0x58t
        0xct
        0x67t
        0x42t
        0x57t
        0x5ft
        0x42t
        0x3t
        0x50t
        0x44t
        0x5ft
        0x5et
        0x5ft
        0x4at
        0x1at
    .end array-data
.end method


# virtual methods
.method public add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final add(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final add(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method add(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final add(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    iput v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    const/16 v5, 0x2c

    const/16 v2, 0x27

    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->supportsTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "424a69"

    const v4, 0x4e655027    # 9.6180883E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v2, "e5d485"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "8a8760"

    const v3, 0x4e9f6887

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "95ade8"

    const v3, -0x31441c4f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "84b47e"

    const-wide v4, -0x3e2ff696aac00000L    # -1.076208981E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x12t
        0x47t
        0x9t
        0x57t
        0x4bt
        0x51t
        0x56t
        0x14t
        0x4t
        0x5at
        0x5ct
        0x59t
        0x57t
        0x5at
        0x15t
        0x16t
        0x4et
        0x5dt
        0x46t
        0x5ct
        0x41t
        0x42t
        0x51t
        0x51t
        0x12t
        0x47t
        0xet
        0x43t
        0x4bt
        0x57t
        0x57t
        0x14t
        0xft
        0x57t
        0x54t
        0x51t
        0x12t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x15t
        0xct
        0x55t
        0x4bt
        0x15t
        0x4t
        0x59t
        0x16t
        0x51t
        0x59t
        0x51t
        0x1ct
        0x15t
        0x6t
        0x51t
        0x5dt
        0x5bt
        0x45t
        0x54t
        0x0t
        0x50t
        0x5dt
        0x51t
        0x45t
        0x41t
        0xbt
        0x14t
        0x4ct
        0x5dt
        0x0t
        0x15t
        0x10t
        0x46t
        0x59t
        0x5bt
        0x16t
        0x54t
        0x7t
        0x40t
        0x51t
        0x5at
        0xbt
        0x1bt
    .end array-data

    :array_2
    .array-data 1
        0x79t
        0x41t
        0x4bt
        0x5ft
        0x57t
        0x42t
        0x5dt
        0x5t
        0x18t
        0x52t
        0x5at
        0x55t
        0x55t
        0x4t
        0x56t
        0x43t
        0x16t
        0x47t
        0x51t
        0x15t
        0x50t
        0x17t
        0x42t
        0x58t
        0x5dt
        0x41t
        0x4ct
        0x56t
        0x44t
        0x57t
        0x5dt
        0x15t
        0x18t
        0x59t
        0x57t
        0x5dt
        0x5dt
        0x41t
        0x1ft
    .end array-data

    :array_3
    .array-data 1
        0x1et
        0x15t
        0x9t
        0x5t
        0x16t
        0x18t
        0x58t
        0x59t
        0x13t
        0x1t
        0x4t
        0x5ct
        0x40t
        0x15t
        0x3t
        0x1t
        0x0t
        0x56t
        0x19t
        0x54t
        0x5t
        0x0t
        0x0t
        0x5ct
        0x19t
        0x41t
        0xet
        0x44t
        0x11t
        0x50t
        0x5ct
        0x15t
        0x15t
        0x16t
        0x4t
        0x56t
        0x4at
        0x54t
        0x2t
        0x10t
        0xct
        0x57t
        0x57t
        0x1bt
    .end array-data

    :array_4
    .array-data 1
        0x6dt
        0x5at
        0xbt
        0x45t
        0x42t
        0x0t
        0x18t
        0x40t
        0x10t
        0x55t
        0x59t
        0x16t
        0x51t
        0x40t
        0xbt
        0x5bt
        0x59t
        0x2bt
        0x59t
        0x59t
        0x7t
        0x47t
        0x17t
        0x4t
        0x4at
        0x51t
        0x42t
        0x46t
        0x52t
        0x14t
        0x4dt
        0x5dt
        0x10t
        0x51t
        0x53t
        0x45t
        0x5et
        0x5bt
        0x10t
        0x14t
        0x56t
        0x9t
        0x54t
        0x14t
        0x11t
        0x5ct
        0x56t
        0x17t
        0x5dt
        0x50t
        0x27t
        0x58t
        0x52t
        0x8t
        0x5dt
        0x5at
        0x16t
        0x47t
    .end array-data
.end method

.method public addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x46

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c450d"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0xbt
        0x5dt
        0x46t
        0x10t
        0x22t
        0x41t
        0x2t
        0x53t
        0x58t
        0x55t
        0xat
        0x47t
        0x37t
        0x46t
        0x54t
        0x5et
        0x17t
        0x52t
        0x0t
        0x40t
        0x5ct
        0x5ft
        0xat
        0x13t
        0xat
        0x47t
        0x15t
        0x5et
        0xbt
        0x47t
        0x43t
        0x55t
        0x59t
        0x5ct
        0xbt
        0x44t
        0x6t
        0x50t
        0x15t
        0x44t
        0xbt
        0x13t
        0x1t
        0x51t
        0x15t
        0x51t
        0x0t
        0x57t
        0x6t
        0x50t
        0x15t
        0x44t
        0xbt
        0x13t
        0x17t
        0x5ct
        0x50t
        0x10t
        0x6t
        0x52t
        0x0t
        0x5ft
        0x15t
        0x43t
        0x10t
        0x52t
        0x0t
        0x5ft
        0x1bt
    .end array-data
.end method

.method public attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4c5467"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0xbt
        0x5ct
        0x47t
        0x16t
        0x43t
        0x46t
        0x2t
        0x5bt
        0x47t
        0x57t
        0x54t
        0x40t
        0xat
        0x5at
        0x5at
        0x16t
        0x5et
        0x47t
        0x43t
        0x54t
        0x58t
        0x44t
        0x52t
        0x55t
        0x7t
        0x4ct
        0x14t
        0x54t
        0x52t
        0x5dt
        0xdt
        0x52t
        0x14t
        0x57t
        0x53t
        0x50t
        0x6t
        0x51t
        0x14t
        0x42t
        0x58t
        0x14t
        0x17t
        0x5dt
        0x51t
        0x16t
        0x55t
        0x55t
        0x0t
        0x5et
        0x14t
        0x45t
        0x43t
        0x55t
        0x0t
        0x5et
    .end array-data
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x1d

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    iget v0, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_3

    iget v0, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v0, p1, :cond_6

    :cond_3
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    :cond_4
    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v0, p4, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "f5de39"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "818f61"

    const/16 v3, -0x46cf

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v2, "b0f607"

    const-wide/32 v4, 0x1d1df37

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "743bfb"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "1b25ba"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_5

    const-string v2, "ca813a"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "bd0ac4"

    const v3, -0x31289e7d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "7cc574"

    const v3, 0x4ed01ae0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    fill-array-data v1, :array_8

    const-string v2, "9ba5f4"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "48f24d"

    const-wide/32 v4, -0x36730bef

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v2, "946a90"

    const-wide/32 v4, -0x61d9646c

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x25t
        0x54t
        0xat
        0x42t
        0x47t
        0x19t
        0x5t
        0x5dt
        0x5t
        0xbt
        0x54t
        0x5ct
        0x46t
        0x41t
        0x5t
        0x2t
        0x13t
        0x56t
        0x0t
        0x15t
        0x2t
        0x17t
        0x52t
        0x5et
        0xbt
        0x50t
        0xat
        0x11t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x11t
        0x4ft
        0x7t
        0x45t
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0x5et
        0x9t
        0x41t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x55t
        0x5dt
        0x45t
        0x12t
        0x42t
        0x54t
        0x5ct
        0x52t
        0xct
        0x1t
        0x7t
        0x17t
        0x57t
        0x5ct
        0xct
        0x12t
        0x3t
        0x5et
        0x5at
        0x56t
        0x10t
        0x46t
        0x2bt
        0x73t
        0x14t
        0x5ct
        0x4t
        0x46t
        0x4t
        0x45t
        0x55t
        0x54t
        0xft
        0x3t
        0xct
        0x43t
        0x14t
    .end array-data

    nop

    :array_4
    .array-data 1
        0xbt
        0x42t
        0x45t
        0x54t
        0x11t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x43t
        0xft
        0x57t
        0x46t
        0x13t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x21t
        0x5t
        0x5et
        0x46t
        0x17t
        0x14t
        0x3t
        0x0t
        0x54t
        0x41t
        0x5t
        0x46t
        0x3t
        0x3t
        0x5dt
        0x4t
        0xdt
        0x40t
        0x42t
    .end array-data

    :array_7
    .array-data 1
        0x17t
        0x14t
        0xat
        0x41t
        0x5ft
        0x14t
        0x43t
        0x2t
        0x4t
        0x15t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x19t
        0x16t
        0xet
        0x15t
        0x5t
        0x5bt
        0x57t
        0x16t
        0x0t
        0x5ct
        0x8t
        0x51t
        0x4bt
        0x42t
        0x17t
        0x5ct
        0x3t
        0x43t
        0x19t
        0x15t
        0x8t
        0x41t
        0xet
        0x14t
        0x57t
        0xdt
        0x41t
        0x5ct
        0x2t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x72t
        0x4at
        0x7t
        0x55t
        0x59t
        0x1t
        0x5at
        0x4ct
        0x46t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x19t
        0x59t
        0x43t
        0x12t
        0x4dt
        0x10t
        0x5bt
        0x51t
        0x16t
        0x0t
        0x19t
        0x40t
        0x4ct
        0x56t
        0x5at
        0x8t
        0x5at
        0x10t
        0x4at
        0x40t
        0x57t
        0x15t
        0x50t
        0x53t
        0x19t
        0x57t
        0x5at
        0x0t
        0x4at
        0x43t
        0x19t
        0x40t
        0x59t
        0x41t
        0x5bt
        0x55t
        0x19t
        0x14t
        0x46t
        0x13t
        0x56t
        0x40t
        0x5ct
        0x46t
        0x5at
        0x18t
        0x19t
        0x42t
        0x5ct
        0x57t
        0x44t
        0x4t
        0x58t
        0x44t
        0x5ct
        0x50t
        0x16t
        0x7t
        0x4bt
        0x5ft
        0x54t
        0x14t
        0x5ft
        0xft
        0x4at
        0x44t
        0x58t
        0x5at
        0x55t
        0x4t
        0x19t
        0x43t
        0x4dt
        0x55t
        0x42t
        0x4t
        0x17t
    .end array-data
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f49fc"

    const-wide v4, 0x41d94eade2800000L    # 1.69834689E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x13t
        0x47t
        0x4dt
        0x46t
        0x16t
        0x41t
        0x3t
        0x14t
        0x57t
        0x9t
        0xdt
        0x1ft
        0x1ct
        0x51t
        0x4bt
        0x9t
        0x43t
        0x51t
        0x9t
        0x5at
        0x4dt
        0x7t
        0xat
        0x5ct
        0x3t
        0x46t
        0x6ft
        0xft
        0x6t
        0x45t
        0x2ft
        0x50t
    .end array-data
.end method

.method public final replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAllowOptimization(Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbShortTitle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    iput p2, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    iput p3, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    iput p4, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    return-object p0
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method

.method public setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    return-object p0
.end method

.method public setTransition(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    return-object p0
.end method

.method public setTransitionStyle(I)Landroidx/fragment/app/FragmentTransaction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    return-object p0
.end method
