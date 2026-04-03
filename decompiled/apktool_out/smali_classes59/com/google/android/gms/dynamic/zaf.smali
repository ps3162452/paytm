.class final Lcom/google/android/gms/dynamic/zaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zah;


# instance fields
.field final zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zaf;->zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final zab(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zaf;->zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onStart()V

    return-void
.end method
