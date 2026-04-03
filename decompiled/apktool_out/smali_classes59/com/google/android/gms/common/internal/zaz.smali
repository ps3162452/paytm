.class public final Lcom/google/android/gms/common/internal/zaz;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# static fields
.field private static final zaa:Lcom/google/android/gms/common/internal/zaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zaz;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zaz;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4bb3fd"

    const v2, 0x4e80c4e0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x57t
        0xdt
        0xft
        0x1dt
        0x1t
        0xbt
        0x5bt
        0x5t
        0xet
        0x56t
        0x48t
        0x5t
        0x5at
        0x6t
        0x10t
        0x5ct
        0xft
        0x0t
        0x1at
        0x5t
        0xft
        0x40t
        0x48t
        0x7t
        0x5bt
        0xft
        0xft
        0x5ct
        0x8t
        0x4at
        0x41t
        0xbt
        0x4ct
        0x60t
        0xft
        0x3t
        0x5at
        0x2bt
        0xct
        0x71t
        0x13t
        0x10t
        0x40t
        0xdt
        0xct
        0x70t
        0x14t
        0x1t
        0x55t
        0x16t
        0xdt
        0x41t
        0x2ft
        0x9t
        0x44t
        0xet
    .end array-data
.end method

.method public static zaa(Landroid/content/Context;II)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/zax;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/google/android/gms/common/internal/zax;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zaz;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zam;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zam;->zae(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/zax;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "00b9bc"

    const-wide v4, -0x3e22e9b88d800000L    # -1.951997386E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "231a13"

    const-wide v4, -0x3e35a8bd74800000L    # -8.83852567E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x73t
        0x5ft
        0x17t
        0x55t
        0x6t
        0x43t
        0x5et
        0x5ft
        0x16t
        0x19t
        0x5t
        0x6t
        0x44t
        0x10t
        0x0t
        0x4ct
        0x16t
        0x17t
        0x5ft
        0x5et
        0x42t
        0x4et
        0xbt
        0x17t
        0x58t
        0x10t
        0x11t
        0x50t
        0x18t
        0x6t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x52t
        0x5ft
        0x5t
        0x11t
        0x50t
        0x5dt
        0x5ft
        0x5et
        0x13t
        0x11t
    .end array-data
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c91445"

    const-wide v2, 0x41b9f268ec000000L    # 4.35316972E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zam;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/zam;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zam;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zam;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x56t
        0x5ct
        0x1at
        0x53t
        0x5at
        0xct
        0x5et
        0x5dt
        0x51t
        0x1at
        0x54t
        0xdt
        0x5dt
        0x43t
        0x5bt
        0x5dt
        0x51t
        0x4dt
        0x5et
        0x5ct
        0x47t
        0x1at
        0x56t
        0xct
        0x54t
        0x5ct
        0x5bt
        0x5at
        0x1bt
        0xat
        0x57t
        0x45t
        0x51t
        0x46t
        0x5bt
        0x2t
        0x55t
        0x1ft
        0x7dt
        0x67t
        0x5ct
        0x4t
        0x57t
        0x78t
        0x5at
        0x76t
        0x40t
        0x17t
        0x4dt
        0x5et
        0x5at
        0x77t
        0x47t
        0x6t
        0x58t
        0x45t
        0x5bt
        0x46t
    .end array-data
.end method
