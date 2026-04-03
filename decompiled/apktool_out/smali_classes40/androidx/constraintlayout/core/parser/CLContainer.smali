.class public Landroidx/constraintlayout/core/parser/CLContainer;
.super Landroidx/constraintlayout/core/parser/CLElement;


# instance fields
.field mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/parser/CLElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLContainer;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/parser/CLElement;)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "617a65"

    const v4, 0x4e90d0a0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9d0946"

    const-wide/32 v4, -0x392cd986

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x55t
        0x53t
        0x4t
        0x52t
        0x15t
        0x53t
        0x5dt
        0x52t
        0xct
        0x53t
        0x5bt
        0x42t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x10t
        0x5ft
        0x19t
    .end array-data
.end method

.method public get(I)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "049e19"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0x5et
        0x5bt
        0x19t
        0x0t
        0x5dt
        0x5ct
        0x5dt
        0x51t
        0x57t
        0x11t
        0x11t
        0x58t
        0x44t
        0x14t
        0x50t
        0xbt
        0x55t
        0x5ct
        0x48t
        0x14t
    .end array-data
.end method

.method public get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9a753a"

    const/16 v3, 0x5d66

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    const-string v2, "7fb330"

    const v3, 0x4eaa1384

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x57t
        0xet
        0x17t
        0x50t
        0x5ft
        0x4t
        0x54t
        0x4t
        0x59t
        0x41t
        0x13t
        0x7t
        0x56t
        0x13t
        0x17t
        0x5et
        0x56t
        0x18t
        0x19t
        0x5dt
    .end array-data
.end method

.method public getArray(I)Landroidx/constraintlayout/core/parser/CLArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f669d6"

    const/16 v3, 0xdc7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x8t
        0x59t
        0x16t
        0x58t
        0x16t
        0x44t
        0x7t
        0x4ft
        0x16t
        0x58t
        0x10t
        0x16t
        0xft
        0x58t
        0x52t
        0x5ct
        0x1ct
        0x16t
    .end array-data
.end method

.method public getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "48b31a"

    const-wide v4, 0x41dce0271a400000L    # 1.937808489E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "694c11"

    const v4, 0x4e355895    # 7.6062035E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "8939ff"

    const/16 v4, -0x34d8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :array_0
    .array-data 1
        0x5at
        0x57t
        0x42t
        0x52t
        0x43t
        0x13t
        0x55t
        0x41t
        0x42t
        0x55t
        0x5et
        0x14t
        0x5at
        0x5ct
        0x42t
        0x55t
        0x5et
        0x13t
        0x14t
        0x53t
        0x7t
        0x4at
        0x11t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0x15t
        0x14t
        0x5t
        0x5et
        0x44t
        0x58t
        0x5dt
        0x14t
        0x38t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x65t
        0x19t
        0x9t
        0x19t
    .end array-data
.end method

.method public getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLToken;->getBoolean()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ff3f1a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0x8t
        0x9t
        0x13t
        0x4t
        0x5et
        0xet
        0xat
        0x3t
        0x52t
        0x8t
        0x11t
        0x0t
        0x12t
        0x46t
        0x5at
        0x8t
        0x55t
        0x4t
        0x1et
        0x46t
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLToken;->getBoolean()Z

    move-result v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8397fc"

    const-wide/32 v4, 0x253b2518

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "306bc1"

    const-wide v4, 0x41dbb9b2b1800000L    # 1.86061895E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "87efd0"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x5ct
        0x19t
        0x55t
        0x9t
        0xct
        0x54t
        0x56t
        0x58t
        0x59t
        0x46t
        0x5t
        0x57t
        0x46t
        0x57t
        0x53t
        0x46t
        0x5t
        0x57t
        0x41t
        0x19t
        0x5ct
        0x3t
        0x1at
        0x18t
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x1ct
        0x16t
        0x4t
        0xct
        0x44t
        0x5dt
        0x54t
        0x16t
        0x39t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x65t
        0x17t
        0x5ft
        0x46t
    .end array-data
.end method

.method public getFloat(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6db908"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0x58t
        0xbt
        0x42t
        0x5ft
        0x5ct
        0x57t
        0x57t
        0x10t
        0x42t
        0x58t
        0x44t
        0x18t
        0x5ft
        0xat
        0x6t
        0x5ct
        0x48t
        0x18t
    .end array-data
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3eed64"

    const-wide v4, -0x3e3ff39a93000000L    # -5.38495706E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2928f0"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "ac3d79"

    const v4, -0x31575dd5    # -1.4146001E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5dt
        0xat
        0x45t
        0x2t
        0x5at
        0x5bt
        0x52t
        0x11t
        0x45t
        0x2t
        0x59t
        0x41t
        0x5dt
        0x1t
        0x45t
        0x2t
        0x59t
        0x46t
        0x13t
        0xet
        0x0t
        0x1dt
        0x16t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0xct
        0x15t
        0x12t
        0x5et
        0x9t
        0x45t
        0x5ct
        0x5dt
        0x12t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3ct
        0x43t
        0x9t
        0x44t
    .end array-data
.end method

.method public getFloatOrNaN(Ljava/lang/String;)F
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d5ae28"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0xat
        0x5at
        0x41t
        0xct
        0x5ct
        0x4ct
        0x44t
        0x54t
        0x15t
        0x45t
        0x5bt
        0x56t
        0x0t
        0x50t
        0x19t
        0x45t
    .end array-data
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "55b386"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0b0906"

    const v4, 0x4edf77ed

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "98caae"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5at
        0x42t
        0x5at
        0x56t
        0x42t
        0x15t
        0x53t
        0xdt
        0x46t
        0x56t
        0x52t
        0x15t
        0x53t
        0xdt
        0x41t
        0x18t
        0x5dt
        0x50t
        0x4ct
        0x42t
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0xet
        0x4et
        0x10t
        0x5ft
        0x5ft
        0x43t
        0x5et
        0x6t
        0x10t
        0x62t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x64t
        0x18t
        0x59t
        0x41t
    .end array-data
.end method

.method public getObject(I)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "edac79"

    const/16 v3, 0x4d03

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0xbt
        0xbt
        0x41t
        0xct
        0x55t
        0x53t
        0x0t
        0x7t
        0x15t
        0x43t
        0x56t
        0x4dt
        0x45t
        0xdt
        0xft
        0x7t
        0x52t
        0x41t
        0x45t
    .end array-data
.end method

.method public getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "12e2d4"

    const-wide/32 v4, -0x64669971

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e104b7"

    const/16 v4, -0x2ef4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "9822fe"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :array_0
    .array-data 1
        0x5ft
        0x5dt
        0x45t
        0x5dt
        0x6t
        0x5et
        0x54t
        0x51t
        0x11t
        0x12t
        0x2t
        0x5bt
        0x44t
        0x5ct
        0x1t
        0x12t
        0x2t
        0x5bt
        0x43t
        0x12t
        0xet
        0x57t
        0x1dt
        0x14t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0x1dt
        0x10t
        0x52t
        0xdt
        0x42t
        0xbt
        0x55t
        0x10t
        0x6ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x64t
        0x18t
        0x8t
        0x12t
    .end array-data
.end method

.method public getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6eeb1b"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0x58t
        0xat
        0x45t
        0x11t
        0x45t
        0x10t
        0x5ft
        0xbt
        0x2t
        0x42t
        0x50t
        0x16t
        0x16t
        0xct
        0xbt
        0x6t
        0x54t
        0x1at
        0x16t
    .end array-data
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6d1644"

    const v5, -0x315fcdc6

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "3e8b61"

    const-wide v6, -0x3e23061967800000L    # -1.944558178E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v3, "6db473"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x58t
        0xbt
        0x11t
        0x45t
        0x40t
        0x46t
        0x5ft
        0xat
        0x56t
        0x16t
        0x52t
        0x5bt
        0x43t
        0xat
        0x55t
        0x16t
        0x52t
        0x5bt
        0x44t
        0x44t
        0x5at
        0x53t
        0x4dt
        0x14t
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x49t
        0x18t
        0x4t
        0x59t
        0x44t
        0x5dt
        0x1t
        0x18t
        0x39t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x44t
        0x58t
        0x14t
    .end array-data
.end method

.method public getStringOrNull(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public names()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    instance-of v3, v0, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/parser/CLKey;->set(Landroidx/constraintlayout/core/parser/CLElement;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroidx/constraintlayout/core/parser/CLKey;->allocate(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public putNumber(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-direct {v0, p2}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    const-string v4, "b94d0b"

    const/16 v5, -0x28f8

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/constraintlayout/core/parser/CLElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6e3c55"

    const/16 v4, -0x72de

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "3e0f70"

    const-wide v4, -0x3e4f1c3a21000000L    # -2.83362783E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x59t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x58t
        0x13t
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0x13t
        0x5bt
    .end array-data
.end method
