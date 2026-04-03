.class public final Landroidx/core/content/pm/PackageInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayContains([[B[B)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static computeSHA256Digest([B)[B
    .locals 6

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a7c154"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "044674"

    const-wide/32 v4, 0x5b4cb96d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x32t
        0x7ft
        0x22t
        0x3t
        0x0t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x51t
        0x42t
        0x5ft
        0x54t
        0x51t
        0x10t
        0x50t
        0x5bt
        0x53t
        0x44t
        0x5at
        0x17t
        0x40t
        0x14t
        0x45t
        0x42t
        0x44t
        0x40t
        0x5bt
        0x46t
        0x42t
        0x17t
        0x67t
        0x78t
        0x75t
        0x6t
        0x3t
        0x1t
        0x14t
        0x53t
        0x51t
        0x46t
        0x42t
        0x17t
        0x57t
        0x58t
        0x51t
        0x57t
        0x5dt
        0x5et
        0x5at
        0x57t
    .end array-data
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x8000000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasMultipleSigners(Landroid/content/pm/SigningInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getApkContentsSigners(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getSigningCertificateHistory(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v7, 0x1d

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "661426"

    const v4, -0x31a95232

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "001175"

    const v3, -0x33688c09    # -7.9404984E7f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c2d0c4"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "daf0ab"

    invoke-static {v1, v3, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {p0, p1}, Landroidx/core/content/pm/PackageInfoCompat;->getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-nez p3, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v1, v0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasSigningCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_0

    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[B

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->computeSHA256Digest([B)[B

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_9
    move-object v3, v0

    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    const-string v3, "455675"

    const/16 v4, -0x1d17

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {v3, v0}, Landroidx/core/content/pm/PackageInfoCompat;->byteArrayContains([[B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, v0}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x63t
        0x58t
        0x42t
        0x41t
        0x42t
        0x46t
        0x59t
        0x44t
        0x45t
        0x51t
        0x56t
        0x16t
        0x55t
        0x53t
        0x43t
        0x40t
        0x5bt
        0x50t
        0x5ft
        0x55t
        0x50t
        0x40t
        0x57t
        0x16t
        0x42t
        0x4ft
        0x41t
        0x51t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x47t
        0x59t
        0x54t
        0x59t
        0x15t
        0x46t
        0x55t
        0x43t
        0x58t
        0x51t
        0x4ct
        0x59t
        0x5et
        0x56t
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x37t
        0x4bt
        0x14t
        0x55t
        0x43t
        0x59t
        0x16t
        0x41t
        0x10t
        0x10t
        0x1t
        0x51t
        0x43t
        0x41t
        0x14t
        0x55t
        0x0t
        0x5dt
        0x5t
        0x5bt
        0x1t
        0x54t
        0x43t
        0x52t
        0xct
        0x40t
        0x44t
        0x53t
        0x6t
        0x46t
        0x17t
        0x12t
        0x13t
        0x58t
        0x6t
        0x5at
        0x43t
        0x44t
        0x1t
        0x42t
        0xat
        0x52t
        0x1at
        0x5bt
        0xat
        0x57t
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x27t
        0x4t
        0x14t
        0x44t
        0x41t
        0x0t
        0x1dt
        0x15t
        0x3t
        0x10t
        0x0t
        0x10t
        0x16t
        0x0t
        0x1ft
        0x10t
        0x2t
        0x3t
        0xat
        0xft
        0x9t
        0x44t
        0x41t
        0x0t
        0x1t
        0x41t
        0x8t
        0x45t
        0xdt
        0xet
        0x44t
        0x16t
        0xet
        0x55t
        0xft
        0x42t
        0x12t
        0x4t
        0x14t
        0x59t
        0x7t
        0x1bt
        0xdt
        0xft
        0x1t
        0x10t
    .end array-data

    nop

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_4
    .array-data 1
        0x61t
        0x5bt
        0x46t
        0x43t
        0x47t
        0x45t
        0x5bt
        0x47t
        0x41t
        0x53t
        0x53t
        0x15t
        0x57t
        0x50t
        0x47t
        0x42t
        0x5et
        0x53t
        0x5dt
        0x56t
        0x54t
        0x42t
        0x52t
        0x15t
        0x40t
        0x4ct
        0x45t
        0x53t
        0x17t
    .end array-data
.end method
