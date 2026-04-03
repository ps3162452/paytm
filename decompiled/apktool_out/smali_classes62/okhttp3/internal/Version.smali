.class public final Lokhttp3/internal/Version;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static userAgent()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "86a2cc"

    const/16 v2, -0x7076

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x57t
        0x5dt
        0x9t
        0x46t
        0x17t
        0x13t
        0x17t
        0x5t
        0x4ft
        0xbt
        0x4dt
        0x52t
    .end array-data
.end method
