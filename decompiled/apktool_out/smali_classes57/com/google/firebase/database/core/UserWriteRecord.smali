.class public final Lcom/google/firebase/database/core/UserWriteRecord;
.super Ljava/lang/Object;


# instance fields
.field private final merge:Lcom/google/firebase/database/core/CompoundWrite;

.field private final overwrite:Lcom/google/firebase/database/snapshot/Node;

.field private final path:Lcom/google/firebase/database/core/Path;

.field private final visible:Z

.field private final writeId:J


# direct methods
.method public constructor <init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    iput-object p3, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    iput-object p4, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    iput-object p3, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    iput-object p4, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    iput-boolean p5, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/firebase/database/core/UserWriteRecord;

    iget-wide v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    iget-boolean v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getMerge()Lcom/google/firebase/database/core/CompoundWrite;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dccc90"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x2t
        0xdt
        0x44t
        0x4dt
        0x10t
        0x5t
        0x0t
        0x0t
        0x6t
        0x4at
        0x43t
        0x44t
        0xet
        0x6t
        0x11t
        0x5et
        0x55t
        0x44t
        0x14t
        0xbt
        0x6t
        0x57t
        0x10t
        0x13t
        0x11t
        0xat
        0x17t
        0x5ct
        0x10t
        0xdt
        0x10t
        0x43t
        0x2t
        0x57t
        0x10t
        0xbt
        0x15t
        0x6t
        0x11t
        0x4et
        0x42t
        0xdt
        0x17t
        0x6t
        0x42t
    .end array-data
.end method

.method public getOverwrite()Lcom/google/firebase/database/snapshot/Node;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c91ccb"

    const-wide v4, -0x3e3fafe3a7000000L    # -5.47371186E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x58t
        0x5ft
        0x44t
        0x17t
        0x42t
        0x2t
        0x5at
        0x52t
        0x6t
        0x10t
        0x11t
        0x43t
        0x56t
        0x47t
        0x6t
        0x11t
        0x15t
        0x11t
        0x50t
        0x45t
        0x6t
        0x43t
        0x15t
        0xbt
        0x5ct
        0x5ft
        0x43t
        0x14t
        0x10t
        0xat
        0x4dt
        0x54t
        0x43t
        0xat
        0x11t
        0x43t
        0x58t
        0x11t
        0xet
        0x6t
        0x10t
        0x4t
        0x5ct
        0x10t
    .end array-data
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public getWriteId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v2

    iget-boolean v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->hashCode()I

    move-result v4

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/firebase/database/core/CompoundWrite;->hashCode()I

    move-result v1

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMerge()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverwrite()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "10dc98"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "596fb5"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "e895d5"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "7b54c2"

    const v3, -0x317d5124

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "bed22c"

    const/16 v3, -0x6245

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [B

    const/16 v2, 0x4a

    aput-byte v2, v1, v5

    const-string v2, "724069"

    const-wide v4, 0x419956b448000000L    # 1.06278162E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x43t
        0x1t
        0x11t
        0x6et
        0x4at
        0x58t
        0x44t
        0x1t
        0x31t
        0x5ct
        0x5bt
        0x5et
        0x42t
        0x0t
        0x18t
        0x50t
        0x5ct
        0xct
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x49t
        0x57t
        0x12t
        0xat
        0x8t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x45t
        0x4et
        0x50t
        0x46t
        0xdt
        0x57t
        0x9t
        0x5dt
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x17t
        0xdt
        0x43t
        0x51t
        0x11t
        0x45t
        0x45t
        0xbt
        0x41t
        0x51t
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x42t
        0x8t
        0x1t
        0x40t
        0x55t
        0x6t
        0x5ft
    .end array-data
.end method
