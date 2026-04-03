.class public final enum Landroidx/concurrent/futures/DirectExecutor;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/concurrent/futures/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/concurrent/futures/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/concurrent/futures/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroidx/concurrent/futures/DirectExecutor;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "151b8b"

    const-wide/32 v4, 0x59dae5d1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroidx/concurrent/futures/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/concurrent/futures/DirectExecutor;

    aput-object v0, v1, v3

    sput-object v1, Landroidx/concurrent/futures/DirectExecutor;->$VALUES:[Landroidx/concurrent/futures/DirectExecutor;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x7bt
        0x62t
        0x36t
        0x79t
        0x2ct
        0x72t
        0x70t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/concurrent/futures/DirectExecutor;
    .locals 1

    const-class v0, Landroidx/concurrent/futures/DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/DirectExecutor;

    return-object v0
.end method

.method public static values()[Landroidx/concurrent/futures/DirectExecutor;
    .locals 1

    sget-object v0, Landroidx/concurrent/futures/DirectExecutor;->$VALUES:[Landroidx/concurrent/futures/DirectExecutor;

    invoke-virtual {v0}, [Landroidx/concurrent/futures/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/concurrent/futures/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f3c959"

    const/16 v2, 0x1a05

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x22t
        0x5at
        0x11t
        0x5ct
        0x56t
        0x4dt
        0x23t
        0x4bt
        0x6t
        0x5at
        0x40t
        0x4dt
        0x9t
        0x41t
    .end array-data
.end method
