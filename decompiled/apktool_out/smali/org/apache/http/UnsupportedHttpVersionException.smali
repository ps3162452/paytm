.class public Lorg/apache/http/UnsupportedHttpVersionException;
.super Lorg/apache/http/ProtocolException;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c0a4c4"

    const-wide v4, 0x41d09652ea800000L    # 1.11314833E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x14t
        0x56t
        0x42t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8c3ede"

    const/16 v3, 0x4f4d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x17t
        0x46t
        0x7t
        0x45t
    .end array-data
.end method
