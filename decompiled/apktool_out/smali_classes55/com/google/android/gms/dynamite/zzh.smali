.class final Lcom/google/android/gms/dynamite/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;-><init>()V

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-nez v1, :cond_0

    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    goto :goto_0
.end method
