.class public abstract Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9d998d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6at
        0x10t
        0x4ct
        0x5bt
        0x19t
    .end array-data
.end method


# virtual methods
.method protected findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ad2ecc"

    const/16 v3, 0x7843

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x10t
        0x47t
        0x7t
        0x42t
    .end array-data
.end method

.method protected getAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "951646"

    const/16 v3, -0x19b8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6at
        0x41t
        0x44t
        0x54t
        0x15t
    .end array-data
.end method

.method protected getAttribHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "34038e"

    const v3, -0x316a24ec

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x40t
        0x45t
        0x51t
        0x19t
    .end array-data
.end method

.method public registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "542c02"

    const-wide/32 v4, -0x758a5e96

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x40t
        0x47t
        0x1t
        0x11t
    .end array-data
.end method
