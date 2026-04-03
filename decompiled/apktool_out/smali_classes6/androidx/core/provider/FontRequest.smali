.class public final Landroidx/core/provider/FontRequest;
.super Ljava/lang/Object;


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private final mCertificatesArray:I

.field private final mIdentifier:Ljava/lang/String;

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mProviderPackage:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    iput p4, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/provider/FontRequest;->createIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/provider/FontRequest;->createIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method private createIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v5, [B

    const/16 v2, 0x19

    aput-byte v2, v1, v4

    const-string v2, "46c3df"

    const/16 v3, -0x1ef2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    const/16 v2, 0x4e

    aput-byte v2, v1, v4

    const-string v2, "cdf690"

    const-wide v4, -0x3e6233c910000000L    # -1.24980668E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getCertificatesArrayResId()I
    .locals 1

    iget v0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    return v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    const/16 v12, 0x14

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2c5710"

    invoke-static {v1, v2, v3, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v12, [B

    fill-array-data v1, :array_1

    const-string v2, "a6174d"

    const v4, -0x3266027d

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "7d4fcf"

    const/16 v4, 0x7ba3

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "e6e4fe"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_0
    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    new-array v0, v11, [B

    fill-array-data v0, :array_4

    const-string v1, "f357fb"

    const-wide v6, 0x41d8aa7a10800000L    # 1.65530221E9

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    move v2, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    new-array v0, v11, [B

    fill-array-data v0, :array_5

    const-string v6, "ee64e1"

    const v7, -0x342fddae    # -2.7280548E7f

    invoke-static {v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v10, [B

    const/16 v6, 0x12

    aput-byte v6, v0, v3

    const-string v6, "0d7c49"

    const-wide v8, 0x41c07b452e000000L    # 5.53028188E8

    invoke-static {v0, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-array v0, v11, [B

    fill-array-data v0, :array_6

    const-string v1, "7474fa"

    invoke-static {v0, v1, v10, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    new-array v0, v10, [B

    const/16 v1, 0x19

    aput-byte v1, v0, v3

    const-string v1, "dad7bf"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v12, [B

    fill-array-data v1, :array_7

    const-string v2, "d9368a"

    const-wide/32 v6, 0x59f0992c

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x74t
        0xct
        0x5bt
        0x43t
        0x63t
        0x55t
        0x43t
        0x16t
        0x50t
        0x44t
        0x45t
        0x10t
        0x49t
        0xet
        0x65t
        0x45t
        0x5et
        0x46t
        0x5bt
        0x7t
        0x50t
        0x45t
        0x70t
        0x45t
        0x46t
        0xbt
        0x5at
        0x45t
        0x58t
        0x44t
        0x4bt
        0x59t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4dt
        0x16t
        0x5ct
        0x67t
        0x46t
        0xbt
        0x17t
        0x5ft
        0x55t
        0x52t
        0x46t
        0x34t
        0x0t
        0x55t
        0x5at
        0x56t
        0x53t
        0x1t
        0x5bt
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x1bt
        0x44t
        0x59t
        0x37t
        0x16t
        0x3t
        0x45t
        0x1dt
        0xet
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x49t
        0x16t
        0x8t
        0x77t
        0x3t
        0x17t
        0x11t
        0x5ft
        0x3t
        0x5dt
        0x5t
        0x4t
        0x11t
        0x53t
        0x16t
        0xet
    .end array-data

    :array_4
    .array-data 1
        0x46t
        0x68t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x47t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x17t
        0x69t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x9t
        0x7at
        0x56t
        0x44t
        0x4ct
        0x8t
        0x2t
        0x50t
        0x50t
        0x57t
        0x4ct
        0x4t
        0x17t
        0x78t
        0x41t
        0x44t
        0x59t
        0x18t
        0x5et
        0x19t
    .end array-data
.end method
