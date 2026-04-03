.class public Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;

# interfaces
.implements Landroidx/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData",
        "<TD;>;",
        "Landroidx/loader/content/Loader$OnLoadCompleteListener",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mId:I

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/content/Loader",
            "<TD;>;",
            "Landroidx/loader/content/Loader",
            "<TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    iput-object p4, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    invoke-virtual {p3, p1, p0}, Landroidx/loader/content/Loader;->registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method destroy(Z)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "94174b"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a52593"

    const-wide v4, -0x3e29215066800000L    # -1.53477079E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->abandon()V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->reset()V

    :cond_1
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1, p0}, Landroidx/loader/content/Loader;->unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->reset()V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    goto :goto_0

    :array_0
    .array-data 1
        0x19t
        0x14t
        0x75t
        0x52t
        0x47t
        0x16t
        0x4bt
        0x5bt
        0x48t
        0x5et
        0x5at
        0x5t
        0x3t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x5at
        0x53t
        0x51t
        0x5ct
        0x41t
        0x2ct
        0x54t
        0x5ct
        0x54t
        0x5et
        0x56t
        0x13t
    .end array-data
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6cd72c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2090bf"

    const-wide v2, 0x41d17b343d800000L    # 1.173147894E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "73e5cc"

    const/4 v2, 0x1

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "f5768f"

    const-wide/32 v2, -0x48676258

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "cff40a"

    const-wide/32 v2, -0x283bff2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "55b37e"

    const v2, 0x4ecd0ee2    # 1.7201523E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
        0x2at
        0x0t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x5dt
        0x78t
        0x42t
        0x5t
        0x15t
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x5at
        0x7ft
        0xat
        0x54t
        0x7t
        0x6t
        0x45t
        0xet
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x76t
        0x56t
        0x5at
        0x54t
        0x4t
        0x7t
        0x56t
        0x5ct
        0x45t
        0x5t
    .end array-data

    :array_4
    .array-data 1
        0xet
        0x22t
        0x7t
        0x40t
        0x51t
        0x5ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x58t
        0x66t
        0x16t
        0x52t
        0x45t
        0x11t
        0x50t
        0x51t
        0x5ft
    .end array-data
.end method

.method getLoader()Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method markForRedelivery()V
    .locals 2

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0, v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 4

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b5448a"

    const/16 v3, -0x6358

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9e2c7f"

    const/16 v3, 0x1c30

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->startLoading()V

    return-void

    :array_0
    .array-data 1
        0x42t
        0x15t
        0x67t
        0x40t
        0x59t
        0x13t
        0x16t
        0x5ct
        0x5at
        0x53t
        0x2t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        0xat
        0x53t
        0x7t
        0x52t
        0x14t
        0x74t
        0x4t
        0x5ct
        0x2t
        0x50t
        0x3t
        0x4bt
    .end array-data
.end method

.method protected onInactive()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "20c51f"

    const/16 v3, -0x1298

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "aed534"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->stopLoading()V

    return-void

    nop

    :array_0
    .array-data 1
        0x12t
        0x10t
        0x30t
        0x41t
        0x5et
        0x16t
        0x42t
        0x59t
        0xdt
        0x52t
        0xbt
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0xat
        0x5t
        0x51t
        0x56t
        0x46t
        0x2ct
        0x4t
        0xat
        0x54t
        0x54t
        0x51t
        0x13t
    .end array-data
.end method

.method public onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader",
            "<TD;>;TD;)V"
        }
    .end annotation

    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "57de65"

    const/16 v3, 0x52d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "6bc2f8"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "8df6cf"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "988f73"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5at
        0x59t
        0x28t
        0xat
        0x57t
        0x51t
        0x76t
        0x58t
        0x9t
        0x15t
        0x5at
        0x50t
        0x41t
        0x52t
        0x5et
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0xdt
        0x2t
        0x56t
        0x3t
        0x4at
        0x7bt
        0x3t
        0xdt
        0x53t
        0x1t
        0x5dt
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0xbt
        0x7t
        0x52t
        0x6t
        0x14t
        0x75t
        0x5t
        0x8t
        0x57t
        0x4t
        0x3t
        0x4at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x56t
        0x56t
        0x74t
        0x9t
        0x56t
        0x57t
        0x7at
        0x57t
        0x55t
        0x16t
        0x5bt
        0x56t
        0x4dt
        0x5dt
        0x18t
        0x11t
        0x56t
        0x40t
        0x19t
        0x51t
        0x56t
        0x5t
        0x58t
        0x41t
        0x4bt
        0x5dt
        0x5bt
        0x12t
        0x5bt
        0x4at
        0x19t
        0x5bt
        0x59t
        0xat
        0x5bt
        0x56t
        0x5dt
        0x18t
        0x57t
        0x8t
        0x17t
        0x52t
        0x19t
        0x5at
        0x59t
        0x5t
        0x5ct
        0x54t
        0x4bt
        0x57t
        0x4dt
        0x8t
        0x53t
        0x13t
        0x4dt
        0x50t
        0x4at
        0x3t
        0x56t
        0x57t
    .end array-data
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TD;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    return-void
.end method

.method setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-direct {v0, v1, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {p0, p1, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fd0144"

    const v3, -0x31b596c7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "167529"

    const-wide v4, 0x41ddb44830400000L    # 1.993416897E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "b00aa1"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const-string v3, "03058a"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "726933"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2at
        0xbt
        0x51t
        0x55t
        0x51t
        0x46t
        0x2ft
        0xat
        0x56t
        0x5et
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0xat
        0x10t
    .end array-data

    :array_3
    .array-data 1
        0x4at
        0x4ft
    .end array-data
.end method
