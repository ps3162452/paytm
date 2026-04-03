.class final Lcom/google/android/material/color/ColorResourcesLoaderCreator;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/color/ColorResourcesLoaderCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/loader/ResourcesLoader;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->create(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x17

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "349d46"

    const-wide v6, -0x3e329aed59000000L    # -9.8632635E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x9

    :try_start_1
    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b143ce"

    const/16 v4, 0x3cba

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v2

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    :try_start_4
    new-instance v1, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v1}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    :goto_1
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_2
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_c
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    :cond_4
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    const/16 v3, 0x30

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d45ebe"

    const/16 v5, 0x416c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_3
    move-exception v4

    :try_start_d
    invoke-static {v1, v4}, Lcom/google/android/material/color/ColorResourcesLoaderCreator$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1

    :catchall_4
    move-exception v3

    :try_start_e
    invoke-static {v1, v3}, Lcom/google/android/material/color/ColorResourcesLoaderCreator$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_2

    :catchall_5
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :array_0
    .array-data 1
        0x67t
        0x55t
        0x5bt
        0x8t
        0x51t
        0x16t
        0x50t
        0x46t
        0x5ct
        0x5t
        0x40t
        0x53t
        0x57t
        0x18t
        0x19t
        0x8t
        0x51t
        0x58t
        0x54t
        0x40t
        0x51t
        0x5et
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x54t
        0x59t
        0x43t
        0x4dt
        0x4t
        0x10t
        0x42t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x22t
        0x55t
        0x5ct
        0x9t
        0x7t
        0x1t
        0x44t
        0x40t
        0x5at
        0x45t
        0x1t
        0x17t
        0x1t
        0x55t
        0x41t
        0x0t
        0x42t
        0x11t
        0xct
        0x51t
        0x15t
        0x26t
        0xdt
        0x9t
        0xbt
        0x46t
        0x67t
        0x0t
        0x11t
        0xat
        0x11t
        0x46t
        0x56t
        0x0t
        0x11t
        0x31t
        0x5t
        0x56t
        0x59t
        0x0t
        0x21t
        0x17t
        0x1t
        0x55t
        0x41t
        0xat
        0x10t
        0x4bt
    .end array-data
.end method
