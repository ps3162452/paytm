.class public final Lcom/google/gson/internal/GsonBuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "77b3b4"

    const v2, 0x4e605e45    # 9.410686E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/GsonBuildConfig;->VERSION:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5t
        0x19t
        0x5at
        0x1dt
        0x55t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
