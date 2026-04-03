.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b1b79c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x43t
        0x3t
        0x50t
        0x54t
        0x6t
        0xct
        0x45t
        0x2ft
        0x56t
        0x57t
        0x2t
        0x5t
        0x54t
        0x10t
    .end array-data
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .locals 11

    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    const-string v3, "113d1a"

    const v4, -0x3229bd88    # -4.4933504E8f

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const-string v3, "bab2ac"

    invoke-static {v1, v3, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v5, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v5, p1

    iput v5, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v10, [B

    fill-array-data v5, :array_2

    const-string v6, "286097"

    invoke-static {v5, v6, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v5, v9, [B

    fill-array-data v5, :array_3

    const-string v6, "58225b"

    invoke-static {v5, v6, v7, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :array_0
    .array-data 1
        0x73t
        0x44t
        0x5et
        0x14t
        0x11t
        0xft
        0x54t
        0x42t
        0x47t
        0xdt
        0x5ft
        0x6t
        0x11t
        0x58t
        0x5dt
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x3t
        0x1bt
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x70t
        0x4dt
        0x5bt
        0x40t
        0x19t
        0x59t
        0x57t
        0x4bt
        0x42t
        0x59t
        0x57t
        0x50t
        0x12t
        0x57t
        0x50t
        0x10t
    .end array-data

    :array_3
    .array-data 1
        0x15t
        0x4ct
        0x5dt
        0x12t
    .end array-data
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1791c4"

    const-wide/32 v4, -0xa636769

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroidx/fragment/app/LogWriter;

    sget-object v2, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    iput-boolean v6, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->allocBackStackIndex()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9bd2bc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0x58t
        0x54t
        0x5ct
        0xat
        0x40t
        0xbt
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0xdt
        0x9t
        0x5ft
        0xbt
        0x17t
        0x19t
        0x3t
        0x8t
        0x40t
        0x7t
        0x2t
        0x5dt
        0x1bt
        0x44t
        0x51t
        0x3t
        0xft
        0x55t
        0x7t
        0x0t
    .end array-data
.end method

.method public commitNow()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5ac64"

    const/16 v3, 0x20fe

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "549322"

    const-wide/32 v4, -0x72f38784

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x25t
        0x54t
        0xft
        0xdt
        0x59t
        0x40t
        0x46t
        0x51t
        0x4t
        0x17t
        0x57t
        0x57t
        0xet
        0x15t
        0x27t
        0x11t
        0x57t
        0x53t
        0xbt
        0x50t
        0xft
        0x17t
        0x16t
        0x55t
        0x12t
        0x41t
        0x0t
        0x0t
        0x5et
        0x51t
        0x2t
        0x15t
        0x15t
        0xct
        0x16t
        0x55t
        0x46t
        0x51t
        0x8t
        0x5t
        0x50t
        0x51t
        0x14t
        0x50t
        0xft
        0x17t
        0x16t
        0x72t
        0x14t
        0x54t
        0x6t
        0xet
        0x53t
        0x5at
        0x12t
        0x78t
        0x0t
        0xdt
        0x57t
        0x53t
        0x3t
        0x47t
        0x4ft
        0x43t
        0x70t
        0x46t
        0x7t
        0x52t
        0xct
        0x6t
        0x58t
        0x40t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x5dt
        0x4at
        0x13t
        0x53t
        0x5et
        0x47t
        0x51t
        0x58t
        0x57t
        0x4bt
        0x12t
        0x54t
        0x40t
        0x4dt
        0x52t
        0x51t
        0x5at
        0x50t
        0x50t
        0x19t
        0x47t
        0x5dt
        0x12t
        0x54t
        0x14t
        0x7ft
        0x41t
        0x53t
        0x55t
        0x58t
        0x51t
        0x57t
        0x47t
        0x7ft
        0x53t
        0x5bt
        0x55t
        0x5et
        0x56t
        0x40t
        0x1ct
    .end array-data
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 8

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "32d5da"

    const/16 v2, -0x24c0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "88eb1f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "b02716"

    const-wide/32 v2, -0xd6d52da

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "fe6cbd"

    const/16 v2, 0x1fd2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "95ba7d"

    const/16 v2, 0x7b27

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "473228"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "52f347"

    const-wide/32 v2, 0x236b9e96

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "31b709"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "1f41f1"

    const/16 v2, 0x4960

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "e3953a"

    const-wide/32 v2, -0x122da4ea

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "328e50"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "4db1ba"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "026462"

    const v2, -0x32e5354b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_d

    const-string v5, "f25f51"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_e

    const-string v5, "ed7f7b"

    const v6, -0x31386314

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_f

    const-string v5, "88b78f"

    const-wide v6, 0x41de9844a3000000L    # 2.053182092E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v1, :cond_9

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    const-string v4, "b918b9"

    const/16 v5, -0x66af

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_11

    const-string v4, "01ee07"

    const/16 v5, -0x7a49

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v1, :cond_b

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    const-string v4, "299d9b"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v4, "4da5f3"

    const v5, 0x4e0ef551    # 5.9961043E8f

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    const-string v4, "de7813"

    const v5, 0x4e8845af    # 1.1431341E9f

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v4, "9ce5c1"

    const v5, -0x31087ed7

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    const-string v4, "ea1dc0"

    const-wide/32 v6, 0x138f2060

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v4, "5ee223"

    const v5, -0x316183f9

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_4
    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_18

    const-string v4, "7a2261"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_5
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_19

    const-string v4, "c0c8db"

    const v5, -0x311e8925

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_6
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1a

    const-string v4, "0015e1"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_7
    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1b

    const-string v4, "70dc81"

    const-wide/32 v6, 0x6d73df68

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1c

    const-string v4, "fbf906"

    const v5, -0x3123dc40

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1d

    const-string v4, "4e493e"

    const v5, 0x4eb8c1fa

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_a
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1e

    const-string v4, "ea833f"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    return-void

    :array_0
    .array-data 1
        0x5et
        0x7ct
        0x5t
        0x58t
        0x1t
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x55t
        0x2ct
        0xct
        0x55t
        0x3t
        0x40t
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x5dt
        0x71t
        0x58t
        0x5ct
        0x5bt
        0xbt
        0x44t
        0x46t
        0x52t
        0x55t
        0xbt
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x31t
        0x44t
        0x2t
        0xct
        0x17t
        0xft
        0x11t
        0x5ft
        0xct
        0xct
        0x59t
        0x45t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x54t
        0x70t
        0xct
        0x15t
        0x52t
        0x16t
        0x78t
        0x5bt
        0xbt
        0xct
        0xat
        0x47t
    .end array-data

    :array_5
    .array-data 1
        0x14t
        0x5at
        0x76t
        0x4at
        0x5bt
        0x4ct
        0x75t
        0x59t
        0x5at
        0x5ft
        0xft
        0x1bt
    .end array-data

    :array_6
    .array-data 1
        0x58t
        0x62t
        0x9t
        0x43t
        0x71t
        0x59t
        0x41t
        0x57t
        0x14t
        0x72t
        0x5at
        0x5et
        0x58t
        0xft
        0x45t
    .end array-data

    :array_7
    .array-data 1
        0x13t
        0x5ct
        0x32t
        0x58t
        0x40t
        0x7ct
        0x4bt
        0x58t
        0x16t
        0x76t
        0x5et
        0x50t
        0x5et
        0xct
        0x41t
    .end array-data

    :array_8
    .array-data 1
        0x5ct
        0x24t
        0x46t
        0x54t
        0x7t
        0x55t
        0x72t
        0x14t
        0x41t
        0x5ct
        0x4t
        0x65t
        0x58t
        0x12t
        0x58t
        0x54t
        0x34t
        0x54t
        0x42t
        0x5bt
        0x17t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x45t
        0x5et
        0x7bt
        0x47t
        0x56t
        0x0t
        0x1t
        0x70t
        0x4bt
        0x40t
        0x5et
        0x3t
        0x31t
        0x5at
        0x4dt
        0x59t
        0x56t
        0x35t
        0x0t
        0x4bt
        0x4dt
        0x8t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5et
        0x70t
        0x4at
        0x0t
        0x54t
        0x54t
        0x70t
        0x40t
        0x4dt
        0x8t
        0x57t
        0x63t
        0x5bt
        0x5dt
        0x4at
        0x11t
        0x61t
        0x59t
        0x47t
        0x5et
        0x5dt
        0x37t
        0x50t
        0x43t
        0xet
        0x11t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x14t
        0x9t
        0x20t
        0x43t
        0x7t
        0x0t
        0x50t
        0x27t
        0x10t
        0x44t
        0xft
        0x3t
        0x67t
        0xct
        0xdt
        0x43t
        0x16t
        0x35t
        0x5dt
        0x10t
        0xet
        0x54t
        0x36t
        0x4t
        0x4ct
        0x10t
        0x5ft
    .end array-data

    :array_c
    .array-data 1
        0x7ft
        0x42t
        0x53t
        0x46t
        0x57t
        0x46t
        0x59t
        0x5dt
        0x58t
        0x47t
        0xct
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_d
    .array-data 1
        0x5t
        0x5ft
        0x51t
        0x5bt
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x44t
        0x78t
        0x16t
        0x17t
        0x41t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x2t
        0x18t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x7t
        0x57t
        0x45t
        0x5dt
        0x10t
        0x78t
        0xct
        0x50t
        0x5ct
        0x5t
        0x41t
    .end array-data

    :array_11
    .array-data 1
        0x10t
        0x54t
        0x1dt
        0xct
        0x44t
        0x76t
        0x5et
        0x58t
        0x8t
        0x58t
        0x13t
    .end array-data

    :array_12
    .array-data 1
        0x42t
        0x56t
        0x49t
        0x21t
        0x57t
        0x16t
        0x57t
        0x4bt
        0x78t
        0xat
        0x50t
        0xft
        0xft
        0x1at
    .end array-data

    nop

    :array_13
    .array-data 1
        0x14t
        0x14t
        0xet
        0x45t
        0x23t
        0x4bt
        0x5dt
        0x10t
        0x20t
        0x5bt
        0xft
        0x5et
        0x9t
        0x47t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2bt
        0x35t
        0x68t
        0x6bt
        0x74t
        0x67t
        0x3bt
        0x28t
        0x76t
        0x60t
        0x6et
        0x7ft
        0x2dt
        0x23t
        0x72t
        0x7bt
        0x68t
        0x70t
        0x28t
        0x20t
    .end array-data

    :array_15
    .array-data 1
        0x6ct
        0x2dt
        0x36t
        0x70t
        0x37t
        0x6et
        0x69t
        0x31t
        0x2ct
        0x78t
        0x22t
        0x63t
        0x60t
        0x3ct
        0x2bt
        0x74t
        0x35t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x36t
        0x24t
        0x65t
        0x3bt
        0x33t
        0x62t
        0x2ct
        0x2ct
        0x70t
        0x36t
        0x3at
        0x6ft
        0x2bt
        0x20t
        0x67t
    .end array-data

    :array_17
    .array-data 1
        0x74t
        0x31t
        0x31t
        0x73t
        0x71t
        0x7bt
    .end array-data

    nop

    :array_18
    .array-data 1
        0x73t
        0x24t
        0x66t
        0x73t
        0x75t
        0x79t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x30t
        0x78t
        0x2ct
        0x6ft
    .end array-data

    :array_1a
    .array-data 1
        0x78t
        0x79t
        0x75t
        0x70t
    .end array-data

    :array_1b
    .array-data 1
        0x65t
        0x75t
        0x29t
        0x2ct
        0x6et
        0x74t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x34t
        0x27t
        0x36t
        0x75t
        0x71t
        0x75t
        0x23t
    .end array-data

    :array_1d
    .array-data 1
        0x75t
        0x21t
        0x70t
    .end array-data

    :array_1e
    .array-data 1
        0x2bt
        0x34t
        0x74t
        0x7ft
    .end array-data
.end method

.method executeOps()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v5, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2a6026"

    const-wide/32 v4, -0x617ddbae

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    :goto_1
    iget-boolean v5, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_1

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v0, v9, :cond_1

    if-eqz v4, :cond_1

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :pswitch_9
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1, v9}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x67t
        0xft
        0x5dt
        0x5et
        0x5dt
        0x41t
        0x5ct
        0x41t
        0x55t
        0x5dt
        0x56t
        0xct
        0x12t
    .end array-data
.end method

.method executePopOps(Z)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v3, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->reverseTransit(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "fac1c4"

    const-wide/32 v4, -0x53aeae7e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    :goto_1
    iget-boolean v3, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_1

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_1

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v7}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v7}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    goto/16 :goto_1

    :pswitch_9
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v7}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x33t
        0xft
        0x8t
        0x5ft
        0xct
        0x43t
        0x8t
        0x41t
        0x0t
        0x5ct
        0x7t
        0xet
        0x46t
    .end array-data
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object p2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v4, 0x9

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v7, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    move-object v3, p2

    move v2, v1

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget v8, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v8, v7, :cond_6

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_2
    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iget-object v9, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :goto_4
    move v1, v2

    move-object p2, v3

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-object p2

    :cond_6
    move v1, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "da909c"

    const/16 v3, 0x2524

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/fragment/app/BackStackRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x14t
        0x57t
        0xat
        0x19t
    .end array-data
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2fce52"

    const-wide/32 v4, 0x49b94be6    # 6.11100093E-315

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ccb06a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x71t
        0x7t
        0xdt
        0xbt
        0x5at
        0x46t
        0x12t
        0xet
        0xat
        0x1t
        0x50t
        0x12t
        0x74t
        0x14t
        0x2t
        0x2t
        0x58t
        0x57t
        0x5ct
        0x12t
        0x43t
        0x4t
        0x41t
        0x46t
        0x53t
        0x5t
        0xbt
        0x0t
        0x51t
        0x12t
        0x46t
        0x9t
        0x43t
        0x4t
        0x15t
        0x56t
        0x5bt
        0x0t
        0x5t
        0x0t
        0x47t
        0x57t
        0x5ct
        0x12t
        0x43t
        0x23t
        0x47t
        0x53t
        0x55t
        0xbt
        0x6t
        0xbt
        0x41t
        0x7ft
        0x53t
        0x8t
        0x2t
        0x2t
        0x50t
        0x40t
        0x1ct
        0x46t
        0x25t
        0x17t
        0x54t
        0x55t
        0x5ft
        0x3t
        0xdt
        0x11t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0xat
        0x11t
        0x10t
        0x57t
        0xdt
        0x11t
        0x6t
        0x3t
        0x54t
        0x4ft
        0x41t
        0x2t
        0x17t
        0x16t
        0x51t
        0x55t
        0x9t
        0x6t
        0x7t
        0x42t
        0x44t
        0x59t
        0x41t
        0x2t
        0x43t
        0x24t
        0x42t
        0x57t
        0x6t
        0xet
        0x6t
        0xct
        0x44t
        0x7bt
        0x0t
        0xdt
        0x2t
        0x5t
        0x55t
        0x44t
        0x4ft
    .end array-data
.end method

.method interactsWith(I)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_1
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-ne p3, p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, -0x1

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v2, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_2
    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_7

    move v5, p2

    :goto_3
    if-ge v5, p3, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_4
    if-ge v4, v8, :cond_4

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v9, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_5
    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-static {v0}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "edbf8f"

    const-wide v4, 0x41aa032a68000000L    # 2.1820754E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0f8ba7"

    const-wide/32 v4, -0x1a9875ca

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x26t
        0x5t
        0xct
        0x8t
        0x57t
        0x12t
        0x45t
        0x16t
        0x7t
        0xbt
        0x57t
        0x10t
        0x0t
        0x44t
        0x24t
        0x14t
        0x59t
        0x1t
        0x8t
        0x1t
        0xct
        0x12t
        0x18t
        0x7t
        0x11t
        0x10t
        0x3t
        0x5t
        0x50t
        0x3t
        0x1t
        0x44t
        0x16t
        0x9t
        0x18t
        0x7t
        0x45t
        0x0t
        0xbt
        0x0t
        0x5et
        0x3t
        0x17t
        0x1t
        0xct
        0x12t
        0x18t
        0x20t
        0x17t
        0x5t
        0x5t
        0xbt
        0x5dt
        0x8t
        0x11t
        0x29t
        0x3t
        0x8t
        0x59t
        0x1t
        0x0t
        0x16t
        0x4ct
        0x46t
        0x7et
        0x14t
        0x4t
        0x3t
        0xft
        0x3t
        0x56t
        0x12t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0xft
        0x4bt
        0x42t
        0x0t
        0x5bt
        0x42t
        0x3t
        0x59t
        0x6t
        0x18t
        0x17t
        0x51t
        0x12t
        0x4ct
        0x3t
        0x2t
        0x5ft
        0x55t
        0x2t
        0x18t
        0x16t
        0xet
        0x17t
        0x51t
        0x46t
        0x7et
        0x10t
        0x0t
        0x50t
        0x5dt
        0x3t
        0x56t
        0x16t
        0x2ct
        0x56t
        0x5et
        0x7t
        0x5ft
        0x7t
        0x13t
        0x19t
    .end array-data
.end method

.method public runOnCommitRunnables()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .locals 7

    const/16 v2, 0x20

    const/4 v6, 0x1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_3

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_0

    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p2, v0, :cond_2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "43e5d7"

    const/16 v3, -0x7eaa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "56aa5e"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "a3adfc"

    const-wide v4, 0x41a84ff8d2000000L    # 2.03947113E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ffe735"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x44

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "57687c"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x77t
        0x52t
        0xbt
        0x5bt
        0xbt
        0x43t
        0x14t
        0x40t
        0x0t
        0x41t
        0x44t
        0x5at
        0x55t
        0x4bt
        0xct
        0x58t
        0x11t
        0x5at
        0x14t
        0x7ft
        0xct
        0x53t
        0x1t
        0x54t
        0x4dt
        0x50t
        0x9t
        0x50t
        0x44t
        0x43t
        0x5bt
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x57t
        0x7t
        0x15t
        0x50t
        0x17t
        0x15t
        0x42t
        0x9t
        0x4t
        0x15t
        0x23t
        0x47t
        0x57t
        0x6t
        0xct
        0x50t
        0xbt
        0x41t
        0x16t
        0x9t
        0x0t
        0x46t
        0x45t
        0x57t
        0x53t
        0x4t
        0xft
        0x15t
        0x6t
        0x47t
        0x53t
        0x0t
        0x15t
        0x50t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        0x52t
        0xft
        0xat
        0x9t
        0x17t
        0x41t
        0x40t
        0x4t
        0x10t
        0x46t
        0xet
        0x0t
        0x4bt
        0x8t
        0x9t
        0x13t
        0xet
        0x41t
        0x7ft
        0x8t
        0x2t
        0x3t
        0x0t
        0x18t
        0x50t
        0xdt
        0x1t
        0x46t
        0x17t
        0xet
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x48t
        0x46t
        0x30t
        0x44t
        0x56t
        0x15t
        0x14t
        0x3t
        0x8t
        0x58t
        0x45t
        0x50t
        0x4et
        0x4ft
        0x45t
        0x43t
        0x5ct
        0x15t
        0x14t
        0x3t
        0x8t
        0x58t
        0x45t
        0x50t
        0x46t
        0x12t
        0xdt
        0x52t
        0x13t
        0x53t
        0x14t
        0x7t
        0x2t
        0x5at
        0x56t
        0x5bt
        0x12t
        0x46t
        0x3t
        0x45t
        0x5ct
        0x58t
        0x46t
        0x12t
        0xdt
        0x52t
        0x13t
        0x73t
        0x14t
        0x7t
        0x2t
        0x5at
        0x56t
        0x5bt
        0x12t
        0x2bt
        0x4t
        0x59t
        0x52t
        0x52t
        0x3t
        0x14t
        0x45t
        0x56t
        0x5dt
        0x51t
        0x46t
        0x12t
        0x17t
        0x5et
        0x54t
        0x52t
        0x3t
        0x14t
        0x45t
        0x5et
        0x47t
        0x46t
        0x46t
        0x2t
        0x0t
        0x44t
        0x47t
        0x47t
        0x13t
        0x5t
        0x11t
        0x5et
        0x5ct
        0x5bt
        0x48t
    .end array-data

    :array_4
    .array-data 1
        0x76t
        0x56t
        0x58t
        0x56t
        0x58t
        0x17t
        0x15t
        0x44t
        0x53t
        0x4ct
        0x7at
        0x2t
        0x4dt
        0x7bt
        0x5ft
        0x5et
        0x52t
        0x0t
        0x4ct
        0x54t
        0x5at
        0x5dt
        0x17t
        0x5t
        0x5at
        0x45t
        0x16t
        0x7et
        0x45t
        0x2t
        0x52t
        0x5at
        0x53t
        0x56t
        0x43t
        0x43t
        0x5bt
        0x58t
        0x42t
        0x18t
        0x56t
        0x17t
        0x41t
        0x56t
        0x55t
        0x50t
        0x52t
        0x7t
        0x15t
        0x43t
        0x59t
        0x18t
        0x71t
        0x11t
        0x54t
        0x50t
        0x5bt
        0x5dt
        0x59t
        0x17t
        0x78t
        0x56t
        0x58t
        0x59t
        0x50t
        0x6t
        0x47t
        0x17t
    .end array-data
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-static {v0}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c3ccd5"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d5ac4b"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x20t
        0x52t
        0xdt
        0xdt
        0xbt
        0x41t
        0x43t
        0x40t
        0x6t
        0x17t
        0x34t
        0x47t
        0xat
        0x5et
        0x2t
        0x11t
        0x1dt
        0x7bt
        0x2t
        0x45t
        0xat
        0x4t
        0x5t
        0x41t
        0xat
        0x5ct
        0xdt
        0x43t
        0x2t
        0x5at
        0x11t
        0x13t
        0x25t
        0x11t
        0x5t
        0x52t
        0xet
        0x56t
        0xdt
        0x17t
        0x44t
        0x54t
        0x17t
        0x47t
        0x2t
        0x0t
        0xct
        0x50t
        0x7t
        0x13t
        0x17t
        0xct
        0x44t
        0x54t
        0x43t
        0x57t
        0xat
        0x5t
        0x2t
        0x50t
        0x11t
        0x56t
        0xdt
        0x17t
        0x44t
        0x73t
        0x11t
        0x52t
        0x4t
        0xet
        0x1t
        0x5bt
        0x17t
        0x7et
        0x2t
        0xdt
        0x5t
        0x52t
        0x6t
        0x41t
        0x4dt
        0x43t
        0x22t
        0x47t
        0x2t
        0x54t
        0xet
        0x6t
        0xat
        0x41t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x5ct
        0x12t
        0x43t
        0x55t
        0xet
        0x16t
        0x50t
        0x0t
        0x7t
        0x4dt
        0x42t
        0x5t
        0x41t
        0x15t
        0x2t
        0x57t
        0xat
        0x1t
        0x51t
        0x41t
        0x17t
        0x5bt
        0x42t
        0x5t
        0x15t
        0x27t
        0x11t
        0x55t
        0x5t
        0x9t
        0x50t
        0xft
        0x17t
        0x79t
        0x3t
        0xat
        0x54t
        0x6t
        0x6t
        0x46t
        0x4ct
    .end array-data
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0a6985"

    const-wide v4, 0x41dc410f08c00000L    # 1.896102947E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1a7462"

    const-wide v4, 0x41d3f923adc00000L    # 1.340378807E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x73t
        0x0t
        0x58t
        0x57t
        0x57t
        0x41t
        0x10t
        0x12t
        0x5et
        0x56t
        0x4ft
        0x15t
        0x76t
        0x13t
        0x57t
        0x5et
        0x55t
        0x50t
        0x5et
        0x15t
        0x16t
        0x58t
        0x4ct
        0x41t
        0x51t
        0x2t
        0x5et
        0x5ct
        0x5ct
        0x15t
        0x44t
        0xet
        0x16t
        0x58t
        0x18t
        0x51t
        0x59t
        0x7t
        0x50t
        0x5ct
        0x4at
        0x50t
        0x5et
        0x15t
        0x16t
        0x7ft
        0x4at
        0x54t
        0x57t
        0xct
        0x53t
        0x57t
        0x4ct
        0x78t
        0x51t
        0xft
        0x57t
        0x5et
        0x5dt
        0x47t
        0x1et
        0x41t
        0x70t
        0x4bt
        0x59t
        0x52t
        0x5dt
        0x4t
        0x58t
        0x4dt
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x8t
        0x44t
        0x14t
        0x57t
        0x5et
        0x43t
        0x4t
        0x56t
        0x50t
        0x4ft
        0x12t
        0x50t
        0x15t
        0x43t
        0x55t
        0x55t
        0x5at
        0x54t
        0x5t
        0x17t
        0x40t
        0x59t
        0x12t
        0x50t
        0x41t
        0x71t
        0x46t
        0x57t
        0x55t
        0x5ct
        0x4t
        0x59t
        0x40t
        0x7bt
        0x53t
        0x5ft
        0x0t
        0x50t
        0x51t
        0x44t
        0x1ct
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "968f98"

    const-wide/32 v4, 0xe5f37be

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3634c5"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-array v1, v3, [B

    const/4 v2, 0x0

    const/16 v3, 0x1e

    aput-byte v3, v1, v2

    const-string v2, "ceb15d"

    const/16 v3, -0x3161

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x57t
        0x5bt
        0xdt
        0x6at
        0x4ct
        0x58t
        0x55t
        0x53t
        0x23t
        0x57t
        0x4ct
        0x4bt
        0x4ft
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x15t
    .end array-data
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v1, p2

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :pswitch_5
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
