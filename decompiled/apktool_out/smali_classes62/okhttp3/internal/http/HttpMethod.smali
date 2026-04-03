.class public final Lokhttp3/internal/http/HttpMethod;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalidatesCache(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "9bf5a3"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "51ec64"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "ea1a1c"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "e409e8"

    const/16 v4, -0x2215

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    const-string v3, "e76d0b"

    const/16 v4, -0x48ff

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x69t
        0x2dt
        0x35t
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x70t
        0x31t
        0x20t
        0x7et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x35t
        0x34t
        0x65t
    .end array-data

    :array_3
    .array-data 1
        0x21t
        0x71t
        0x7ct
        0x7ct
        0x31t
        0x7dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x28t
        0x78t
        0x60t
        0x21t
    .end array-data
.end method

.method public static permitsRequestBody(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4a6164"

    const v4, -0x3171af3e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "37a43d"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "963919"

    const/16 v4, -0x7010

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "226fd2"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "b0dace"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :array_0
    .array-data 1
        0x7bt
        0x31t
        0x62t
        0x78t
        0x79t
        0x7at
        0x67t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x72t
        0x2dt
        0x71t
        0x67t
        0x21t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x69t
        0x64t
        0x7ct
        0x69t
        0x77t
        0x70t
        0x77t
        0x72t
    .end array-data

    :array_3
    .array-data 1
        0x7ft
        0x79t
        0x75t
        0x29t
        0x28t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2et
        0x7ft
        0x27t
        0x2at
    .end array-data
.end method

.method public static redirectsToGet(Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ae5a88"

    const/16 v2, -0xb2f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x31t
        0x37t
        0x7at
        0x31t
        0x7et
        0x71t
        0x2ft
        0x21t
    .end array-data
.end method

.method public static redirectsWithBody(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d4869f"

    const-wide/32 v2, -0x79dfc7c7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x66t
        0x77t
        0x66t
        0x7ft
        0x2ft
        0x2at
        0x70t
    .end array-data
.end method

.method public static requiresRequestBody(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c5d9ec"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "531758"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "cb8682"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "7dc6f0"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "29e9e1"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x33t
        0x7at
        0x37t
        0x6dt
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x66t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x33t
        0x23t
        0x6ct
        0x75t
        0x70t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x67t
        0x36t
        0x2ct
        0x66t
        0x36t
        0x71t
        0x63t
        0x27t
        0x2bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x60t
        0x7ct
        0x35t
        0x76t
        0x37t
        0x65t
    .end array-data
.end method
