.class public Lorg/apache/http/client/NonRepeatableRequestException;
.super Lorg/apache/http/ProtocolException;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3e2777"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x11t
        0x47t
        0x55t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ac9b3c"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0x17t
        0x4ct
        0x0t
        0x12t
    .end array-data
.end method
