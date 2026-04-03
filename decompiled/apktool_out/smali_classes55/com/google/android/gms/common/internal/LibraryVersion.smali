.class public Lcom/google/android/gms/common/internal/LibraryVersion;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static final zzb:Lcom/google/android/gms/common/internal/LibraryVersion;


# instance fields
.field private final zzc:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "64eb8f"

    const-wide v4, 0x41d37c15fb400000L    # 1.307596781E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v0, Lcom/google/android/gms/common/internal/LibraryVersion;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/LibraryVersion;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x5dt
        0x7t
        0x10t
        0x59t
        0x14t
        0x4ft
        0x62t
        0x0t
        0x10t
        0x4bt
        0xft
        0x59t
        0x5at
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-object v0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v12, 0x7

    const/4 v11, 0x1

    const/16 v10, 0xe

    const/4 v1, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "215b6d"

    const-wide v4, 0x41d7481a6ec00000L    # 1.562405307E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-class v2, Lcom/google/android/gms/common/internal/LibraryVersion;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "959487"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "291b91"

    const/16 v5, -0x351a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "231938"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "37cbd6"

    const/16 v6, 0x61ab

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-array v1, v10, [B

    fill-array-data v1, :array_5

    const-string v2, "74c5ea"

    const v3, 0x4e59cefa    # 9.135551E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa1

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "b5673e"

    invoke-static {v2, v3, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v12, [B

    fill-array-data v0, :array_7

    const-string v1, "f8f54e"

    const/16 v2, -0x5040

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2b

    new-array v4, v4, [B

    fill-array-data v4, :array_8

    const-string v5, "bcc703"

    const/16 v6, 0x3090

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const-string v5, "f086cf"

    const/16 v6, 0x22e6

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    throw v0

    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v13

    :goto_4
    :try_start_3
    sget-object v3, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2b

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v6, "c25c27"

    const-wide v8, -0x3e2b9efb38800000L    # -1.367610142E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "57497b"

    const v7, 0x4d75fefc

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :array_0
    .array-data 1
        0x62t
        0x5dt
        0x50t
        0x3t
        0x45t
        0x1t
        0x12t
        0x41t
        0x47t
        0xdt
        0x40t
        0xdt
        0x56t
        0x54t
        0x15t
        0x3t
        0x16t
        0x12t
        0x53t
        0x5dt
        0x5ct
        0x6t
        0x16t
        0x8t
        0x5bt
        0x53t
        0x47t
        0x3t
        0x44t
        0x1dt
        0x7ct
        0x50t
        0x58t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x10t
        0x4at
        0x1at
        0x48t
        0x45t
        0x56t
        0x45t
        0x5ct
        0x46t
        0x4ct
        0x5et
        0x5ct
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x44t
        0x5ct
        0x43t
        0x11t
        0x50t
        0x5et
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x12t
        0x45t
        0x54t
        0x4bt
        0x40t
        0x51t
        0x5dt
        0x5dt
        0x11t
        0x50t
        0x40t
        0x18t
    .end array-data

    :array_4
    .array-data 1
        0x7ft
        0x5et
        0x1t
        0x10t
        0x5t
        0x44t
        0x4at
        0x61t
        0x6t
        0x10t
        0x17t
        0x5ft
        0x5ct
        0x59t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7bt
        0x5dt
        0x1t
        0x47t
        0x4t
        0x13t
        0x4et
        0x62t
        0x6t
        0x47t
        0x16t
        0x8t
        0x58t
        0x5at
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4ct
        0x45t
        0x44t
        0x58t
        0x43t
        0x0t
        0x10t
        0x41t
        0x5ft
        0x52t
        0x40t
        0x45t
        0x4t
        0x5ct
        0x5at
        0x52t
        0x13t
        0xct
        0x11t
        0x15t
        0x52t
        0x45t
        0x5ct
        0x15t
        0x12t
        0x50t
        0x52t
        0x17t
        0x57t
        0x10t
        0x10t
        0x5ct
        0x58t
        0x50t
        0x13t
        0x17t
        0x7t
        0x59t
        0x53t
        0x56t
        0x40t
        0x0t
        0x42t
        0x45t
        0x44t
        0x58t
        0x50t
        0x0t
        0x11t
        0x46t
        0x18t
        0x17t
        0x75t
        0x4t
        0xbt
        0x59t
        0x43t
        0x45t
        0x56t
        0x45t
        0x16t
        0x5at
        0x16t
        0x45t
        0x56t
        0x4t
        0x6t
        0x15t
        0x57t
        0x47t
        0x43t
        0x45t
        0x14t
        0x50t
        0x44t
        0x44t
        0x5at
        0xat
        0xct
        0x15t
        0x5ft
        0x44t
        0x13t
        0x0t
        0x1at
        0x45t
        0x53t
        0x54t
        0x47t
        0x0t
        0x6t
        0x15t
        0x52t
        0x42t
        0x41t
        0xct
        0xct
        0x52t
        0x16t
        0x70t
        0x5ct
        0xat
        0x5t
        0x59t
        0x53t
        0x17t
        0x5at
        0xbt
        0x16t
        0x50t
        0x44t
        0x59t
        0x52t
        0x9t
        0x42t
        0x41t
        0x53t
        0x44t
        0x47t
        0xct
        0xct
        0x52t
        0x16t
        0x40t
        0x5bt
        0x0t
        0x10t
        0x50t
        0x16t
        0x5bt
        0x5ct
        0x6t
        0x3t
        0x59t
        0x5at
        0x4et
        0x1et
        0x7t
        0x17t
        0x5ct
        0x5at
        0x43t
        0x13t
        0x9t
        0xbt
        0x57t
        0x44t
        0x56t
        0x41t
        0xct
        0x7t
        0x46t
        0x16t
        0x56t
        0x41t
        0x0t
        0x42t
        0x40t
        0x45t
        0x52t
        0x57t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x33t
        0x76t
        0x2dt
        0x7bt
        0x7bt
        0x32t
        0x28t
    .end array-data

    :array_8
    .array-data 1
        0x24t
        0x2t
        0xat
        0x5bt
        0x55t
        0x57t
        0x42t
        0x17t
        0xct
        0x17t
        0x57t
        0x56t
        0x16t
        0x43t
        0x2t
        0x47t
        0x40t
        0x13t
        0x14t
        0x6t
        0x11t
        0x44t
        0x59t
        0x5ct
        0xct
        0x43t
        0x5t
        0x58t
        0x42t
        0x13t
        0xet
        0xat
        0x1t
        0x45t
        0x51t
        0x41t
        0x1bt
        0x2dt
        0x2t
        0x5at
        0x55t
        0x9t
        0x42t
    .end array-data

    :array_9
    .array-data 1
        0x2at
        0x59t
        0x5at
        0x44t
        0x2t
        0x14t
        0x1ft
        0x66t
        0x5dt
        0x44t
        0x10t
        0xft
        0x9t
        0x5et
    .end array-data

    nop

    :array_a
    .array-data 1
        0x25t
        0x53t
        0x5ct
        0xft
        0x57t
        0x53t
        0x43t
        0x46t
        0x5at
        0x43t
        0x55t
        0x52t
        0x17t
        0x12t
        0x54t
        0x13t
        0x42t
        0x17t
        0x15t
        0x57t
        0x47t
        0x10t
        0x5bt
        0x58t
        0xdt
        0x12t
        0x53t
        0xct
        0x40t
        0x17t
        0xft
        0x5bt
        0x57t
        0x11t
        0x53t
        0x45t
        0x1at
        0x7ct
        0x54t
        0xet
        0x57t
        0xdt
        0x43t
    .end array-data

    :array_b
    .array-data 1
        0x79t
        0x5et
        0x56t
        0x4bt
        0x56t
        0x10t
        0x4ct
        0x61t
        0x51t
        0x4bt
        0x44t
        0xbt
        0x5at
        0x59t
    .end array-data
.end method
