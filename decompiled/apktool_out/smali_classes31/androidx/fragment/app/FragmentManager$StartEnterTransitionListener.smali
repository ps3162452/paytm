.class Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field final mIsBack:Z

.field private mNumPostponed:I

.field final mRecord:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroidx/fragment/app/BackStackRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    return-void
.end method


# virtual methods
.method cancelTransaction()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/fragment/app/FragmentManager;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method completeTransaction()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v5, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v0, v4, v5, v3, v2}, Landroidx/fragment/app/FragmentManager;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartEnterTransition()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    goto :goto_0
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
