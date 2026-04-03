.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Landroid/net/Uri;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Landroid/content/ComponentName;

.field private final zze:I

.field private final zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "164c22"

    const-wide v4, 0x41be7d3122000000L    # 5.11521058E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "043b8e"

    const/16 v3, 0x3ac4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzo;->zza:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 1
        0x52t
        0x59t
        0x5at
        0x17t
        0x57t
        0x5ct
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x5bt
        0x5et
        0x4ct
        0x5ft
        0xat
        0x5ft
        0x53t
        0x5ft
        0x7t
        0x16t
        0x4t
        0x5et
        0x50t
        0x41t
        0xdt
        0x51t
        0x1t
        0x1et
        0x53t
        0x5et
        0x11t
        0x16t
        0x6t
        0x58t
        0x5dt
        0x5et
        0x7t
        0x4at
        0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    const/16 v0, 0x1081

    iput v0, p0, Lcom/google/android/gms/common/internal/zzo;->zze:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c66e5d"

    const-wide v2, -0x3e50df6942000000L    # -2.61114719E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x59t
        0x5bt
        0x4bt
        0x52t
        0xbt
        0xct
        0x51t
        0x5at
        0x0t
        0x1bt
        0x5t
        0xdt
        0x52t
        0x44t
        0xat
        0x5ct
        0x0t
        0x4dt
        0x51t
        0x5bt
        0x16t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    const/16 v0, 0x1081

    iput v0, p0, Lcom/google/android/gms/common/internal/zzo;->zze:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/zzo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/google/android/gms/common/internal/zzo;->zze:I

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x1081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zza()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;)Landroid/content/Intent;
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x16

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    const-string v3, "143ceb"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/internal/zzo;->zza:Landroid/net/Uri;

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "de5cfc"

    const-wide v6, -0x3e591b1528000000L    # -1.9205054E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_0

    new-array v1, v9, [B

    fill-array-data v1, :array_2

    const-string v2, "cd1e71"

    invoke-static {v1, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "5740f0"

    invoke-static {v2, v3, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    new-array v2, v9, [B

    fill-array-data v2, :array_4

    const-string v3, "73aa3b"

    const/16 v4, 0x32f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "32bdf6"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "edef75"

    const-wide/32 v4, -0x1415f36b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :array_0
    .array-data 1
        0x42t
        0x51t
        0x41t
        0x15t
        0xct
        0x1t
        0x54t
        0x75t
        0x50t
        0x17t
        0xct
        0xdt
        0x5ft
        0x76t
        0x46t
        0xdt
        0x1t
        0xet
        0x54t
        0x7ft
        0x56t
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x0t
        0x47t
        0x15t
        0xft
        0x0t
        0x1t
        0x2ct
        0x5bt
        0x17t
        0x3t
        0xdt
        0x10t
        0x26t
        0x54t
        0xft
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0xbt
        0x5ft
        0xbt
        0x52t
        0x52t
        0x17t
        0xdt
        0x5et
        0xbt
        0x64t
        0x45t
        0x2t
        0x10t
        0x44t
        0x16t
        0x74t
        0x5et
        0xdt
        0x2t
        0x58t
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x4et
        0x5at
        0x51t
        0xbt
        0x59t
        0x56t
        0x17t
        0x58t
        0x5ft
        0x9t
        0x5bt
        0x40t
        0x47t
        0x14t
        0x56t
        0x9t
        0x42t
        0x15t
        0x5et
        0x5at
        0x44t
        0x3t
        0x5et
        0x41t
        0x17t
        0x52t
        0x51t
        0xft
        0x5ct
        0x50t
        0x53t
        0x14t
        0x56t
        0x9t
        0x42t
        0x15t
        0x56t
        0x57t
        0x44t
        0xft
        0x5ft
        0x5bt
        0xdt
        0x14t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x74t
        0x5ct
        0xft
        0xft
        0x56t
        0x1t
        0x43t
        0x5at
        0xet
        0xft
        0x60t
        0x16t
        0x56t
        0x47t
        0x14t
        0x12t
        0x70t
        0xdt
        0x59t
        0x55t
        0x8t
        0x6t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x77t
        0x4bt
        0xct
        0x5t
        0xbt
        0x5ft
        0x50t
        0x12t
        0xbt
        0xat
        0x12t
        0x53t
        0x5dt
        0x46t
        0x42t
        0x16t
        0x3t
        0x45t
        0x5ct
        0x5et
        0x17t
        0x10t
        0xft
        0x59t
        0x5dt
        0x12t
        0x4t
        0x5t
        0xft
        0x5at
        0x56t
        0x56t
        0x58t
        0x44t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x16t
        0x1t
        0x17t
        0x10t
        0x5et
        0x56t
        0x0t
        0x36t
        0x0t
        0x15t
        0x47t
        0x5at
        0xbt
        0x17t
        0x0t
        0x2ft
        0x59t
        0x41t
        0x0t
        0xat
        0x11t
        0x2dt
        0x52t
        0x4ct
    .end array-data
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Ljava/lang/String;

    return-object v0
.end method
