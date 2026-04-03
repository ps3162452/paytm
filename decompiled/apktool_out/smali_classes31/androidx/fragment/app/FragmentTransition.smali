.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$Callback;,
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    :goto_0
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v5, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, v5, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v6, :cond_0

    if-eqz p3, :cond_7

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v3, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget v0, v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v2, :cond_2

    invoke-static {v0, p2, v6}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v0

    iput-object v5, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object p0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_2
    if-nez p4, :cond_4

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v1, v5, :cond_3

    iput-object v8, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/FragmentStore;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_6

    :cond_5
    invoke-static {v0, p2, v6}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v0

    iput-object v5, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object p0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_6
    if-nez p4, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne v1, v5, :cond_0

    iput-object v8, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_7
    iget v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    goto :goto_1

    :pswitch_1
    if-eqz p4, :cond_9

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_8

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    move v3, v2

    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_3

    :pswitch_2
    if-eqz p4, :cond_b

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    move v3, v0

    move v4, v1

    move v1, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :pswitch_3
    if-eqz p4, :cond_e

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_d

    iget-object v0, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, v5, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_d

    move v0, v1

    :goto_5
    move v3, v0

    move v4, v1

    move v1, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_5

    :cond_f
    move v0, v2

    goto :goto_5

    :pswitch_4
    if-eqz p4, :cond_10

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    :goto_6
    move v3, v2

    move v4, v2

    move v2, v0

    goto/16 :goto_2

    :cond_10
    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_11

    iget-boolean v0, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_6

    :cond_11
    move v0, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

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

    invoke-static {p0, v0, p1, v2, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_0
    if-lt v6, p3, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    :goto_1
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v7, v0, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v0, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v7
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {v2, v4, v3, v6}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v2, v4, v3, v6}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v4, v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-static {p1, v2}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v4, v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 6

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_8

    invoke-static {v1, v3}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    goto :goto_0

    :cond_8
    sget-object v2, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v2, :cond_9

    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, v2

    goto :goto_0

    :cond_9
    if-nez v1, :cond_a

    if-eqz v2, :cond_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "420316"

    const-wide v4, 0x41c8c0bbf1800000L    # 8.30568419E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7dt
        0x5ct
        0x46t
        0x52t
        0x5dt
        0x5ft
        0x50t
        0x12t
        0x64t
        0x41t
        0x50t
        0x58t
        0x47t
        0x5bt
        0x44t
        0x5at
        0x5et
        0x58t
        0x14t
        0x46t
        0x49t
        0x43t
        0x54t
        0x45t
    .end array-data
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    iget-object v12, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v0, p4

    iget-object v13, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-eqz v12, :cond_0

    if-nez v13, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    move-object/from16 v0, p4

    iget-boolean v14, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v3, v2}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-nez p7, :cond_4

    if-nez p8, :cond_4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    invoke-static {v12, v13, v14, v6, v3}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v4, :cond_6

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p4

    iget-object v8, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v3, p0

    move-object/from16 v5, p8

    invoke-static/range {v3 .. v8}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    if-eqz p7, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_5
    :goto_3
    new-instance v5, Landroidx/fragment/app/FragmentTransition$6;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object v8, v4

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    invoke-direct/range {v5 .. v17}, Landroidx/fragment/app/FragmentTransition$6;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_0

    :cond_6
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    iget-object v10, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v10, :cond_1

    if-nez v12, :cond_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p4

    iget-boolean v13, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->clear()V

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->clear()V

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez p7, :cond_7

    if-nez p8, :cond_7

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    invoke-static {p0, v10, v12, v13}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v0, v5, v3}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-static {v0, v8, v3}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    invoke-static {v10, v12, v13, v5, v2}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v3, :cond_9

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {p0, v3, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p4

    iget-object v7, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v2, p0

    move-object/from16 v4, p8

    invoke-static/range {v2 .. v7}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-static {v8, v0, v1, v13}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_8
    :goto_3
    new-instance v4, Landroidx/fragment/app/FragmentTransition$5;

    move-object v5, v10

    move-object v6, v12

    move v7, v13

    move-object v10, p0

    invoke-direct/range {v4 .. v11}, Landroidx/fragment/app/FragmentTransition$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    invoke-static {p1, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v14, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    invoke-static {v2, v14, v3}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v2, v0, v4}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-static/range {v2 .. v10}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v9, :cond_2

    if-nez v13, :cond_2

    if-eqz v10, :cond_0

    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v2, v10, v0, v7, v1}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v10, v2

    move-object v11, v9

    invoke-static/range {v10 .. v15}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    if-eqz v17, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    :cond_4
    new-instance v3, Landroidx/core/os/CancellationSignal;

    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    new-instance v4, Landroidx/fragment/app/FragmentTransition$3;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v3}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :cond_5
    if-eqz v16, :cond_0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    move-object/from16 v17, v9

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v8

    invoke-virtual/range {v15 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v21, v2

    move-object/from16 v22, p0

    move-object/from16 v23, v14

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v18

    move-object/from16 v28, v12

    move-object/from16 v29, v20

    invoke-static/range {v21 .. v29}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v8, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v8, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    move-object v12, v10

    goto :goto_1
.end method

.method private static configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v15, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-static/range {v2 .. v10}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    if-eqz v10, :cond_0

    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v2, v10, v0, v7, v1}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p2

    invoke-static {v2, v9, v15, v8, v0}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v18

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object v11, v2

    move-object v12, v9

    move-object v13, v10

    invoke-static/range {v11 .. v16}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    if-eqz v17, :cond_4

    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    :cond_3
    new-instance v3, Landroidx/core/os/CancellationSignal;

    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    new-instance v4, Landroidx/fragment/app/FragmentTransition$1;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v3}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v16, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v2, v10, v0, v1}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v15, v2

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v8

    invoke-virtual/range {v15 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v5, v2

    move-object/from16 v6, p0

    move-object v9, v3

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v14, v7, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/fragment/app/FragmentTransition$2;

    invoke-direct {v1, p3}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    const/16 v0, 0x2d

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6f6159"

    const v2, 0x4e0867b0    # 5.7212416E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x57t
        0x8t
        0x52t
        0x43t
        0x5at
        0x50t
        0x52t
        0x1et
        0x18t
        0x45t
        0x47t
        0x58t
        0x58t
        0x15t
        0x5ft
        0x45t
        0x5ct
        0x56t
        0x58t
        0x48t
        0x70t
        0x43t
        0x54t
        0x5et
        0x5bt
        0x3t
        0x58t
        0x45t
        0x61t
        0x4bt
        0x57t
        0x8t
        0x45t
        0x58t
        0x41t
        0x50t
        0x59t
        0x8t
        0x65t
        0x44t
        0x45t
        0x49t
        0x59t
        0x14t
        0x42t
    .end array-data
.end method

.method static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/FragmentTransition$4;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v2, p4

    :goto_0
    if-ge v2, p5, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v3, p6}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3, p6}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_5

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1, p2, p3, p4, p5}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v6

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    if-eqz p6, :cond_4

    invoke-static {v1, v0, v4, v6, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_3

    :cond_4
    invoke-static {v1, v0, v4, v6, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
