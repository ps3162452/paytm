.class Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field volatile mListener:Landroidx/core/location/LocationListenerCompat;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationListenerCompat;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "154784"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationListenerCompat;

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void

    :array_0
    .array-data 1
        0x58t
        0x5bt
        0x42t
        0x56t
        0x54t
        0x5dt
        0x55t
        0x15t
        0x5at
        0x42t
        0x54t
        0x58t
        0x11t
        0x59t
        0x5dt
        0x44t
        0x4ct
        0x51t
        0x5ft
        0x50t
        0x46t
    .end array-data
.end method

.method static synthetic lambda$register$0(Ljava/lang/ref/WeakReference;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$unregister$1(Ljava/lang/ref/WeakReference;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic lambda$onFlushComplete$4$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onFlushComplete(I)V

    goto :goto_0
.end method

.method public synthetic lambda$onLocationChanged$2$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public synthetic lambda$onLocationChanged$3$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic lambda$onProviderDisabled$7$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic lambda$onProviderEnabled$6$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic lambda$onStatusChanged$5$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2, p3, p4}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFlushComplete(I)V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    sget-object v1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda6;->INSTANCE:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda6;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public unregister()Z
    .locals 4

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_3

    sget-object v1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda7;->INSTANCE:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda7;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method
