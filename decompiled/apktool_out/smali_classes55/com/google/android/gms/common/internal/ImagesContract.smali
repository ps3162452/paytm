.class public final Lcom/google/android/gms/common/internal/ImagesContract;
.super Ljava/lang/Object;


# static fields
.field public static final LOCAL:Ljava/lang/String;

.field public static final URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d477e3"

    const/16 v2, -0x1e70

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ImagesContract;->LOCAL:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2e08f2"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ImagesContract;->URL:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x8t
        0x5bt
        0x54t
        0x56t
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x17t
        0x5ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
