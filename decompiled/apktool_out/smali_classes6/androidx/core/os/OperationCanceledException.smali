.class public Landroidx/core/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b983e1"

    const/16 v2, 0x17fc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x36t
        0x51t
        0x5dt
        0x13t
        0xat
        0x41t
        0x7t
        0x4bt
        0x59t
        0x47t
        0xct
        0x5et
        0xct
        0x19t
        0x50t
        0x52t
        0x16t
        0x11t
        0x0t
        0x5ct
        0x5dt
        0x5dt
        0x45t
        0x52t
        0x3t
        0x57t
        0x5bt
        0x56t
        0x9t
        0x54t
        0x6t
        0x17t
    .end array-data
.end method
