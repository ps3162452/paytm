.class public final Lorg/apache/http/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "332ca4"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x47t
        0x47t
        0x1t
        0x40t
    .end array-data
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c96ddb"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x4dt
        0x43t
        0x6t
        0x45t
    .end array-data
.end method

.method public getDefaults()Lorg/apache/http/protocol/HttpContext;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "839e9e"

    const-wide/32 v4, 0x7f48a948

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x47t
        0x4ct
        0x7t
        0x18t
    .end array-data
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "75933a"

    const-wide v4, -0x3e4c96be6f000000L    # -3.25665169E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x41t
        0x4ct
        0x51t
        0x12t
    .end array-data
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a72f5a"

    const/16 v3, -0x343

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x43t
        0x47t
        0x4t
        0x14t
    .end array-data
.end method
