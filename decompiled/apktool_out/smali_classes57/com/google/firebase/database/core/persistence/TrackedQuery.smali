.class public final Lcom/google/firebase/database/core/persistence/TrackedQuery;
.super Ljava/lang/Object;


# instance fields
.field public final active:Z

.field public final complete:Z

.field public final id:J

.field public final lastUse:J

.field public final querySpec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-wide p4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iput-boolean p6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iput-boolean p7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x45

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e0adbb"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x26t
        0x51t
        0xft
        0x43t
        0x16t
        0x42t
        0x6t
        0x42t
        0x4t
        0x5t
        0x16t
        0x7t
        0x45t
        0x64t
        0x13t
        0x5t
        0x1t
        0x9t
        0x0t
        0x54t
        0x30t
        0x11t
        0x7t
        0x10t
        0x1ct
        0x10t
        0x7t
        0xbt
        0x10t
        0x42t
        0x4t
        0x10t
        0xft
        0xbt
        0xct
        0x4ft
        0x1t
        0x55t
        0x7t
        0x5t
        0x17t
        0xet
        0x11t
        0x10t
        0x10t
        0x11t
        0x7t
        0x10t
        0x1ct
        0x10t
        0x15t
        0xct
        0x3t
        0x16t
        0x45t
        0x5ct
        0xet
        0x5t
        0x6t
        0x11t
        0x45t
        0x51t
        0xdt
        0x8t
        0x42t
        0x6t
        0x4t
        0x44t
        0x0t
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    iget-boolean v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setActiveState(Z)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 8

    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v0
.end method

.method public setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 8

    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "03b74c"

    const/16 v3, -0x636d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "df44ee"

    const/16 v3, -0x3d47

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "95e87d"

    const v3, -0x312e2e63

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "61216e"

    const-wide/32 v4, -0x343404ef

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "c9d2c2"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v6

    const-string v2, "c07225"

    const-wide/32 v4, 0xc68f01d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x64t
        0x41t
        0x3t
        0x54t
        0x5ft
        0x6t
        0x54t
        0x62t
        0x17t
        0x52t
        0x46t
        0x1at
        0x4bt
        0x5at
        0x6t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x48t
        0x46t
        0x45t
        0x41t
        0x0t
        0x17t
        0x1dt
        0x35t
        0x44t
        0x51t
        0x6t
        0x58t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        0x15t
        0x9t
        0x59t
        0x44t
        0x10t
        0x6ct
        0x46t
        0x0t
        0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1at
        0x11t
        0x51t
        0x5et
        0x5bt
        0x15t
        0x5at
        0x54t
        0x46t
        0x54t
        0xbt
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x19t
        0x5t
        0x51t
        0x17t
        0x5bt
        0x15t
        0x5ct
        0x59t
    .end array-data
.end method

.method public updateLastUse(J)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 9

    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v0
.end method
