.class final Lcom/google/android/gms/common/api/internal/zaac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field final zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final zab:Lcom/google/android/gms/common/api/internal/zaad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaac;->zab:Lcom/google/android/gms/common/api/internal/zaad;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaac;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaac;->zab:Lcom/google/android/gms/common/api/internal/zaad;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaad;->zab(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaac;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
