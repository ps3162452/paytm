.class Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserUnlockReceiver"
.end annotation


# static fields
.field private static INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->ensureReceiverRegistered(Landroid/content/Context;)V

    return-void
.end method

.method private static ensureReceiverRegistered(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "eeed95"

    const-wide v4, -0x3e20171194000000L    # -2.141436336E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0xbt
        0x1t
        0x16t
        0x56t
        0x5ct
        0x1t
        0x4bt
        0xct
        0xat
        0x4dt
        0x50t
        0xbt
        0x11t
        0x4bt
        0x5t
        0x5at
        0x41t
        0xct
        0xat
        0xbt
        0x4at
        0x6ct
        0x66t
        0x20t
        0x37t
        0x3at
        0x31t
        0x77t
        0x79t
        0x2at
        0x26t
        0x2et
        0x21t
        0x7dt
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->access$400(Lcom/google/firebase/FirebaseApp;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->unregister()V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
