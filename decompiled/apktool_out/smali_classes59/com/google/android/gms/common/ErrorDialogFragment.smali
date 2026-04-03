.class public Lcom/google/android/gms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;


# instance fields
.field private zaa:Landroid/app/Dialog;

.field private zab:Landroid/content/DialogInterface$OnCancelListener;

.field private zac:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/common/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "a517fe"

    const-wide/32 v4, 0x7a12b55d

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iput-object p1, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 1
        0x22t
        0x54t
        0x5ft
        0x59t
        0x9t
        0x11t
        0x41t
        0x51t
        0x58t
        0x44t
        0x16t
        0x9t
        0x0t
        0x4ct
        0x11t
        0x59t
        0x13t
        0x9t
        0xdt
        0x15t
        0x55t
        0x5et
        0x7t
        0x9t
        0xet
        0x52t
    .end array-data
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zac:Landroid/app/Dialog;

    :cond_1
    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
