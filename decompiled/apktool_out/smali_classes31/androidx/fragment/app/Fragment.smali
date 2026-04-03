.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/activity/result/ActivityResultCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$AnimationInfo;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$OnPreAttachedListener;,
        Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x4

.field static final ATTACHED:I = 0x0

.field static final AWAITING_ENTER_EFFECTS:I = 0x6

.field static final AWAITING_EXIT_EFFECTS:I = 0x3

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = -0x1

.field static final RESUMED:I = 0x7

.field static final STARTED:I = 0x5

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field static final VIEW_CREATED:I = 0x2


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field mInLayout:Z

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment$OnPreAttachedListener;",
            ">;"
        }
    .end annotation
.end field

.field mParentFragment:Landroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/Fragment;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    new-instance v0, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput p1, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method private getMinimumMaxLifecycleState()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private initLifecycle()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v6, 0x55

    const/16 v2, 0x1f

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e161f4"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "731d50"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "f9255c"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "16ae89"

    const v4, -0x3146fc28

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "48d218"

    const/16 v4, 0x2da4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "1531ec"

    const v4, -0x314d225a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "86664a"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_7

    const-string v3, "0c2ebc"

    const v4, 0x4eba47ac

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :array_0
    .array-data 1
        0x30t
        0x5ft
        0x57t
        0x53t
        0xat
        0x51t
        0x45t
        0x45t
        0x59t
        0x11t
        0xft
        0x5at
        0x16t
        0x45t
        0x57t
        0x5ft
        0x12t
        0x5dt
        0x4t
        0x45t
        0x53t
        0x11t
        0x0t
        0x46t
        0x4t
        0x56t
        0x5bt
        0x54t
        0x8t
        0x40t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x13t
        0x52t
        0x5t
        0x59t
        0x5ct
        0x5et
        0x5dt
        0x56t
        0x44t
        0x73t
        0x42t
        0x56t
        0x54t
        0x5ct
        0x1t
        0x5bt
        0x44t
        0x17t
        0x50t
        0x5et
        0xat
        0x46t
        0x44t
        0x45t
        0x46t
        0x52t
        0x10t
        0x5at
        0x42t
        0x17t
        0x50t
        0x50t
        0x11t
        0x46t
        0x55t
        0x53t
        0x13t
        0x50t
        0xat
        0x15t
        0x55t
        0x4ft
        0x50t
        0x54t
        0x14t
        0x41t
        0x59t
        0x58t
        0x5dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0x57t
        0x53t
        0x57t
        0x59t
        0x6t
        0x46t
        0x4dt
        0x5dt
        0x15t
        0x5ct
        0xdt
        0x15t
        0x4dt
        0x53t
        0x5bt
        0x41t
        0xat
        0x7t
        0x4dt
        0x57t
        0x15t
        0x53t
        0x11t
        0x7t
        0x5et
        0x5ft
        0x50t
        0x5bt
        0x17t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x16t
        0x2t
        0xat
        0x4dt
        0x55t
        0x55t
        0x16t
        0xft
        0xat
        0x4ct
        0x19t
        0x57t
        0x5ft
        0xft
        0x1t
        0x18t
        0x7ft
        0x43t
        0x57t
        0x6t
        0x8t
        0x5dt
        0x57t
        0x45t
        0x16t
        0x2t
        0xat
        0x56t
        0x4at
        0x45t
        0x44t
        0x14t
        0x6t
        0x4ct
        0x56t
        0x43t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x61t
        0x56t
        0x5t
        0x50t
        0x5dt
        0x5dt
        0x14t
        0x4ct
        0xbt
        0x12t
        0x58t
        0x56t
        0x47t
        0x4ct
        0x5t
        0x5ct
        0x45t
        0x51t
        0x55t
        0x4ct
        0x1t
        0x12t
        0x57t
        0x4at
        0x55t
        0x5ft
        0x9t
        0x57t
        0x5ft
        0x4ct
        0x14t
    .end array-data

    :array_5
    .array-data 1
        0xbt
        0x15t
        0x5et
        0x50t
        0xet
        0x6t
        0x11t
        0x46t
        0x46t
        0x43t
        0x0t
        0x43t
        0x52t
        0x59t
        0x52t
        0x42t
        0x16t
        0x43t
        0x5ft
        0x54t
        0x5et
        0x54t
        0x45t
        0x6t
        0x49t
        0x5ct
        0x40t
        0x45t
        0x16t
        0x4ft
        0x11t
        0x5ct
        0x40t
        0x11t
        0x15t
        0x16t
        0x53t
        0x59t
        0x5at
        0x52t
        0x49t
        0x43t
        0x50t
        0x5bt
        0x57t
        0x11t
        0xdt
        0x2t
        0x42t
        0x15t
        0x52t
        0x5ft
        0x45t
        0x6t
        0x5ct
        0x45t
        0x47t
        0x48t
        0x45t
        0x0t
        0x5et
        0x5bt
        0x40t
        0x45t
        0x17t
        0x16t
        0x52t
        0x41t
        0x5ct
        0x43t
        0x45t
        0x17t
        0x59t
        0x54t
        0x47t
        0x11t
        0xct
        0x10t
        0x11t
        0x45t
        0x46t
        0x53t
        0x9t
        0xat
        0x52t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x6dt
        0x58t
        0x57t
        0x54t
        0x58t
        0x4t
        0x18t
        0x42t
        0x59t
        0x16t
        0x5dt
        0xft
        0x4bt
        0x42t
        0x57t
        0x58t
        0x40t
        0x8t
        0x59t
        0x42t
        0x53t
        0x16t
        0x52t
        0x13t
        0x59t
        0x51t
        0x5bt
        0x53t
        0x5at
        0x15t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x43t
        0x5ft
        0x4t
        0x9t
        0x6t
        0x10t
        0x10t
        0x47t
        0x17t
        0x7t
        0x43t
        0x53t
        0xft
        0x53t
        0x16t
        0x11t
        0x43t
        0x5et
        0x2t
        0x5ft
        0x0t
        0x42t
        0x6t
        0x48t
        0xat
        0x41t
        0x11t
        0x11t
        0x4ft
        0x10t
        0xat
        0x41t
        0x45t
        0x12t
        0x16t
        0x52t
        0xft
        0x5bt
        0x6t
        0x4et
        0x43t
        0x51t
        0xdt
        0x56t
        0x45t
        0xat
        0x2t
        0x43t
        0x43t
        0x53t
        0xbt
        0x42t
        0x6t
        0x5dt
        0x13t
        0x46t
        0x1ct
        0x42t
        0x0t
        0x5ft
        0xdt
        0x41t
        0x11t
        0x10t
        0x16t
        0x53t
        0x17t
        0x5dt
        0x17t
        0x42t
        0x17t
        0x58t
        0x2t
        0x46t
        0x45t
        0xbt
        0x10t
        0x10t
        0x13t
        0x47t
        0x7t
        0xet
        0xat
        0x53t
    .end array-data
.end method

.method private prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;",
            "Landroidx/arch/core/util/Function",
            "<",
            "Ljava/lang/Void;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            ">;",
            "Landroidx/activity/result/ActivityResultCallback",
            "<TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher",
            "<TI;>;"
        }
    .end annotation

    const/4 v3, 0x1

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-gt v0, v3, :cond_0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Landroidx/fragment/app/Fragment$8;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/Fragment$8;-><init>(Landroidx/fragment/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V

    new-instance v0, Landroidx/fragment/app/Fragment$9;

    invoke-direct {v0, p0, v3, p1}, Landroidx/fragment/app/Fragment$9;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b76c14"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xba

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e8cbce"

    const/16 v3, 0x384b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x24t
        0x45t
        0x57t
        0x4t
        0x5ct
        0x51t
        0xct
        0x43t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x51t
        0x10t
        0x42t
        0x2t
        0x11t
        0x11t
        0x5dt
        0xet
        0x12t
        0x17t
        0xct
        0xbt
        0x5ft
        0x43t
        0x16t
        0xct
        0x45t
        0x17t
        0x5dt
        0x4t
        0xbt
        0x10t
        0x11t
        0x0t
        0x4at
        0x25t
        0xdt
        0x11t
        0x24t
        0x6t
        0x4ct
        0xat
        0x14t
        0xat
        0x11t
        0x1ct
        0x6at
        0x6t
        0x11t
        0x16t
        0x9t
        0x11t
        0x18t
        0x2t
        0x4t
        0x17t
        0x0t
        0x17t
        0x18t
        0x1t
        0x7t
        0xat
        0xbt
        0x2t
        0x18t
        0x0t
        0x10t
        0x6t
        0x4t
        0x11t
        0x5dt
        0x7t
        0x4ct
        0x43t
        0x23t
        0x17t
        0x59t
        0x4t
        0xft
        0x6t
        0xbt
        0x11t
        0x4bt
        0x43t
        0xft
        0x16t
        0x16t
        0x11t
        0x18t
        0x0t
        0x3t
        0xft
        0x9t
        0x45t
        0x4at
        0x6t
        0x5t
        0xat
        0x16t
        0x11t
        0x5dt
        0x11t
        0x24t
        0xct
        0x17t
        0x24t
        0x5bt
        0x17t
        0xbt
        0x15t
        0xct
        0x11t
        0x41t
        0x31t
        0x7t
        0x10t
        0x10t
        0x9t
        0x4ct
        0x4bt
        0x4bt
        0x43t
        0x7t
        0x0t
        0x5et
        0xct
        0x10t
        0x6t
        0x45t
        0x11t
        0x50t
        0x6t
        0x1bt
        0x43t
        0x4t
        0x17t
        0x5dt
        0x43t
        0x1t
        0x11t
        0x0t
        0x4t
        0x4ct
        0x6t
        0x6t
        0x43t
        0x4dt
        0xct
        0x16t
        0x6t
        0x4ct
        0x43t
        0xct
        0xbt
        0x51t
        0x17t
        0xbt
        0x2t
        0x9t
        0xct
        0x42t
        0x2t
        0x16t
        0xat
        0xat
        0xbt
        0x14t
        0x43t
        0xdt
        0xdt
        0x24t
        0x11t
        0x4ct
        0x2t
        0x1t
        0xbt
        0x4dt
        0x4ct
        0x14t
        0x43t
        0xdt
        0x11t
        0x45t
        0xat
        0x56t
        0x20t
        0x10t
        0x6t
        0x4t
        0x11t
        0x5dt
        0x4bt
        0x4bt
        0x4at
        0x4bt
    .end array-data
.end method

.method private registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreViewState()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "83a562"

    const/16 v3, -0x43fd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d0f75f"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0x5ct
        0x17t
        0x50t
        0x42t
        0x5dt
        0x18t
        0x61t
        0x24t
        0x66t
        0x62t
        0x7dt
        0x6at
        0x76t
        0x3et
        0x63t
        0x7ft
        0x77t
        0x6ft
        0x6ct
        0x32t
        0x61t
        0x77t
        0x66t
        0x7dt
        0x9t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x22t
        0x42t
        0x7t
        0x50t
        0x58t
        0x3t
        0xat
        0x44t
        0x2bt
        0x56t
        0x5bt
        0x7t
        0x3t
        0x55t
        0x14t
    .end array-data
.end method


# virtual methods
.method callStartTransitionListener(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object v0, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/SpecialEffectsController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    goto :goto_1
.end method

.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .locals 1

    new-instance v0, Landroidx/fragment/app/Fragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0xb

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "55cbd3"

    const v2, 0x4e8c01f9    # 1.1744698E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c46e9a"

    const-wide/32 v2, -0x570ec07a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "4a6bf3"

    const-wide/32 v2, 0x600e747d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "e3fe33"

    const-wide v2, 0x41d3f49784400000L    # 1.339186705E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "1f868c"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "5106a9"

    const v2, 0x4e8c3941

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "fd493c"

    const v2, 0x4e99c330

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    new-array v0, v7, [B

    fill-array-data v0, :array_7

    const-string v1, "cc8377"

    const/16 v2, 0x5dc9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "2b6333"

    const-wide/32 v2, -0x9e88f61

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "15944e"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "21bd45"

    const/16 v2, 0x494e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    new-array v0, v7, [B

    fill-array-data v0, :array_b

    const-string v1, "263d54"

    const-wide/32 v2, -0x43d76156

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "3f04ee"

    const-wide v2, -0x3e2a88cef9000000L    # -1.440531484E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "b4291b"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_e

    const-string v1, "af6a8a"

    const-wide/32 v2, 0x3f3959d2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "d4dd7f"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "92c7e5"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v6, [B

    fill-array-data v0, :array_11

    const-string v1, "a781af"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_12

    const-string v1, "3407e1"

    const v2, 0x4d94da3f    # 3.1216637E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v7, [B

    fill-array-data v0, :array_13

    const-string v1, "777567"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "fbd1f5"

    const-wide/32 v2, 0xa958ab3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_15

    const-string v1, "7bfce1"

    const v2, 0x4e9ee119

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const-string v1, "47e3fa"

    const-wide v2, -0x3e2151cb4d400000L    # -2.058932939E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v2, "c47138"

    const v3, -0x32a1557f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    const-string v1, "dbddbc"

    const-wide/32 v2, -0x33b63f72

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_19

    const-string v1, "80bab8"

    const-wide/32 v2, -0x753deca0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    const-string v1, "93582b"

    const-wide/32 v2, -0x48cf0df5

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1b

    const-string v1, "c1afb5"

    const-wide v2, -0x3e2dfbc38c800000L    # -1.20907003E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_1c

    const-string v1, "418590"

    const-wide v2, 0x41dbd1f7c3800000L    # 1.866981134E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1d

    const-string v1, "3ba20d"

    const v2, -0x31b5171d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v7, [B

    fill-array-data v0, :array_1e

    const-string v1, "51c301"

    const-wide/32 v2, 0xd7dee5

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v0, v6, [B

    fill-array-data v0, :array_1f

    const-string v1, "0f2741"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    const-string v1, "e09021"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [B

    fill-array-data v1, :array_21

    const-string v2, "00b7f5"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    const/16 v2, 0x5f

    aput-byte v2, v1, v4

    const-string v2, "edc377"

    const-wide/32 v4, -0x32e11321

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x73t
        0x11t
        0x3t
        0x3t
        0x5et
        0x50t
        0x5bt
        0x17t
        0x2bt
        0x0t
        0xet
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x59t
        0x75t
        0xat
        0x57t
        0x15t
        0x2t
        0x5dt
        0x58t
        0x0t
        0x4bt
        0x28t
        0x7t
        0x9t
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0xct
        0x62t
        0x3t
        0x1t
        0xet
    .end array-data

    nop

    :array_3
    .array-data 1
        0x8t
        0x60t
        0x12t
        0x4t
        0x47t
        0x56t
        0x58t
    .end array-data

    :array_4
    .array-data 1
        0x11t
        0xbt
        0x6ft
        0x5et
        0x57t
        0x5et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x5ct
        0x72t
        0x57t
        0x2t
        0x52t
        0x66t
        0x45t
        0x51t
        0x55t
        0xat
        0x77t
        0x50t
        0x42t
        0x44t
        0x5ft
        0xft
        0x5et
        0x8t
    .end array-data

    :array_6
    .array-data 1
        0xbt
        0x25t
        0x50t
        0x5dt
        0x56t
        0x7t
        0x5bt
    .end array-data

    :array_7
    .array-data 1
        0x43t
        0xet
        0x6at
        0x56t
        0x5at
        0x58t
        0x15t
        0xat
        0x56t
        0x54t
        0xat
    .end array-data

    :array_8
    .array-data 1
        0x12t
        0xft
        0x70t
        0x41t
        0x5ct
        0x5et
        0x7et
        0x3t
        0x4ft
        0x5ct
        0x46t
        0x47t
        0xft
    .end array-data

    nop

    :array_9
    .array-data 1
        0x11t
        0x58t
        0x70t
        0x5at
        0x78t
        0x4t
        0x48t
        0x5at
        0x4ct
        0x40t
        0x9t
    .end array-data

    :array_a
    .array-data 1
        0x5ft
        0x79t
        0xbt
        0x0t
        0x50t
        0x50t
        0x5ct
        0xct
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x5bt
        0x77t
        0x1t
        0x41t
        0x55t
        0x51t
        0x5et
        0x56t
        0x0t
        0x8t
    .end array-data

    :array_c
    .array-data 1
        0x13t
        0xbt
        0x7dt
        0x51t
        0xbt
        0x10t
        0x65t
        0xft
        0x43t
        0x5dt
        0x7t
        0x9t
        0x56t
        0x5bt
    .end array-data

    nop

    :array_d
    .array-data 1
        0x42t
        0x59t
        0x7at
        0x58t
        0x42t
        0x2ft
        0x7t
        0x5at
        0x47t
        0x4t
    .end array-data

    nop

    :array_e
    .array-data 1
        0xct
        0x34t
        0x53t
        0x15t
        0x59t
        0x8t
        0xft
        0x2ft
        0x58t
        0x12t
        0x4ct
        0x0t
        0xft
        0x5t
        0x53t
        0x5ct
    .end array-data

    :array_f
    .array-data 1
        0x44t
        0x59t
        0x31t
        0x17t
        0x52t
        0x14t
        0x32t
        0x5dt
        0x17t
        0xdt
        0x55t
        0xat
        0x1t
        0x7ct
        0xdt
        0xat
        0x43t
        0x5bt
    .end array-data

    nop

    :array_10
    .array-data 1
        0x54t
        0x74t
        0x11t
        0x56t
        0x2t
        0x58t
        0x5ct
        0x5ct
        0x17t
        0x7at
        0x4t
        0x5bt
        0x58t
        0x55t
        0x6t
        0x45t
        0x58t
    .end array-data

    nop

    :array_11
    .array-data 1
        0xct
        0x7ft
        0x57t
        0x42t
        0x15t
        0x5bt
    .end array-data

    nop

    :array_12
    .array-data 1
        0x5et
        0x64t
        0x51t
        0x45t
        0x0t
        0x5ft
        0x47t
        0x72t
        0x42t
        0x56t
        0x2t
        0x5ct
        0x56t
        0x5at
        0x44t
        0xat
    .end array-data

    :array_13
    .array-data 1
        0x5at
        0x76t
        0x45t
        0x52t
        0x43t
        0x5at
        0x52t
        0x59t
        0x43t
        0x46t
        0xbt
    .end array-data

    :array_14
    .array-data 1
        0xbt
        0x31t
        0x5t
        0x47t
        0x3t
        0x51t
        0x20t
        0x10t
        0x5t
        0x56t
        0xbt
        0x50t
        0x8t
        0x16t
        0x37t
        0x45t
        0x7t
        0x41t
        0x3t
        0x5ft
    .end array-data

    :array_15
    .array-data 1
        0x5at
        0x31t
        0x7t
        0x15t
        0x0t
        0x55t
        0x61t
        0xbt
        0x3t
        0x14t
        0x36t
        0x45t
        0x56t
        0x16t
        0x3t
        0x5et
    .end array-data

    :array_16
    .array-data 1
        0x59t
        0x64t
        0x4t
        0x45t
        0x3t
        0x5t
        0x62t
        0x5et
        0x0t
        0x44t
        0x34t
        0x4t
        0x53t
        0x5et
        0x16t
        0x47t
        0x14t
        0x18t
        0x67t
        0x43t
        0x4t
        0x47t
        0x3t
        0x5ct
    .end array-data

    :array_17
    .array-data 1
        0xet
        0x60t
        0x56t
        0x43t
        0x54t
        0x5dt
        0x17t
        0x9t
    .end array-data

    :array_18
    .array-data 1
        0x44t
        0xft
        0x30t
        0x5t
        0x10t
        0x4t
        0x1t
        0x16t
        0x36t
        0x1t
        0x13t
        0x16t
        0x1t
        0x11t
        0x10t
        0x27t
        0xdt
        0x7t
        0x1t
        0x5ft
    .end array-data

    :array_19
    .array-data 1
        0x55t
        0x60t
        0xdt
        0x11t
        0x26t
        0x51t
        0x4at
        0x55t
        0x1t
        0x15t
        0xbt
        0x57t
        0x56t
        0xdt
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x5et
        0x56t
        0x41t
        0x7dt
        0x5ct
        0x16t
        0x5ct
        0x41t
        0x74t
        0x56t
        0x5bt
        0xft
        0x4t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x4t
        0x54t
        0x15t
        0x23t
        0x1at
        0x5ct
        0x17t
        0x70t
        0xft
        0xft
        0xft
        0x8t
    .end array-data

    :array_1c
    .array-data 1
        0x53t
        0x54t
        0x4ct
        0x65t
        0x56t
        0x40t
        0x71t
        0x5ft
        0x4ct
        0x50t
        0x4bt
        0x71t
        0x5at
        0x58t
        0x55t
        0x8t
    .end array-data

    :array_1d
    .array-data 1
        0x54t
        0x7t
        0x15t
        0x62t
        0x5ft
        0x14t
        0x76t
        0x1at
        0x8t
        0x46t
        0x71t
        0xat
        0x5at
        0xft
        0x5ct
    .end array-data

    :array_1e
    .array-data 1
        0x58t
        0x72t
        0xct
        0x5dt
        0x44t
        0x50t
        0x5ct
        0x5ft
        0x6t
        0x41t
        0xdt
    .end array-data

    :array_1f
    .array-data 1
        0x5dt
        0x30t
        0x5bt
        0x52t
        0x43t
        0xct
    .end array-data

    nop

    :array_20
    .array-data 1
        0x8t
        0x71t
        0x57t
        0x59t
        0x5ft
        0x50t
        0x11t
        0x59t
        0x57t
        0x57t
        0x73t
        0x46t
        0x4t
        0x49t
        0x4t
    .end array-data

    :array_21
    .array-data 1
        0x73t
        0x58t
        0xbt
        0x5bt
        0x2t
        0x15t
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0
.end method

.method generateActivityResultKey()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "197982"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "08b9b8"

    const/16 v3, -0x4d59

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x57t
        0x4bt
        0x56t
        0x5et
        0x55t
        0x57t
        0x5ft
        0x4dt
        0x68t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x4at
        0x13t
        0x1at
    .end array-data
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    goto :goto_0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "de0229"

    const/16 v3, -0x5969

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9c5938"

    const/16 v3, 0x2656

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

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
        0x22t
        0x17t
        0x51t
        0x55t
        0x5ft
        0x5ct
        0xat
        0x11t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0xbt
        0x54t
        0x4at
        0x13t
        0x56t
        0x56t
        0x17t
        0x15t
        0x5bt
        0x56t
        0x5dt
        0x57t
        0x43t
        0x54t
        0x4dt
        0x47t
        0x59t
        0x5at
        0xbt
        0x50t
        0x5dt
        0x13t
        0x41t
        0x5ct
        0x17t
        0x1bt
    .end array-data
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_4

    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/Application;

    :goto_1
    if-nez v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a6871b"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x59

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "df163e"

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "1b1c83"

    const-wide v4, 0x41c55fd619000000L    # 7.1720453E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0

    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "6046d6"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x22t
        0x59t
        0x4dt
        0x5bt
        0x55t
        0x42t
        0xft
        0x59t
        0x4ct
        0x17t
        0x57t
        0xbt
        0xft
        0x52t
        0x18t
        0x76t
        0x41t
        0x12t
        0xdt
        0x5ft
        0x5bt
        0x56t
        0x45t
        0xbt
        0xet
        0x58t
        0x18t
        0x5et
        0x5ft
        0x11t
        0x15t
        0x57t
        0x56t
        0x54t
        0x54t
        0x42t
        0x7t
        0x44t
        0x57t
        0x5at
        0x11t
        0x21t
        0xet
        0x58t
        0x4ct
        0x52t
        0x49t
        0x16t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x46t
        0x48t
        0x59t
        0x46t
        0x45t
        0x13t
        0xft
        0x5dt
        0x5at
        0x13t
        0xbt
        0xbt
        0x12t
        0x11t
        0x54t
        0x56t
        0x45t
        0x5t
        0x4t
        0x5dt
        0x53t
        0x13t
        0x11t
        0xbt
        0x46t
        0x44t
        0x45t
        0x56t
        0x45t
        0x25t
        0x8t
        0x55t
        0x44t
        0x5ct
        0xct
        0x0t
        0x30t
        0x58t
        0x53t
        0x44t
        0x28t
        0xbt
        0x2t
        0x54t
        0x5at
        0x13t
        0x12t
        0xdt
        0x12t
        0x59t
        0x16t
        0x47t
        0xdt
        0x1t
        0x46t
        0x55t
        0x53t
        0x55t
        0x4t
        0x11t
        0xat
        0x45t
        0x16t
        0x65t
        0xct
        0x1t
        0x11t
        0x7ct
        0x59t
        0x57t
        0x0t
        0x8t
        0x36t
        0x43t
        0x59t
        0x45t
        0xct
        0x0t
        0x3t
        0x43t
        0x18t
        0x75t
        0x4t
        0x7t
        0x12t
        0x5et
        0x44t
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x10t
        0x50t
        0x4t
        0x55t
        0x56t
        0x5ft
        0x16t
        0x7ct
        0x2t
        0x56t
        0x52t
        0x56t
        0x7t
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x75t
        0x51t
        0x5at
        0x11t
        0x10t
        0x16t
        0x57t
        0x53t
        0x57t
        0x53t
        0x17t
        0x45t
        0x16t
        0x66t
        0x5dt
        0x53t
        0x13t
        0x7bt
        0x59t
        0x54t
        0x51t
        0x5at
        0x17t
        0x16t
        0x50t
        0x42t
        0x5bt
        0x5bt
        0x44t
        0x52t
        0x53t
        0x44t
        0x55t
        0x55t
        0xct
        0x53t
        0x52t
        0x10t
        0x52t
        0x44t
        0x5t
        0x51t
        0x5bt
        0x55t
        0x5at
        0x42t
    .end array-data
.end method

.method getEnterAnim()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    goto :goto_0
.end method

.method getExitAnim()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    goto :goto_0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    goto :goto_0
.end method

.method getFocusedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    goto :goto_0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x5f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4bf166"

    const-wide v4, 0x41d1bfd243800000L    # 1.191135502E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5bt
        0xct
        0x21t
        0x54t
        0x42t
        0x7at
        0x55t
        0x1bt
        0x9t
        0x44t
        0x42t
        0x7ft
        0x5at
        0x4t
        0xat
        0x50t
        0x42t
        0x53t
        0x46t
        0x4at
        0x4ft
        0x11t
        0x55t
        0x57t
        0x5at
        0xct
        0x9t
        0x45t
        0x16t
        0x54t
        0x51t
        0x42t
        0x3t
        0x49t
        0x53t
        0x55t
        0x41t
        0x16t
        0x3t
        0x55t
        0x16t
        0x43t
        0x5at
        0x16t
        0xft
        0x5dt
        0x16t
        0x42t
        0x5ct
        0x7t
        0x46t
        0x77t
        0x44t
        0x57t
        0x53t
        0xft
        0x3t
        0x5ft
        0x42t
        0x16t
        0x5dt
        0x11t
        0x46t
        0x50t
        0x42t
        0x42t
        0x55t
        0x1t
        0xet
        0x54t
        0x52t
        0x16t
        0x40t
        0xdt
        0x46t
        0x45t
        0x5et
        0x53t
        0x14t
        0x24t
        0x14t
        0x50t
        0x51t
        0x5bt
        0x51t
        0xct
        0x12t
        0x7ct
        0x57t
        0x58t
        0x55t
        0x5t
        0x3t
        0x43t
        0x18t
    .end array-data
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method getNextTransition()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    goto :goto_0
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2b755b"

    const v3, -0x337861a3    # -7.110321E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6ac1d0"

    const v3, -0x3173f56b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

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
        0x74t
        0x10t
        0x56t
        0x52t
        0x58t
        0x7t
        0x5ct
        0x16t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0xft
        0xct
        0x45t
        0x44t
        0x51t
        0x45t
        0x12t
        0xct
        0x52t
        0xdt
        0x51t
        0x42t
        0x4t
        0x7t
        0x11t
        0x13t
        0x59t
        0x42t
        0x9t
        0x43t
        0x50t
        0x44t
        0x56t
        0x44t
        0x0t
        0x4t
        0x5ct
        0x1t
        0x5et
        0x42t
        0x41t
        0xet
        0x50t
        0xat
        0x51t
        0x51t
        0x4t
        0x11t
        0x1ft
    .end array-data
.end method

.method getPopDirection()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    goto :goto_0
.end method

.method getPopEnterAnim()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    goto :goto_0
.end method

.method getPopExitAnim()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    goto :goto_0
.end method

.method getPostOnViewCreatedAlpha()F
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    goto :goto_0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method getSharedElementSourceNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getSharedElementTargetNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTargetRequestCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x7b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7deeb9"

    const v3, -0x316185f5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x5t
        0xbt
        0x42t
        0x16t
        0x19t
        0x56t
        0x7t
        0x6t
        0x0t
        0x11t
        0x4at
        0x17t
        0x10t
        0xdt
        0x0t
        0x42t
        0x7ft
        0x45t
        0x5t
        0x2t
        0x8t
        0x7t
        0x57t
        0x43t
        0x44t
        0x33t
        0xct
        0x7t
        0x4et
        0x10t
        0x17t
        0x45t
        0x29t
        0xbt
        0x5ft
        0x52t
        0x7t
        0x1ct
        0x6t
        0xet
        0x5ct
        0x78t
        0x13t
        0xbt
        0x0t
        0x10t
        0x19t
        0x40t
        0xct
        0x0t
        0xbt
        0x42t
        0x5et
        0x52t
        0x10t
        0x33t
        0xct
        0x7t
        0x4et
        0x1ft
        0x4dt
        0x45t
        0xct
        0x11t
        0x19t
        0x59t
        0x11t
        0x9t
        0x9t
        0x42t
        0x50t
        0x19t
        0x1t
        0x4bt
        0x49t
        0x42t
        0x5bt
        0x52t
        0x2t
        0xat
        0x17t
        0x7t
        0x19t
        0x58t
        0xat
        0x26t
        0x17t
        0x7t
        0x58t
        0x43t
        0x1t
        0x33t
        0xct
        0x7t
        0x4et
        0x1ft
        0x4dt
        0x45t
        0xat
        0x10t
        0x19t
        0x56t
        0x2t
        0x11t
        0x0t
        0x10t
        0x19t
        0x58t
        0xat
        0x21t
        0x0t
        0x11t
        0x4dt
        0x45t
        0xbt
        0x1ct
        0x33t
        0xbt
        0x5ct
        0x40t
        0x4ct
        0x4ct
    .end array-data
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x79

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "430c0a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7ee2f9"

    const-wide/32 v4, -0x51ef9ad4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        0x52t
        0x5ct
        0xft
        0x59t
        0xft
        0x53t
        0x13t
        0x57t
        0x6t
        0x44t
        0x37t
        0x5dt
        0x56t
        0x47t
        0x2et
        0x5ft
        0x5t
        0x51t
        0x5ft
        0x63t
        0x17t
        0x5ft
        0x13t
        0x51t
        0x1bt
        0x19t
        0x43t
        0x52t
        0x4t
        0x52t
        0x5ct
        0x42t
        0x6t
        0x10t
        0x0t
        0x14t
        0x75t
        0x42t
        0x2t
        0x57t
        0xct
        0x51t
        0x5dt
        0x44t
        0x43t
        0x42t
        0x4t
        0x55t
        0x50t
        0x58t
        0x6t
        0x43t
        0x41t
        0x5bt
        0x5dt
        0x73t
        0x11t
        0x55t
        0x0t
        0x40t
        0x56t
        0x18t
        0x4at
        0x10t
        0x16t
        0x5ct
        0x56t
        0x5et
        0x43t
        0x45t
        0x12t
        0x5dt
        0x5dt
        0x57t
        0x43t
        0x43t
        0x4t
        0x40t
        0x7et
        0x51t
        0x1bt
        0x7ct
        0x8t
        0x52t
        0x56t
        0x53t
        0x1at
        0x53t
        0xdt
        0x51t
        0x1bt
        0x79t
        0x2dt
        0x79t
        0x35t
        0x7dt
        0x72t
        0x7ct
        0x2at
        0x6at
        0x24t
        0x70t
        0x1at
        0x10t
        0xat
        0x43t
        0x41t
        0x5at
        0x5ct
        0x44t
        0x43t
        0x43t
        0x14t
        0x44t
        0x43t
        0x5ft
        0x11t
        0x44t
        0x4t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x4t
        0xbt
        0x15t
        0x12t
        0x19t
        0x56t
        0x6t
        0x6t
        0x57t
        0x15t
        0x4at
        0x17t
        0x33t
        0xct
        0x57t
        0x11t
        0x74t
        0x58t
        0x1t
        0x0t
        0x5et
        0x15t
        0x19t
        0x51t
        0x17t
        0xat
        0x5ft
        0x46t
        0x5dt
        0x52t
        0x11t
        0x4t
        0x51t
        0xet
        0x5ct
        0x53t
        0x45t
        0x3t
        0x40t
        0x7t
        0x5et
        0x5at
        0x0t
        0xbt
        0x46t
    .end array-data
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mRestored:Z

    iput v1, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v1, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    goto :goto_0
.end method

.method final isInBackStack()Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPostponed()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    goto :goto_0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    return v0
.end method

.method final isRemovingParent()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isResumed()Z
    .locals 2

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStateSaved()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "21753c"

    const/16 v3, -0x1d11

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9921b8"

    const-wide/32 v4, -0x1ab3154a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "1ec1e0"

    const-wide v4, -0x3e25412fc7400000L    # -1.794851043E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "30108a"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "42ed11"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x43t
        0x56t
        0x52t
        0x5et
        0x6t
        0x5ct
        0x45t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x4bt
        0x57t
        0x52t
        0x7t
        0x51t
        0x4ft
        0x5ct
        0x56t
        0x11t
        0x16t
        0x50t
        0x5ct
        0x19t
        0x54t
        0x5et
        0xet
        0x54t
        0x56t
        0x4et
        0x5bt
        0x5ft
        0x5t
        0x18t
        0x50t
        0x57t
        0x12t
        0x5et
        0xct
        0x79t
        0x5at
        0x4dt
        0x5bt
        0x47t
        0xbt
        0x4ct
        0x40t
        0x6bt
        0x57t
        0x42t
        0x17t
        0x54t
        0x4dt
        0x11t
        0x1bt
        0xbt
        0x42t
        0x4at
        0x5ct
        0x48t
        0x47t
        0x54t
        0x11t
        0x4ct
        0x7at
        0x56t
        0x56t
        0x54t
        0x58t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0x17t
        0x6t
        0x42t
        0x10t
        0x5ct
        0x45t
        0x26t
        0xct
        0x55t
        0x0t
        0xat
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x54t
        0x50t
        0x44t
        0x59t
        0x5bt
        0x13t
    .end array-data

    :array_4
    .array-data 1
        0x72t
        0x40t
        0x4t
        0x3t
        0x5ct
        0x54t
        0x5at
        0x46t
        0x28t
        0x5t
        0x5ft
        0x50t
        0x53t
        0x57t
        0x17t
    .end array-data
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->restoreViewState()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchActivityCreated()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "17314f"

    const v3, -0x318cbcd6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ba8244"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x77t
        0x45t
        0x52t
        0x56t
        0x59t
        0x3t
        0x5ft
        0x43t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x5t
        0x51t
        0x56t
        0x14t
        0x5at
        0xdt
        0x15t
        0x18t
        0x51t
        0x55t
        0x58t
        0xet
        0x41t
        0x4ct
        0x5at
        0x46t
        0x5bt
        0x17t
        0x6t
        0x50t
        0x12t
        0x40t
        0x5bt
        0x42t
        0x12t
        0x4dt
        0x42t
        0x51t
        0x46t
        0x4ct
        0xet
        0x56t
        0x73t
        0x57t
        0x40t
        0xbt
        0x17t
        0x51t
        0x46t
        0x4dt
        0x77t
        0x10t
        0x4t
        0x59t
        0x46t
        0x51t
        0x50t
        0x4at
        0x48t
    .end array-data
.end method

.method performAttach()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManager;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    iput v3, p0, Landroidx/fragment/app/Fragment;->mState:I

    iput-boolean v3, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchAttach()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6eeed5"

    const-wide v4, 0x41db81f100000000L    # 1.846002688E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ff2ec3"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x70t
        0x17t
        0x4t
        0x2t
        0x9t
        0x50t
        0x58t
        0x11t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x2t
        0x5bt
        0x1t
        0x43t
        0x5dt
        0x9t
        0x12t
        0x12t
        0x6t
        0x2t
        0x5ft
        0xat
        0x46t
        0x46t
        0xdt
        0x11t
        0x5ct
        0x13t
        0x1t
        0x5at
        0x45t
        0x17t
        0x5ct
        0x46t
        0x15t
        0x47t
        0x15t
        0x6t
        0x41t
        0x48t
        0x9t
        0x5ct
        0x24t
        0x17t
        0x47t
        0x7t
        0x5t
        0x5at
        0x4dt
        0x4at
    .end array-data
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f8b462"

    const-wide/32 v4, -0x7dd78998

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9c32a6"

    const v3, -0x318bbce5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x20t
        0x4at
        0x3t
        0x53t
        0x5bt
        0x57t
        0x8t
        0x4ct
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x7t
        0x5at
        0x56t
        0x41t
        0x58t
        0x56t
        0x17t
        0x13t
        0x51t
        0x0t
        0x5at
        0x55t
        0x43t
        0x47t
        0x5at
        0x13t
        0x59t
        0x4ct
        0x4t
        0x5bt
        0x12t
        0x15t
        0x59t
        0x19t
        0x10t
        0x46t
        0x42t
        0x4t
        0x44t
        0x17t
        0xct
        0x5dt
        0x71t
        0x13t
        0x53t
        0x58t
        0x17t
        0x56t
        0x1at
        0x48t
    .end array-data
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    new-instance v0, Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStore;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "21009c"

    const/16 v3, 0x6917

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x71t
        0x50t
        0x5ct
        0x5ct
        0x5ct
        0x7t
        0x12t
        0x56t
        0x55t
        0x44t
        0x6ft
        0xat
        0x57t
        0x46t
        0x7ct
        0x59t
        0x5ft
        0x6t
        0x51t
        0x48t
        0x53t
        0x5ct
        0x5ct
        0x2ct
        0x45t
        0x5ft
        0x55t
        0x42t
        0x11t
        0x4at
        0x12t
        0x53t
        0x45t
        0x44t
        0x19t
        0xct
        0x5ct
        0x72t
        0x42t
        0x55t
        0x58t
        0x17t
        0x57t
        0x67t
        0x59t
        0x55t
        0x4et
        0x4bt
        0x1bt
        0x11t
        0x42t
        0x55t
        0x4dt
        0x16t
        0x40t
        0x5ft
        0x55t
        0x54t
        0x19t
        0xdt
        0x47t
        0x5dt
        0x5ct
    .end array-data
.end method

.method performDestroy()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a15753"

    const/16 v3, 0x7456

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7936ca"

    const-wide v4, 0x41d9ced8a0000000L    # 1.731945088E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x27t
        0x43t
        0x54t
        0x50t
        0x58t
        0x56t
        0xft
        0x45t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x5dt
        0x5at
        0x52t
        0x43t
        0xft
        0x58t
        0x4dt
        0x13t
        0x55t
        0x2t
        0xdt
        0x5bt
        0x19t
        0x47t
        0x5et
        0x11t
        0xet
        0x42t
        0x5et
        0x5bt
        0x16t
        0x17t
        0xet
        0x17t
        0x4at
        0x46t
        0x46t
        0x6t
        0x13t
        0x19t
        0x56t
        0x5dt
        0x72t
        0x6t
        0x12t
        0x43t
        0x4bt
        0x5ct
        0x4ft
        0x4bt
        0x48t
    .end array-data
.end method

.method performDestroyView()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManager;->markForRedelivery()V

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3f2165"

    const-wide v4, -0x3e49f1ce6f000000L    # -3.70028945E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ff5e11"

    const v3, -0x3234378f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x75t
        0x14t
        0x53t
        0x56t
        0x5bt
        0x50t
        0x5dt
        0x12t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x2t
        0x5ct
        0x1t
        0x11t
        0x5ft
        0x9t
        0x12t
        0x15t
        0x6t
        0x50t
        0x5dt
        0xat
        0x46t
        0x41t
        0xdt
        0x43t
        0x5et
        0x13t
        0x1t
        0x5dt
        0x45t
        0x45t
        0x5et
        0x46t
        0x15t
        0x40t
        0x15t
        0x54t
        0x43t
        0x48t
        0x9t
        0x5bt
        0x21t
        0x54t
        0x42t
        0x12t
        0x14t
        0x5at
        0x1ct
        0x67t
        0x58t
        0x3t
        0x11t
        0x1dt
        0x4ct
    .end array-data
.end method

.method performDetach()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "888fe4"

    const-wide/32 v4, -0x754c6b83

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9dfc3c"

    const v3, -0x316dab8c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x7et
        0x4at
        0x59t
        0x1t
        0x8t
        0x51t
        0x56t
        0x4ct
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x0t
        0xft
        0x7t
        0x13t
        0xdt
        0x56t
        0x10t
        0x46t
        0x0t
        0x52t
        0xft
        0x55t
        0x44t
        0x12t
        0xbt
        0x41t
        0xct
        0x4ct
        0x3t
        0xet
        0x43t
        0x47t
        0xct
        0x19t
        0x17t
        0x13t
        0x13t
        0x56t
        0x11t
        0x17t
        0xbt
        0x8t
        0x27t
        0x56t
        0x17t
        0x58t
        0x7t
        0xet
        0x4bt
        0x1at
    .end array-data
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method performLowMemory()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory()V

    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPause()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4dc672"

    const-wide/32 v4, 0x460b9ab7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "109d28"

    const-wide v4, -0x3e2eb9ac00c00000L    # -1.159286781E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x72t
        0x16t
        0x2t
        0x51t
        0x5at
        0x57t
        0x5at
        0x10t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0x54t
        0x50t
        0x0t
        0x12t
        0x56t
        0x5et
        0x44t
        0x19t
        0x7t
        0x53t
        0x54t
        0x5dt
        0x10t
        0x4dt
        0xct
        0x40t
        0x57t
        0x44t
        0x57t
        0x51t
        0x44t
        0x46t
        0x57t
        0x11t
        0x43t
        0x4ct
        0x14t
        0x57t
        0x4at
        0x1ft
        0x5ft
        0x57t
        0x34t
        0x53t
        0x4dt
        0x42t
        0x55t
        0x11t
        0x4dt
    .end array-data
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performPrimaryNavigationFragmentChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPrimaryNavigationFragmentChanged()V

    :cond_1
    return-void
.end method

.method performResume()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    const/4 v0, 0x7

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchResume()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ac4cba"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "432a54"

    const v3, -0x31fcdfa1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x27t
        0x11t
        0x55t
        0x4t
        0xft
        0x4t
        0xft
        0x17t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x57t
        0x5bt
        0x5t
        0x15t
        0x5at
        0x5bt
        0x47t
        0x12t
        0x2t
        0x54t
        0x58t
        0x58t
        0x13t
        0x46t
        0x9t
        0x47t
        0x5bt
        0x41t
        0x54t
        0x5at
        0x41t
        0x41t
        0x5bt
        0x14t
        0x40t
        0x47t
        0x11t
        0x50t
        0x46t
        0x1at
        0x5ct
        0x5ct
        0x33t
        0x50t
        0x47t
        0x41t
        0x5et
        0x57t
        0x49t
        0x1ct
    .end array-data
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "850a27"

    const/16 v3, -0xf15

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x5bt
        0x54t
        0x13t
        0x5dt
        0x5et
        0x5ct
        0xft
        0x43t
        0x14t
        0x42t
        0x47t
        0x57t
        0x47t
        0x44t
        0x5bt
        0x54t
        0x45t
        0x59t
        0x52t
        0x5dt
        0x4t
        0x5ct
        0x43t
        0x4bt
    .end array-data
.end method

.method performStart()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStart()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dab13b"

    const-wide/32 v4, -0x47e03c3f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "20b27c"

    const-wide v4, 0x41b10111e5000000L    # 2.85282789E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x22t
        0x13t
        0x3t
        0x56t
        0x5et
        0x7t
        0xat
        0x15t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x54t
        0xbt
        0x56t
        0x17t
        0xdt
        0x5dt
        0x44t
        0x42t
        0x51t
        0x56t
        0xft
        0x5et
        0x10t
        0x16t
        0x5at
        0x45t
        0xct
        0x47t
        0x57t
        0xat
        0x12t
        0x43t
        0xct
        0x12t
        0x43t
        0x17t
        0x42t
        0x52t
        0x11t
        0x1ct
        0x5ft
        0xct
        0x61t
        0x43t
        0x2t
        0x40t
        0x44t
        0x4at
        0x1bt
    .end array-data
.end method

.method performStop()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStop()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1f4ea7"

    const-wide v4, 0x419d5c9da8000000L    # 1.23152234E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4339b9"

    const-wide v4, 0x41bf06fc67000000L    # 5.20551527E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x77t
        0x14t
        0x55t
        0x2t
        0xct
        0x52t
        0x5ft
        0x12t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x57t
        0x5at
        0x5dt
        0x42t
        0x57t
        0x5bt
        0x47t
        0x13t
        0x5at
        0x3t
        0x55t
        0x58t
        0x13t
        0x47t
        0x51t
        0x10t
        0x56t
        0x41t
        0x54t
        0x5bt
        0x19t
        0x16t
        0x56t
        0x14t
        0x40t
        0x46t
        0x49t
        0x7t
        0x4bt
        0x1at
        0x5ct
        0x5dt
        0x6at
        0x16t
        0x56t
        0x44t
        0x1bt
        0x1at
    .end array-data
.end method

.method performViewCreated()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchViewCreated()V

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback",
            "<TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher",
            "<TI;>;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    return-object v0
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Landroidx/activity/result/ActivityResultCallback",
            "<TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher",
            "<TI;>;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/Fragment$7;

    invoke-direct {v0, p0, p2}, Landroidx/fragment/app/Fragment$7;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultRegistry;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    return-object v0
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "91118a"

    const-wide v4, 0x41d393cdc6400000L    # 1.313814297E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d6544b"

    const v3, 0x4dc62acd    # 4.1558672E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7ft
        0x43t
        0x50t
        0x56t
        0x55t
        0x4t
        0x57t
        0x45t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x58t
        0x5at
        0x40t
        0x14t
        0x3t
        0x10t
        0x42t
        0x54t
        0x57t
        0x5ct
        0x7t
        0x0t
        0x16t
        0x41t
        0x5bt
        0x14t
        0x23t
        0x7t
        0x42t
        0x5ct
        0x42t
        0x5dt
        0x16t
        0x1dt
    .end array-data
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ba3008"

    const-wide v4, -0x3e31239fe5800000L    # -1.035518005E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1615df"

    const v3, 0x4e3ba3bd    # 7.8701754E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

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
        0x24t
        0x13t
        0x52t
        0x57t
        0x5dt
        0x5dt
        0xct
        0x15t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0x58t
        0x5et
        0x41t
        0x44t
        0x7t
        0x45t
        0x42t
        0x50t
        0x56t
        0xct
        0x3t
        0x55t
        0x16t
        0x45t
        0x5at
        0x44t
        0x7t
        0x5ft
        0x16t
        0x50t
        0x56t
        0x10t
        0xft
        0x47t
        0x5ft
        0x45t
        0x4ct
        0x4at
    .end array-data
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "79f394"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4c4dad"

    const/16 v3, 0x77a1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

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
        0x4bt
        0x7t
        0x54t
        0x54t
        0x51t
        0x59t
        0x4dt
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x7t
        0x5bt
        0x1t
        0x12t
        0x44t
        0x5at
        0xct
        0x40t
        0x44t
        0x9t
        0x5t
        0x42t
        0x6t
        0x14t
        0x5t
        0xft
        0x1dt
        0x14t
        0x2t
        0x46t
        0x3t
        0x14t
        0x9t
        0x51t
        0xdt
        0x40t
        0x17t
        0x4ft
    .end array-data
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b1498a"

    const/16 v3, -0x6c39

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "46cc13"

    const v3, 0x4ec24d6d    # 1.629927E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x24t
        0x43t
        0x55t
        0x5et
        0x55t
        0x4t
        0xct
        0x45t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x58t
        0xct
        0x17t
        0x11t
        0x52t
        0x40t
        0x42t
        0x2t
        0x0t
        0x59t
        0x56t
        0x50t
        0x16t
        0x17t
        0xct
        0x11t
        0x52t
        0x14t
        0x55t
        0xct
        0xdt
        0x45t
        0x56t
        0x4ct
        0x42t
        0x4dt
    .end array-data
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "afb832"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "33c71d"

    const-wide/32 v4, -0x15471c77

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
        0x27t
        0x14t
        0x3t
        0x5ft
        0x5et
        0x57t
        0xft
        0x12t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x5dt
        0xct
        0x43t
        0x11t
        0x5t
        0x47t
        0x47t
        0x2t
        0x54t
        0x59t
        0x1t
        0x57t
        0x13t
        0x17t
        0x58t
        0x11t
        0x5t
        0x13t
        0x5bt
        0xct
        0x44t
        0x45t
        0x4at
    .end array-data
.end method

.method public final requireParentFragment()Landroidx/fragment/app/Fragment;
    .locals 6

    const/16 v1, 0x9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a5c719"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8f913b"

    const-wide/32 v4, 0x4d6972f5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c6bf40"

    const-wide v4, -0x3e3bafdb18000000L    # -6.81593296E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "b4e972"

    const-wide v4, 0x41cb0eb143000000L    # 9.0789543E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0

    :array_0
    .array-data 1
        0x27t
        0x47t
        0x2t
        0x50t
        0x5ct
        0x5ct
        0xft
        0x41t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0xft
        0x4at
        0x11t
        0x5dt
        0xdt
        0x4ct
        0x46t
        0x58t
        0x45t
        0x47t
        0x3t
        0x5bt
        0xet
        0x5ct
        0x55t
        0x13t
        0x16t
        0x57t
        0x46t
        0x58t
        0x5ft
        0x4at
        0x42t
        0x7et
        0x14t
        0x58t
        0x56t
        0x5et
        0x7t
        0x56t
        0x12t
        0x19t
        0x5et
        0x41t
        0x42t
        0x50t
        0x9t
        0x4at
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x25t
        0x44t
        0x3t
        0x1t
        0x59t
        0x55t
        0xdt
        0x42t
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x42t
        0x5dt
        0x16t
        0x19t
        0x59t
        0x5dt
        0x16t
        0x14t
        0x4t
        0x19t
        0x54t
        0x5at
        0xbt
        0x58t
        0x1t
        0x19t
        0x71t
        0x40t
        0x3t
        0x53t
        0x8t
        0x5ct
        0x59t
        0x46t
        0x4et
        0x14t
        0xct
        0x4dt
        0x17t
        0x5bt
        0x11t
        0x14t
        0x1t
        0x50t
        0x45t
        0x57t
        0x1t
        0x40t
        0x9t
        0x40t
        0x17t
        0x53t
        0x16t
        0x40t
        0x4t
        0x5at
        0x5ft
        0x57t
        0x6t
        0x14t
        0x11t
        0x56t
        0x17t
    .end array-data
.end method

.method public final requireView()Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aa5462"

    const v3, 0x4e8b965e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f45a2d"

    const-wide v4, -0x3e3a91de45000000L    # -7.19078262E8

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
        0x27t
        0x13t
        0x54t
        0x53t
        0x5bt
        0x57t
        0xft
        0x15t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x50t
        0x5ct
        0x5t
        0x12t
        0xat
        0x9t
        0x40t
        0x15t
        0x13t
        0x57t
        0x10t
        0x13t
        0x46t
        0x5bt
        0x41t
        0x53t
        0x44t
        0x30t
        0x5dt
        0x50t
        0x16t
        0x12t
        0x2t
        0x14t
        0x5bt
        0x58t
        0x41t
        0x5dt
        0xat
        0x25t
        0x46t
        0x50t
        0x0t
        0x46t
        0x1t
        0x30t
        0x5dt
        0x50t
        0x16t
        0x1at
        0x4dt
        0x46t
        0x5bt
        0x47t
        0x41t
        0x46t
        0xct
        0xft
        0x47t
        0x15t
        0x16t
        0x53t
        0x17t
        0x46t
        0x57t
        0x54t
        0xdt
        0x5et
        0x1t
        0x2t
        0x14t
        0x57t
        0x4t
        0x54t
        0xbt
        0x14t
        0x51t
        0x15t
        0xet
        0x5ct
        0x27t
        0x14t
        0x51t
        0x54t
        0x15t
        0x57t
        0x32t
        0xft
        0x51t
        0x42t
        0x49t
        0x1bt
        0x4at
    .end array-data
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c70b90"

    const-wide v2, -0x3e55e9dd0e000000L    # -2.18829177E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->restoreSaveState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x59t
        0x54t
        0x10t
        0x56t
        0x59t
        0x7t
        0xdt
        0x43t
        0x17t
        0x49t
        0x40t
        0xct
        0x45t
        0x44t
        0x58t
        0x5ft
        0x42t
        0x2t
        0x50t
        0x5dt
        0x7t
        0x57t
        0x44t
        0x10t
    .end array-data
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performRestore(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_1
    iput-boolean v3, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4a5235"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f5a944"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x72t
        0x13t
        0x54t
        0x55t
        0x5et
        0x50t
        0x5at
        0x15t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x51t
        0x8t
        0x5dt
        0x14t
        0x5at
        0x9t
        0x41t
        0x41t
        0x5at
        0x55t
        0x58t
        0xat
        0x15t
        0x15t
        0x51t
        0x46t
        0x5bt
        0x13t
        0x52t
        0x9t
        0x19t
        0x40t
        0x5bt
        0x46t
        0x46t
        0x14t
        0x49t
        0x51t
        0x46t
        0x48t
        0x5at
        0xft
        0x6ft
        0x5dt
        0x51t
        0x11t
        0x66t
        0x15t
        0x58t
        0x40t
        0x51t
        0x34t
        0x50t
        0x12t
        0x4dt
        0x5bt
        0x46t
        0x3t
        0x51t
        0x49t
        0x10t
    .end array-data
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimations(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p4, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    goto :goto_0
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "460169"

    const-wide/32 v4, -0xb591b13

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x44t
        0x51t
        0x56t
        0x5bt
        0x5ct
        0x5at
        0x42t
        0x10t
        0x50t
        0x5at
        0x4bt
        0x51t
        0x57t
        0x54t
        0x48t
        0x16t
        0x58t
        0x50t
        0x52t
        0x55t
        0x55t
        0x16t
        0x58t
        0x5at
        0x52t
        0x10t
        0x42t
        0x42t
        0x58t
        0x40t
        0x53t
        0x10t
        0x59t
        0x57t
        0x4at
        0x14t
        0x54t
        0x55t
        0x54t
        0x58t
        0x19t
        0x47t
        0x57t
        0x46t
        0x54t
        0x52t
    .end array-data
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    return-void
.end method

.method setFocusedView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4278e1"

    const-wide v4, -0x3e41343a78000000L    # -5.16670856E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x40t
        0x56t
        0x5ft
        0x8t
        0x54t
        0x5at
        0x46t
        0x17t
        0x59t
        0x9t
        0x43t
        0x51t
        0x53t
        0x53t
        0x41t
        0x45t
        0x50t
        0x50t
        0x56t
        0x52t
        0x5ct
    .end array-data
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method setNextTransition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    goto :goto_0
.end method

.method setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6d479b"

    const-wide/32 v4, -0x3ee253c8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x62t
        0x16t
        0x4dt
        0x5et
        0x57t
        0x5t
        0x16t
        0x10t
        0x5bt
        0x17t
        0x4at
        0x7t
        0x42t
        0x44t
        0x55t
        0x17t
        0x4bt
        0x7t
        0x46t
        0x8t
        0x55t
        0x54t
        0x5ct
        0xft
        0x53t
        0xat
        0x40t
        0x17t
        0x4at
        0x16t
        0x57t
        0x16t
        0x40t
        0x67t
        0x56t
        0x11t
        0x42t
        0x14t
        0x5bt
        0x59t
        0x5ct
        0x6t
        0x73t
        0xat
        0x40t
        0x52t
        0x4bt
        0x36t
        0x44t
        0x5t
        0x5at
        0x44t
        0x50t
        0x16t
        0x5ft
        0xbt
        0x5at
        0x17t
        0x56t
        0xct
        0x16t
    .end array-data
.end method

.method setPopDirection(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    goto :goto_0
.end method

.method setPostOnViewCreatedAlpha(F)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    goto :goto_0
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-void
.end method

.method setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_2

    :cond_0
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6d9af4"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "379199"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

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

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "b4de47"

    const v3, 0x4c830ebd    # 6.871191E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "785fbf"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "e06a62"

    const v3, -0x31466cf1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-nez p1, :cond_5

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    :goto_2
    iput p2, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_6
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x70t
        0x16t
        0x58t
        0x6t
        0xbt
        0x51t
        0x58t
        0x10t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x5at
        0x4ct
        0x42t
        0x4dt
        0x19t
        0x40t
        0x5ft
        0x58t
        0x43t
        0x5ct
        0x19t
        0x47t
        0x5ft
        0x5ct
        0x11t
        0x4at
        0x58t
        0x5et
        0x52t
        0x19t
        0x77t
        0x4bt
        0x58t
        0x54t
        0x5at
        0x5ct
        0x5ft
        0x4dt
        0x74t
        0x52t
        0x59t
        0x58t
        0x56t
        0x5ct
        0x4bt
        0x13t
        0x43t
        0x56t
        0x11t
        0x5bt
        0x5ct
        0x13t
        0x44t
        0x5ct
        0x45t
        0x19t
        0x58t
        0x40t
        0x17t
        0x58t
        0x11t
        0x4dt
        0x58t
        0x41t
        0x50t
        0x5ct
        0x45t
        0x19t
        0x5ft
        0x41t
        0x56t
        0x5et
        0x5ct
        0x5ct
        0x57t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        0x31t
        0x51t
        0x10t
        0x11t
        0x5dt
        0x59t
        0x5t
        0x14t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        0x59t
        0x46t
        0x46t
        0x16t
        0xet
        0x52t
        0x18t
        0x41t
        0x7t
        0x10t
        0x1t
        0x52t
        0x4ct
        0x15t
        0x9t
        0x4t
        0x46t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x45t
        0x47t
        0x59t
        0x14t
        0x5at
        0x56t
        0x45t
        0x53t
        0x44t
        0x4t
        0x57t
        0x46t
        0x0t
        0x10t
        0x57t
        0x41t
        0x42t
        0x53t
        0x17t
        0x57t
        0x53t
        0x15t
        0x16t
        0x51t
        0x1ct
        0x53t
        0x5at
        0x4t
    .end array-data
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x5

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d629dc"

    const-wide/32 v4, -0x4ef1fcc4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "355075"

    const v3, 0x4d209cae    # 1.6841392E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

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
        0x22t
        0x44t
        0x53t
        0x5et
        0x9t
        0x6t
        0xat
        0x42t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x5bt
        0x5at
        0x44t
        0x17t
        0x54t
        0x47t
        0x41t
        0x54t
        0x53t
        0x5ft
        0x50t
        0x57t
        0x15t
        0x41t
        0x5ft
        0x17t
        0x74t
        0x50t
        0x41t
        0x5ct
        0x46t
        0x5et
        0x41t
        0x4at
    .end array-data
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager;->launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ce78fb"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a6b728"

    const-wide v4, 0x41cbfd8941000000L    # 9.39201154E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

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
        0x17t
        0x56t
        0x5ft
        0xbt
        0x7t
        0xdt
        0x11t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x58t
        0xdt
        0x43t
        0x12t
        0x59t
        0x15t
        0x42t
        0x3t
        0x54t
        0x5at
        0x5dt
        0x5t
        0x16t
        0x16t
        0x58t
        0x12t
        0x79t
        0x2t
        0x42t
        0xbt
        0x41t
        0x5bt
        0x4ct
        0x18t
    .end array-data
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b39862"

    const-wide v6, -0x3e2f9f2179400000L    # -1.099135515E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x45

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "51015a"

    const/16 v5, -0x2806

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "7b67e5"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "c5ee2b"

    const-wide v6, -0x3e217810f1c00000L    # -2.048900153E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "9f4ca4"

    const/16 v5, -0x437d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "d45313"

    const-wide/32 v6, 0x5943a33d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Landroidx/fragment/app/FragmentManager;->launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "a8fa36"

    const/16 v5, 0x48a8

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "d5b6ea"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 1
        0x24t
        0x41t
        0x58t
        0x5ft
        0x5bt
        0x57t
        0xct
        0x47t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x43t
        0x55t
        0x52t
        0x50t
        0x8t
        0x43t
        0x54t
        0x54t
        0x11t
        0x41t
        0x9t
        0x50t
        0x11t
        0x56t
        0x5et
        0x59t
        0xdt
        0x5at
        0x46t
        0x59t
        0x5ft
        0x52t
        0x41t
        0x5ct
        0x5ft
        0x10t
        0x42t
        0x41t
        0x0t
        0x47t
        0x45t
        0x79t
        0x5ft
        0x41t
        0x4t
        0x5bt
        0x45t
        0x63t
        0x54t
        0x5bt
        0x5t
        0x50t
        0x43t
        0x76t
        0x5et
        0x47t
        0x33t
        0x50t
        0x42t
        0x45t
        0x5dt
        0x41t
        0x49t
        0x1ct
        0x11t
        0x42t
        0x54t
        0x44t
        0x14t
        0x50t
        0x42t
        0x44t
        0x72t
        0x5at
        0x5t
        0x50t
        0xbt
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x17t
        0x2bt
        0x58t
        0x43t
        0x0t
        0x5bt
        0x43t
        0x31t
        0x53t
        0x59t
        0x1t
        0x50t
        0x45t
        0x58t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x43t
        0x53t
        0xct
        0x9t
        0x5et
        0x2bt
        0xdt
        0x7ct
        0xbt
        0x11t
        0x57t
        0xct
        0x17t
        0xft
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x19t
        0x9t
        0x44t
        0x17t
        0x8t
        0x5bt
        0x57t
        0x15t
        0xet
        0x43t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x22t
        0x46t
        0x54t
        0x54t
        0x5ct
        0x56t
        0xat
        0x40t
        0x78t
        0x52t
        0x5ft
        0x52t
        0x3t
        0x51t
        0x47t
    .end array-data

    :array_6
    .array-data 1
        0x27t
        0x4at
        0x7t
        0x6t
        0x5et
        0x53t
        0xft
        0x4ct
        0x46t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x44t
        0x5bt
        0xdt
        0x42t
        0x45t
        0x0t
        0x10t
        0x41t
        0x3t
        0x55t
        0xdt
        0x4t
        0x0t
        0x15t
        0x16t
        0x59t
        0x45t
        0x20t
        0x7t
        0x41t
        0xbt
        0x40t
        0xct
        0x15t
        0x1dt
    .end array-data
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    const/16 v2, 0x4b

    aput-byte v2, v1, v7

    const-string v2, "08b618"

    const-wide/32 v4, 0x6bc44270

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    const/16 v2, 0x48

    aput-byte v2, v1, v7

    const-string v2, "53c802"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f2b073"

    const/16 v3, -0x99c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2c3493"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "366a90"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-array v1, v6, [B

    const/16 v2, 0x4c

    aput-byte v2, v1, v7

    const-string v2, "e634d0"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x46t
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0xat
        0x57t
        0x9t
        0x9t
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x42t
        0x57t
        0x6t
        0x4t
    .end array-data
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
