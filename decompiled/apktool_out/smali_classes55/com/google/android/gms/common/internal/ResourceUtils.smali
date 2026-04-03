.class public final Lcom/google/android/gms/common/internal/ResourceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9b1110"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ded58b"

    const-wide v4, 0x41c470347b000000L    # 6.85795574E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "59bc71"

    const v3, 0x4ee69114    # 1.9341338E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ResourceUtils;->zza:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 1
        0x58t
        0xct
        0x55t
        0x43t
        0x5et
        0x59t
        0x5dt
        0x4ct
        0x43t
        0x54t
        0x42t
        0x5ft
        0x4ct
        0x10t
        0x52t
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x7t
        0xat
        0x9t
        0x1bt
        0x5ft
        0xdt
        0xbt
        0x2t
        0x8t
        0x50t
        0x16t
        0x3t
        0xat
        0x1t
        0x16t
        0x5at
        0x51t
        0x6t
        0x4at
        0x2t
        0x9t
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x4bt
        0x3t
        0x14t
        0x56t
        0x53t
        0x59t
        0x5ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
