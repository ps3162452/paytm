.class public Lcom/google/firebase/database/core/utilities/Utilities;
.super Ljava/lang/Object;


# static fields
.field private static final HEX_CHARACTERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "399095"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    return-void

    :array_0
    .array-data 1
        0x3t
        0x8t
        0xbt
        0x3t
        0xdt
        0x0t
        0x5t
        0xet
        0x1t
        0x9t
        0x58t
        0x57t
        0x50t
        0x5dt
        0x5ct
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static compareInts(II)I
    .locals 1

    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareLongs(JJ)I
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, v2, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    sget-object v5, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static extractPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b50ef7"

    const-wide v2, -0x3e26149e32c00000L    # -1.739425589E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [B

    const/16 v2, 0x1f

    aput-byte v2, v1, v7

    const-string v2, "0a56f2"

    const-wide/32 v4, 0x1a035a47

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_1

    new-array v2, v8, [B

    const/16 v3, 0xf

    aput-byte v3, v2, v7

    const-string v3, "0dce57"

    const/16 v4, 0x42e4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8e4024"

    const-wide/32 v4, 0x57ef05a3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x4dt
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7et
        0xct
        0x46t
        0x55t
        0x50t
        0x55t
        0x4bt
        0x0t
        0x14t
        0x74t
        0x53t
        0x40t
        0x59t
        0x7t
        0x55t
        0x43t
        0x57t
        0x14t
        0x6dt
        0x37t
        0x78t
        0x10t
        0x5bt
        0x47t
        0x18t
        0x8t
        0x5dt
        0x43t
        0x41t
        0x5dt
        0x56t
        0x2t
        0x14t
        0x65t
        0x60t
        0x78t
        0x18t
        0x16t
        0x57t
        0x58t
        0x57t
        0x59t
        0x5dt
    .end array-data
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static hardAssert(Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7aa937"

    const-wide v4, 0x41dc9abeba800000L    # 1.919613674E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :array_0
    .array-data 1
        0x5ft
        0x0t
        0x13t
        0x5dt
        0x72t
        0x44t
        0x44t
        0x4t
        0x13t
        0x4dt
        0x13t
        0x51t
        0x56t
        0x8t
        0xdt
        0x5ct
        0x57t
        0xdt
        0x17t
    .end array-data
.end method

.method public static parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lcom/google/firebase/database/core/RepoInfo;

    invoke-direct {v5}, Lcom/google/firebase/database/core/RepoInfo;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v6

    if-eq v6, v7, :cond_2

    const/4 v7, 0x5

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "2b76cc"

    const v9, -0x31de1feb

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_1

    const-string v8, "0f1ad3"

    const v9, 0x4ee7d8b7    # 1.9448698E9f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, v5, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v7, 0x5e

    aput-byte v7, v1, v3

    const-string v3, "de1cc5"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v1, v3, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "97bbd2"

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v1, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v5, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    :goto_2
    iget-object v0, v5, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/firebase/database/core/RepoInfo;->internalHost:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->extractPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const-string v2, "28b79d"

    const v3, 0x4dde25f7    # 4.6587875E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;

    invoke-direct {v1}, Lcom/google/firebase/database/core/utilities/ParsedUrl;-><init>()V

    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    iput-object v5, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    return-object v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/google/firebase/database/core/RepoInfo;->secure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x29

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "ea3665"

    const v5, 0x4ee04be7    # 1.8815354E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "e85f4a"

    const-wide v2, -0x3e2c077059c00000L    # -1.340227225E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "5b421e"

    const/16 v3, -0x2f37

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "9b4626"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :array_0
    .array-data 1
        0x5at
        0x16t
        0x43t
        0x46t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x15t
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2ct
        0xft
        0x45t
        0x57t
        0x5at
        0x5ct
        0x1t
        0x41t
        0x75t
        0x5ft
        0x44t
        0x50t
        0x7t
        0x0t
        0x40t
        0x53t
        0x16t
        0x71t
        0x4t
        0x15t
        0x52t
        0x54t
        0x57t
        0x46t
        0x0t
        0x41t
        0x46t
        0x44t
        0x5at
        0x15t
        0x16t
        0x11t
        0x56t
        0x55t
        0x5ft
        0x53t
        0xct
        0x4t
        0x57t
        0xct
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x39t
        0x16t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x71t
        0x3t
        0x40t
        0x53t
        0x53t
        0x4t
        0x46t
        0x7t
        0x14t
        0x67t
        0x63t
        0x29t
        0x15t
        0x6t
        0x5bt
        0x57t
        0x42t
        0x45t
        0x5bt
        0xdt
        0x40t
        0x12t
        0x42t
        0x15t
        0x50t
        0x1t
        0x5dt
        0x54t
        0x48t
        0x45t
        0x54t
        0x42t
        0x42t
        0x53t
        0x5dt
        0xct
        0x51t
        0x42t
        0x5ct
        0x5dt
        0x42t
        0x11t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7dt
        0x3t
        0x40t
        0x57t
        0x50t
        0x57t
        0x4at
        0x7t
        0x14t
        0x63t
        0x60t
        0x7at
        0x19t
        0x6t
        0x5bt
        0x53t
        0x41t
        0x16t
        0x57t
        0xdt
        0x40t
        0x16t
        0x41t
        0x46t
        0x5ct
        0x1t
        0x5dt
        0x50t
        0x4bt
        0x16t
        0x58t
        0x42t
        0x61t
        0x64t
        0x7et
        0x16t
        0x4at
        0x1t
        0x5ct
        0x53t
        0x5ft
        0x53t
    .end array-data
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "999f59"

    const-wide/32 v2, -0x4030cb5b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "052ac0"

    const v3, 0x4e8dadaa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "8351d5"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "f52298"

    const v4, -0x3105277a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x6at
        0x71t
        0x78t
        0x4bt
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x65t
        0x61t
        0x74t
        0x4ct
        0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6dt
        0x67t
        0x73t
        0x1ct
        0x5ct
        0x15t
        0x5dt
        0x5dt
        0x56t
        0x5et
        0x0t
        0x5ct
        0x56t
        0x54t
        0x15t
        0x58t
        0x17t
        0x15t
        0x4at
        0x56t
        0x44t
        0x44t
        0xdt
        0x47t
        0x5dt
        0x57t
        0x15t
        0x57t
        0xbt
        0x47t
        0x18t
        0x75t
        0x5ct
        0x43t
        0x1t
        0x57t
        0x59t
        0x40t
        0x50t
        0x11t
        0x20t
        0x54t
        0x4ct
        0x52t
        0x57t
        0x50t
        0x17t
        0x50t
        0x18t
        0x47t
        0x5at
        0x11t
        0x16t
        0x40t
        0x56t
        0x12t
    .end array-data

    :array_3
    .array-data 1
        0x2bt
        0x5ct
        0x41t
        0x41t
        0x50t
        0x56t
        0x1t
        0x15t
        0x61t
        0x7at
        0x78t
        0x15t
        0x57t
        0x15t
        0x7ft
        0x57t
        0x4at
        0x4bt
        0x7t
        0x52t
        0x57t
        0x76t
        0x50t
        0x5ft
        0x3t
        0x46t
        0x46t
        0x12t
        0x49t
        0x4at
        0x9t
        0x43t
        0x5bt
        0x56t
        0x5ct
        0x4at
        0x48t
    .end array-data
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x22

    const/4 v3, 0x1

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_1

    new-array v0, v3, [B

    const/16 v1, 0x39

    aput-byte v1, v0, v8

    const-string v1, "efd040"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "b9588c"

    const-wide v4, -0x3e509e5544000000L    # -2.63247198E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_0

    new-array v1, v3, [B

    const/16 v2, 0x40

    aput-byte v2, v1, v8

    const-string v2, "bafecb"

    const-wide v4, 0x419a0929ac000000L    # 1.09202027E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_1

    const-string v3, "7425e4"

    const-wide/32 v4, 0x6a76390c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x3et
        0x65t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6bt
        0x16t
    .end array-data
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    :cond_3
    move-object v0, v4

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    neg-long v0, v2

    const-wide/32 v6, -0x80000000

    cmp-long v0, v0, v6

    if-gez v0, :cond_6

    move-object v0, v4

    goto :goto_0

    :cond_6
    neg-long v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    move-object v0, v4

    goto :goto_0

    :cond_8
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public static wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair",
            "<",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/firebase/database/core/utilities/Utilities$1;

    invoke-direct {v2, v1}, Lcom/google/firebase/database/core/utilities/Utilities$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/utilities/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
