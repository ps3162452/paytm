.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

.field private final mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f4cce8"

    const-wide/32 v4, -0x4e7470da

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x29t
        0x7at
        0x3ct
        0x22t
        0x2bt
        0x61t
        0x46t
        0x59t
        0x16t
        0x10t
        0x11t
        0x18t
        0x8t
        0x5bt
        0x17t
        0x43t
        0x7t
        0x5dt
        0x3t
        0x5at
        0x43t
        0x10t
        0x0t
        0x56t
        0x2t
        0x14t
        0x1t
        0x1at
        0x45t
        0x59t
        0x8t
        0x4dt
        0x1t
        0xct
        0x1t
        0x41t
    .end array-data
.end method
