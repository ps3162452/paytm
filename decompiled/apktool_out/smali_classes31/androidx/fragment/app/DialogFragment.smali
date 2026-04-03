.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String;

.field private static final SAVED_CANCELABLE:Ljava/lang/String;

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String;

.field private static final SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String;

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String;

.field private static final SAVED_STYLE:Ljava/lang/String;

.field private static final SAVED_THEME:Ljava/lang/String;

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x13

    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "8e3473"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_BACK_STACK_ID:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "826b43"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_CANCELABLE:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "f0cd86"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_DIALOG_STATE_TAG:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "21d41c"

    const/16 v2, 0xd04

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "5f0eef"

    const v2, 0x4e0e5107    # 5.969187E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_SHOWS_DIALOG:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "8757b8"

    const-wide/32 v2, 0x5703afbc

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_STYLE:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_6

    const-string v1, "16e435"

    const v2, -0x314f0c11

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_THEME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0xbt
        0x57t
        0x46t
        0x58t
        0x5at
        0x5ct
        0x5ft
        0x51t
        0x55t
        0x54t
        0x58t
        0x6bt
        0x11t
        0x52t
        0x57t
        0x5ct
        0x7at
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x59t
        0x5ct
        0x52t
        0x10t
        0x5bt
        0x5at
        0x5ct
        0x8t
        0x55t
        0x3t
        0x5at
        0x50t
        0x5dt
        0x5et
        0x57t
        0x0t
        0x58t
        0x56t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7t
        0x5et
        0x7t
        0x16t
        0x57t
        0x5ft
        0x2t
        0xat
        0x10t
        0x5t
        0x4et
        0x53t
        0x2t
        0x74t
        0xat
        0x5t
        0x54t
        0x59t
        0x1t
        0x63t
        0x17t
        0x5t
        0x4ct
        0x53t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x5ft
        0x0t
        0x46t
        0x5et
        0xat
        0x56t
        0xbt
        0x0t
        0x5dt
        0x50t
        0xft
        0x5dt
        0x56t
        0x37t
        0x5ct
        0x5et
        0x14t
        0x5bt
        0x5ft
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x54t
        0x8t
        0x54t
        0x17t
        0xat
        0xft
        0x51t
        0x5ct
        0x43t
        0xdt
        0xat
        0x11t
        0x46t
        0x22t
        0x59t
        0x4t
        0x9t
        0x9t
        0x52t
    .end array-data

    :array_5
    .array-data 1
        0x59t
        0x59t
        0x51t
        0x45t
        0xdt
        0x51t
        0x5ct
        0xdt
        0x46t
        0x43t
        0x1bt
        0x54t
        0x5dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x50t
        0x58t
        0x1t
        0x46t
        0x5ct
        0x5ct
        0x55t
        0xct
        0x11t
        0x5ct
        0x56t
        0x58t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    new-instance v0, Landroidx/fragment/app/DialogFragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    new-instance v0, Landroidx/fragment/app/DialogFragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/fragment/app/DialogFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/DialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method private dismissInternal(ZZ)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    :goto_1
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private prepareDialog(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    throw v0
.end method


# virtual methods
.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .locals 2

    new-instance v0, Landroidx/fragment/app/DialogFragment$5;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$5;-><init>(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentContainer;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_STYLE:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_THEME:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_CANCELABLE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_SHOWS_DIALOG:Ljava/lang/String;

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_BACK_STACK_ID:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fea089"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7f5c6e"

    const-wide v4, -0x3e2e28d977800000L    # -1.197251106E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x9t
        0xbt
        0x22t
        0x42t
        0x5dt
        0x58t
        0x12t
        0x0t
        0x25t
        0x59t
        0x59t
        0x55t
        0x9t
        0x2t
        0x41t
        0x53t
        0x59t
        0x55t
        0xat
        0x0t
        0x5t
        0x10t
        0x5et
        0x56t
        0x14t
        0x45t
        0x25t
        0x59t
        0x59t
        0x55t
        0x9t
        0x2t
        0x27t
        0x42t
        0x59t
        0x5et
        0xbt
        0x0t
        0xft
        0x44t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x14t
        0x54t
        0x4t
        0x5bt
        0x0t
        0x59t
        0x12t
        0x78t
        0x2t
        0x58t
        0x4t
        0x50t
        0x3t
        0x47t
    .end array-data
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "880222"

    const-wide v4, 0x41dbd654b8c00000L    # 1.868124899E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "af7907"

    const/16 v3, 0x21ed

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v6, v6}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x56t
        0x74t
        0x5bt
        0x41t
        0x5ft
        0x51t
        0x4bt
        0x43t
        0x12t
        0x51t
        0x53t
        0x54t
        0x54t
        0x55t
        0x56t
        0x12t
        0x54t
        0x57t
        0x4at
        0x10t
        0x76t
        0x5bt
        0x53t
        0x54t
        0x57t
        0x57t
        0x74t
        0x40t
        0x53t
        0x5ft
        0x55t
        0x55t
        0x5ct
        0x46t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x14t
        0x56t
        0x5et
        0x5dt
        0x52t
        0xft
        0x12t
        0x7at
        0x58t
        0x5et
        0x56t
        0x6t
        0x3t
        0x45t
    .end array-data
.end method

.method onFindViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 8

    const/4 v2, 0x2

    const/16 v5, 0xf

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "de5de8"

    const v4, -0x32df695b    # -1.683892E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "15b767"

    const-wide/32 v6, -0x5fc28e1e

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v3, "eed988"

    const v4, 0x4ed8e171

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;->prepareDialog(Landroid/os/Bundle;)V

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "643da2"

    const v4, 0x4ee39db3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "8acc60"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [B

    fill-array-data v2, :array_5

    const-string v3, "78f073"

    const-wide v4, 0x41d964574ec00000L    # 1.704025403E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "df6fd8"

    const-wide/32 v6, -0x69f3d344

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    fill-array-data v1, :array_7

    const-string v3, "f2c86a"

    const/16 v4, -0x45d9

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x3t
        0x0t
        0x41t
        0x10t
        0xct
        0x56t
        0x3t
        0x45t
        0x59t
        0x5t
        0x1ct
        0x57t
        0x11t
        0x11t
        0x15t
        0xdt
        0xbt
        0x5et
        0x8t
        0x4t
        0x41t
        0x1t
        0x17t
        0x18t
        0x2t
        0xat
        0x47t
        0x44t
        0x21t
        0x51t
        0x5t
        0x9t
        0x5at
        0x3t
        0x23t
        0x4at
        0x5t
        0x2t
        0x58t
        0x1t
        0xbt
        0x4ct
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x5ct
        0x66t
        0xat
        0x58t
        0x41t
        0x44t
        0x75t
        0x5ct
        0x3t
        0x5bt
        0x59t
        0x50t
        0x11t
        0x8t
        0x42t
        0x51t
        0x57t
        0x5bt
        0x42t
        0x50t
        0x58t
        0x17t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x17t
        0x5t
        0x5et
        0x55t
        0x5dt
        0xbt
        0x11t
        0x29t
        0x58t
        0x56t
        0x59t
        0x2t
        0x0t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x51t
        0x51t
        0x47t
        0x44t
        0xdt
        0x53t
        0x4ft
        0x5bt
        0x46t
        0x10t
        0x41t
        0x5bt
        0x58t
        0x52t
        0x5ft
        0x5t
        0x15t
        0x57t
        0x44t
        0x14t
        0x55t
        0xbt
        0x13t
        0x12t
        0x72t
        0x5dt
        0x52t
        0x8t
        0xet
        0x55t
        0x70t
        0x46t
        0x52t
        0x3t
        0xct
        0x57t
        0x58t
        0x40t
        0x13t
    .end array-data

    :array_4
    .array-data 1
        0x18t
        0x7t
        0x11t
        0xct
        0x5bt
        0x10t
        0x5ct
        0x8t
        0x2t
        0xft
        0x59t
        0x57t
        0x18t
        0x2t
        0xct
        0xdt
        0x42t
        0x55t
        0x40t
        0x15t
    .end array-data

    :array_5
    .array-data 1
        0x71t
        0x4at
        0x7t
        0x57t
        0x5at
        0x56t
        0x59t
        0x4ct
        0x2bt
        0x51t
        0x59t
        0x52t
        0x50t
        0x5dt
        0x14t
    .end array-data

    :array_6
    .array-data 1
        0x9t
        0x25t
        0x44t
        0x3t
        0x5t
        0x4ct
        0xdt
        0x8t
        0x51t
        0x22t
        0xdt
        0x59t
        0x8t
        0x9t
        0x51t
        0x46t
        0x59t
        0x18t
        0x10t
        0x14t
        0x43t
        0x3t
        0x5et
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x20t
        0x40t
        0x2t
        0x5ft
        0x5bt
        0x4t
        0x8t
        0x46t
        0x2et
        0x59t
        0x58t
        0x0t
        0x1t
        0x57t
        0x11t
    .end array-data
.end method

.method onHasView()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_DIALOG_STATE_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_STYLE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_THEME:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_3

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_CANCELABLE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_4

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_SHOWS_DIALOG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    sget-object v1, Landroidx/fragment/app/DialogFragment;->SAVED_BACK_STACK_ID:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_DIALOG_STATE_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Landroidx/fragment/app/DialogFragment;->SAVED_DIALOG_STATE_TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f86d08"

    const v3, 0x4eee5072    # 1.9991247E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "43495f"

    const/16 v3, 0x4a28

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
        0x22t
        0x51t
        0x57t
        0x8t
        0x5ft
        0x5ft
        0x20t
        0x4at
        0x57t
        0x3t
        0x5dt
        0x5dt
        0x8t
        0x4ct
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x57t
        0x5bt
        0x5ct
        0x46t
        0x46t
        0x5at
        0x5ct
        0x40t
        0x19t
        0x5dt
        0x7t
        0x42t
        0x56t
        0x14t
        0x58t
        0x15t
        0x22t
        0x5dt
        0x52t
        0x58t
        0x56t
        0x52t
        0x48t
    .end array-data
.end method

.method public setCancelable(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0d0b16"

    const-wide/32 v4, -0x386be95e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b4a8b1"

    const-wide/32 v4, 0x42a3c6e7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "cd4e6f"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "fa6931"

    const/16 v3, 0x1402

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eq p1, v6, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const v0, 0x1030059

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    :cond_2
    if-eqz p2, :cond_3

    iput p2, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x63t
        0x1t
        0x44t
        0x16t
        0x58t
        0x58t
        0x57t
        0x44t
        0x43t
        0x16t
        0x48t
        0x5at
        0x55t
        0x44t
        0x51t
        0xct
        0x55t
        0x16t
        0x44t
        0xct
        0x55t
        0xft
        0x54t
        0x16t
        0x56t
        0xbt
        0x42t
        0x42t
        0x75t
        0x5ft
        0x51t
        0x8t
        0x5ft
        0x5t
        0x77t
        0x44t
        0x51t
        0x3t
        0x5dt
        0x7t
        0x5ft
        0x42t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x40t
        0xet
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x20t
        0x13t
        0x57t
        0x5et
        0x5et
        0x54t
        0x8t
        0x15t
        0x7bt
        0x58t
        0x5dt
        0x50t
        0x1t
        0x4t
        0x44t
    .end array-data
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method
