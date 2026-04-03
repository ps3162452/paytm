.class final Lcom/google/android/gms/common/images/zaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Landroid/net/Uri;

.field private final zac:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v8, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "9550b5"

    const-wide/32 v6, 0x2221be41

    invoke-static {v0, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkNotMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/common/images/zac;

    iget-object v2, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/zac;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v4, "775b05"

    const/16 v5, -0x739e

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x22

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "28281f"

    invoke-static {v4, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_3

    const-string v5, "689ce0"

    const v6, -0x319b084e

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "4db5cc"

    const v7, 0x4e8d5ba7

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v1, "2ee1ee"

    const/16 v2, 0x2d4e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "308824"

    const v3, -0x321b1d79    # -4.8000637E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x75t
        0x5at
        0x54t
        0x54t
        0x20t
        0x5ct
        0x4dt
        0x58t
        0x54t
        0x40t
        0x24t
        0x47t
        0x56t
        0x58t
        0x71t
        0x59t
        0x11t
        0x5et
        0x6bt
        0x40t
        0x5bt
        0x5et
        0x3t
        0x57t
        0x55t
        0x50t
        0x15t
        0x53t
        0x3t
        0x5bt
        0x1et
        0x41t
        0x15t
        0x52t
        0x7t
        0x15t
        0x5ct
        0x4dt
        0x50t
        0x53t
        0x17t
        0x41t
        0x5ct
        0x51t
        0x15t
        0x59t
        0xct
        0x15t
        0x4dt
        0x5dt
        0x50t
        0x10t
        0xft
        0x54t
        0x50t
        0x5bt
        0x15t
        0x44t
        0xat
        0x47t
        0x5ct
        0x54t
        0x51t
    .end array-data

    :array_1
    .array-data 1
        0x7et
        0x5at
        0x54t
        0x5t
        0x55t
        0x78t
        0x56t
        0x59t
        0x54t
        0x5t
        0x55t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        0x7dt
        0x77t
        0x7ft
        0x18t
        0x46t
        0xet
        0x5bt
        0x54t
        0x57t
        0x18t
        0x5dt
        0x9t
        0x53t
        0x5ct
        0x5bt
        0x56t
        0x56t
        0x46t
        0x50t
        0x51t
        0x46t
        0x55t
        0x50t
        0x16t
        0x12t
        0x5et
        0x5dt
        0x4at
        0x11t
        0x13t
        0x40t
        0x51t
        0x8t
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7ft
        0x55t
        0x58t
        0x4t
        0x0t
        0x7dt
        0x57t
        0x56t
        0x58t
        0x4t
        0x0t
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x8t
        0xdt
        0x46t
        0x6t
        0x7t
        0x14t
        0x2t
        0x3t
        0x5ct
        0xft
        0x6t
        0x50t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7bt
        0x8t
        0x4t
        0x56t
        0x0t
        0x28t
        0x53t
        0xbt
        0x4t
        0x56t
        0x0t
        0x17t
    .end array-data

    :array_6
    .array-data 1
        0x7ft
        0x51t
        0x4ct
        0x5bt
        0x5at
        0x14t
        0x5at
        0x5et
        0x4ct
        0x5dt
        0x40t
        0x46t
        0x46t
        0x40t
        0x4ct
        0x5dt
        0x56t
        0x14t
        0x44t
        0x58t
        0x51t
        0x54t
        0x57t
        0x14t
        0x43t
        0x5ft
        0x4bt
        0x4ct
        0x5bt
        0x5at
        0x54t
        0x10t
    .end array-data
.end method
