.class public Lcom/google/android/gms/common/util/WorkSourceUtil;
.super Ljava/lang/Object;


# static fields
.field private static final zza:I

.field private static final zzb:Ljava/lang/reflect/Method;

.field private static final zzc:Ljava/lang/reflect/Method;

.field private static final zzd:Ljava/lang/reflect/Method;

.field private static final zze:Ljava/lang/reflect/Method;

.field private static final zzf:Ljava/lang/reflect/Method;

.field private static final zzg:Ljava/lang/reflect/Method;

.field private static final zzh:Ljava/lang/reflect/Method;

.field private static final zzi:Ljava/lang/reflect/Method;

.field private static zzj:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c815b3"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "8faa77"

    const/16 v4, 0x3ab4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    :try_start_2
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "2d4a3b"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    :try_start_3
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "c46669"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zze:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "40d1ba"

    const v4, -0x31f7a676

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :goto_4
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_5
    const-class v0, Landroid/os/WorkSource;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "b048ac"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    :goto_5
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1f

    :try_start_6
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v2, "9cd5b5"

    const-wide v4, -0x3e2e85dbae000000L    # -1.172869448E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "05b450"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_7
    const-class v0, Landroid/os/WorkSource;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v3, "7ae6b5"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v0

    const/4 v2, 0x1

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_7
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzi:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :cond_1
    move-object v0, v1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "15797d"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    new-array v3, v3, [B

    fill-array-data v3, :array_a

    const-string v4, "c801a4"

    const/16 v5, 0x2e58

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_5

    :cond_2
    move-object v0, v1

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "079bc5"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_c

    const-string v4, "667ba3"

    const-wide/32 v6, -0x6feb843a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_6

    :cond_3
    move-object v0, v1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_7

    :cond_4
    move-object v0, v1

    goto :goto_7

    :catch_8
    move-exception v2

    goto :goto_7

    :array_0
    .array-data 1
        0x2t
        0x5ct
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x59t
        0x2t
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0xdt
        0x4et
        0x4t
    .end array-data

    :array_3
    .array-data 1
        0x4t
        0x51t
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x53t
        0x55t
        0x10t
        0x7ft
        0x3t
        0xct
        0x51t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x42t
        0x51t
        0x59t
        0x15t
        0x6t
        0x35t
        0x5ft
        0x46t
        0x53t
        0x22t
        0xbt
        0x3t
        0x59t
        0x5at
    .end array-data

    :array_6
    .array-data 1
        0x58t
        0xdt
        0x0t
        0x47t
        0xdt
        0x5ct
        0x5dt
        0x4dt
        0xbt
        0x46t
        0x4ct
        0x62t
        0x56t
        0x11t
        0xft
        0x66t
        0xdt
        0x40t
        0x4bt
        0x0t
        0x1t
        0x11t
        0x35t
        0x5at
        0x4bt
        0x8t
        0x27t
        0x5dt
        0x3t
        0x5ct
        0x57t
    .end array-data

    :array_7
    .array-data 1
        0x51t
        0x51t
        0x6t
        0x7at
        0x5at
        0x54t
        0x55t
    .end array-data

    :array_8
    .array-data 1
        0x5et
        0x12t
        0x20t
        0x5bt
        0x12t
        0x41t
        0x4et
    .end array-data

    :array_9
    .array-data 1
        0x66t
        0x5at
        0x45t
        0x52t
        0x64t
        0xbt
        0x44t
        0x47t
        0x54t
        0x5ct
        0x62t
        0x10t
        0x58t
        0x59t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2et
        0x51t
        0x43t
        0x42t
        0x8t
        0x5at
        0x4t
        0x18t
        0x67t
        0x5et
        0x13t
        0x5ft
        0x20t
        0x50t
        0x51t
        0x58t
        0xft
        0x14t
        0x22t
        0x68t
        0x79t
        0x11t
        0x2t
        0x46t
        0x6t
        0x59t
        0x44t
        0x54t
        0x36t
        0x5bt
        0x11t
        0x53t
        0x73t
        0x59t
        0x0t
        0x5dt
        0xdt
    .end array-data

    nop

    :array_b
    .array-data 1
        0x67t
        0x58t
        0x4bt
        0x9t
        0x30t
        0x5at
        0x45t
        0x45t
        0x5at
        0x7t
        0x36t
        0x41t
        0x59t
        0x5bt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x7bt
        0x5ft
        0x44t
        0x11t
        0x8t
        0x5dt
        0x51t
        0x16t
        0x60t
        0xdt
        0x13t
        0x58t
        0x75t
        0x5et
        0x56t
        0xbt
        0xft
        0x13t
        0x55t
        0x5at
        0x56t
        0x11t
        0x12t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 8

    const/16 v7, 0x29

    const/16 v4, 0xe

    const/4 v6, 0x1

    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "176e6e"

    const/16 v3, 0x3fba

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "e84c1b"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "5cb838"

    const-wide/32 v4, 0x45c5bd4b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "8810b1"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x66t
        0x58t
        0x44t
        0xet
        0x65t
        0xat
        0x44t
        0x45t
        0x55t
        0x0t
        0x63t
        0x11t
        0x58t
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x56t
        0x55t
        0x1t
        0x5dt
        0x7t
        0x45t
        0x4ct
        0x5bt
        0x43t
        0x50t
        0x11t
        0x16t
        0x51t
        0x53t
        0xdt
        0x11t
        0x0t
        0x9t
        0x59t
        0x59t
        0x6t
        0x11t
        0x16t
        0xdt
        0x4at
        0x5bt
        0x16t
        0x56t
        0xat
        0x45t
        0x6ft
        0x5bt
        0x11t
        0x5at
        0x31t
        0xat
        0x4dt
        0x46t
        0x0t
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x62t
        0xct
        0x10t
        0x53t
        0x60t
        0x57t
        0x40t
        0x11t
        0x1t
        0x5dt
        0x66t
        0x4ct
        0x5ct
        0xft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6dt
        0x56t
        0x50t
        0x52t
        0xet
        0x54t
        0x18t
        0x4ct
        0x5et
        0x10t
        0x3t
        0x42t
        0x4bt
        0x51t
        0x56t
        0x5et
        0x42t
        0x53t
        0x54t
        0x59t
        0x5ct
        0x55t
        0x42t
        0x45t
        0x50t
        0x4at
        0x5et
        0x45t
        0x5t
        0x59t
        0x18t
        0x6ft
        0x5et
        0x42t
        0x9t
        0x62t
        0x57t
        0x4dt
        0x43t
        0x53t
        0x7t
    .end array-data
.end method

.method public static fromPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 6

    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "b4aed1"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "358e9a"

    const/16 v4, -0xe64

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->add(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "921151"

    const-wide v4, -0x3e433c5765000000L    # -4.82584731E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "1c370e"

    const-wide v4, 0x41d13ea98e800000L    # 1.157277242E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x35t
        0x5bt
        0x13t
        0xet
        0x37t
        0x5et
        0x17t
        0x46t
        0x2t
        0x0t
        0x31t
        0x45t
        0xbt
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x5at
        0x4dt
        0x9t
        0x5dt
        0x41t
        0x5dt
        0x5at
        0x4ct
        0x45t
        0x5et
        0x4t
        0x47t
        0x15t
        0x59t
        0x15t
        0x49t
        0xdt
        0x5at
        0x56t
        0x59t
        0x11t
        0x50t
        0xet
        0x5dt
        0x7ct
        0x56t
        0x3t
        0x56t
        0x41t
        0x55t
        0x47t
        0x57t
        0x8t
        0x19t
        0x11t
        0x52t
        0x56t
        0x53t
        0x4t
        0x5et
        0x4t
        0x9t
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0x6et
        0x5dt
        0x43t
        0x5at
        0x66t
        0x5et
        0x4ct
        0x40t
        0x52t
        0x54t
        0x60t
        0x45t
        0x50t
        0x5et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x72t
        0xct
        0x46t
        0x5bt
        0x54t
        0x45t
        0x5ft
        0xct
        0x47t
        0x17t
        0x56t
        0xct
        0x5ft
        0x7t
        0x13t
        0x47t
        0x51t
        0x6t
        0x5at
        0x2t
        0x54t
        0x52t
        0xat
        0x45t
    .end array-data
.end method

.method public static fromPackageAndModuleExperimentalPi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "27412d"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c58e0a"

    invoke-static {v2, v3, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_4

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "018b0e"

    const-wide v4, -0x3e3846c5dc800000L    # -7.96030023E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "508c6f"

    const/16 v5, -0x46e6

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ltz v1, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    sget-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    if-nez v3, :cond_5

    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->add(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :catch_0
    move-exception v2

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    const-string v3, "908d05"

    const-wide v4, 0x41bb588fb3000000L    # 4.58788787E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "2b64ae"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget v4, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    if-eq v1, v4, :cond_6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p1, v5, v1

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    const/4 v4, 0x1

    aput-object p2, v1, v4

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-array v2, v7, [B

    fill-array-data v2, :array_6

    const-string v3, "0bd6b8"

    const-wide/32 v4, -0x9e87679

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x31

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "cfcc53"

    const/16 v5, 0x3d48

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x65t
        0x58t
        0x46t
        0x5at
        0x61t
        0xbt
        0x47t
        0x45t
        0x57t
        0x54t
        0x67t
        0x10t
        0x5bt
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x36t
        0x5bt
        0x5dt
        0x1dt
        0x40t
        0x4t
        0x0t
        0x41t
        0x5dt
        0x1t
        0x10t
        0xft
        0x16t
        0x59t
        0x54t
        0x45t
        0x51t
        0x13t
        0x4t
        0x40t
        0x55t
        0x0t
        0x5et
        0x15t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x67t
        0x5et
        0x4at
        0x9t
        0x63t
        0xat
        0x45t
        0x43t
        0x5bt
        0x7t
        0x65t
        0x11t
        0x59t
        0x5dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x76t
        0x5ft
        0x4dt
        0xft
        0x52t
        0x46t
        0x5bt
        0x5ft
        0x4ct
        0x43t
        0x51t
        0x3t
        0x41t
        0x10t
        0x59t
        0x13t
        0x46t
        0xat
        0x5ct
        0x53t
        0x59t
        0x17t
        0x5ft
        0x9t
        0x5bt
        0x79t
        0x56t
        0x5t
        0x59t
        0x46t
        0x53t
        0x42t
        0x57t
        0xet
        0x16t
        0x16t
        0x54t
        0x53t
        0x53t
        0x2t
        0x51t
        0x3t
        0xft
        0x10t
    .end array-data

    :array_4
    .array-data 1
        0x6et
        0x5ft
        0x4at
        0xft
        0x63t
        0x5at
        0x4ct
        0x42t
        0x5bt
        0x1t
        0x65t
        0x41t
        0x50t
        0x5ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x71t
        0xdt
        0x43t
        0x58t
        0x5t
        0x45t
        0x5ct
        0xdt
        0x42t
        0x14t
        0x7t
        0xct
        0x5ct
        0x6t
        0x16t
        0x44t
        0x0t
        0x6t
        0x59t
        0x3t
        0x51t
        0x51t
        0x5bt
        0x45t
    .end array-data

    :array_6
    .array-data 1
        0x67t
        0xdt
        0x16t
        0x5dt
        0x31t
        0x57t
        0x45t
        0x10t
        0x7t
        0x53t
        0x37t
        0x4ct
        0x59t
        0xet
    .end array-data

    nop

    :array_7
    .array-data 1
        0x36t
        0x8t
        0x2t
        0x1t
        0x59t
        0x56t
        0x43t
        0x12t
        0xct
        0x43t
        0x54t
        0x40t
        0x10t
        0xft
        0x4t
        0xdt
        0x15t
        0x50t
        0xbt
        0x7t
        0xat
        0xdt
        0x50t
        0x57t
        0x43t
        0x4t
        0xft
        0x2t
        0x58t
        0x56t
        0x43t
        0x12t
        0xbt
        0x11t
        0x5at
        0x46t
        0x4t
        0xet
        0x43t
        0x34t
        0x5at
        0x41t
        0x8t
        0x35t
        0xct
        0x16t
        0x47t
        0x50t
        0x6t
    .end array-data
.end method

.method public static get(Landroid/os/WorkSource;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zze:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e20565"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "9ab128"

    const v5, -0x326eac0f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x32t
        0x5dt
        0x42t
        0x5et
        0x65t
        0x5at
        0x10t
        0x40t
        0x53t
        0x50t
        0x63t
        0x41t
        0xct
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ct
        0xft
        0x3t
        0x53t
        0x5et
        0x5dt
        0x19t
        0x15t
        0xdt
        0x11t
        0x53t
        0x4bt
        0x4at
        0x8t
        0x5t
        0x5ft
        0x12t
        0x5at
        0x55t
        0x0t
        0xft
        0x54t
        0x12t
        0x4ct
        0x51t
        0x13t
        0xdt
        0x44t
        0x55t
        0x50t
        0x19t
        0x36t
        0xdt
        0x43t
        0x59t
        0x6bt
        0x56t
        0x14t
        0x10t
        0x52t
        0x57t
    .end array-data
.end method

.method public static getName(Landroid/os/WorkSource;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1a44eb"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0e702f"

    const v4, -0x3121f19e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x66t
        0xet
        0x46t
        0x5ft
        0x36t
        0xdt
        0x44t
        0x13t
        0x57t
        0x51t
        0x30t
        0x16t
        0x58t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x65t
        0xbt
        0x56t
        0x52t
        0x5et
        0x3t
        0x10t
        0x11t
        0x58t
        0x10t
        0x53t
        0x15t
        0x43t
        0xct
        0x50t
        0x5et
        0x12t
        0x4t
        0x5ct
        0x4t
        0x5at
        0x55t
        0x12t
        0x12t
        0x58t
        0x17t
        0x58t
        0x45t
        0x55t
        0xet
        0x10t
        0x32t
        0x58t
        0x42t
        0x59t
        0x35t
        0x5ft
        0x10t
        0x45t
        0x53t
        0x57t
    .end array-data
.end method

.method public static getNames(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->getName(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->size(Landroid/os/WorkSource;)I

    move-result v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static hasWorkSourcePermission(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/gms/common/util/WorkSourceUtil;

    monitor-enter v1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const-class v1, Lcom/google/android/gms/common/util/WorkSourceUtil;

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-class v1, Lcom/google/android/gms/common/util/WorkSourceUtil;

    monitor-exit v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

    :try_start_1
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0fe36b"

    const v3, -0x318ecd03

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const-class v1, Lcom/google/android/gms/common/util/WorkSourceUtil;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/common/util/WorkSourceUtil;

    monitor-exit v1

    throw v0

    :array_0
    .array-data 1
        0x51t
        0x8t
        0x1t
        0x41t
        0x59t
        0xbt
        0x54t
        0x48t
        0x15t
        0x56t
        0x44t
        0xft
        0x59t
        0x15t
        0x16t
        0x5at
        0x59t
        0xct
        0x1et
        0x33t
        0x35t
        0x77t
        0x77t
        0x36t
        0x75t
        0x39t
        0x21t
        0x76t
        0x60t
        0x2bt
        0x73t
        0x23t
        0x3at
        0x60t
        0x62t
        0x23t
        0x64t
        0x35t
    .end array-data
.end method

.method public static isEmpty(Landroid/os/WorkSource;)Z
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzi:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "221fb3"

    const-wide v4, 0x41cf2e2812000000L    # 1.04623722E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "d5bbad"

    const-wide v6, -0x3e203ecfa5800000L    # -2.13101809E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->size(Landroid/os/WorkSource;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x65t
        0x5dt
        0x43t
        0xdt
        0x31t
        0x5ct
        0x47t
        0x40t
        0x52t
        0x3t
        0x37t
        0x47t
        0x5bt
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x31t
        0x5bt
        0x3t
        0x0t
        0xdt
        0x1t
        0x44t
        0x41t
        0xdt
        0x42t
        0x2t
        0xct
        0x1t
        0x56t
        0x9t
        0x42t
        0x36t
        0xbt
        0x16t
        0x5et
        0x31t
        0xdt
        0x14t
        0x16t
        0x7t
        0x50t
        0x42t
        0x7t
        0xct
        0x14t
        0x10t
        0x5ct
        0xct
        0x7t
        0x12t
        0x17t
    .end array-data
.end method

.method public static size(Landroid/os/WorkSource;)I
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "468d9e"

    const-wide v4, 0x41d9b2c792c00000L    # 1.724587595E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "fedd51"

    const v5, -0x317e68de

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x63t
        0x59t
        0x4at
        0xft
        0x6at
        0xat
        0x41t
        0x44t
        0x5bt
        0x1t
        0x6ct
        0x11t
        0x5dt
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0xbt
        0x5t
        0x6t
        0x59t
        0x54t
        0x46t
        0x11t
        0xbt
        0x44t
        0x54t
        0x42t
        0x15t
        0xct
        0x3t
        0xat
        0x15t
        0x53t
        0xat
        0x4t
        0x9t
        0x1t
        0x15t
        0x45t
        0xet
        0x17t
        0xbt
        0x11t
        0x52t
        0x59t
        0x46t
        0x32t
        0xbt
        0x16t
        0x5et
        0x62t
        0x9t
        0x10t
        0x16t
        0x7t
        0x50t
    .end array-data
.end method
