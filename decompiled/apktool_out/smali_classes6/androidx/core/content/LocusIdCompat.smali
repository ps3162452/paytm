.class public final Landroidx/core/content/LocusIdCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/LocusIdCompat$Api29Impl;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mWrapped:Landroid/content/LocusId;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "febafd"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/core/content/LocusIdCompat$Api29Impl;->create(Ljava/lang/String;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xft
        0x1t
        0x42t
        0x2t
        0x7t
        0xat
        0x8t
        0xat
        0x16t
        0x41t
        0x4t
        0x1t
        0x46t
        0x0t
        0xft
        0x11t
        0x12t
        0x1dt
    .end array-data
.end method

.method private getSanitizedId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "e66394"

    const/16 v3, 0x5084

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x3at
        0x55t
        0x5et
        0x52t
        0x4bt
        0x47t
    .end array-data
.end method

.method public static toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;
    .locals 6

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "54d1cf"

    const-wide v2, -0x3e262d582bc00000L    # -1.732943697E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/content/LocusIdCompat;

    invoke-static {p0}, Landroidx/core/content/LocusIdCompat$Api29Impl;->getId(Landroid/content/LocusId;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9e1bdd"

    const-wide v4, 0x41c46a2deb000000L    # 6.85005782E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x59t
        0x5bt
        0x7t
        0x44t
        0x10t
        0x2ft
        0x51t
        0x14t
        0x7t
        0x50t
        0xdt
        0x8t
        0x5at
        0x40t
        0x44t
        0x53t
        0x6t
        0x46t
        0x5bt
        0x41t
        0x8t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x1t
        0x11t
        0x1t
        0x5t
        0xat
        0x57t
        0xat
        0x45t
        0x42t
        0x6t
        0x1t
        0x19t
        0x0t
        0x5ct
        0x12t
        0x10t
        0x1dt
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroidx/core/content/LocusIdCompat;

    iget-object v2, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toLocusId()Landroid/content/LocusId;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "46c5dd"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/core/content/LocusIdCompat;->getSanitizedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x69

    aput-byte v2, v1, v3

    const-string v2, "458c2b"

    const-wide/32 v4, 0x16dd450c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x59t
        0x0t
        0x40t
        0x17t
        0x2dt
        0x50t
        0x75t
        0xct
        0x58t
        0x14t
        0x5t
        0x40t
        0x6dt
    .end array-data
.end method
