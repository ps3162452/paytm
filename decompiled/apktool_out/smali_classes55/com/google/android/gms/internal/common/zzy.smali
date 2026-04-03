.class public final Lcom/google/android/gms/internal/common/zzy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# direct methods
.method public static varargs zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_1

    aget-object v0, p1, v6

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "39387a"

    const-wide/32 v2, -0x421bf2a4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, p1, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "488906"

    const-wide/32 v2, 0x6bfe265c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "ccc536"

    const-wide v10, 0x41db28a733400000L    # 1.822596301E9

    invoke-static {v2, v3, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "826c53"

    const/16 v9, 0x4b04

    invoke-static {v3, v4, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x23

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v9, "dc9288"

    const-wide v10, 0x41b66661ca000000L    # 3.75808458E8

    invoke-static {v4, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    const-string v2, "46b408"

    const v3, -0x31d3fd58

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "50435c"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    const-string v2, "2b9c38"

    const v3, -0x31a4e010    # -9.1907584E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v7

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "27360e"

    const-wide v6, -0x3e21ecb652800000L    # -2.018322102E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ge v1, v3, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v3, "2e985a"

    const v4, -0x318ef962

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v3, "d85ed1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5dt
        0x4ct
        0x5ft
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x57t
        0x55t
        0x17t
        0x57t
        0x59t
        0x5bt
        0x5ft
        0x54t
        0x5ct
        0x1et
        0x55t
        0x5bt
        0x55t
        0x55t
        0x56t
        0x5et
        0x18t
        0x56t
        0x59t
        0x4bt
        0x5ct
        0x1et
        0x65t
        0x40t
        0x4at
        0x51t
        0x57t
        0x57t
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0xct
        0xet
        0x1bt
        0x54t
        0x59t
        0xct
        0x4t
        0xft
        0x50t
        0x1dt
        0x55t
        0xct
        0xet
        0xet
        0x5at
        0x5dt
        0x18t
        0x1t
        0x2t
        0x10t
        0x50t
        0x1dt
        0x65t
        0x17t
        0x11t
        0xat
        0x5bt
        0x54t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x54t
        0x57t
        0x58t
        0xat
        0x50t
        0x5dt
        0x4ct
        0x66t
        0x59t
        0x30t
        0x41t
        0x41t
        0x51t
        0x5ct
        0x51t
    .end array-data

    :array_4
    .array-data 1
        0x21t
        0x1bt
        0x5at
        0x57t
        0x48t
        0x4ct
        0xdt
        0xct
        0x57t
        0x12t
        0x5ct
        0x4dt
        0x16t
        0xat
        0x57t
        0x55t
        0x18t
        0x54t
        0x1t
        0xdt
        0x50t
        0x57t
        0x56t
        0x4ct
        0x22t
        0xct
        0x4bt
        0x5ft
        0x59t
        0x4ct
        0x44t
        0x5t
        0x56t
        0x40t
        0x18t
    .end array-data

    :array_5
    .array-data 1
        0x15t
        0x44t
        0x5ct
        0x41t
        0x50t
        0x14t
        0x15t
    .end array-data

    :array_6
    .array-data 1
        0x17t
        0x44t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x12t
        0x3et
    .end array-data

    nop

    :array_8
    .array-data 1
        0x48t
        0x18t
    .end array-data
.end method
