.class public Lcom/google/android/gms/common/server/response/FastParser$ParseException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "50bd44"

    const/16 v2, -0x22d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x42t
        0x10t
        0xbt
        0x46t
        0x14t
        0x5ct
        0x5et
        0x11t
        0x10t
        0x55t
        0x5at
        0x41t
        0x59t
        0x3t
        0x10t
        0x5dt
        0x5at
        0x52t
        0x10t
        0xbt
        0xat
        0x5at
        0x51t
        0x47t
        0x10t
        0xdt
        0x6t
        0x5et
        0x51t
        0x56t
        0x44t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
