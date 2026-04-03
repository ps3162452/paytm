.class public final Lcom/google/android/gms/internal/base/zav;
.super Ljava/lang/Object;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/Feature;

.field public static final zab:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "005a74"

    const/16 v3, 0x5a0d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/base/zav;->zab:[Lcom/google/android/gms/common/Feature;

    return-void

    nop

    :array_0
    .array-data 1
        0x5dt
        0x5ft
        0x51t
        0x14t
        0x5bt
        0x51t
        0x59t
        0x5et
        0x46t
        0x15t
        0x56t
        0x58t
        0x5ct
    .end array-data
.end method
