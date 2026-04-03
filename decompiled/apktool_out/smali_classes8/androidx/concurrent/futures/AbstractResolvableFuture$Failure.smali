.class final Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Failure"
.end annotation


# static fields
.field static final FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;


# instance fields
.field final exception:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure$1;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bd68e0"

    const/16 v4, -0x6b17

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    return-void

    :array_0
    .array-data 1
        0x24t
        0x5t
        0x5ft
        0x54t
        0x10t
        0x42t
        0x7t
        0x44t
        0x59t
        0x5bt
        0x6t
        0x45t
        0x10t
        0x16t
        0x53t
        0x5ct
        0x45t
        0x47t
        0xat
        0xdt
        0x5at
        0x5dt
        0x45t
        0x44t
        0x10t
        0x1dt
        0x5ft
        0x56t
        0x2t
        0x10t
        0x16t
        0xbt
        0x16t
        0x5et
        0xct
        0x5et
        0xbt
        0x17t
        0x5et
        0x18t
        0x4t
        0x10t
        0x4t
        0x11t
        0x42t
        0x4dt
        0x17t
        0x55t
        0x4ct
    .end array-data
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    return-void
.end method
