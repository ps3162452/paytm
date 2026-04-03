.class public Lorg/apache/http/auth/InvalidCredentialsException;
.super Lorg/apache/http/auth/AuthenticationException;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "30bd5f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x44t
        0x17t
        0x6t
        0x14t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0fd4f2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x12t
        0x11t
        0x56t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0f5a7b"

    const-wide v4, -0x3e2c61afd2c00000L    # -1.316569269E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x12t
        0x40t
        0x3t
        0x16t
    .end array-data
.end method
