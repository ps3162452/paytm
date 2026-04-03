.class public final Lcom/google/android/gms/common/internal/zzu;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Landroid/net/Uri;

.field private static final zzb:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2fcdc3"

    const-wide v2, -0x3e6e733930000000L    # -7.3609652E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzu;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9ed854"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "aa7daa"

    const v3, -0x312022f2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzu;->zzb:Landroid/net/Uri;

    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        0x12t
        0x17t
        0x14t
        0x10t
        0x9t
        0x1dt
        0x49t
        0x13t
        0x8t
        0x16t
        0x40t
        0x1ct
        0x1t
        0xct
        0xbt
        0x4t
        0x5ft
        0x57t
        0x48t
        0x0t
        0xbt
        0xet
        0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0xct
        0x16t
        0x5bt
        0x59t
        0x51t
        0x4at
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x8t
        0x59t
        0x0t
    .end array-data
.end method
