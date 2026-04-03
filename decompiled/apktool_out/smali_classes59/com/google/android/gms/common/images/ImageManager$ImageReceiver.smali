.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageReceiver"
.end annotation


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Landroid/net/Uri;

.field private final zac:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    new-instance v0, Lcom/google/android/gms/internal/base/zau;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3e3da9"

    const-wide/32 v2, 0x1c58691

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zai(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/images/zaa;

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab:Landroid/net/Uri;

    invoke-direct {v3, v1, v4, v0}, Lcom/google/android/gms/common/images/zaa;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0xat
        0x5et
        0x4at
        0x6t
        0x56t
        0x5ct
        0x2t
        0x5ft
        0x1t
        0x4ft
        0x58t
        0x5dt
        0x1t
        0x41t
        0xbt
        0x8t
        0x5dt
        0x1dt
        0x2t
        0x5et
        0x17t
        0x4ft
        0x5ct
        0x4bt
        0x11t
        0x41t
        0x5t
        0x4ft
        0x5ft
        0x5at
        0x9t
        0x56t
        0x20t
        0x4t
        0x4at
        0x50t
        0x17t
        0x5at
        0x14t
        0x15t
        0x56t
        0x41t
    .end array-data
.end method

.method public final zab(Lcom/google/android/gms/common/images/zag;)V
    .locals 4

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7bec45"

    const-wide v2, 0x41d6c968b5c00000L    # 1.529193175E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        0xft
        0x4t
        0x4t
        0x51t
        0x67t
        0x52t
        0x1t
        0x0t
        0xat
        0x42t
        0x50t
        0x45t
        0x4ct
        0x4t
        0x7t
        0x50t
        0x7ct
        0x5at
        0x3t
        0x2t
        0x6t
        0x66t
        0x50t
        0x46t
        0x17t
        0x0t
        0x10t
        0x40t
        0x1dt
        0x1et
        0x42t
        0x8t
        0x16t
        0x47t
        0x41t
        0x17t
        0x0t
        0x0t
        0x43t
        0x57t
        0x54t
        0x5bt
        0xet
        0x0t
        0x7t
        0x14t
        0x5ct
        0x59t
        0x42t
        0x11t
        0xbt
        0x51t
        0x15t
        0x5at
        0x3t
        0xct
        0xdt
        0x14t
        0x41t
        0x5ft
        0x10t
        0x0t
        0x2t
        0x50t
    .end array-data
.end method

.method public final zac(Lcom/google/android/gms/common/images/zag;)V
    .locals 3

    const/16 v0, 0x44

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "010e61"

    const/16 v2, -0x2613

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x79t
        0x5ct
        0x51t
        0x2t
        0x53t
        0x63t
        0x55t
        0x52t
        0x55t
        0xct
        0x40t
        0x54t
        0x42t
        0x1ft
        0x42t
        0x0t
        0x5bt
        0x5et
        0x46t
        0x54t
        0x79t
        0x8t
        0x57t
        0x56t
        0x55t
        0x63t
        0x55t
        0x14t
        0x43t
        0x54t
        0x43t
        0x45t
        0x18t
        0x4ct
        0x16t
        0x5ct
        0x45t
        0x42t
        0x44t
        0x45t
        0x54t
        0x54t
        0x10t
        0x52t
        0x51t
        0x9t
        0x5at
        0x54t
        0x54t
        0x11t
        0x59t
        0xbt
        0x16t
        0x45t
        0x58t
        0x54t
        0x10t
        0x8t
        0x57t
        0x58t
        0x5et
        0x11t
        0x44t
        0xdt
        0x44t
        0x54t
        0x51t
        0x55t
    .end array-data
.end method

.method public final zad()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "14d5cc"

    const-wide v4, 0x41bd0599dd000000L    # 4.86906333E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0cf449"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "6d02ce"

    const-wide v4, 0x41dc6c61a9c00000L    # 1.907459751E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "01ae44"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "9b1588"

    const/16 v3, 0xbed

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x52t
        0x5bt
        0x9t
        0x1bt
        0x4t
        0xct
        0x5et
        0x53t
        0x8t
        0x50t
        0x4dt
        0x2t
        0x5ft
        0x50t
        0x16t
        0x5at
        0xat
        0x7t
        0x1ft
        0x53t
        0x9t
        0x46t
        0x4dt
        0x0t
        0x5et
        0x59t
        0x9t
        0x5at
        0xdt
        0x4dt
        0x58t
        0x59t
        0x5t
        0x52t
        0x6t
        0x10t
        0x1ft
        0x78t
        0x2bt
        0x74t
        0x27t
        0x3ct
        0x78t
        0x79t
        0x25t
        0x72t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0xct
        0xbt
        0x1at
        0x53t
        0x56t
        0x5ft
        0x4t
        0xat
        0x51t
        0x1at
        0x58t
        0x5et
        0x7t
        0x14t
        0x5bt
        0x5dt
        0x5dt
        0x1et
        0x4t
        0xbt
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x55t
        0xbt
        0x5dt
        0x1ct
        0x4t
        0xat
        0x59t
        0x3t
        0x5ct
        0x57t
        0x4dt
        0x4t
        0x58t
        0x0t
        0x42t
        0x5dt
        0xat
        0x1t
        0x18t
        0x3t
        0x5dt
        0x41t
        0x4dt
        0x0t
        0x4et
        0x10t
        0x42t
        0x53t
        0x10t
        0x4bt
        0x43t
        0x16t
        0x59t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x53t
        0x5et
        0xct
        0x4bt
        0x53t
        0x5bt
        0x5ft
        0x56t
        0xdt
        0x0t
        0x1at
        0x55t
        0x5et
        0x55t
        0x13t
        0xat
        0x5dt
        0x50t
        0x1et
        0x56t
        0xct
        0x16t
        0x1at
        0x51t
        0x48t
        0x45t
        0x13t
        0x4t
        0x47t
        0x1at
        0x42t
        0x54t
        0x12t
        0x10t
        0x58t
        0x40t
        0x62t
        0x54t
        0x2t
        0x0t
        0x5dt
        0x42t
        0x55t
        0x43t
    .end array-data

    :array_4
    .array-data 1
        0x5at
        0xdt
        0x5ct
        0x1bt
        0x5ft
        0x57t
        0x56t
        0x5t
        0x5dt
        0x50t
        0x16t
        0x59t
        0x57t
        0x6t
        0x43t
        0x5at
        0x51t
        0x5ct
        0x17t
        0x5t
        0x5ct
        0x46t
        0x16t
        0x5dt
        0x41t
        0x16t
        0x43t
        0x54t
        0x4bt
        0x16t
        0x49t
        0x10t
        0x58t
        0x5at
        0x4at
        0x51t
        0x4dt
        0x1bt
    .end array-data
.end method
