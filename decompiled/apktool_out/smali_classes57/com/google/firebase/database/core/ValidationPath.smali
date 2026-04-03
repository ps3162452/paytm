.class public Lcom/google/firebase/database/core/ValidationPath;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_PATH_DEPTH:I = 0x20

.field public static final MAX_PATH_LENGTH_BYTES:I = 0x300


# instance fields
.field private byteLength:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v3, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget v2, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    return-void
.end method

.method private checkValid()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "823f9b"

    const-wide v4, -0x3e374fea46000000L    # -8.28386164E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->toErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4914bb"

    const v4, -0x31750fa1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "d56735"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x68t
        0x53t
        0x47t
        0xet
        0x19t
        0x11t
        0x48t
        0x57t
        0x50t
        0xft
        0x5ft
        0xbt
        0x5dt
        0x56t
        0x13t
        0x3t
        0x41t
        0x1t
        0x5dt
        0x57t
        0x57t
        0x15t
        0x19t
        0x16t
        0x50t
        0x57t
        0x13t
        0xbt
        0x58t
        0x1at
        0x51t
        0x5ft
        0x46t
        0xbt
        0x19t
        0x6t
        0x5dt
        0x42t
        0x47t
        0xet
        0x19t
        0x16t
        0x50t
        0x53t
        0x47t
        0x46t
        0x5at
        0x3t
        0x56t
        0x12t
        0x51t
        0x3t
        0x19t
        0x15t
        0x4at
        0x5bt
        0x47t
        0x12t
        0x5ct
        0xct
        0x18t
        0x1at
        0x0t
        0x54t
        0x10t
        0x42t
        0x57t
        0x40t
        0x13t
        0x9t
        0x5bt
        0x8t
        0x5dt
        0x51t
        0x47t
        0x46t
        0x5at
        0xdt
        0x56t
        0x46t
        0x52t
        0xft
        0x57t
        0x11t
        0x18t
        0x53t
        0x13t
        0x5t
        0x40t
        0x1t
        0x54t
        0x57t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x58t
        0x45t
        0x55t
        0x42t
        0xat
        0x55t
        0x4at
        0x11t
        0x55t
        0x42t
        0x9t
        0x51t
        0x40t
        0x11t
        0x44t
        0x3t
        0x16t
        0x5ct
        0x19t
        0x5dt
        0x5bt
        0xct
        0x5t
        0x51t
        0x4bt
        0x11t
        0x40t
        0xat
        0x3t
        0x5at
        0x19t
        0x6t
        0x2t
        0x5at
        0x42t
        0x56t
        0x40t
        0x45t
        0x51t
        0x11t
        0x42t
        0x1ct
    .end array-data

    :array_2
    .array-data 1
        0x4dt
        0x1bt
    .end array-data
.end method

.method private static joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pop()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {v0}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    :cond_0
    return-object v0
.end method

.method private push(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {p1}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    return-void
.end method

.method private toErrorString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c516a"

    const-wide v4, 0x41bdb2104f000000L    # 4.98208847E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    const/16 v2, 0x1a

    aput-byte v2, v1, v6

    const-string v2, "5ef746"

    invoke-static {v1, v2, v6, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/ValidationPath;->joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    const/16 v2, 0x11

    aput-byte v2, v1, v6

    const-string v2, "646bae"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5at
        0xdt
        0x15t
        0x41t
        0x57t
        0x15t
        0x5bt
        0x43t
        0x12t
    .end array-data
.end method

.method private static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/core/ValidationPath;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/ValidationPath;-><init>(Lcom/google/firebase/database/core/Path;)V

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    return-void
.end method

.method private withObject(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, 0x4d

    aput-byte v4, v3, v1

    const-string v4, "c49b6d"

    const v5, -0x312c9184

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
