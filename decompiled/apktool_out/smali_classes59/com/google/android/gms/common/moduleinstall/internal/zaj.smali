.class public final synthetic Lcom/google/android/gms/common/moduleinstall/internal/zaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field public final zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zav;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zav;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/internal/zaz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zai(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    return-void
.end method
