.class public final Landroidx/core/content/MimeTypeFilter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v8, [B

    const/16 v2, 0x4b

    aput-byte v2, v1, v3

    const-string v2, "d6444d"

    const/16 v4, 0x6db

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, p1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v1, p1, v2

    new-array v6, v8, [B

    const/16 v7, 0x19

    aput-byte v7, v6, v3

    const-string v7, "6131ac"

    invoke-static {v6, v7, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v10, [B

    const/16 v2, 0x19

    aput-byte v2, v1, v3

    const-string v2, "6e1202"

    const v4, 0x4ea9097a    # 1.4179853E9f

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, p0

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v1, p0, v2

    new-array v6, v10, [B

    const/16 v7, 0x1d

    aput-byte v7, v6, v3

    const-string v7, "222e59"

    const-wide v8, 0x41c1942ee0000000L    # 5.89848E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    new-array v1, v3, [B

    const/16 v2, 0x18

    aput-byte v2, v1, v0

    const-string v2, "766947"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [B

    const/16 v3, 0x16

    aput-byte v3, v2, v0

    const-string v0, "9a9f73"

    const/16 v3, -0x3dbf

    invoke-static {v2, v0, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v8, [B

    const/16 v3, 0x4e

    aput-byte v3, v0, v1

    const-string v3, "a0bcc9"

    const-wide/32 v4, 0x3a13f4a0

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, p0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, p0, v0

    new-array v6, v8, [B

    const/16 v7, 0x17

    aput-byte v7, v6, v1

    const-string v7, "8e4f76"

    invoke-static {v6, v7, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    if-ne v2, v3, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    array-length v2, p0

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v2, v1, [B

    const/16 v3, 0x4f

    aput-byte v3, v2, v0

    const-string v3, "e5b147"

    const-wide v4, -0x3e245e4ae2000000L    # -1.854329976E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p1, v0

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-array v2, v1, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v0

    const-string v3, "bd7d4f"

    const/16 v4, 0x707f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5fe6f"

    const/16 v3, 0x5faa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0f4bba"

    const-wide v4, 0x41c4555636800000L    # 6.82273901E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ft
        0x59t
        0xat
        0x48t
        0x50t
        0x9t
        0x14t
        0x58t
        0x7t
        0x11t
        0x42t
        0x3t
        0x2t
        0x15t
        0x2bt
        0x2ct
        0x7bt
        0x23t
        0x46t
        0x41t
        0x1ft
        0x15t
        0x53t
        0x46t
        0x0t
        0x5ct
        0xat
        0x11t
        0x53t
        0x14t
        0x48t
        0x15t
        0x32t
        0x1ct
        0x46t
        0x3t
        0x46t
        0x5at
        0x14t
        0x45t
        0x45t
        0x13t
        0x4t
        0x41t
        0x1ft
        0x15t
        0x53t
        0x46t
        0x3t
        0x58t
        0x16t
        0x11t
        0x4ft
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x79t
        0xat
        0x58t
        0x4ft
        0x4t
        0xet
        0x42t
        0xbt
        0x55t
        0x16t
        0x16t
        0x4t
        0x54t
        0x46t
        0x79t
        0x2bt
        0x2ft
        0x24t
        0x10t
        0x12t
        0x4dt
        0x12t
        0x7t
        0x41t
        0x56t
        0xft
        0x58t
        0x16t
        0x7t
        0x13t
        0x1et
        0x46t
        0x79t
        0x17t
        0x11t
        0x15t
        0x10t
        0x4t
        0x51t
        0x42t
        0x16t
        0x18t
        0x40t
        0x3t
        0x1bt
        0x11t
        0x17t
        0x3t
        0x44t
        0x1ft
        0x44t
        0x7t
        0x4ct
    .end array-data
.end method
