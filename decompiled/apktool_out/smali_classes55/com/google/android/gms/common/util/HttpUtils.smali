.class public Lcom/google/android/gms/common/util/HttpUtils;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a80b77"

    const v2, -0x31eb2665    # -6.2432224E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zza:Ljava/util/regex/Pattern;

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "182eb9"

    const-wide v2, -0x3e2dac3bbc000000L    # -1.22991848E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzb:Ljava/util/regex/Pattern;

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "e32094"

    const-wide v2, -0x3e200108c5000000L    # -2.147212524E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzc:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        0x3ft
        0x10t
        0x2t
        0x57t
        0x6ct
        0x7t
        0x4ct
        0xdt
        0x6dt
        0x1et
        0x5t
        0x6ct
        0x51t
        0x15t
        0x4t
        0x3ft
        0x6bt
        0x53t
        0x1dt
        0x63t
        0x0t
        0x4ft
        0x6t
        0x6at
        0x5et
        0x64t
        0x54t
        0x5dt
        0x6bt
        0x53t
        0x48t
        0x10t
        0x6ct
        0x4ct
        0x1ft
        0x5t
        0x54t
        0x63t
        0x0t
        0x4ft
        0x2t
        0x6at
        0x1dt
        0xat
        0x6bt
        0x52t
        0x1at
        0x3t
        0x3ct
        0x64t
        0x54t
        0x1et
        0x6ct
        0x7t
        0x4ct
        0x9t
        0x6dt
        0x5dt
        0x6bt
        0x53t
        0x5et
        0x64t
        0x54t
        0x4bt
        0x1et
        0x4ct
        0x52t
        0x45t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x10t
        0xdt
        0x5ft
        0x39t
        0x9t
        0x1ct
        0x1t
        0x53t
        0x48t
        0x4t
        0x78t
        0x1ct
        0x7et
        0x6ft
        0x1et
        0x53t
        0x15t
        0x5t
        0x45t
        0x8t
        0x4ct
        0x19t
        0xet
        0x4ct
        0x63t
        0x2t
        0x48t
        0x5bt
        0x58t
        0x1ct
        0x5et
        0x73t
        0x48t
        0x24t
        0x64t
        0x4at
        0x9t
        0x1et
        0x51t
        0x1ft
        0x1dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3bt
        0x1bt
        0x1at
        0xft
        0x3t
        0x6ft
        0x55t
        0x1et
        0xbt
        0x71t
        0x14t
        0x72t
        0x4t
        0x1et
        0x54t
        0x6dt
        0x42t
        0x5t
        0x49t
        0x7t
        0x4ft
        0x18t
        0x6t
        0xet
        0x5ft
        0x68t
        0x2t
        0x1dt
        0x0t
        0x75t
        0x48t
        0x75t
        0x53t
        0x1dt
        0x5ft
        0x69t
        0x1et
        0x2t
        0x1et
        0x4t
        0x44t
        0x1dt
        0x4ft
        0x1at
        0xdt
        0x19t
        0x3t
        0xet
        0x4dt
        0x1bt
        0xdt
        0xat
        0x62t
        0x4t
        0x48t
        0xat
        0x73t
        0x1dt
        0x7ft
        0x55t
        0x48t
        0x55t
        0x6ft
        0x4bt
        0x8t
        0x18t
        0x51t
        0x4et
        0x1at
        0xft
        0x3t
        0xet
        0x3et
        0x3t
        0x1ft
        0x9t
        0x78t
        0x19t
        0x23t
        0x52t
        0x1ft
        0x56t
        0x64t
        0x4ft
        0x54t
        0x1ft
        0x6t
        0x4dt
        0x10t
        0x1et
        0x4ct
        0xct
        0x1bt
        0x14t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzo;->zzb(C)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzx;->zzc(Lcom/google/android/gms/internal/common/zzo;)Lcom/google/android/gms/internal/common/zzx;

    move-result-object v3

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzo;->zzb(C)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzx;->zzc(Lcom/google/android/gms/internal/common/zzo;)Lcom/google/android/gms/internal/common/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzx;->zzb()Lcom/google/android/gms/internal/common/zzx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/common/zzx;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/common/zzx;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v8, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/HttpUtils;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/HttpUtils;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "699408"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 1
        0x54t
        0x58t
        0x5dt
        0x14t
        0x40t
        0x59t
        0x44t
        0x58t
        0x54t
        0x51t
        0x44t
        0x5dt
        0x44t
    .end array-data
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3a8ef6"

    const v2, 0x4ec487d9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x7at
        0x32t
        0x77t
        0x48t
        0x5et
        0xet
        0x6t
        0x58t
        0x15t
        0x54t
    .end array-data
.end method
