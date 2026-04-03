.class final Lcom/google/android/gms/common/zac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final zaa:Landroid/app/Activity;

.field final zab:I

.field final zac:Landroidx/activity/result/ActivityResultLauncher;

.field final zad:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/app/Activity;ILandroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/zac;->zad:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput-object p2, p0, Lcom/google/android/gms/common/zac;->zaa:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/zac;->zab:I

    iput-object p4, p0, Lcom/google/android/gms/common/zac;->zac:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/common/zac;->zad:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/zac;->zaa:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/zac;->zab:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/zac;->zac:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0
.end method
