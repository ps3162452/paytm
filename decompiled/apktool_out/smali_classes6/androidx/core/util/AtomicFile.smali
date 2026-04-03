.class public Landroidx/core/util/AtomicFile;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBaseName:Ljava/io/File;

.field private final mLegacyBackupName:Ljava/io/File;

.field private final mNewName:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "79cbbc"

    const-wide v2, 0x41c63db7a7000000L    # 7.46286926E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x76t
        0x4dt
        0xct
        0xft
        0xbt
        0x0t
        0x71t
        0x50t
        0xft
        0x7t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v2, "e79fdf"

    const-wide v4, 0x41c32a5287000000L    # 6.43081486E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "8b8eaa"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    return-void

    nop

    :array_0
    .array-data 1
        0x4bt
        0x59t
        0x5ct
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x0t
        0x59t
        0xet
    .end array-data
.end method

.method private static rename(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "51ab40"

    const-wide v4, 0x41dc2a7114800000L    # 1.890174034E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d776cf"

    const/16 v3, -0x11f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "8d528a"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x50t
        0x8t
        0xet
        0x51t
        0x54t
        0x15t
        0x45t
        0xet
        0x42t
        0x50t
        0x55t
        0x59t
        0x54t
        0x15t
        0x7t
        0x14t
        0x56t
        0x5ct
        0x5dt
        0x4t
        0x42t
        0x43t
        0x58t
        0x5ct
        0x52t
        0x9t
        0x42t
        0x5dt
        0x43t
        0x15t
        0x50t
        0x41t
        0x6t
        0x5dt
        0x42t
        0x50t
        0x52t
        0x15t
        0xdt
        0x46t
        0x49t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x22t
        0x56t
        0x5et
        0x5at
        0x6t
        0x2t
        0x44t
        0x43t
        0x58t
        0x16t
        0x11t
        0x3t
        0xat
        0x56t
        0x5at
        0x53t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x18t
        0x10t
        0x5at
        0x12t
    .end array-data
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8f4d21"

    const-wide/32 v4, 0x30d8912a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9ab38b"

    const/16 v3, 0x4556

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "a55f9f"

    const/16 v4, 0x61c6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7et
        0x7t
        0x5dt
        0x8t
        0x57t
        0x55t
        0x18t
        0x12t
        0x5bt
        0x44t
        0x41t
        0x48t
        0x56t
        0x5t
        0x14t
        0x2t
        0x5bt
        0x5dt
        0x5dt
        0x46t
        0x5bt
        0x11t
        0x46t
        0x41t
        0x4dt
        0x12t
        0x14t
        0x17t
        0x46t
        0x43t
        0x5dt
        0x7t
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ft
        0x0t
        0xbt
        0x5ft
        0x5dt
        0x6t
        0x19t
        0x15t
        0xdt
        0x13t
        0x5ct
        0x7t
        0x55t
        0x4t
        0x16t
        0x56t
        0x18t
        0xct
        0x5ct
        0x16t
        0x42t
        0x55t
        0x51t
        0xet
        0x5ct
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x54t
        0x5ct
        0xat
        0x5ct
        0x2t
        0x41t
        0x41t
        0x5at
        0x46t
        0x5at
        0xat
        0xet
        0x46t
        0x50t
        0x46t
        0x5ft
        0xft
        0xdt
        0x50t
        0x15t
        0x9t
        0x4ct
        0x12t
        0x11t
        0x40t
        0x41t
        0x46t
        0x4at
        0x12t
        0x13t
        0x50t
        0x54t
        0xbt
    .end array-data
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5884cc"

    const/16 v3, 0x5d3f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "94def2"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x73t
        0x59t
        0x51t
        0x58t
        0x6t
        0x7t
        0x15t
        0x4ct
        0x57t
        0x14t
        0x10t
        0x1at
        0x5bt
        0x5bt
        0x18t
        0x52t
        0xat
        0xft
        0x50t
        0x18t
        0x57t
        0x41t
        0x17t
        0x13t
        0x40t
        0x4ct
        0x18t
        0x47t
        0x17t
        0x11t
        0x50t
        0x59t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ft
        0x55t
        0xdt
        0x9t
        0x3t
        0x56t
        0x19t
        0x40t
        0xbt
        0x45t
        0x5t
        0x5et
        0x56t
        0x47t
        0x1t
        0x45t
        0x0t
        0x5bt
        0x55t
        0x51t
        0x44t
        0xat
        0x13t
        0x46t
        0x49t
        0x41t
        0x10t
        0x45t
        0x15t
        0x46t
        0x4bt
        0x51t
        0x5t
        0x8t
    .end array-data
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "831481"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/core/util/AtomicFile;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x52t
        0x58t
        0x58t
        0x5dt
        0x55t
        0x18t
        0x47t
        0x5et
        0x14t
        0x5ct
        0x54t
        0x54t
        0x56t
        0x45t
        0x51t
        0x18t
        0x5et
        0x4dt
        0x47t
        0x55t
        0x55t
        0x4ct
        0x54t
        0x5ct
        0x13t
        0x5ft
        0x51t
        0x4ft
        0x11t
        0x5et
        0x5at
        0x5dt
        0x51t
        0x18t
    .end array-data
.end method

.method public readFully()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :cond_0
    add-int/2addr v2, v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    array-length v4, v1

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroidx/core/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b0b56d"

    const-wide v4, 0x41cbdf540a800000L    # 9.35241749E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3b259d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x24t
        0x51t
        0xbt
        0x59t
        0x53t
        0x0t
        0x42t
        0x44t
        0xdt
        0x15t
        0x55t
        0x16t
        0x7t
        0x51t
        0x16t
        0x50t
        0x16t
        0xat
        0x7t
        0x47t
        0x42t
        0x53t
        0x5ft
        0x8t
        0x7t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x3t
        0x5bt
        0x59t
        0x5ct
        0x0t
        0x13t
        0x16t
        0x5dt
        0x15t
        0x5at
        0x16t
        0x56t
        0x3t
        0x46t
        0x50t
        0x19t
        0x0t
        0x5at
        0x10t
        0x57t
        0x56t
        0x4dt
        0xbt
        0x41t
        0x1bt
        0x12t
        0x53t
        0x56t
        0x16t
        0x13t
    .end array-data
.end method
