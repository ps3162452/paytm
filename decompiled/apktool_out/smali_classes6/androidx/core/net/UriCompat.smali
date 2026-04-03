.class public final Landroidx/core/net/UriCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSafeString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x40

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_a

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v4, "6d4611"

    const/16 v5, -0x43a6

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v4, "a44b44"

    const v5, -0x3353ac3f    # -9.0349064E7f

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v4, "0d67e9"

    invoke-static {v0, v4, v8, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v4, "5abb12"

    invoke-static {v0, v4, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v4, "9f45d7"

    const/16 v5, 0x3525

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v4, "f60c1f"

    const/16 v5, 0x7e96

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    move v0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    if-eq v2, v10, :cond_1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_7

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v9, [B

    fill-array-data v0, :array_6

    const-string v4, "feb481"

    const/16 v5, -0x7955

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v4, "fb23f2"

    const/16 v5, -0x5d1c

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    const-string v4, "c2b38c"

    invoke-static {v0, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v9, [B

    fill-array-data v0, :array_9

    const-string v4, "b116ad"

    const v5, -0x31ff145c

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "d73b06"

    const-wide/32 v6, -0x7507eeef

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v8, [B

    const/16 v5, 0xd

    aput-byte v5, v1, v2

    const-string v5, "7af825"

    invoke-static {v1, v5, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_b

    const-string v1, "e5f737"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_6
    const-string v0, ""

    goto :goto_2

    :cond_7
    const/16 v2, 0x78

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto :goto_4

    :array_0
    .array-data 1
        0x42t
        0x1t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x5dt
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x9t
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x46t
        0xct
        0x11t
        0x16t
        0x5et
    .end array-data

    nop

    :array_4
    .array-data 1
        0x54t
        0x7t
        0x5dt
        0x59t
        0x10t
        0x58t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x8t
        0x50t
        0x53t
    .end array-data

    :array_6
    .array-data 1
        0xet
        0x11t
        0x16t
        0x44t
    .end array-data

    :array_7
    .array-data 1
        0xet
        0x16t
        0x46t
        0x43t
        0x15t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5t
        0x46t
        0x12t
    .end array-data

    :array_9
    .array-data 1
        0x10t
        0x45t
        0x42t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x4bt
        0x18t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x4at
        0x1bt
        0x48t
        0x19t
    .end array-data
.end method
