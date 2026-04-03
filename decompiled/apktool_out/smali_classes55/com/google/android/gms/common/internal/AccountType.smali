.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE:Ljava/lang/String;

.field public static final zza:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v3, 0xa

    const/4 v6, 0x1

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "162ced"

    const v2, -0x3176ffe0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->GOOGLE:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    const-string v3, "28f7e6"

    const-wide/32 v4, -0x4f30d54c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "57a14e"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "145aa6"

    const-wide/32 v4, -0x3932ae8b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->zza:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x52t
        0x59t
        0x5ft
        0x4dt
        0x2t
        0xbt
        0x5et
        0x51t
        0x5et
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x57t
        0xbt
        0x19t
        0x2t
        0x59t
        0x5dt
        0x5ft
        0xat
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x56t
        0x58t
        0xct
        0x1ft
        0x53t
        0xat
        0x5at
        0x50t
        0xdt
        0x54t
        0x1at
        0x12t
        0x5at
        0x45t
        0xat
    .end array-data

    :array_3
    .array-data 1
        0x52t
        0x5at
        0x1bt
        0x6t
        0xet
        0x59t
        0x56t
        0x58t
        0x50t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
