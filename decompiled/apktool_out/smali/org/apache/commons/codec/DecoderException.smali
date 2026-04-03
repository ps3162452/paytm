.class public Lorg/apache/commons/codec/DecoderException;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0c25a0"

    const-wide v4, -0x3e35c90ce0000000L    # -8.796176E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x17t
        0x47t
        0x57t
        0x40t
    .end array-data
.end method
