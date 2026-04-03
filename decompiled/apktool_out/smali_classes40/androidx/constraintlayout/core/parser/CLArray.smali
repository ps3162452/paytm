.class public Landroidx/constraintlayout/core/parser/CLArray;
.super Landroidx/constraintlayout/core/parser/CLContainer;


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLArray;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLArray;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->toJSON()Ljava/lang/String;

    move-result-object v0

    if-gtz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    sget v5, Landroidx/constraintlayout/core/parser/CLArray;->MAX_LINE:I

    if-ge v1, v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "4b224a"

    const-wide/32 v6, -0x52467788

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    if-nez v1, :cond_1

    new-array v6, v8, [B

    fill-array-data v6, :array_1

    const-string v7, "57e601"

    invoke-static {v6, v7, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget v6, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    add-int/2addr v6, p1

    invoke-virtual {p0, v4, v6}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    sget v6, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    add-int/2addr v6, p1

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, p1}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    new-array v0, v3, [B

    const/16 v1, 0x6a

    aput-byte v1, v0, v2

    const-string v1, "73295a"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :array_0
    .array-data 1
        0x6ft
        0x68t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x3dt
    .end array-data
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [B

    const/16 v4, 0x6e

    aput-byte v4, v1, v2

    const-string v4, "5295a4"

    const v5, 0x4e8e087b

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v6, "6ded82"

    const-wide v8, 0x41ce6bc309000000L    # 1.020757522E9

    invoke-static {v4, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v3, [B

    const/16 v3, 0x39

    aput-byte v3, v1, v2

    const-string v2, "d5f030"

    const/16 v3, 0x7ec9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1at
        0x44t
    .end array-data
.end method
